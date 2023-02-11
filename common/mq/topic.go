package mq

import (
	"hk4e/node/api"
)

func (m *MessageQueue) getOriginServer() (originServerType string, originServerAppId string) {
	originServerType = m.serverType
	originServerAppId = m.appId
	return originServerType, originServerAppId
}

func (m *MessageQueue) getTopic(serverType string, appId string) string {
	topic := serverType + "_" + appId + "_" + "HK4E"
	return topic
}

func (m *MessageQueue) SendToGate(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(api.GATE, appId)
	netMsg.ServerType = api.GATE
	netMsg.AppId = appId
	originServerType, originServerAppId := m.getOriginServer()
	netMsg.OriginServerType = originServerType
	netMsg.OriginServerAppId = originServerAppId
	m.netMsgInput <- netMsg
}

func (m *MessageQueue) SendToGs(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(api.GS, appId)
	netMsg.ServerType = api.GS
	netMsg.AppId = appId
	originServerType, originServerAppId := m.getOriginServer()
	netMsg.OriginServerType = originServerType
	netMsg.OriginServerAppId = originServerAppId
	m.netMsgInput <- netMsg
}

func (m *MessageQueue) SendToFight(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(api.FIGHT, appId)
	netMsg.ServerType = api.FIGHT
	netMsg.AppId = appId
	originServerType, originServerAppId := m.getOriginServer()
	netMsg.OriginServerType = originServerType
	netMsg.OriginServerAppId = originServerAppId
	m.netMsgInput <- netMsg
}

func (m *MessageQueue) SendToPathfinding(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(api.PATHFINDING, appId)
	netMsg.ServerType = api.PATHFINDING
	netMsg.AppId = appId
	originServerType, originServerAppId := m.getOriginServer()
	netMsg.OriginServerType = originServerType
	netMsg.OriginServerAppId = originServerAppId
	m.netMsgInput <- netMsg
}

func (m *MessageQueue) SendToAll(netMsg *NetMsg) {
	netMsg.Topic = "ALL_SERVER_HK4E"
	netMsg.ServerType = "ALL_SERVER_HK4E"
	originServerType, originServerAppId := m.getOriginServer()
	netMsg.OriginServerType = originServerType
	netMsg.OriginServerAppId = originServerAppId
	m.netMsgInput <- netMsg
}
