-- 基础信息
local base_info = {
	group_id = 133304332
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 25020201, pos = { x = -1643.258, y = 222.707, z = 2879.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 21 },
	{ config_id = 332002, monster_id = 25010301, pos = { x = -1635.429, y = 219.715, z = 2885.026 }, rot = { x = 0.000, y = 143.257, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9003, area_id = 21 },
	{ config_id = 332003, monster_id = 25010201, pos = { x = -1657.047, y = 222.616, z = 2874.983 }, rot = { x = 0.000, y = 189.320, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9003, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332004, gadget_id = 70210101, pos = { x = -1634.964, y = 220.396, z = 2884.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", area_id = 21 },
	{ config_id = 332005, gadget_id = 70210101, pos = { x = -1656.750, y = 223.325, z = 2873.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 },
	{ config_id = 332008, gadget_id = 70210101, pos = { x = -1662.600, y = 220.177, z = 2929.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", area_id = 21 },
	{ config_id = 332009, gadget_id = 70210101, pos = { x = -1663.474, y = 220.202, z = 2928.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1332010, name = "MONSTER_BATTLE_332010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_332010" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 332002, 332003 },
		gadgets = { 332004, 332005, 332008, 332009 },
		regions = { },
		triggers = { "MONSTER_BATTLE_332010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_332010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 332001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end