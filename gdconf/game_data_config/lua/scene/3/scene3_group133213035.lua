-- 基础信息
local base_info = {
	group_id = 133213035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 23010501, pos = { x = -3691.689, y = 203.676, z = -3232.553 }, rot = { x = 349.698, y = 33.597, z = 8.982 }, level = 29, drop_tag = "先遣队", pose_id = 9001, climate_area_id = 2, area_id = 12 },
	{ config_id = 35004, monster_id = 23020101, pos = { x = -3697.172, y = 202.251, z = -3239.172 }, rot = { x = 0.000, y = 36.459, z = 0.000 }, level = 29, drop_tag = "债务处理人", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35005, gadget_id = 70310006, pos = { x = -3699.544, y = 201.661, z = -3240.346 }, rot = { x = 4.318, y = 0.564, z = 14.877 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1035002, name = "MONSTER_BATTLE_35002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_35002" }
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
		monsters = { 35001 },
		gadgets = { 35005 },
		regions = { },
		triggers = { "MONSTER_BATTLE_35002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_35002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 35004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end