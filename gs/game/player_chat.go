package game

import (
	"time"

	"hk4e/common/mq"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) PullRecentChatReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user pull recent chat, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PullRecentChatReq)
	// 经研究发现 原神现网环境 客户端仅拉取最新的5条未读聊天消息 所以人太多的话小姐姐不回你消息是有原因的
	// 因此 阿米你这样做真的合适吗 不过现在代码到了我手上我想怎么写就怎么写 我才不会重蹈覆辙
	_ = req.PullNum

	retMsgList := make([]*proto.ChatInfo, 0)
	for _, msgList := range player.ChatMsgMap {
		for _, chatMsg := range msgList {
			// 反手就是一个遍历
			if chatMsg.IsRead {
				continue
			}
			retMsgList = append(retMsgList, g.ConvChatMsgToChatInfo(chatMsg))
		}
	}

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world.GetMultiplayer() {
		chatList := world.GetChatList()
		count := len(chatList)
		if count > 10 {
			count = 10
		}
		for i := len(chatList) - count; i < len(chatList); i++ {
			playerChatNotify := &proto.PlayerChatNotify{
				ChannelId: 0,
				ChatInfo:  chatList[i],
			}
			g.SendMsg(cmd.PlayerChatNotify, player.PlayerID, player.ClientSeq, playerChatNotify)
		}
	}

	pullRecentChatRsp := &proto.PullRecentChatRsp{
		ChatInfo: retMsgList,
	}
	g.SendMsg(cmd.PullRecentChatRsp, player.PlayerID, player.ClientSeq, pullRecentChatRsp)
}

func (g *GameManager) PullPrivateChatReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user pull private chat, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PullPrivateChatReq)
	targetUid := req.TargetUid
	pullNum := req.PullNum
	fromSequence := req.FromSequence

	msgList, exist := player.ChatMsgMap[targetUid]
	if !exist {
		return
	}
	if pullNum+fromSequence > uint32(len(msgList)) {
		pullNum = uint32(len(msgList)) - fromSequence
	}
	recentMsgList := msgList[fromSequence : fromSequence+pullNum]
	retMsgList := make([]*proto.ChatInfo, 0)
	for _, chatMsg := range recentMsgList {
		retMsgList = append(retMsgList, g.ConvChatMsgToChatInfo(chatMsg))
	}

	pullPrivateChatRsp := &proto.PullPrivateChatRsp{
		ChatInfo: retMsgList,
	}
	g.SendMsg(cmd.PullPrivateChatRsp, player.PlayerID, player.ClientSeq, pullPrivateChatRsp)
}

// SendPrivateChat 发送私聊文本消息给玩家
func (g *GameManager) SendPrivateChat(player *model.Player, targetUid uint32, content any) {
	chatInfo := &proto.ChatInfo{
		Time:     uint32(time.Now().Unix()),
		Sequence: 101,
		ToUid:    targetUid,
		Uid:      player.PlayerID,
		IsRead:   false,
	}
	// 根据传入的值判断消息类型
	switch content.(type) {
	case string:
		// 文本消息
		chatInfo.Content = &proto.ChatInfo_Text{
			Text: content.(string),
		}
	case int, int32, uint32:
		// 图标消息
		chatInfo.Content = &proto.ChatInfo_Icon{
			Icon: content.(uint32),
		}
	}
	chatMsg := g.ConvChatInfoToChatMsg(chatInfo)
	// 消息加入自己的队列
	msgList, exist := player.ChatMsgMap[targetUid]
	if !exist {
		msgList = make([]*model.ChatMsg, 0)
	}
	msgList = append(msgList, chatMsg)
	player.ChatMsgMap[targetUid] = msgList

	privateChatNotify := &proto.PrivateChatNotify{
		ChatInfo: chatInfo,
	}
	g.SendMsg(cmd.PrivateChatNotify, player.PlayerID, player.ClientSeq, privateChatNotify)

	targetPlayer := USER_MANAGER.GetOnlineUser(targetUid)
	if targetPlayer == nil {
		if USER_MANAGER.GetRemoteUserOnlineState(targetUid) {
			// 目标玩家在别的服在线
			gsAppId := USER_MANAGER.GetRemoteUserGsAppId(targetUid)
			MESSAGE_QUEUE.SendToGs(gsAppId, &mq.NetMsg{
				MsgType: mq.MsgTypeServer,
				EventId: mq.ServerChatMsgNotify,
				ServerMsg: &mq.ServerMsg{
					ChatMsgInfo: &mq.ChatMsgInfo{
						Time:    chatMsg.Time,
						ToUid:   chatMsg.ToUid,
						Uid:     chatMsg.Uid,
						IsRead:  chatMsg.IsRead,
						MsgType: chatMsg.MsgType,
						Text:    chatMsg.Text,
						Icon:    chatMsg.Icon,
					},
				},
			})
		} else {
			// 目标玩家全服离线
			// TODO 接入redis直接同步写入数据
		}
		return
	}
	// 消息加入目标玩家的队列
	msgList, exist = targetPlayer.ChatMsgMap[player.PlayerID]
	if !exist {
		msgList = make([]*model.ChatMsg, 0)
	}
	msgList = append(msgList, chatMsg)
	targetPlayer.ChatMsgMap[player.PlayerID] = msgList

	// 如果目标玩家在线发送消息
	if targetPlayer.Online {
		privateChatNotify := &proto.PrivateChatNotify{
			ChatInfo: chatInfo,
		}
		g.SendMsg(cmd.PrivateChatNotify, targetPlayer.PlayerID, player.ClientSeq, privateChatNotify)
	}
}

func (g *GameManager) PrivateChatReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user send private chat, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PrivateChatReq)
	targetUid := req.TargetUid
	content := req.Content

	// 根据发送的类型发送消息
	switch content.(type) {
	case *proto.PrivateChatReq_Text:
		text := content.(*proto.PrivateChatReq_Text).Text
		if len(text) == 0 {
			return
		}
		// 发送私聊文本消息
		g.SendPrivateChat(player, targetUid, text)
		// 输入命令 会检测是否为命令的
		COMMAND_MANAGER.InputCommand(player, text)
	case *proto.PrivateChatReq_Icon:
		icon := content.(*proto.PrivateChatReq_Icon).Icon
		// 发送私聊图标消息
		g.SendPrivateChat(player, targetUid, icon)
	default:
		return
	}

	g.SendMsg(cmd.PrivateChatRsp, player.PlayerID, player.ClientSeq, new(proto.PrivateChatRsp))
}

func (g *GameManager) ReadPrivateChatReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user read private chat, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ReadPrivateChatReq)
	targetUid := req.TargetUid

	msgList, exist := player.ChatMsgMap[targetUid]
	if !exist {
		return
	}
	for index, chatMsg := range msgList {
		chatMsg.IsRead = true
		msgList[index] = chatMsg
	}
	player.ChatMsgMap[targetUid] = msgList

	g.SendMsg(cmd.ReadPrivateChatRsp, player.PlayerID, player.ClientSeq, new(proto.ReadPrivateChatRsp))
}

func (g *GameManager) PlayerChatReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user multiplayer chat, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PlayerChatReq)
	channelId := req.ChannelId
	chatInfo := req.ChatInfo

	sendChatInfo := &proto.ChatInfo{
		Time:    uint32(time.Now().Unix()),
		Uid:     player.PlayerID,
		Content: nil,
	}
	switch chatInfo.Content.(type) {
	case *proto.ChatInfo_Text:
		text := chatInfo.Content.(*proto.ChatInfo_Text).Text
		if len(text) == 0 {
			return
		}
		sendChatInfo.Content = &proto.ChatInfo_Text{
			Text: text,
		}
	case *proto.ChatInfo_Icon:
		icon := chatInfo.Content.(*proto.ChatInfo_Icon).Icon
		sendChatInfo.Content = &proto.ChatInfo_Icon{
			Icon: icon,
		}
	default:
		return
	}

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	world.AddChat(sendChatInfo)

	playerChatNotify := &proto.PlayerChatNotify{
		ChannelId: channelId,
		ChatInfo:  sendChatInfo,
	}
	for _, worldPlayer := range world.GetAllPlayer() {
		g.SendMsg(cmd.PlayerChatNotify, worldPlayer.PlayerID, player.ClientSeq, playerChatNotify)
	}

	g.SendMsg(cmd.PlayerChatRsp, player.PlayerID, player.ClientSeq, new(proto.PlayerChatRsp))
}

func (g *GameManager) ConvChatInfoToChatMsg(chatInfo *proto.ChatInfo) (chatMsg *model.ChatMsg) {
	chatMsg = &model.ChatMsg{
		Time:    chatInfo.Time,
		ToUid:   chatInfo.ToUid,
		Uid:     chatInfo.Uid,
		IsRead:  chatInfo.IsRead,
		MsgType: 0,
		Text:    "",
		Icon:    0,
	}
	switch chatInfo.Content.(type) {
	case *proto.ChatInfo_Text:
		chatMsg.MsgType = model.ChatMsgTypeText
		chatMsg.Text = chatInfo.Content.(*proto.ChatInfo_Text).Text
	case *proto.ChatInfo_Icon:
		chatMsg.MsgType = model.ChatMsgTypeIcon
		chatMsg.Icon = chatInfo.Content.(*proto.ChatInfo_Icon).Icon
	default:
	}
	return chatMsg
}

func (g *GameManager) ConvChatMsgToChatInfo(chatMsg *model.ChatMsg) (chatInfo *proto.ChatInfo) {
	chatInfo = &proto.ChatInfo{
		Time:     chatMsg.Time,
		Sequence: 0,
		ToUid:    chatMsg.ToUid,
		Uid:      chatMsg.Uid,
		IsRead:   chatMsg.IsRead,
		Content:  nil,
	}
	switch chatMsg.MsgType {
	case model.ChatMsgTypeText:
		chatInfo.Content = &proto.ChatInfo_Text{
			Text: chatMsg.Text,
		}
	case model.ChatMsgTypeIcon:
		chatInfo.Content = &proto.ChatInfo_Icon{
			Icon: chatMsg.Icon,
		}
	default:
	}
	return chatInfo
}

// 跨服玩家聊天通知

func (g *GameManager) ServerChatMsgNotify(chatMsgInfo *mq.ChatMsgInfo) {
	targetPlayer := USER_MANAGER.GetOnlineUser(chatMsgInfo.ToUid)
	if targetPlayer == nil {
		logger.Error("player is nil, uid: %v", chatMsgInfo.ToUid)
		return
	}
	chatMsg := &model.ChatMsg{
		Time:    chatMsgInfo.Time,
		ToUid:   chatMsgInfo.ToUid,
		Uid:     chatMsgInfo.Uid,
		IsRead:  chatMsgInfo.IsRead,
		MsgType: chatMsgInfo.MsgType,
		Text:    chatMsgInfo.Text,
		Icon:    chatMsgInfo.Icon,
	}
	// 消息加入目标玩家的队列
	msgList, exist := targetPlayer.ChatMsgMap[chatMsgInfo.Uid]
	if !exist {
		msgList = make([]*model.ChatMsg, 0)
	}
	msgList = append(msgList, chatMsg)
	targetPlayer.ChatMsgMap[chatMsgInfo.Uid] = msgList

	// 如果目标玩家在线发送消息
	if targetPlayer.Online {
		privateChatNotify := &proto.PrivateChatNotify{
			ChatInfo: g.ConvChatMsgToChatInfo(chatMsg),
		}
		g.SendMsg(cmd.PrivateChatNotify, targetPlayer.PlayerID, targetPlayer.ClientSeq, privateChatNotify)
	}
}
