package forward

import (
	"hk4e/common/config"
	"hk4e/common/region"
	"hk4e/gate/entity/gm"
	"hk4e/gate/kcp"
	"hk4e/gate/net"
	"hk4e/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"os"
	"runtime"
	"sync"
	"time"
)

const (
	ConnWaitToken = iota
	ConnWaitLogin
	ConnAlive
	ConnClose
)

type ClientHeadMeta struct {
	seq uint32
}

type ForwardManager struct {
	dao            string
	protoMsgInput  chan *net.ProtoMsg
	protoMsgOutput chan *net.ProtoMsg
	netMsgInput    chan *cmd.NetMsg
	netMsgOutput   chan *cmd.NetMsg
	// 玩家登录相关
	connStateMap     map[uint64]uint8
	connStateMapLock sync.RWMutex
	// kcpConv -> userID
	convUserIdMap     map[uint64]uint32
	convUserIdMapLock sync.RWMutex
	// userID -> kcpConv
	userIdConvMap     map[uint32]uint64
	userIdConvMapLock sync.RWMutex
	// kcpConv -> ipAddr
	convAddrMap     map[uint64]string
	convAddrMapLock sync.RWMutex
	// kcpConv -> headMeta
	convHeadMetaMap     map[uint64]*ClientHeadMeta
	convHeadMetaMapLock sync.RWMutex
	secretKeyBuffer     []byte
	kcpEventInput       chan *net.KcpEvent
	kcpEventOutput      chan *net.KcpEvent
	regionCurr          *proto.QueryCurrRegionHttpRsp
	signRsaKey          []byte
	encRsaKeyMap        map[string][]byte
}

func NewForwardManager(
	protoMsgInput chan *net.ProtoMsg, protoMsgOutput chan *net.ProtoMsg,
	kcpEventInput chan *net.KcpEvent, kcpEventOutput chan *net.KcpEvent,
	netMsgInput chan *cmd.NetMsg, netMsgOutput chan *cmd.NetMsg) (r *ForwardManager) {
	r = new(ForwardManager)
	r.protoMsgInput = protoMsgInput
	r.protoMsgOutput = protoMsgOutput
	r.netMsgInput = netMsgInput
	r.netMsgOutput = netMsgOutput
	r.connStateMap = make(map[uint64]uint8)
	r.convUserIdMap = make(map[uint64]uint32)
	r.userIdConvMap = make(map[uint32]uint64)
	r.convAddrMap = make(map[uint64]string)
	r.convHeadMetaMap = make(map[uint64]*ClientHeadMeta)
	r.kcpEventInput = kcpEventInput
	r.kcpEventOutput = kcpEventOutput
	return r
}

func (f *ForwardManager) getHeadMsg(clientSeq uint32) (headMsg *proto.PacketHead) {
	headMsg = new(proto.PacketHead)
	if clientSeq != 0 {
		headMsg.ClientSequenceId = clientSeq
		headMsg.SentMs = uint64(time.Now().UnixMilli())
	}
	return headMsg
}

func (f *ForwardManager) kcpEventHandle() {
	for {
		event := <-f.kcpEventOutput
		logger.LOG.Info("rpc manager recv event, ConvId: %v, EventId: %v", event.ConvId, event.EventId)
		switch event.EventId {
		case net.KcpPacketSendNotify:
			// 发包通知
			// 关闭发包监听
			f.kcpEventInput <- &net.KcpEvent{
				ConvId:       event.ConvId,
				EventId:      net.KcpPacketSendListen,
				EventMessage: "Disable",
			}
			// 登录成功 通知GS初始化相关数据
			userId, exist := f.getUserIdByConvId(event.ConvId)
			if !exist {
				logger.LOG.Error("can not find userId by convId")
				continue
			}
			headMeta, exist := f.getHeadMetaByConvId(event.ConvId)
			if !exist {
				logger.LOG.Error("can not find client head metadata by convId")
				continue
			}
			netMsg := new(cmd.NetMsg)
			netMsg.UserId = userId
			netMsg.EventId = cmd.UserLoginNotify
			netMsg.ClientSeq = headMeta.seq
			f.netMsgInput <- netMsg
			logger.LOG.Info("send to gs user login ok, ConvId: %v, UserId: %v", event.ConvId, netMsg.UserId)
		case net.KcpConnCloseNotify:
			// 连接断开通知
			userId, exist := f.getUserIdByConvId(event.ConvId)
			if !exist {
				logger.LOG.Error("can not find userId by convId")
				continue
			}
			if f.getConnState(event.ConvId) == ConnAlive {
				// 通知GS玩家下线
				netMsg := new(cmd.NetMsg)
				netMsg.UserId = userId
				netMsg.EventId = cmd.UserOfflineNotify
				f.netMsgInput <- netMsg
				logger.LOG.Info("send to gs user offline, ConvId: %v, UserId: %v", event.ConvId, netMsg.UserId)
			}
			// 删除各种map数据
			f.deleteConnState(event.ConvId)
			f.deleteUserIdByConvId(event.ConvId)
			currConvId, currExist := f.getConvIdByUserId(userId)
			if currExist && currConvId == event.ConvId {
				// 防止误删顶号的新连接数据
				f.deleteConvIdByUserId(userId)
			}
			f.deleteAddrByConvId(event.ConvId)
			f.deleteHeadMetaByConvId(event.ConvId)
		case net.KcpConnEstNotify:
			// 连接建立通知
			addr, ok := event.EventMessage.(string)
			if !ok {
				logger.LOG.Error("event KcpConnEstNotify msg type error")
				continue
			}
			f.setAddrByConvId(event.ConvId, addr)
		case net.KcpConnRttNotify:
			// 客户端往返时延通知
			rtt, ok := event.EventMessage.(int32)
			if !ok {
				logger.LOG.Error("event KcpConnRttNotify msg type error")
				continue
			}
			// 通知GS玩家客户端往返时延
			userId, exist := f.getUserIdByConvId(event.ConvId)
			if !exist {
				logger.LOG.Error("can not find userId by convId")
				continue
			}
			netMsg := new(cmd.NetMsg)
			netMsg.UserId = userId
			netMsg.EventId = cmd.ClientRttNotify
			netMsg.ClientRtt = uint32(rtt)
			f.netMsgInput <- netMsg
		case net.KcpConnAddrChangeNotify:
			// 客户端网络地址改变通知
			f.convAddrMapLock.Lock()
			_, exist := f.convAddrMap[event.ConvId]
			if !exist {
				f.convAddrMapLock.Unlock()
				logger.LOG.Error("conn addr change but conn can not be found")
				continue
			}
			addr := event.EventMessage.(string)
			f.convAddrMap[event.ConvId] = addr
			f.convAddrMapLock.Unlock()
		}
	}
}

func (f *ForwardManager) Start() {
	// 读取密钥相关文件
	var err error = nil
	f.secretKeyBuffer, err = os.ReadFile("static/secretKeyBuffer.bin")
	if err != nil {
		logger.LOG.Error("open secretKeyBuffer.bin error")
		return
	}
	f.signRsaKey, f.encRsaKeyMap, _ = region.LoadRsaKey()
	// region
	regionCurr, _ := region.InitRegion(config.CONF.Hk4e.KcpAddr, config.CONF.Hk4e.KcpPort)
	f.regionCurr = regionCurr
	// kcp事件监听
	go f.kcpEventHandle()
	go f.recvNetMsgFromGameServer()
	// 接收客户端消息
	cpuCoreNum := runtime.NumCPU()
	for i := 0; i < cpuCoreNum*10; i++ {
		go f.sendNetMsgToGameServer()
	}
}

// 发送消息到GS
func (f *ForwardManager) sendNetMsgToGameServer() {
	for {
		protoMsg := <-f.protoMsgOutput
		if protoMsg.HeadMessage == nil {
			logger.LOG.Error("recv null head msg: %v", protoMsg)
		}
		f.setHeadMetaByConvId(protoMsg.ConvId, &ClientHeadMeta{
			seq: protoMsg.HeadMessage.ClientSequenceId,
		})
		connState := f.getConnState(protoMsg.ConvId)
		// gate本地处理的请求
		switch protoMsg.CmdId {
		case cmd.GetPlayerTokenReq:
			// 获取玩家token请求
			if connState != ConnWaitToken {
				continue
			}
			getPlayerTokenReq := protoMsg.PayloadMessage.(*proto.GetPlayerTokenReq)
			getPlayerTokenRsp := f.getPlayerToken(protoMsg.ConvId, getPlayerTokenReq)
			if getPlayerTokenRsp == nil {
				continue
			}
			// 改变解密密钥
			f.kcpEventInput <- &net.KcpEvent{
				ConvId:       protoMsg.ConvId,
				EventId:      net.KcpXorKeyChange,
				EventMessage: "DEC",
			}
			// 返回数据到客户端
			resp := new(net.ProtoMsg)
			resp.ConvId = protoMsg.ConvId
			resp.CmdId = cmd.GetPlayerTokenRsp
			resp.HeadMessage = f.getHeadMsg(protoMsg.HeadMessage.ClientSequenceId)
			resp.PayloadMessage = getPlayerTokenRsp
			f.protoMsgInput <- resp
		case cmd.PlayerLoginReq:
			// 玩家登录请求
			if connState != ConnWaitLogin {
				continue
			}
			playerLoginReq := protoMsg.PayloadMessage.(*proto.PlayerLoginReq)
			playerLoginRsp := f.playerLogin(protoMsg.ConvId, playerLoginReq)
			if playerLoginRsp == nil {
				continue
			}
			// 改变加密密钥
			f.kcpEventInput <- &net.KcpEvent{
				ConvId:       protoMsg.ConvId,
				EventId:      net.KcpXorKeyChange,
				EventMessage: "ENC",
			}
			// 开启发包监听
			f.kcpEventInput <- &net.KcpEvent{
				ConvId:       protoMsg.ConvId,
				EventId:      net.KcpPacketSendListen,
				EventMessage: "Enable",
			}
			go func() {
				// 保证kcp事件已成功生效
				time.Sleep(time.Millisecond * 50)
				// 返回数据到客户端
				resp := new(net.ProtoMsg)
				resp.ConvId = protoMsg.ConvId
				resp.CmdId = cmd.PlayerLoginRsp
				resp.HeadMessage = f.getHeadMsg(protoMsg.HeadMessage.ClientSequenceId)
				resp.PayloadMessage = playerLoginRsp
				f.protoMsgInput <- resp
			}()
		case cmd.SetPlayerBornDataReq:
			// 玩家注册请求
			if connState != ConnAlive {
				continue
			}
			userId, exist := f.getUserIdByConvId(protoMsg.ConvId)
			if !exist {
				logger.LOG.Error("can not find userId by convId")
				continue
			}
			netMsg := new(cmd.NetMsg)
			netMsg.UserId = userId
			netMsg.EventId = cmd.UserRegNotify
			netMsg.CmdId = cmd.SetPlayerBornDataReq
			netMsg.ClientSeq = protoMsg.HeadMessage.ClientSequenceId
			netMsg.PayloadMessage = protoMsg.PayloadMessage
			f.netMsgInput <- netMsg
		case cmd.PlayerForceExitRsp:
			// 玩家退出游戏请求
			if connState != ConnAlive {
				continue
			}
			userId, exist := f.getUserIdByConvId(protoMsg.ConvId)
			if !exist {
				logger.LOG.Error("can not find userId by convId")
				continue
			}
			f.setConnState(protoMsg.ConvId, ConnClose)
			info := new(gm.KickPlayerInfo)
			info.UserId = userId
			info.Reason = uint32(kcp.EnetServerKick)
			f.KickPlayer(info)
		case cmd.PingReq:
			// ping请求
			if connState != ConnAlive {
				continue
			}
			pingReq := protoMsg.PayloadMessage.(*proto.PingReq)
			logger.LOG.Debug("user ping req, data: %v", pingReq.String())
			// 返回数据到客户端
			// TODO 记录客户端最后一次ping时间做超时下线处理
			pingRsp := new(proto.PingRsp)
			pingRsp.ClientTime = pingReq.ClientTime
			resp := new(net.ProtoMsg)
			resp.ConvId = protoMsg.ConvId
			resp.CmdId = cmd.PingRsp
			resp.HeadMessage = f.getHeadMsg(protoMsg.HeadMessage.ClientSequenceId)
			resp.PayloadMessage = pingRsp
			f.protoMsgInput <- resp
			// 通知GS玩家客户端的本地时钟
			userId, exist := f.getUserIdByConvId(protoMsg.ConvId)
			if !exist {
				logger.LOG.Error("can not find userId by convId")
				continue
			}
			netMsg := new(cmd.NetMsg)
			netMsg.UserId = userId
			netMsg.EventId = cmd.ClientTimeNotify
			netMsg.ClientTime = pingReq.ClientTime
			f.netMsgInput <- netMsg
		default:
			// 转发到GS
			// 未登录禁止访问GS
			if connState != ConnAlive {
				continue
			}
			netMsg := new(cmd.NetMsg)
			userId, exist := f.getUserIdByConvId(protoMsg.ConvId)
			if exist {
				netMsg.UserId = userId
			} else {
				logger.LOG.Error("can not find userId by convId")
				continue
			}
			netMsg.EventId = cmd.NormalMsg
			netMsg.CmdId = protoMsg.CmdId
			netMsg.ClientSeq = protoMsg.HeadMessage.ClientSequenceId
			netMsg.PayloadMessage = protoMsg.PayloadMessage
			f.netMsgInput <- netMsg
		}
	}
}

// 从GS接收消息
func (f *ForwardManager) recvNetMsgFromGameServer() {
	for {
		netMsg := <-f.netMsgOutput
		convId, exist := f.getConvIdByUserId(netMsg.UserId)
		if !exist {
			logger.LOG.Error("can not find convId by userId")
			continue
		}
		if netMsg.EventId == cmd.NormalMsg {
			protoMsg := new(net.ProtoMsg)
			protoMsg.ConvId = convId
			protoMsg.CmdId = netMsg.CmdId
			protoMsg.HeadMessage = f.getHeadMsg(netMsg.ClientSeq)
			protoMsg.PayloadMessage = netMsg.PayloadMessage
			f.protoMsgInput <- protoMsg
			continue
		} else {
			logger.LOG.Error("recv unknown event from game server, event id: %v", netMsg.EventId)
			continue
		}
	}
}

func (f *ForwardManager) getConnState(convId uint64) uint8 {
	f.connStateMapLock.RLock()
	connState, connStateExist := f.connStateMap[convId]
	f.connStateMapLock.RUnlock()
	if !connStateExist {
		connState = ConnWaitToken
		f.connStateMapLock.Lock()
		f.connStateMap[convId] = ConnWaitToken
		f.connStateMapLock.Unlock()
	}
	return connState
}

func (f *ForwardManager) setConnState(convId uint64, state uint8) {
	f.connStateMapLock.Lock()
	f.connStateMap[convId] = state
	f.connStateMapLock.Unlock()
}

func (f *ForwardManager) deleteConnState(convId uint64) {
	f.connStateMapLock.Lock()
	delete(f.connStateMap, convId)
	f.connStateMapLock.Unlock()
}

func (f *ForwardManager) getUserIdByConvId(convId uint64) (userId uint32, exist bool) {
	f.convUserIdMapLock.RLock()
	userId, exist = f.convUserIdMap[convId]
	f.convUserIdMapLock.RUnlock()
	return userId, exist
}

func (f *ForwardManager) setUserIdByConvId(convId uint64, userId uint32) {
	f.convUserIdMapLock.Lock()
	f.convUserIdMap[convId] = userId
	f.convUserIdMapLock.Unlock()
}

func (f *ForwardManager) deleteUserIdByConvId(convId uint64) {
	f.convUserIdMapLock.Lock()
	delete(f.convUserIdMap, convId)
	f.convUserIdMapLock.Unlock()
}

func (f *ForwardManager) getConvIdByUserId(userId uint32) (convId uint64, exist bool) {
	f.userIdConvMapLock.RLock()
	convId, exist = f.userIdConvMap[userId]
	f.userIdConvMapLock.RUnlock()
	return convId, exist
}

func (f *ForwardManager) setConvIdByUserId(userId uint32, convId uint64) {
	f.userIdConvMapLock.Lock()
	f.userIdConvMap[userId] = convId
	f.userIdConvMapLock.Unlock()
}

func (f *ForwardManager) deleteConvIdByUserId(userId uint32) {
	f.userIdConvMapLock.Lock()
	delete(f.userIdConvMap, userId)
	f.userIdConvMapLock.Unlock()
}

func (f *ForwardManager) getAddrByConvId(convId uint64) (addr string, exist bool) {
	f.convAddrMapLock.RLock()
	addr, exist = f.convAddrMap[convId]
	f.convAddrMapLock.RUnlock()
	return addr, exist
}

func (f *ForwardManager) setAddrByConvId(convId uint64, addr string) {
	f.convAddrMapLock.Lock()
	f.convAddrMap[convId] = addr
	f.convAddrMapLock.Unlock()
}

func (f *ForwardManager) deleteAddrByConvId(convId uint64) {
	f.convAddrMapLock.Lock()
	delete(f.convAddrMap, convId)
	f.convAddrMapLock.Unlock()
}

func (f *ForwardManager) getHeadMetaByConvId(convId uint64) (headMeta *ClientHeadMeta, exist bool) {
	f.convHeadMetaMapLock.RLock()
	headMeta, exist = f.convHeadMetaMap[convId]
	f.convHeadMetaMapLock.RUnlock()
	return headMeta, exist
}

func (f *ForwardManager) setHeadMetaByConvId(convId uint64, headMeta *ClientHeadMeta) {
	f.convHeadMetaMapLock.Lock()
	f.convHeadMetaMap[convId] = headMeta
	f.convHeadMetaMapLock.Unlock()
}

func (f *ForwardManager) deleteHeadMetaByConvId(convId uint64) {
	f.convHeadMetaMapLock.Lock()
	delete(f.convHeadMetaMap, convId)
	f.convHeadMetaMapLock.Unlock()
}

// 改变网关开放状态
func (f *ForwardManager) ChangeGateOpenState(isOpen bool) bool {
	f.kcpEventInput <- &net.KcpEvent{
		EventId:      net.KcpGateOpenState,
		EventMessage: isOpen,
	}
	logger.LOG.Info("change gate open state to: %v", isOpen)
	return true
}

// 剔除玩家下线
func (f *ForwardManager) KickPlayer(info *gm.KickPlayerInfo) bool {
	if info == nil {
		return false
	}
	convId, exist := f.getConvIdByUserId(info.UserId)
	if !exist {
		return false
	}
	f.kcpEventInput <- &net.KcpEvent{
		ConvId:       convId,
		EventId:      net.KcpConnForceClose,
		EventMessage: info.Reason,
	}
	return true
}

// 获取网关在线玩家信息
func (f *ForwardManager) GetOnlineUser(uid uint32) (list *gm.OnlineUserList) {
	list = &gm.OnlineUserList{
		UserList: make([]*gm.OnlineUserInfo, 0),
	}
	if uid == 0 {
		// 获取全部玩家
		f.convUserIdMapLock.RLock()
		f.convAddrMapLock.RLock()
		for convId, userId := range f.convUserIdMap {
			addr := f.convAddrMap[convId]
			info := &gm.OnlineUserInfo{
				Uid:    userId,
				ConvId: convId,
				Addr:   addr,
			}
			list.UserList = append(list.UserList, info)
		}
		f.convAddrMapLock.RUnlock()
		f.convUserIdMapLock.RUnlock()
	} else {
		// 获取指定uid玩家
		convId, exist := f.getConvIdByUserId(uid)
		if !exist {
			return list
		}
		addr, exist := f.getAddrByConvId(convId)
		if !exist {
			return list
		}
		info := &gm.OnlineUserInfo{
			Uid:    uid,
			ConvId: convId,
			Addr:   addr,
		}
		list.UserList = append(list.UserList, info)
	}
	return list
}
