package db

type User struct {
	Uid      uint64 `gorm:"column:uid;primary_key;auto_increment"`
	Username string `gorm:"column:username"`
	Password string `gorm:"column:password"`
	IsAdmin  bool   `gorm:"column:is_admin"`
}

func (User) TableName() string {
	return "user"
}
