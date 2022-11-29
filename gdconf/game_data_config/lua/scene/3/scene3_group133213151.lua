-- 基础信息
local base_info = {
	group_id = 133213151
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151001, monster_id = 25100101, pos = { x = -3822.075, y = 333.361, z = -3096.397 }, rot = { x = 0.000, y = 105.163, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5105 }, pose_id = 1, title_id = 10035, special_name_id = 10058, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 151007, gadget_id = 70290147, pos = { x = -3821.418, y = 332.595, z = -3097.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151002, name = "ANY_MONSTER_DIE_151002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151002", action = "action_EVENT_ANY_MONSTER_DIE_151002" },
	{ config_id = 1151003, name = "MONSTER_BATTLE_151003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_151003", action = "action_EVENT_MONSTER_BATTLE_151003" },
	{ config_id = 1151004, name = "CHALLENGE_SUCCESS_151004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_151004" },
	{ config_id = 1151005, name = "CHALLENGE_FAIL_151005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_151005", trigger_count = 0 },
	{ config_id = 1151006, name = "SPECIFIC_MONSTER_HP_CHANGE_151006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "151001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_151006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_151006" },
	{ config_id = 1151008, name = "GROUP_LOAD_151008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_151008", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 151001 },
		gadgets = { 151007 },
		regions = { },
		triggers = { "MONSTER_BATTLE_151003", "CHALLENGE_SUCCESS_151004", "CHALLENGE_FAIL_151005", "GROUP_LOAD_151008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151002(context, evt)
	if 151001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_151003(context, evt)
	if 151001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_151003(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 133213151, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_KilMonster_InTime")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_151004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_151005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133213151, EntityType.MONSTER, 151001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_151006(context, evt)
	--[[判断指定configid的怪物的血量小于%10时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 10 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_151006(context, evt)
	-- 终止识别id为180的挑战，并判定成功
		ScriptLib.StopChallenge(context, 180, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_151008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133213151, EntityType.MONSTER, 151001)
	
		
	
	return 0
end