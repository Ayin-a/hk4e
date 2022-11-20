package entity

type User struct {
	Uid      uint64
	Username string
	Password string
	IsAdmin  bool
}
