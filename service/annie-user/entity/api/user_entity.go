package api

type User struct {
	Uid      uint64 `json:"uid"`
	Username string `json:"username"`
	Password string `json:"password"`
	IsAdmin  bool   `json:"isAdmin"`
}
