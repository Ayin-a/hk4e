package constant

var PlayerPropertyConst *PlayerProperty

type PlayerProperty struct {
	PROP_EXP                             uint16 // 角色经验
	PROP_BREAK_LEVEL                     uint16 // 角色突破等阶
	PROP_SATIATION_VAL                   uint16 // 角色饱食度
	PROP_SATIATION_PENALTY_TIME          uint16 // 角色饱食度溢出
	PROP_LEVEL                           uint16 // 角色等级
	PROP_LAST_CHANGE_AVATAR_TIME         uint16 // 上一次改变角色的时间 暂不确定
	PROP_MAX_SPRING_VOLUME               uint16 // 七天神像最大恢复血量 0-8500000
	PROP_CUR_SPRING_VOLUME               uint16 // 七天神像当前血量 0-PROP_MAX_SPRING_VOLUME
	PROP_IS_SPRING_AUTO_USE              uint16 // 是否开启靠近自动回血 0 1
	PROP_SPRING_AUTO_USE_PERCENT         uint16 // 自动回血百分比 0-100
	PROP_IS_FLYABLE                      uint16 // 禁止使用风之翼 0 1
	PROP_IS_WEATHER_LOCKED               uint16 // 游戏内天气锁定
	PROP_IS_GAME_TIME_LOCKED             uint16 // 游戏内时间锁定
	PROP_IS_TRANSFERABLE                 uint16 // 是否禁止传送 0 1
	PROP_MAX_STAMINA                     uint16 // 最大体力 0-24000
	PROP_CUR_PERSIST_STAMINA             uint16 // 当前体力 0-PROP_MAX_STAMINA
	PROP_CUR_TEMPORARY_STAMINA           uint16 // 当前临时体力 暂不确定
	PROP_PLAYER_LEVEL                    uint16 // 冒险等级
	PROP_PLAYER_EXP                      uint16 // 冒险经验
	PROP_PLAYER_HCOIN                    uint16 // 原石 可以为负数
	PROP_PLAYER_SCOIN                    uint16 // 摩拉
	PROP_PLAYER_MP_SETTING_TYPE          uint16 // 多人游戏世界权限 0禁止加入 1直接加入 2需要申请
	PROP_IS_MP_MODE_AVAILABLE            uint16 // 玩家当前的世界是否可加入 0 1 例如任务中就不可加入
	PROP_PLAYER_WORLD_LEVEL              uint16 // 世界等级 0-8
	PROP_PLAYER_RESIN                    uint16 // 树脂 0-2000
	PROP_PLAYER_WAIT_SUB_HCOIN           uint16 // 暂存的原石 暂不确定
	PROP_PLAYER_WAIT_SUB_SCOIN           uint16 // 暂存的摩拉 暂不确定
	PROP_IS_ONLY_MP_WITH_PS_PLAYER       uint16 // 当前玩家多人世界里是否有PS主机玩家 0 1
	PROP_PLAYER_MCOIN                    uint16 // 创世结晶 可以为负数
	PROP_PLAYER_WAIT_SUB_MCOIN           uint16 // 暂存的创世结晶 暂不确定
	PROP_PLAYER_LEGENDARY_KEY            uint16 // 传说任务钥匙
	PROP_IS_HAS_FIRST_SHARE              uint16 // 是否拥有抽卡结果首次分享奖励 暂不确定
	PROP_PLAYER_FORGE_POINT              uint16 // 锻造相关
	PROP_CUR_CLIMATE_METER               uint16 // 天气相关
	PROP_CUR_CLIMATE_TYPE                uint16 // 天气相关
	PROP_CUR_CLIMATE_AREA_ID             uint16 // 天气相关
	PROP_CUR_CLIMATE_AREA_CLIMATE_TYPE   uint16 // 天气相关
	PROP_PLAYER_WORLD_LEVEL_LIMIT        uint16 // 降低世界等级到此等级 暂不确定
	PROP_PLAYER_WORLD_LEVEL_ADJUST_CD    uint16 // 降低世界等级的CD
	PROP_PLAYER_LEGENDARY_DAILY_TASK_NUM uint16 // 传说每日任务数量 暂不确定
	PROP_PLAYER_HOME_COIN                uint16 // 洞天宝钱
	PROP_PLAYER_WAIT_SUB_HOME_COIN       uint16 // 暂存的洞天宝钱 暂不确定
}

func InitPlayerPropertyConst() {
	PlayerPropertyConst = new(PlayerProperty)

	PlayerPropertyConst.PROP_EXP = 1001
	PlayerPropertyConst.PROP_BREAK_LEVEL = 1002
	PlayerPropertyConst.PROP_SATIATION_VAL = 1003
	PlayerPropertyConst.PROP_SATIATION_PENALTY_TIME = 1004
	PlayerPropertyConst.PROP_LEVEL = 4001
	PlayerPropertyConst.PROP_LAST_CHANGE_AVATAR_TIME = 10001
	PlayerPropertyConst.PROP_MAX_SPRING_VOLUME = 10002
	PlayerPropertyConst.PROP_CUR_SPRING_VOLUME = 10003
	PlayerPropertyConst.PROP_IS_SPRING_AUTO_USE = 10004
	PlayerPropertyConst.PROP_SPRING_AUTO_USE_PERCENT = 10005
	PlayerPropertyConst.PROP_IS_FLYABLE = 10006
	PlayerPropertyConst.PROP_IS_WEATHER_LOCKED = 10007
	PlayerPropertyConst.PROP_IS_GAME_TIME_LOCKED = 10008
	PlayerPropertyConst.PROP_IS_TRANSFERABLE = 10009
	PlayerPropertyConst.PROP_MAX_STAMINA = 10010
	PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA = 10011
	PlayerPropertyConst.PROP_CUR_TEMPORARY_STAMINA = 10012
	PlayerPropertyConst.PROP_PLAYER_LEVEL = 10013
	PlayerPropertyConst.PROP_PLAYER_EXP = 10014
	PlayerPropertyConst.PROP_PLAYER_HCOIN = 10015
	PlayerPropertyConst.PROP_PLAYER_SCOIN = 10016
	PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE = 10017
	PlayerPropertyConst.PROP_IS_MP_MODE_AVAILABLE = 10018
	PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL = 10019
	PlayerPropertyConst.PROP_PLAYER_RESIN = 10020
	PlayerPropertyConst.PROP_PLAYER_WAIT_SUB_HCOIN = 10022
	PlayerPropertyConst.PROP_PLAYER_WAIT_SUB_SCOIN = 10023
	PlayerPropertyConst.PROP_IS_ONLY_MP_WITH_PS_PLAYER = 10024
	PlayerPropertyConst.PROP_PLAYER_MCOIN = 10025
	PlayerPropertyConst.PROP_PLAYER_WAIT_SUB_MCOIN = 10026
	PlayerPropertyConst.PROP_PLAYER_LEGENDARY_KEY = 10027
	PlayerPropertyConst.PROP_IS_HAS_FIRST_SHARE = 10028
	PlayerPropertyConst.PROP_PLAYER_FORGE_POINT = 10029
	PlayerPropertyConst.PROP_CUR_CLIMATE_METER = 10035
	PlayerPropertyConst.PROP_CUR_CLIMATE_TYPE = 10036
	PlayerPropertyConst.PROP_CUR_CLIMATE_AREA_ID = 10037
	PlayerPropertyConst.PROP_CUR_CLIMATE_AREA_CLIMATE_TYPE = 10038
	PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL_LIMIT = 10039
	PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL_ADJUST_CD = 10040
	PlayerPropertyConst.PROP_PLAYER_LEGENDARY_DAILY_TASK_NUM = 10041
	PlayerPropertyConst.PROP_PLAYER_HOME_COIN = 10042
	PlayerPropertyConst.PROP_PLAYER_WAIT_SUB_HOME_COIN = 10043
}
