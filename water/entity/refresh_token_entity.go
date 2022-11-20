package entity

type RefreshToken struct {
	Rtid         uint64 `gorm:"column:rtid;primary_key;auto_increment"`
	Uid          uint64 `gorm:"column:uid"`
	Username     string `gorm:"column:username"`
	RefreshToken string `gorm:"column:refresh_token"`
	CreateTime   string `gorm:"column:create_time"`
}

func (RefreshToken) TableName() string {
	return "refresh_token"
}
