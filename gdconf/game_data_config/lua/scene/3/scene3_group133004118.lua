-- 基础信息
local base_info = {
	group_id = 133004118
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 324, monster_id = 21010301, pos = { x = 2172.215, y = 207.098, z = -1055.114 }, rot = { x = 0.000, y = 23.698, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 325, monster_id = 21010301, pos = { x = 2170.061, y = 207.048, z = -1053.780 }, rot = { x = 0.000, y = 23.553, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 326, monster_id = 21010301, pos = { x = 2167.539, y = 206.836, z = -1053.118 }, rot = { x = 0.000, y = 22.679, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 327, monster_id = 22010201, pos = { x = 2168.199, y = 206.791, z = -1057.823 }, rot = { x = 0.000, y = 24.324, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 328, monster_id = 22010301, pos = { x = 2168.081, y = 206.750, z = -1057.887 }, rot = { x = 0.000, y = 29.130, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 576, monster_id = 21010501, pos = { x = 2174.031, y = 206.571, z = -1060.629 }, rot = { x = 0.000, y = 21.111, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 577, monster_id = 21010501, pos = { x = 2162.118, y = 206.382, z = -1053.308 }, rot = { x = 0.000, y = 29.885, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 578, monster_id = 21010701, pos = { x = 2177.326, y = 206.850, z = -1059.395 }, rot = { x = 0.000, y = 16.021, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 643, monster_id = 21010701, pos = { x = 2162.993, y = 206.812, z = -1050.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 644, monster_id = 21010301, pos = { x = 2177.638, y = 206.856, z = -1059.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 645, monster_id = 21010901, pos = { x = 2174.032, y = 206.569, z = -1060.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 646, monster_id = 21010901, pos = { x = 2161.895, y = 206.389, z = -1053.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 },
	{ config_id = 647, monster_id = 21010301, pos = { x = 2162.618, y = 206.807, z = -1049.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1000160, name = "SPECIFIC_MONSTER_HP_CHANGE_160", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "327", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160" },
	{ config_id = 1000161, name = "ANY_MONSTER_DIE_161", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_161", trigger_count = 0 },
	{ config_id = 1000280, name = "ANY_MONSTER_DIE_280", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_280", action = "action_EVENT_ANY_MONSTER_DIE_280" }
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
	end_suite = 1,
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 324, 325, 326, 327 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_160", "ANY_MONSTER_DIE_161", "ANY_MONSTER_DIE_280" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_160(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 643, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 576, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 577, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 578, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_161(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004118") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_280(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_280(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 644, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 645, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 646, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 647, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end