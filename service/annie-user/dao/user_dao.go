package dao

import (
	dbEntity "annie-user/entity/db"
)

func (d *Dao) InsertUser(user *dbEntity.User) error {
	db := d.db
	err := db.Create(user).Error
	return err
}

func (d *Dao) UpdateUser(user *dbEntity.User) error {
	db := d.db
	db = db.Model(&user)
	err := db.Updates(user).Error
	return err
}

func (d *Dao) QueryUser(user *dbEntity.User) ([]dbEntity.User, error) {
	var userList []dbEntity.User
	db := d.db
	if user.Uid != 0 {
		db = db.Where("`uid` = ?", user.Uid)
	}
	if user.Username != "" {
		db = db.Where("`username` = ?", user.Username)
	}
	if user.Password != "" {
		db = db.Where("`password` = ?", user.Password)
	}
	if user.IsAdmin != false {
		db = db.Where("`is_admin` = ?", user.IsAdmin)
	}
	err := db.Find(&userList).Error
	return userList, err
}
