-- 基础信息
local base_info = {
	group_id = 133303490
}

-- Trigger变量
local defs = {
	enter_region = 490012,
	leave_region = 490013,
	FindClue = 1,
	BeatMonster = 1,
	FindRock = 1,
	PuzzleProgress = 4,
	Total = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490007, monster_id = 20010201, pos = { x = -1322.782, y = 164.453, z = 3369.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", isOneoff = true, pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490001, gadget_id = 70310012, pos = { x = -1345.089, y = 161.337, z = 3370.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 490002, gadget_id = 70310148, pos = { x = -1345.089, y = 161.786, z = 3370.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 490003, gadget_id = 70310011, pos = { x = -1317.281, y = 166.107, z = 3369.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 490004, gadget_id = 70320005, pos = { x = -1339.962, y = 164.361, z = 3350.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 490005, gadget_id = 70800240, pos = { x = -1345.089, y = 162.364, z = 3370.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 490006, gadget_id = 70360001, pos = { x = -1322.452, y = 160.617, z = 3357.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 },
	{ config_id = 490008, gadget_id = 70800289, pos = { x = -1345.089, y = 162.364, z = 3370.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 490009, gadget_id = 70320005, pos = { x = -1343.105, y = 160.316, z = 3375.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 490014, gadget_id = 70310011, pos = { x = -1352.916, y = 159.793, z = 3366.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 490018, gadget_id = 70310012, pos = { x = -1345.089, y = 161.337, z = 3370.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 490011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1344.725, y = 161.306, z = 3371.796 }, area_id = 23 },
	{ config_id = 490012, shape = RegionShape.CYLINDER, radius = 140, pos = { x = -1322.452, y = 160.617, z = 3357.933 }, height = 400.000, area_id = 23 },
	{ config_id = 490013, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -1322.452, y = 160.617, z = 3357.933 }, height = 400.000, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1490010, name = "GADGET_STATE_CHANGE_490010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_490010", trigger_count = 0 },
	{ config_id = 1490011, name = "ENTER_REGION_490011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_490011", action = "action_EVENT_ENTER_REGION_490011" },
	{ config_id = 1490015, name = "VARIABLE_CHANGE_490015", event = EventType.EVENT_VARIABLE_CHANGE, source = "PuzzleProgress", condition = "condition_EVENT_VARIABLE_CHANGE_490015", action = "action_EVENT_VARIABLE_CHANGE_490015", trigger_count = 0 },
	{ config_id = 1490016, name = "GADGET_STATE_CHANGE_490016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490016", action = "action_EVENT_GADGET_STATE_CHANGE_490016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FindClue", value = 0, no_refresh = true },
	{ config_id = 2, name = "BeatMonster", value = -1, no_refresh = true },
	{ config_id = 3, name = "FindRock", value = -1, no_refresh = true },
	{ config_id = 4, name = "PuzzleProgress", value = -1, no_refresh = true }
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
		gadgets = { 490001, 490006, 490008, 490018 },
		regions = { 490011, 490012, 490013 },
		triggers = { "GADGET_STATE_CHANGE_490010", "ENTER_REGION_490011", "VARIABLE_CHANGE_490015", "GADGET_STATE_CHANGE_490016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 490002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 490005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 490007 },
		gadgets = { 490003, 490004, 490009, 490014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490010(context, evt)
	if evt.param1 == 201 then
		if evt.param2 == 490003 then
			ScriptLib.ChangeGroupVariableValue(context, "PuzzleProgress", 1)
			local var_0 = ScriptLib.GetGadgetStateByConfigId(context, 133303490, 490001)
			if var_0 == 0 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action01)
				return 0
			elseif var_0 == 901 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action02)
				return 0
			elseif var_0 == 902 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action03)
				return 0
			elseif var_0 == 903 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.GearStart)
				return 0
			else
				return 0
			end
		elseif evt.param2 == 490004 then
			ScriptLib.ChangeGroupVariableValue(context, "PuzzleProgress", 1)
			local var_1 = ScriptLib.GetGadgetStateByConfigId(context, 133303490, 490001)
			if var_1 == 0 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action01)
				return 0
			elseif var_1 == 901 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action02)
				return 0
			elseif var_1 == 902 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action03)
				return 0
			elseif var_1 == 903 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.GearStart)
				return 0
			else
				return 0
			end
		elseif evt.param2 == 490009 then
			ScriptLib.ChangeGroupVariableValue(context, "PuzzleProgress", 1)
			local var_2 = ScriptLib.GetGadgetStateByConfigId(context, 133303490, 490001)
			if var_2 == 0 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action01)
				return 0
			elseif var_2 == 901 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action02)
				return 0
			elseif var_2 == 902 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action03)
				return 0
			elseif var_2 == 903 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.GearStart)
				return 0
			else
				return 0
			end
		elseif evt.param2 == 490014 then
			ScriptLib.ChangeGroupVariableValue(context, "PuzzleProgress", 1)
			local var_3 = ScriptLib.GetGadgetStateByConfigId(context, 133303490, 490001)
			if var_3 == 0 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action01)
				return 0
			elseif var_3 == 901 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action02)
				return 0
			elseif var_3 == 902 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.Action03)
				return 0
			elseif var_3 == 903 then
				ScriptLib.SetGadgetStateByConfigId(context,490001, GadgetState.GearStart)
				return 0
			else
				return 0
			end
		else
			return 0
		end
	else
		ScriptLib.PrintContextLog(context, "111")
		return 0
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_490011(context, evt)
	if evt.param1 ~= 490011 then return false end
	
	-- 判断是区域490011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 490011 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_490011(context, evt)
	-- 变量"PuzzleProgress"赋值为0
	ScriptLib.SetGroupVariableValue(context, "PuzzleProgress", 0)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303490, 2)
	
	-- 针对当前group内变量名为 "FindClue" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindClue", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 600155 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600155) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303490, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_490015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"PuzzleProgress"为4
	if ScriptLib.GetGroupVariableValue(context, "PuzzleProgress") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_490015(context, evt)
	-- 变量"FindRock"赋值为0
	ScriptLib.SetGroupVariableValue(context, "FindRock", 0)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303490, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303490, 3)
	
	-- 调用提示id为 600156 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600156) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490016(context, evt)
	if 490005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490016(context, evt)
	-- 针对当前group内变量名为 "FindRock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindRock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/Activity_RockBoardExplore"