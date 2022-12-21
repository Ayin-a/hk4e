package mq

import (
	"strings"
)

const (
	GATE        = "GATE_${APPID}_HK4E"
	GS          = "GS_${APPID}_HK4E"
	FIGHT       = "FIGHT_${APPID}_HK4E"
	PATHFINDING = "PATHFINDING_${APPID}_HK4E"
)

func (m *MessageQueue) getTopic(serverType string, appId string) string {
	topic := strings.ReplaceAll(serverType, "${APPID}", appId)
	return topic
}

func (m *MessageQueue) SendToGate(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(GATE, appId)
	m.netMsgInput <- netMsg
}

func (m *MessageQueue) SendToGs(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(GS, appId)
	m.netMsgInput <- netMsg
}

func (m *MessageQueue) SendToFight(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(FIGHT, appId)
	m.netMsgInput <- netMsg
}

func (m *MessageQueue) SendToPathfinding(appId string, netMsg *NetMsg) {
	netMsg.Topic = m.getTopic(PATHFINDING, appId)
	m.netMsgInput <- netMsg
}
