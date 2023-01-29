-- 基础信息
local base_info = {
	group_id = 235881001
}

-- DEFS_MISCS
local defs =
{
--操作台id
    starter_gadget = 1001,
--gallery id
    gallery_id = 35002,
--传送点 id 
    teleportPos_id = 1005,
    groups_info = 
    {
       --主控group 怪物数量不用管
        [1] = {id = 235881001, monster_num = 0,},
       --第一组玩法group
        [2] = {id = 235881002, monster_num = 4,},
       --第二组玩法group
        [3] = {id = 235881003, monster_num = 10,},
       --第三组玩法group
        [4] = {id = 235881004, monster_num = 8,},
    },
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
	[1001] = { config_id = 1001, gadget_id = 70800446, pos = { x = 720.362, y = 90.179, z = 781.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "VARIABLE_CHANGE_1002", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "condition_EVENT_VARIABLE_CHANGE_1002", action = "action_EVENT_VARIABLE_CHANGE_1002", trigger_count = 0 },
	{ config_id = 1001003, name = "VARIABLE_CHANGE_1003", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "condition_EVENT_VARIABLE_CHANGE_1003", action = "action_EVENT_VARIABLE_CHANGE_1003", trigger_count = 0 },
	{ config_id = 1001004, name = "VARIABLE_CHANGE_1004", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "condition_EVENT_VARIABLE_CHANGE_1004", action = "action_EVENT_VARIABLE_CHANGE_1004", trigger_count = 0 },
	{ config_id = 1001006, name = "TIME_AXIS_PASS_1006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1006", action = "action_EVENT_TIME_AXIS_PASS_1006", trigger_count = 0 },
	{ config_id = 1001007, name = "TIME_AXIS_PASS_1007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1007", action = "action_EVENT_TIME_AXIS_PASS_1007", trigger_count = 0 },
	{ config_id = 1001008, name = "TIME_AXIS_PASS_1008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1008", action = "action_EVENT_TIME_AXIS_PASS_1008", trigger_count = 0 },
	{ config_id = 1001009, name = "TIME_AXIS_PASS_1009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1009", action = "action_EVENT_TIME_AXIS_PASS_1009", trigger_count = 0 },
	{ config_id = 1001010, name = "TIME_AXIS_PASS_1010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1010", action = "action_EVENT_TIME_AXIS_PASS_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "VARIABLE_CHANGE_1011", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "condition_EVENT_VARIABLE_CHANGE_1011", action = "action_EVENT_VARIABLE_CHANGE_1011", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 1005, pos = { x = 736.949, y = 92.050, z = 751.469 }, rot = { x = 0.000, y = 326.424, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 2, name = "GALLERY_STATE", value = 0, no_refresh = false }
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
		gadgets = { 1001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_1002", "VARIABLE_CHANGE_1003", "VARIABLE_CHANGE_1004", "TIME_AXIS_PASS_1006", "TIME_AXIS_PASS_1007", "TIME_AXIS_PASS_1008", "TIME_AXIS_PASS_1009", "TIME_AXIS_PASS_1010", "VARIABLE_CHANGE_1011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GALLERY_STATE"为1
	if ScriptLib.GetGroupVariableValue(context, "GALLERY_STATE") ~= 1 then
			return false
	end
	
	-- 判断变量"GROUP_INDEX"为2
	if ScriptLib.GetGroupVariableValue(context, "GROUP_INDEX") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881002, 3)
	
	-- 创建标识为"timer_init"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_init", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GALLERY_STATE"为1
	if ScriptLib.GetGroupVariableValue(context, "GALLERY_STATE") ~= 1 then
			return false
	end
	
	-- 判断变量"GROUP_INDEX"为3
	if ScriptLib.GetGroupVariableValue(context, "GROUP_INDEX") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881003, 3)
	
	-- 创建标识为"timer_init"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_init", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GALLERY_STATE"为1
	if ScriptLib.GetGroupVariableValue(context, "GALLERY_STATE") ~= 1 then
			return false
	end
	
	-- 判断变量"GROUP_INDEX"为4
	if ScriptLib.GetGroupVariableValue(context, "GROUP_INDEX") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881004, 3)
	
	-- 创建标识为"timer_init"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_init", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1006(context, evt)
	if "timer_init" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1006(context, evt)
	ScriptLib.EndTimeAxis(context, "timer_init")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "_IN_HIGH_TIDE_V3.4", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1007(context, evt)
	if "timer2_reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1007(context, evt)
	ScriptLib.EndTimeAxis(context, "timer2_reminder")
	
	ScriptLib.ShowReminder(context, 337200101)
	
	ScriptLib.InitTimeAxis(context, "timer2_gv", {0.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1008(context, evt)
	if "timer2_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1008(context, evt)
	ScriptLib.EndTimeAxis(context, "timer2_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "_IN_HIGH_TIDE_V3.4", -1)
	
	ScriptLib.InitTimeAxis(context, "timer1_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1009(context, evt)
	if "timer1_reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1009(context, evt)
	ScriptLib.EndTimeAxis(context, "timer1_reminder")
	
	ScriptLib.ShowReminder(context, 337200102)
	
	ScriptLib.InitTimeAxis(context, "timer1_gv", {0.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1010(context, evt)
	if "timer1_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1010(context, evt)
	ScriptLib.EndTimeAxis(context, "timer1_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "_IN_HIGH_TIDE_V3.4", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GALLERY_STATE"为2
	if ScriptLib.GetGroupVariableValue(context, "GALLERY_STATE") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1011(context, evt)
	-- 停止标识为"timer_init"的时间轴
	ScriptLib.EndTimeAxis(context, "timer_init")
	
	
	-- 停止标识为"timer2_reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "timer2_reminder")
	
	
	-- 停止标识为"timer2_gv"的时间轴
	ScriptLib.EndTimeAxis(context, "timer2_gv")
	
	
	-- 停止标识为"timer1_reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "timer1_reminder")
	
	
	-- 停止标识为"timer1_gv"的时间轴
	ScriptLib.EndTimeAxis(context, "timer1_gv")
	
	
	return 0
end

require "V3_4/Activity_TeamChainChallenge"