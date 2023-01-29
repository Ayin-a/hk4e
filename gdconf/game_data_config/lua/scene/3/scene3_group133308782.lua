-- 基础信息
local base_info = {
	group_id = 133308782
}

-- Trigger变量
local defs = {
	pointarray_normal = 330900069,
	pointarray_hard = 330900070
}

-- DEFS_MISCS
local pointStateList = {693001, 693002, 693003, 693005, 0, 0, 0, 0}
local challengeOptionConfigID = 693006
local challengeOptionID = 188

local holeConfigID = {693001, 693002, 693003, 693005}
local checkOptionID = 916

local arrayID = {330900069, 330900070}

local randomVez = {min = 3, max = 5}

local successCount = 2

local unmovenum = 0

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
	{ config_id = 782001, gadget_id = 70330301, pos = { x = -1361.382, y = 117.471, z = 4785.320 }, rot = { x = 21.455, y = 0.674, z = 359.418 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 782002, gadget_id = 70330301, pos = { x = -1366.568, y = 115.118, z = 4791.078 }, rot = { x = 22.022, y = 1.669, z = 4.980 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 782003, gadget_id = 70330301, pos = { x = -1366.126, y = 118.594, z = 4782.276 }, rot = { x = 19.599, y = 2.250, z = 1.970 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 782004, gadget_id = 70300203, pos = { x = -1361.881, y = 116.189, z = 4788.850 }, rot = { x = 23.659, y = 0.791, z = 0.876 }, level = 32, area_id = 26 },
	{ config_id = 782005, gadget_id = 70330295, pos = { x = -1370.181, y = 116.633, z = 4786.848 }, rot = { x = 1.502, y = 264.963, z = 336.466 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 782006, gadget_id = 70360001, pos = { x = -1363.538, y = 115.561, z = 4790.244 }, rot = { x = 23.665, y = 0.280, z = 0.671 }, level = 32, area_id = 26 },
	{ config_id = 782013, gadget_id = 70220103, pos = { x = -1389.333, y = 106.833, z = 4794.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1782007, name = "SELECT_OPTION_782007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_782007", action = "action_EVENT_SELECT_OPTION_782007", trigger_count = 0 },
	{ config_id = 1782008, name = "GADGET_CREATE_782008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_782008", action = "action_EVENT_GADGET_CREATE_782008", trigger_count = 0 },
	{ config_id = 1782009, name = "VARIABLE_CHANGE_782009", event = EventType.EVENT_VARIABLE_CHANGE, source = "hamster_success_num", condition = "condition_EVENT_VARIABLE_CHANGE_782009", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1782010, name = "CHALLENGE_FAIL_782010", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_782010", trigger_count = 0 },
	{ config_id = 1782011, name = "CHALLENGE_SUCCESS_782011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_782011", trigger_count = 0 },
	{ config_id = 1782012, name = "TIME_AXIS_PASS_782012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_782012", action = "action_EVENT_TIME_AXIS_PASS_782012" }
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
		gadgets = { 782001, 782002, 782003, 782005, 782006, 782013 },
		regions = { },
		triggers = { "SELECT_OPTION_782007", "GADGET_CREATE_782008", "VARIABLE_CHANGE_782009", "CHALLENGE_FAIL_782010", "CHALLENGE_SUCCESS_782011", "TIME_AXIS_PASS_782012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 782004 },
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

-- 触发条件
function condition_EVENT_SELECT_OPTION_782007(context, evt)
	-- 判断是gadgetid 782006 option_id 188
	if 782006 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_782007(context, evt)
	
	ScriptLib.RemoveExtraGroupSuite(context, 133308782, 2)
	
	
	ScriptLib.StartChallenge(context, 666, 85, {3, 666, 2}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_782008(context, evt)
	if 782006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_782008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308782, 2)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308782, 782006, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_782009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_782010(context, evt)
	-- 将本组内变量名为 "hamster_success_num" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "hamster_success_num", 0, 133308782) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308782, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_782011(context, evt)
	-- 创建标识为"timer"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_782012(context, evt)
	if "timer" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_782012(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133308782, monsters = {}, gadgets = {782001,782002,782003,782005,782006,782004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V3_1/HamsterGambling"