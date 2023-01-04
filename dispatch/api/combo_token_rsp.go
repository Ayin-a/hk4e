package api

type ComboTokenRsp struct {
	Message string    `json:"message"`
	Retcode int       `json:"retcode"`
	Data    LoginData `json:"data"`
}

type LoginData struct {
	AccountType   int    `json:"account_type"`
	Heartbeat     bool   `json:"heartbeat"`
	ComboID       string `json:"combo_id"`
	ComboToken    string `json:"combo_token"`
	OpenID        string `json:"open_id"`
	Data          string `json:"data"`
	FatigueRemind any    `json:"fatigue_remind"`
}

func NewComboTokenRsp() (r *ComboTokenRsp) {
	r = &ComboTokenRsp{
		Message: "",
		Retcode: 0,
		Data: LoginData{
			AccountType:   1,
			Heartbeat:     false,
			ComboID:       "",
			ComboToken:    "",
			OpenID:        "",
			Data:          "{\"guest\":false}",
			FatigueRemind: nil,
		},
	}
	return r
}
