package api

type ComboTokenReq struct {
	AppID     int    `json:"app_id"`
	ChannelID int    `json:"channel_id"`
	Data      string `json:"data"`
	Device    string `json:"device"`
	Sign      string `json:"sign"`
}

type LoginTokenData struct {
	Uid   string `json:"uid"`
	Token string `json:"token"`
	Guest bool   `json:"guest"`
}
