-- 基础信息
local base_info = {
	group_id = 250034015
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
	{ config_id = 15001, gadget_id = 70350107, pos = { x = 35.128, y = 30.500, z = -16.283 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15002, gadget_id = 70350099, pos = { x = 35.128, y = 30.500, z = -16.283 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15003, gadget_id = 70350100, pos = { x = 35.128, y = 30.500, z = -16.283 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15004, gadget_id = 70350101, pos = { x = 35.128, y = 30.500, z = -16.283 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15005, gadget_id = 70350102, pos = { x = 35.128, y = 30.500, z = -16.283 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15006, gadget_id = 70350103, pos = { x = 35.128, y = 30.500, z = -16.283 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015007, name = "GADGET_CREATE_15007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15007", action = "action_EVENT_GADGET_CREATE_15007" },
	{ config_id = 1015008, name = "SELECT_OPTION_15008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15008", action = "action_EVENT_SELECT_OPTION_15008" },
	{ config_id = 1015009, name = "SELECT_OPTION_15009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15009", action = "action_EVENT_SELECT_OPTION_15009" },
	{ config_id = 1015010, name = "SELECT_OPTION_15010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15010", action = "action_EVENT_SELECT_OPTION_15010" },
	{ config_id = 1015011, name = "SELECT_OPTION_15011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15011", action = "action_EVENT_SELECT_OPTION_15011" },
	{ config_id = 1015012, name = "SELECT_OPTION_15012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15012", action = "action_EVENT_SELECT_OPTION_15012" },
	{ config_id = 1015013, name = "SELECT_OPTION_15013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15013", action = "action_EVENT_SELECT_OPTION_15013" }
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
		gadgets = { 15001 },
		regions = { },
		triggers = { "GADGET_CREATE_15007", "SELECT_OPTION_15008", "SELECT_OPTION_15009", "SELECT_OPTION_15010", "SELECT_OPTION_15011", "SELECT_OPTION_15012", "SELECT_OPTION_15013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 15003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 15004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 15005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 15006 },
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
function condition_EVENT_GADGET_CREATE_15007(context, evt)
	if 15001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250034015, 15001, {41,42,43,44,45,46}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15008(context, evt)
	-- 判断是gadgetid 15001 option_id 41
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 41 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034015, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15009(context, evt)
	-- 判断是gadgetid 15001 option_id 42
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 42 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034015, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15010(context, evt)
	-- 判断是gadgetid 15001 option_id 43
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 43 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034015, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15011(context, evt)
	-- 判断是gadgetid 15001 option_id 44
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 44 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034015, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15012(context, evt)
	-- 判断是gadgetid 15001 option_id 45
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 45 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034015, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15013(context, evt)
	-- 判断是gadgetid 15001 option_id 46
	if 15001 ~= evt.param1 then
		return false	
	end
	
	if 46 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end