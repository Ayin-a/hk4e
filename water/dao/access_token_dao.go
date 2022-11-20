package dao

import "water/entity"

func (d *Dao) InsertAccessToken(accessToken *entity.AccessToken) (*entity.AccessToken, error) {
	err := d.db.Create(accessToken).Error
	return accessToken, err
}

func (d *Dao) QueryAccessToken(accessToken *entity.AccessToken) ([]entity.AccessToken, error) {
	var accessTokenList []entity.AccessToken
	db := d.db
	if accessToken.Atid != 0 {
		db = db.Where("`atid` = ?", accessToken.Atid)
	}
	if accessToken.Uid != 0 {
		db = db.Where("`uid` = ?", accessToken.Uid)
	}
	if accessToken.Username != "" {
		db = db.Where("`username` = ?", accessToken.Username)
	}
	if accessToken.AccessToken != "" {
		db = db.Where("`access_token` = ?", accessToken.AccessToken)
	}
	if accessToken.CreateTime != "" {
		db = db.Where("`create_time` = ?", accessToken.CreateTime)
	}
	err := db.Find(&accessTokenList).Error
	return accessTokenList, err
}
