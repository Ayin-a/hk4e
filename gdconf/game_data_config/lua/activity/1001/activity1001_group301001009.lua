-- 基础信息
local base_info = {
	group_id = 301001009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70800018, pos = { x = -492.420, y = 203.780, z = 285.700 }, rot = { x = 0.000, y = 314.200, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 9002, gadget_id = 70800019, pos = { x = -492.420, y = 203.780, z = 285.700 }, rot = { x = 0.000, y = 314.200, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 9003, gadget_id = 70800020, pos = { x = -492.420, y = 203.780, z = 285.700 }, rot = { x = 0.000, y = 314.200, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 9009, gadget_id = 70800026, pos = { x = -492.420, y = 203.780, z = 285.700 }, rot = { x = 0.000, y = 134.200, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009004, name = "QUEST_FINISH_9004", event = EventType.EVENT_QUEST_FINISH, source = "4000108", condition = "", action = "action_EVENT_QUEST_FINISH_9004" },
	{ config_id = 1009005, name = "QUEST_FINISH_9005", event = EventType.EVENT_QUEST_FINISH, source = "4000506", condition = "", action = "action_EVENT_QUEST_FINISH_9005" },
	{ config_id = 1009006, name = "QUEST_FINISH_9006", event = EventType.EVENT_QUEST_FINISH, source = "4000108", condition = "", action = "action_EVENT_QUEST_FINISH_9006" },
	{ config_id = 1009007, name = "SEALAMP_PHASE_CHANGE_9007", event = EventType.EVENT_SEALAMP_PHASE_CHANGE, source = "", condition = "condition_EVENT_SEALAMP_PHASE_CHANGE_9007", action = "action_EVENT_SEALAMP_PHASE_CHANGE_9007" },
	{ config_id = 1009011, name = "GROUP_LOAD_9011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9011", action = "", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Quest 1 State", value = 0, no_refresh = true },
	{ config_id = 2, name = "Quest 2 State", value = 0, no_refresh = true },
	{ config_id = 3, name = "Lamp State", value = 1, no_refresh = true }
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
		gadgets = { 9001 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "QUEST_FINISH_9006", "SEALAMP_PHASE_CHANGE_9007", "GROUP_LOAD_9011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9002 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "SEALAMP_PHASE_CHANGE_9007", "GROUP_LOAD_9011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9003 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "SEALAMP_PHASE_CHANGE_9007", "GROUP_LOAD_9011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 9009 },
		regions = { },
		triggers = { "QUEST_FINISH_9004", "QUEST_FINISH_9005", "SEALAMP_PHASE_CHANGE_9007", "GROUP_LOAD_9011" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_9004(context, evt)
	-- 将本组内变量名为 "Quest 1 State" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest 1 State", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_9005(context, evt)
	-- 将本组内变量名为 "Quest 2 State" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest 2 State", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_9006(context, evt)
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "Lamp State", 301001009) == 2 then
	ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 2 })
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "Lamp State", 301001009) == 3 then
	ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = 3 })
	end
	return 0
	
	
end

-- 触发条件
function condition_EVENT_SEALAMP_PHASE_CHANGE_9007(context, evt)
	-- 大鹿灯的状态为4时，视为他的状态为3
	if evt.param2 == 4 then
		evt.param2 = 3
	end
	
	-- 海灯节阶段变化
	if 2 ~= evt.param2 and 3 ~= evt.param2 then
		return false
	else 
		ScriptLib.SetGroupVariableValueByGroup(context, "Lamp State", evt.param2 , 301001009)
	end
	
	-- 判断变量"Quest 1 State"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 1 State", 301001009) ~= 1 then
		return false
	end
	
	-- 判断变量"Quest 2 State"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 2 State", 301001009) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEALAMP_PHASE_CHANGE_9007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = evt.param2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_9011(context, evt)
	local phase = ScriptLib.GetSeaLampActivityPhase(context)
	-- 大鹿灯的状态为4时，视为他的状态为3
	if phase == 4 then
		phase = 3
	end
	
	if phase ~= 2 and phase ~= 3 then
		return false
	else
		ScriptLib.SetGroupVariableValueByGroup(context, "Lamp State", phase , 301001009)
		if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 1 State", 301001009) ~= 1 then
			return false
		end
		if ScriptLib.GetGroupVariableValueByGroup(context, "Quest 2 State", 301001009) ~= 0 then
			return false
		end
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 301001009, suite = phase }) then
			return false
		end
	end
	return true
end