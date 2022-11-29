-- 基础信息
local base_info = {
	group_id = 133225118
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 118001, monster_id = 24010101, pos = { x = -6330.953, y = 260.151, z = -2591.050 }, rot = { x = 0.000, y = 315.401, z = 0.000 }, level = 33, drop_tag = "遗迹守卫", affix = { 5009 }, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118002, name = "VARIABLE_CHANGE_118002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_118002", action = "action_EVENT_VARIABLE_CHANGE_118002" },
	{ config_id = 1118003, name = "GROUP_LOAD_118003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_118003", action = "action_EVENT_GROUP_LOAD_118003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_start", value = 0, no_refresh = false }
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
		monsters = { 118001 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_118002", "GROUP_LOAD_118003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_118002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_start"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_118002(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {118001}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133225118中,configid为：118001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 118001, 133225118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_118003(context, evt)
	-- 判断变量"monster_start"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_118003(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {118001}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	return 0
end