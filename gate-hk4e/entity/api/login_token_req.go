package api

type LoginTokenRequest struct {
	Uid   string `json:"uid"`
	Token string `json:"token"`
}
