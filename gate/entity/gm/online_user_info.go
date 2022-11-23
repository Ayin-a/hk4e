package gm

type OnlineUserList struct {
	UserList []*OnlineUserInfo `json:"userList"`
}

type OnlineUserInfo struct {
	Uid    uint32 `json:"uid"`
	ConvId uint64 `json:"convId"`
	Addr   string `json:"addr"`
}
