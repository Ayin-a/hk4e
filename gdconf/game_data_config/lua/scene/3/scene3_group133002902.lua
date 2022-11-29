-- 基础信息
local base_info = {
	group_id = 133002902
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 950, monster_id = 20011201, pos = { x = 1826.036, y = 235.186, z = -840.186 }, rot = { x = 0.000, y = 83.016, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 951, monster_id = 20011201, pos = { x = 1834.083, y = 236.613, z = -833.976 }, rot = { x = 0.000, y = 293.807, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 952, monster_id = 20011201, pos = { x = 1821.216, y = 236.011, z = -836.549 }, rot = { x = 0.000, y = 344.977, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 953, monster_id = 20011301, pos = { x = 1825.588, y = 235.884, z = -834.693 }, rot = { x = 0.000, y = 344.977, z = 0.000 }, level = 15, drop_id = 1000100, affix = { 1008 }, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 336, shape = RegionShape.SPHERE, radius = 28.03, pos = { x = 1825.334, y = 235.405, z = -838.408 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000334, name = "ANY_MONSTER_DIE_334", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_334", action = "action_EVENT_ANY_MONSTER_DIE_334" },
	{ config_id = 1000335, name = "SPECIFIC_MONSTER_HP_CHANGE_335", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "953", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335" },
	{ config_id = 1000336, name = "ENTER_REGION_336", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_336", action = "action_EVENT_ENTER_REGION_336" },
	{ config_id = 1902002, name = "QUEST_START_902002", event = EventType.EVENT_QUEST_START, source = "2000607", condition = "condition_EVENT_QUEST_START_902002", action = "action_EVENT_QUEST_START_902002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_killed", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 950, 951, 952, 953 },
		gadgets = { },
		regions = { 336 },
		triggers = { "ANY_MONSTER_DIE_334", "SPECIFIC_MONSTER_HP_CHANGE_335", "ENTER_REGION_336", "QUEST_START_902002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_334(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_334(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "monster_killed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_killed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_335(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 950, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 951, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_336(context, evt)
	if evt.param1 ~= 336 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_336(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300290201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_902002(context, evt)
	-- 判断变量"monster_killed"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_killed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_902002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end