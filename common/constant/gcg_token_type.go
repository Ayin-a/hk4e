package constant

var GCGTokenConst *GCGTokenType

type GCGTokenType struct {
	TOKEN_CUR_HEALTH uint32 // 现行血量
	TOKEN_MAX_HEALTH uint32 // 最大血量(不确定)
	TOKEN_CUR_ELEM   uint32 // 现行充能
	TOKEN_MAX_ELEM   uint32 // 最大充能(充能条长度)
}

func InitGCGTokenConst() {
	GCGTokenConst = new(GCGTokenType)

	GCGTokenConst.TOKEN_CUR_HEALTH = 1
	GCGTokenConst.TOKEN_MAX_HEALTH = 2
	GCGTokenConst.TOKEN_CUR_ELEM = 4
	GCGTokenConst.TOKEN_MAX_ELEM = 5
}
