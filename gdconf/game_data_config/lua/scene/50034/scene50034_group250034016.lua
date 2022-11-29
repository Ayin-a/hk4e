-- 基础信息
local base_info = {
	group_id = 250034016
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
	{ config_id = 16001, gadget_id = 70350107, pos = { x = 41.880, y = 30.500, z = -16.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 16002, gadget_id = 70350099, pos = { x = 41.880, y = 30.500, z = -16.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 16003, gadget_id = 70350100, pos = { x = 41.880, y = 30.500, z = -16.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 16004, gadget_id = 70350101, pos = { x = 41.880, y = 30.500, z = -16.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 16005, gadget_id = 70350102, pos = { x = 41.880, y = 30.500, z = -16.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 16006, gadget_id = 70350103, pos = { x = 41.880, y = 30.500, z = -16.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016007, name = "GADGET_CREATE_16007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16007", action = "action_EVENT_GADGET_CREATE_16007" },
	{ config_id = 1016008, name = "SELECT_OPTION_16008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16008", action = "action_EVENT_SELECT_OPTION_16008" },
	{ config_id = 1016009, name = "SELECT_OPTION_16009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16009", action = "action_EVENT_SELECT_OPTION_16009" },
	{ config_id = 1016010, name = "SELECT_OPTION_16010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16010", action = "action_EVENT_SELECT_OPTION_16010" },
	{ config_id = 1016011, name = "SELECT_OPTION_16011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16011", action = "action_EVENT_SELECT_OPTION_16011" },
	{ config_id = 1016012, name = "SELECT_OPTION_16012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16012", action = "action_EVENT_SELECT_OPTION_16012" },
	{ config_id = 1016013, name = "SELECT_OPTION_16013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16013", action = "action_EVENT_SELECT_OPTION_16013" }
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
		gadgets = { 16001 },
		regions = { },
		triggers = { "GADGET_CREATE_16007", "SELECT_OPTION_16008", "SELECT_OPTION_16009", "SELECT_OPTION_16010", "SELECT_OPTION_16011", "SELECT_OPTION_16012", "SELECT_OPTION_16013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 16002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 16003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 16004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 16005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 16006 },
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
function condition_EVENT_GADGET_CREATE_16007(context, evt)
	if 16001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250034016, 16001, {41,42,43,44,45,46}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16008(context, evt)
	-- 判断是gadgetid 16001 option_id 41
	if 16001 ~= evt.param1 then
		return false	
	end
	
	if 41 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034016, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16009(context, evt)
	-- 判断是gadgetid 16001 option_id 42
	if 16001 ~= evt.param1 then
		return false	
	end
	
	if 42 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034016, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16010(context, evt)
	-- 判断是gadgetid 16001 option_id 43
	if 16001 ~= evt.param1 then
		return false	
	end
	
	if 43 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034016, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16011(context, evt)
	-- 判断是gadgetid 16001 option_id 44
	if 16001 ~= evt.param1 then
		return false	
	end
	
	if 44 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034016, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16012(context, evt)
	-- 判断是gadgetid 16001 option_id 45
	if 16001 ~= evt.param1 then
		return false	
	end
	
	if 45 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034016, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16013(context, evt)
	-- 判断是gadgetid 16001 option_id 46
	if 16001 ~= evt.param1 then
		return false	
	end
	
	if 46 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end