package api

type LoginResult struct {
	Message string     `json:"message"`
	Retcode int        `json:"retcode"`
	Data    VerifyData `json:"data"`
}

type VerifyData struct {
	Account             VerifyAccountData `json:"account"`
	DeviceGrantRequired bool              `json:"device_grant_required"`
	RealnameOperation   string            `json:"realname_operation"`
	RealpersonRequired  bool              `json:"realperson_required"`
	SafeMobileRequired  bool              `json:"safe_mobile_required"`
}

type VerifyAccountData struct {
	Uid               string `json:"uid"`
	Name              string `json:"name"`
	Email             string `json:"email"`
	Mobile            string `json:"mobile"`
	IsEmailVerify     string `json:"is_email_verify"`
	Realname          string `json:"realname"`
	IdentityCard      string `json:"identity_card"`
	Token             string `json:"token"`
	SafeMobile        string `json:"safe_mobile"`
	FacebookName      string `json:"facebook_name"`
	TwitterName       string `json:"twitter_name"`
	GameCenterName    string `json:"game_center_name"`
	GoogleName        string `json:"google_name"`
	AppleName         string `json:"apple_name"`
	SonyName          string `json:"sony_name"`
	TapName           string `json:"tap_name"`
	Country           string `json:"country"`
	ReactivateTicket  string `json:"reactivate_ticket"`
	AreaCode          string `json:"area_code"`
	DeviceGrantTicket string `json:"device_grant_ticket"`
}

func NewLoginResult() (r *LoginResult) {
	r = &LoginResult{
		Message: "",
		Retcode: 0,
		Data: VerifyData{
			Account: VerifyAccountData{
				Uid:               "",
				Name:              "",
				Email:             "",
				Mobile:            "",
				IsEmailVerify:     "0",
				Realname:          "",
				IdentityCard:      "",
				Token:             "",
				SafeMobile:        "",
				FacebookName:      "",
				TwitterName:       "",
				GameCenterName:    "",
				GoogleName:        "",
				AppleName:         "",
				SonyName:          "",
				TapName:           "",
				Country:           "CN",
				ReactivateTicket:  "",
				AreaCode:          "**",
				DeviceGrantTicket: "",
			},
			DeviceGrantRequired: false,
			RealnameOperation:   "None",
			RealpersonRequired:  false,
			SafeMobileRequired:  false,
		},
	}
	return r
}
