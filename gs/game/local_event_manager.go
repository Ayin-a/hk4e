package game

// 本地事件队列管理器

const (
	LoadLoginUserFromDbFinish = iota
	CheckUserExistOnRegFromDbFinish
)

type LocalEvent struct {
	EventId int
	Msg     any
}

type LocalEventManager struct {
	localEventChan chan *LocalEvent
}

func NewLocalEventManager() (r *LocalEventManager) {
	r = new(LocalEventManager)
	r.localEventChan = make(chan *LocalEvent, 1000)
	return r
}

func (l *LocalEventManager) LocalEventHandle(localEvent *LocalEvent) {
	switch localEvent.EventId {
	case LoadLoginUserFromDbFinish:
		playerLoginInfo := localEvent.Msg.(*PlayerLoginInfo)
		GAME_MANAGER.OnLoginOk(playerLoginInfo.UserId, playerLoginInfo.Player, playerLoginInfo.ClientSeq)
	case CheckUserExistOnRegFromDbFinish:
		playerRegInfo := localEvent.Msg.(*PlayerRegInfo)
		GAME_MANAGER.OnRegOk(playerRegInfo.Exist, playerRegInfo.Req, playerRegInfo.UserId, playerRegInfo.ClientSeq)
	}
}
