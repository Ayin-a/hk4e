package dao

import "water/entity"

func (d *Dao) InsertRefreshToken(refreshToken *entity.RefreshToken) (*entity.RefreshToken, error) {
	err := d.db.Create(refreshToken).Error
	return refreshToken, err
}

func (d *Dao) QueryRefreshToken(refreshToken *entity.RefreshToken) ([]entity.RefreshToken, error) {
	var refreshTokenList []entity.RefreshToken
	db := d.db
	if refreshToken.Rtid != 0 {
		db = db.Where("`rtid` = ?", refreshToken.Rtid)
	}
	if refreshToken.Uid != 0 {
		db = db.Where("`uid` = ?", refreshToken.Uid)
	}
	if refreshToken.Username != "" {
		db = db.Where("`username` = ?", refreshToken.Username)
	}
	if refreshToken.RefreshToken != "" {
		db = db.Where("`refresh_token` = ?", refreshToken.RefreshToken)
	}
	if refreshToken.CreateTime != "" {
		db = db.Where("`create_time` = ?", refreshToken.CreateTime)
	}
	err := db.Find(&refreshTokenList).Error
	return refreshTokenList, err
}
