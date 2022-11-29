-- 基础信息
local base_info = {
	group_id = 250015060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 25010201, pos = { x = 185.602, y = 0.500, z = 137.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 60002, monster_id = 25010201, pos = { x = 182.328, y = 0.500, z = 137.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 60003, monster_id = 25010201, pos = { x = 178.775, y = 0.500, z = 137.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 3 },
	{ config_id = 60004, monster_id = 25010201, pos = { x = 175.374, y = 0.500, z = 137.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 4 },
	{ config_id = 60005, monster_id = 25010201, pos = { x = 171.459, y = 0.500, z = 137.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9002 },
	{ config_id = 60006, monster_id = 25010201, pos = { x = 167.441, y = 0.500, z = 137.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 60007, monster_id = 25010201, pos = { x = 164.002, y = 0.500, z = 137.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9004 },
	{ config_id = 60008, monster_id = 25010201, pos = { x = 164.002, y = 0.500, z = 132.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9005 },
	{ config_id = 60010, monster_id = 21010101, pos = { x = 171.956, y = 0.500, z = 132.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 60011, monster_id = 21010101, pos = { x = 175.326, y = 0.500, z = 132.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60012, gadget_id = 70360002, pos = { x = 198.049, y = 0.500, z = 122.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060013, name = "GADGET_CREATE_60013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60013", action = "action_EVENT_GADGET_CREATE_60013" },
	{ config_id = 1060014, name = "SELECT_OPTION_60014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60014", action = "action_EVENT_SELECT_OPTION_60014" },
	{ config_id = 1060015, name = "SELECT_OPTION_60015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60015", action = "action_EVENT_SELECT_OPTION_60015" },
	{ config_id = 1060016, name = "SELECT_OPTION_60016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60016", action = "action_EVENT_SELECT_OPTION_60016" }
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
		gadgets = { 60012 },
		regions = { },
		triggers = { "GADGET_CREATE_60013", "SELECT_OPTION_60014", "SELECT_OPTION_60015", "SELECT_OPTION_60016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 60005, 60006, 60007, 60008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 60010, 60011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 60001, 60002, 60003, 60004 },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_60013(context, evt)
	if 60012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015060, 60012, {184,185,186}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60014(context, evt)
	-- 判断是gadgetid 60012 option_id 184
	if 60012 ~= evt.param1 then
		return false	
	end
	
	if 184 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_60014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015060, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60015(context, evt)
	-- 判断是gadgetid 60012 option_id 185
	if 60012 ~= evt.param1 then
		return false	
	end
	
	if 185 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_60015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015060, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60016(context, evt)
	-- 判断是gadgetid 60012 option_id 186
	if 60012 ~= evt.param1 then
		return false	
	end
	
	if 186 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_60016(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015060, 4)
	
	return 0
end