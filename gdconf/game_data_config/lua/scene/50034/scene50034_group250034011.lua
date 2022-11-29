-- 基础信息
local base_info = {
	group_id = 250034011
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
	{ config_id = 11001, gadget_id = 70350107, pos = { x = 41.488, y = 30.502, z = 1.687 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11002, gadget_id = 70350099, pos = { x = 41.488, y = 30.502, z = 1.687 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11003, gadget_id = 70350100, pos = { x = 41.488, y = 30.502, z = 1.687 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11004, gadget_id = 70350101, pos = { x = 41.488, y = 30.502, z = 1.687 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11005, gadget_id = 70350102, pos = { x = 41.488, y = 30.502, z = 1.687 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11006, gadget_id = 70350103, pos = { x = 41.488, y = 30.502, z = 1.687 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011007, name = "GADGET_CREATE_11007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11007", action = "action_EVENT_GADGET_CREATE_11007" },
	{ config_id = 1011008, name = "SELECT_OPTION_11008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11008", action = "action_EVENT_SELECT_OPTION_11008" },
	{ config_id = 1011009, name = "SELECT_OPTION_11009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11009", action = "action_EVENT_SELECT_OPTION_11009" },
	{ config_id = 1011010, name = "SELECT_OPTION_11010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11010", action = "action_EVENT_SELECT_OPTION_11010" },
	{ config_id = 1011011, name = "SELECT_OPTION_11011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11011", action = "action_EVENT_SELECT_OPTION_11011" },
	{ config_id = 1011012, name = "SELECT_OPTION_11012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11012", action = "action_EVENT_SELECT_OPTION_11012" },
	{ config_id = 1011013, name = "SELECT_OPTION_11013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11013", action = "action_EVENT_SELECT_OPTION_11013" }
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
		gadgets = { 11001 },
		regions = { },
		triggers = { "GADGET_CREATE_11007", "SELECT_OPTION_11008", "SELECT_OPTION_11009", "SELECT_OPTION_11010", "SELECT_OPTION_11011", "SELECT_OPTION_11012", "SELECT_OPTION_11013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 11003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 11004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 11005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 11006 },
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
function condition_EVENT_GADGET_CREATE_11007(context, evt)
	if 11001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250034011, 11001, {41,42,43,44,45,46}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11008(context, evt)
	-- 判断是gadgetid 11001 option_id 41
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 41 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11009(context, evt)
	-- 判断是gadgetid 11001 option_id 42
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 42 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034011, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11010(context, evt)
	-- 判断是gadgetid 11001 option_id 43
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 43 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034011, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11011(context, evt)
	-- 判断是gadgetid 11001 option_id 44
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 44 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034011, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11012(context, evt)
	-- 判断是gadgetid 11001 option_id 45
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 45 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250034011, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11013(context, evt)
	-- 判断是gadgetid 11001 option_id 46
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 46 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250034011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end