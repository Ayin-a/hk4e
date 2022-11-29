-- 基础信息
local base_info = {
	group_id = 111101186
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
	{ config_id = 186001, gadget_id = 70211131, pos = { x = 2562.902, y = 225.082, z = -1127.921 }, rot = { x = 0.000, y = 76.264, z = 0.000 }, level = 26, drop_tag = "解谜超级蒙德", isOneoff = true, persistent = true },
	{ config_id = 186002, gadget_id = 70290058, pos = { x = 2562.467, y = 225.931, z = -1128.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 186003, gadget_id = 70710091, pos = { x = 2563.802, y = 226.078, z = -1116.308 }, rot = { x = 0.000, y = 89.141, z = 0.000 }, level = 1 },
	{ config_id = 186004, gadget_id = 70300119, pos = { x = 2564.027, y = 226.951, z = -1116.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 186005, gadget_id = 70300119, pos = { x = 2563.769, y = 226.505, z = -1127.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 186006, gadget_id = 70360002, pos = { x = 2579.212, y = 227.889, z = -1121.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 186008, gadget_id = 70211131, pos = { x = 2563.802, y = 226.078, z = -1116.308 }, rot = { x = 0.000, y = 76.264, z = 0.000 }, level = 1, drop_tag = "解谜超级蒙德", isOneoff = true, persistent = true },
	{ config_id = 186009, gadget_id = 70710091, pos = { x = 2562.902, y = 225.082, z = -1127.921 }, rot = { x = 0.000, y = 89.141, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 186012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2574.672, y = 226.337, z = -1121.986 } }
}

-- 触发器
triggers = {
	-- 调整序列and变量==1,切换suitB
	{ config_id = 1186007, name = "SELECT_OPTION_186007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_186007", action = "action_EVENT_SELECT_OPTION_186007" },
	-- Group初始状态-suitA
	{ config_id = 1186010, name = "GROUP_LOAD_186010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_186010" },
	-- 操作台创生时，创建按钮
	{ config_id = 1186011, name = "GADGET_CREATE_186011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_186011", action = "action_EVENT_GADGET_CREATE_186011" },
	{ config_id = 1186012, name = "ENTER_REGION_186012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 调整序列and变量==2,切换suitA
	{ config_id = 1186013, name = "SELECT_OPTION_186013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_186013", action = "action_EVENT_SELECT_OPTION_186013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "suitState", value = 1, no_refresh = false }
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
		-- description = 常驻Gadget,
		monsters = { },
		gadgets = { 186002, 186004, 186005, 186006 },
		regions = { 186012 },
		triggers = { "SELECT_OPTION_186007", "GROUP_LOAD_186010", "GADGET_CREATE_186011", "ENTER_REGION_186012", "SELECT_OPTION_186013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suitA,
		monsters = { },
		gadgets = { 186001, 186003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suitB,
		monsters = { },
		gadgets = { 186008, 186009 },
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
function condition_EVENT_SELECT_OPTION_186007(context, evt)
	-- 判断是gadgetid 186006 option_id 79
	if 186006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"suitState"为1
	if ScriptLib.GetGroupVariableValue(context, "suitState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_186007(context, evt)
	-- 将本组内变量名为 "suitState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suitState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101186, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101186, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_186010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101186, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_186011(context, evt)
	if 186006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_186011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101186, 186006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_186013(context, evt)
	-- 判断是gadgetid 186006 option_id 79
	if 186006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"suitState"为2
	if ScriptLib.GetGroupVariableValue(context, "suitState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_186013(context, evt)
	-- 将本组内变量名为 "suitState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suitState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101186, 3)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101186, 2)
	
	return 0
end