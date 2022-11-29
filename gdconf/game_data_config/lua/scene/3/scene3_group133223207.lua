-- 基础信息
local base_info = {
	group_id = 133223207
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
	{ config_id = 207001, gadget_id = 70230055, pos = { x = -6062.516, y = 210.600, z = -2846.254 }, rot = { x = 0.000, y = 159.668, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 207003, gadget_id = 70230056, pos = { x = -6072.271, y = 210.545, z = -2851.429 }, rot = { x = 0.000, y = 73.769, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 207004, gadget_id = 70230057, pos = { x = -6071.239, y = 210.604, z = -2842.029 }, rot = { x = 0.000, y = 103.953, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 207005, gadget_id = 70230051, pos = { x = -6075.084, y = 210.538, z = -2854.777 }, rot = { x = 0.000, y = 133.912, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 207006, gadget_id = 70350318, pos = { x = -6061.853, y = 209.888, z = -2851.316 }, rot = { x = 357.651, y = 159.510, z = 35.657 }, level = 33, area_id = 18 },
	{ config_id = 207011, gadget_id = 70230054, pos = { x = -6067.207, y = 210.583, z = -2847.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 207015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6062.801, y = 210.581, z = -2849.572 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1207002, name = "GADGET_CREATE_207002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_207002", action = "action_EVENT_GADGET_CREATE_207002", trigger_count = 0 },
	{ config_id = 1207007, name = "SELECT_OPTION_207007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_207007", action = "action_EVENT_SELECT_OPTION_207007", trigger_count = 0 },
	-- 顺序1
	{ config_id = 1207008, name = "TIME_AXIS_PASS_207008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_207008", action = "action_EVENT_TIME_AXIS_PASS_207008", trigger_count = 0 },
	-- 顺序2
	{ config_id = 1207009, name = "TIME_AXIS_PASS_207009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_207009", action = "action_EVENT_TIME_AXIS_PASS_207009", trigger_count = 0 },
	-- 顺序3
	{ config_id = 1207010, name = "TIME_AXIS_PASS_207010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_207010", action = "action_EVENT_TIME_AXIS_PASS_207010", trigger_count = 0 },
	-- 顺序4
	{ config_id = 1207012, name = "TIME_AXIS_PASS_207012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_207012", action = "action_EVENT_TIME_AXIS_PASS_207012", trigger_count = 0 },
	-- 顺序5
	{ config_id = 1207013, name = "TIME_AXIS_PASS_207013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_207013", action = "action_EVENT_TIME_AXIS_PASS_207013", trigger_count = 0 },
	-- 重置
	{ config_id = 1207014, name = "TIME_AXIS_PASS_207014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_207014", action = "action_EVENT_TIME_AXIS_PASS_207014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isNeedNotify", value = 0, no_refresh = true }
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
		regions = { 207015 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 207006 },
		regions = { },
		triggers = { "GADGET_CREATE_207002", "SELECT_OPTION_207007", "TIME_AXIS_PASS_207008", "TIME_AXIS_PASS_207009", "TIME_AXIS_PASS_207010", "TIME_AXIS_PASS_207012", "TIME_AXIS_PASS_207013", "TIME_AXIS_PASS_207014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 顺序1,
		monsters = { },
		gadgets = { 207001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 顺序2,
		monsters = { },
		gadgets = { 207003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 顺序3,
		monsters = { },
		gadgets = { 207004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 顺序4,
		monsters = { },
		gadgets = { 207005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 顺序5,
		monsters = { },
		gadgets = { 207011 },
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
function condition_EVENT_GADGET_CREATE_207002(context, evt)
	if 207006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_207002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223207, 207006, {65}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_207007(context, evt)
	-- 判断是gadgetid 207006 option_id 65
	if 207006 ~= evt.param1 then
		return false	
	end
	
	if 65 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_207007(context, evt)
	-- 创建标识为"Mark_Start"，时间节点为{3,5,7,9,11,13}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Mark_Start", {3,5,7,9,11,13}, false)
	
	
	-- 删除指定group： 133223207 ；指定config：207006；物件身上指定option：65；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223207, 207006, 65) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_207008(context, evt)
	if "Mark_Start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_207008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223207, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_207009(context, evt)
	if "Mark_Start" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_207009(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223207, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223207, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_207010(context, evt)
	if "Mark_Start" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_207010(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223207, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223207, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_207012(context, evt)
	if "Mark_Start" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_207012(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223207, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223207, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_207013(context, evt)
	if "Mark_Start" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_207013(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223207, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223207, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_207014(context, evt)
	if "Mark_Start" ~= evt.source_name or 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_207014(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223207, 7)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223207, 207006, {65}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end