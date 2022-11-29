-- 基础信息
local base_info = {
	group_id = 133212308
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133212308
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
	{ config_id = 308001, gadget_id = 70211111, pos = { x = -4096.402, y = 221.025, z = -2435.389 }, rot = { x = 359.255, y = 269.835, z = 2.994 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 308002, gadget_id = 70350093, pos = { x = -4097.712, y = 220.668, z = -2437.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 13 },
	{ config_id = 308003, gadget_id = 70360001, pos = { x = -4097.712, y = 221.647, z = -2437.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 13 },
	{ config_id = 308005, gadget_id = 70900380, pos = { x = -4118.102, y = 221.314, z = -2422.274 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308006, gadget_id = 70900380, pos = { x = -4104.443, y = 220.498, z = -2413.008 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308007, gadget_id = 70900380, pos = { x = -4120.654, y = 221.024, z = -2399.936 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308008, gadget_id = 70900380, pos = { x = -4088.148, y = 253.396, z = -2416.704 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308009, gadget_id = 70900380, pos = { x = -4081.281, y = 258.177, z = -2412.408 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308010, gadget_id = 70900380, pos = { x = -4072.728, y = 261.631, z = -2408.547 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308011, gadget_id = 70900380, pos = { x = -4064.333, y = 265.602, z = -2406.901 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308018, gadget_id = 70900380, pos = { x = -4056.279, y = 270.673, z = -2409.968 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308019, gadget_id = 70900380, pos = { x = -4048.224, y = 275.744, z = -2413.034 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308020, gadget_id = 70290150, pos = { x = -4103.311, y = 222.532, z = -2427.121 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308021, gadget_id = 70290150, pos = { x = -4107.581, y = 218.621, z = -2403.033 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308022, gadget_id = 70290150, pos = { x = -4110.212, y = 219.216, z = -2400.016 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308023, gadget_id = 70290150, pos = { x = -4113.390, y = 219.790, z = -2398.048 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308024, gadget_id = 70290150, pos = { x = -4124.224, y = 220.329, z = -2404.928 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308025, gadget_id = 70290150, pos = { x = -4102.662, y = 222.298, z = -2429.891 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308026, gadget_id = 70290150, pos = { x = -4123.197, y = 218.183, z = -2416.732 }, rot = { x = 0.000, y = 349.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 308027, gadget_id = 70290150, pos = { x = -4123.897, y = 219.230, z = -2410.726 }, rot = { x = 354.479, y = 349.820, z = 0.990 }, level = 27, area_id = 13 },
	{ config_id = 308028, gadget_id = 70330064, pos = { x = -4104.391, y = 221.390, z = -2434.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1308004, name = "GROUP_LOAD_308004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_308004", action = "action_EVENT_GROUP_LOAD_308004", trigger_count = 0 },
	{ config_id = 1308012, name = "CHALLENGE_SUCCESS_308012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_308012", trigger_count = 0 },
	{ config_id = 1308013, name = "CHALLENGE_FAIL_308013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_308013", trigger_count = 0 },
	{ config_id = 1308014, name = "GADGET_STATE_CHANGE_308014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308014", action = "action_EVENT_GADGET_STATE_CHANGE_308014", trigger_count = 0 },
	{ config_id = 1308015, name = "ANY_GADGET_DIE_308015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "247" },
	{ config_id = 1308016, name = "GADGET_CREATE_308016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_308016", action = "action_EVENT_GADGET_CREATE_308016", trigger_count = 0 },
	{ config_id = 1308017, name = "SELECT_OPTION_308017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_308017", action = "action_EVENT_SELECT_OPTION_308017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 308002, 308003, 308028 },
		regions = { },
		triggers = { "GROUP_LOAD_308004", "CHALLENGE_SUCCESS_308012", "CHALLENGE_FAIL_308013", "GADGET_STATE_CHANGE_308014", "ANY_GADGET_DIE_308015", "GADGET_CREATE_308016", "SELECT_OPTION_308017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 308005, 308006, 308007, 308008, 308009, 308010, 308011, 308018, 308019, 308020, 308021, 308022, 308023, 308024, 308025, 308026, 308027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 308002 },
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
function condition_EVENT_GROUP_LOAD_308004(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 133212308) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_308004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212308, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_308012(context, evt)
	-- 将configid为 308002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133212308, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212308, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为308001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 308001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_308013(context, evt)
	-- 将configid为 308002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为308003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 308003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212308, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308014(context, evt)
	if 308002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 247, 8) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_308016(context, evt)
	if 308003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_308016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212308, 308003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_308017(context, evt)
	-- 判断是gadgetid 308003 option_id 177
	if 308003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_308017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 308003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 308002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"