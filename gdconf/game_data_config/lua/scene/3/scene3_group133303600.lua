-- 基础信息
local base_info = {
	group_id = 133303600
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133303600,
	gadget_sum = 15
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
	[600002] = { config_id = 600002, gadget_id = 70290437, pos = { x = -1896.257, y = 297.387, z = 3193.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600003] = { config_id = 600003, gadget_id = 70211101, pos = { x = -1894.410, y = 295.627, z = 3197.181 }, rot = { x = 0.000, y = 200.552, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[600004] = { config_id = 600004, gadget_id = 70290437, pos = { x = -1888.547, y = 296.924, z = 3191.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600014] = { config_id = 600014, gadget_id = 70290437, pos = { x = -1887.057, y = 296.393, z = 3197.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600016] = { config_id = 600016, gadget_id = 70290437, pos = { x = -1891.234, y = 296.499, z = 3197.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600018] = { config_id = 600018, gadget_id = 70290437, pos = { x = -1890.950, y = 296.378, z = 3203.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600020] = { config_id = 600020, gadget_id = 70290437, pos = { x = -1898.502, y = 296.662, z = 3198.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600022] = { config_id = 600022, gadget_id = 70290437, pos = { x = -1898.434, y = 296.739, z = 3201.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600024] = { config_id = 600024, gadget_id = 70290437, pos = { x = -1885.002, y = 296.759, z = 3189.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600026] = { config_id = 600026, gadget_id = 70290437, pos = { x = -1884.477, y = 296.829, z = 3193.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600028] = { config_id = 600028, gadget_id = 70290437, pos = { x = -1891.402, y = 296.505, z = 3186.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600030] = { config_id = 600030, gadget_id = 70290437, pos = { x = -1893.418, y = 296.730, z = 3190.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600032] = { config_id = 600032, gadget_id = 70290437, pos = { x = -1903.095, y = 296.253, z = 3195.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600034] = { config_id = 600034, gadget_id = 70290437, pos = { x = -1902.200, y = 296.481, z = 3198.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600036] = { config_id = 600036, gadget_id = 70290437, pos = { x = -1904.796, y = 296.249, z = 3201.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[600038] = { config_id = 600038, gadget_id = 70290437, pos = { x = -1894.603, y = 296.616, z = 3201.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 水泡晴天消失挑战失败
	{ config_id = 1600001, name = "GADGET_STATE_CHANGE_600001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_600001", action = "action_EVENT_GADGET_STATE_CHANGE_600001", trigger_count = 0 },
	{ config_id = 1600006, name = "CHALLENGE_SUCCESS_600006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_600006", trigger_count = 0 },
	{ config_id = 1600007, name = "CHALLENGE_FAIL_600007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_600007", trigger_count = 0 },
	{ config_id = 1600008, name = "GADGET_STATE_CHANGE_600008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_600008", action = "action_EVENT_GADGET_STATE_CHANGE_600008", trigger_count = 0 },
	{ config_id = 1600009, name = "GADGET_STATE_CHANGE_600009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_600009", action = "", trigger_count = 0, tag = "201" },
	-- grouprefresh查雨天显示水泡
	{ config_id = 1600013, name = "GROUP_REFRESH_600013", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_600013", action = "action_EVENT_GROUP_REFRESH_600013", trigger_count = 0 },
	-- grouprefresh查晴天关闭水泡
	{ config_id = 1600015, name = "GROUP_REFRESH_600015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_600015", action = "action_EVENT_GROUP_REFRESH_600015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 600005, gadget_id = 70360001, pos = { x = -1896.248, y = 297.333, z = 3193.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 600040, gadget_id = 70290437, pos = { x = -1892.275, y = 296.711, z = 3194.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1600010, name = "GADGET_CREATE_600010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_600010", action = "action_EVENT_GADGET_CREATE_600010", trigger_count = 0 },
		{ config_id = 1600011, name = "SELECT_OPTION_600011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_600011", action = "action_EVENT_SELECT_OPTION_600011", trigger_count = 0 },
		{ config_id = 1600012, name = "GROUP_LOAD_600012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_600012", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 600002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_600001", "CHALLENGE_SUCCESS_600006", "CHALLENGE_FAIL_600007", "GADGET_STATE_CHANGE_600008", "GADGET_STATE_CHANGE_600009", "GROUP_REFRESH_600013", "GROUP_REFRESH_600015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 600004, 600014, 600016, 600018, 600020, 600022, 600024, 600026, 600028, 600030, 600032, 600034, 600036, 600038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 600003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_600001(context, evt)
	if GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_600001(context, evt)
	-- 终止识别id为56的挑战，并判定失败
		ScriptLib.StopChallenge(context, 56, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_600006(context, evt)
	-- 将configid为 600002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 600002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303600, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_600007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303600, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303600, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_600008(context, evt)
	if 600002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_600008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 273, defs.duration, 7, 201, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_600009(context, evt)
	if gadgets[evt.param2].gadget_id ~= 70290437 then
		return false
	end
	
	
	if GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_600013(context, evt)
	-- 判断变量"SGV_WeatherState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_600013(context, evt)
	-- 将configid为 600002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 600002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_600015(context, evt)
	-- 判断变量"SGV_WeatherState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_600015(context, evt)
	-- 将configid为 600002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 600002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/VarunaStandard"