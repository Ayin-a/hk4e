package entity

type AccessToken struct {
	Atid        uint64 `gorm:"column:atid;primary_key;auto_increment"`
	Uid         uint64 `gorm:"column:uid"`
	Username    string `gorm:"column:username"`
	AccessToken string `gorm:"column:access_token"`
	CreateTime  string `gorm:"column:create_time"`
}

func (AccessToken) TableName() string {
	return "access_token"
}
