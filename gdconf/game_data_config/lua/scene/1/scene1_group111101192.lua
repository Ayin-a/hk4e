-- 基础信息
local base_info = {
	group_id = 111101192
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
	{ config_id = 192001, gadget_id = 70211132, pos = { x = 2536.622, y = 219.661, z = -1085.096 }, rot = { x = 0.000, y = 133.918, z = 0.000 }, level = 1, drop_tag = "解谜超级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 192002, gadget_id = 70360046, pos = { x = 2543.460, y = 215.643, z = -1093.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192003, gadget_id = 70220011, pos = { x = 2543.170, y = 215.380, z = -1105.303 }, rot = { x = 0.000, y = 89.141, z = 0.000 }, level = 1 },
	{ config_id = 192004, gadget_id = 70300119, pos = { x = 2543.109, y = 216.254, z = -1105.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192005, gadget_id = 70300119, pos = { x = 2543.505, y = 216.363, z = -1093.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192006, gadget_id = 70360002, pos = { x = 2549.364, y = 215.841, z = -1106.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192007, gadget_id = 70220011, pos = { x = 2543.505, y = 216.363, z = -1093.120 }, rot = { x = 0.000, y = 89.141, z = 0.000 }, level = 1 },
	{ config_id = 192008, gadget_id = 70900009, pos = { x = 2534.420, y = 216.363, z = -1095.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192014, gadget_id = 70360046, pos = { x = 2536.691, y = 218.933, z = -1084.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192015, gadget_id = 70900009, pos = { x = 2543.505, y = 216.363, z = -1093.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192016, gadget_id = 70360046, pos = { x = 2533.982, y = 215.643, z = -1095.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192017, gadget_id = 70900039, pos = { x = 2534.420, y = 216.363, z = -1095.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192018, gadget_id = 70300119, pos = { x = 2534.304, y = 216.254, z = -1094.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192019, gadget_id = 70900039, pos = { x = 2543.170, y = 215.380, z = -1105.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192020, gadget_id = 70220011, pos = { x = 2534.420, y = 216.363, z = -1095.053 }, rot = { x = 0.000, y = 89.141, z = 0.000 }, level = 1 },
	{ config_id = 192021, gadget_id = 70900009, pos = { x = 2543.170, y = 215.380, z = -1105.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192022, gadget_id = 70900039, pos = { x = 2543.505, y = 216.363, z = -1093.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 192012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2544.005, y = 215.639, z = -1106.132 } }
}

-- 触发器
triggers = {
	-- 调整序列and变量==1,切换suitB
	{ config_id = 1192009, name = "SELECT_OPTION_192009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_192009", action = "action_EVENT_SELECT_OPTION_192009" },
	-- Group初始状态-suitA
	{ config_id = 1192010, name = "GROUP_LOAD_192010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_192010" },
	-- 操作台创生时，创建按钮
	{ config_id = 1192011, name = "GADGET_CREATE_192011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_192011", action = "action_EVENT_GADGET_CREATE_192011" },
	{ config_id = 1192012, name = "ENTER_REGION_192012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 调整序列and变量==2,切换suitC
	{ config_id = 1192013, name = "SELECT_OPTION_192013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_192013", action = "action_EVENT_SELECT_OPTION_192013" },
	-- 调整序列and变量==3,切换suitA
	{ config_id = 1192023, name = "SELECT_OPTION_192023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_192023", action = "action_EVENT_SELECT_OPTION_192023" }
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
		gadgets = { 192001, 192002, 192004, 192005, 192006, 192014, 192016, 192018 },
		regions = { 192012 },
		triggers = { "SELECT_OPTION_192009", "GROUP_LOAD_192010", "GADGET_CREATE_192011", "ENTER_REGION_192012", "SELECT_OPTION_192013", "SELECT_OPTION_192023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suitA,
		monsters = { },
		gadgets = { 192003, 192015, 192017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suitB,
		monsters = { },
		gadgets = { 192007, 192008, 192019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suitC,
		monsters = { },
		gadgets = { 192020, 192021, 192022 },
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
function condition_EVENT_SELECT_OPTION_192009(context, evt)
	-- 判断是gadgetid 192006 option_id 79
	if 192006 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_192009(context, evt)
	-- 将本组内变量名为 "suitState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suitState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101192, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101192, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_192010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101192, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_192011(context, evt)
	if 192006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_192011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101192, 192006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_192013(context, evt)
	-- 判断是gadgetid 192006 option_id 79
	if 192006 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_192013(context, evt)
	-- 将本组内变量名为 "suitState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suitState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101192, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101192, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_192023(context, evt)
	-- 判断是gadgetid 192006 option_id 79
	if 192006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"suitState"为3
	if ScriptLib.GetGroupVariableValue(context, "suitState") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_192023(context, evt)
	-- 将本组内变量名为 "suitState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suitState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101192, 4)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101192, 2)
	
	return 0
end