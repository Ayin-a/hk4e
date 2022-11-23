package game

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
	gameManager    *GameManager
}

func NewLocalEventManager(gameManager *GameManager) (r *LocalEventManager) {
	r = new(LocalEventManager)
	r.localEventChan = make(chan *LocalEvent, 1000)
	r.gameManager = gameManager
	return r
}

func (l *LocalEventManager) LocalEventHandle(localEvent *LocalEvent) {
	switch localEvent.EventId {
	case LoadLoginUserFromDbFinish:
		playerLoginInfo := localEvent.Msg.(*PlayerLoginInfo)
		l.gameManager.OnLoginOk(playerLoginInfo.UserId, playerLoginInfo.Player, playerLoginInfo.ClientSeq)
	case CheckUserExistOnRegFromDbFinish:
		playerRegInfo := localEvent.Msg.(*PlayerRegInfo)
		l.gameManager.OnRegOk(playerRegInfo.Exist, playerRegInfo.Req, playerRegInfo.UserId, playerRegInfo.ClientSeq)
	}
}
