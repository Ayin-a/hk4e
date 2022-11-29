-- 基础信息
local base_info = {
	group_id = 220133065
}

-- Trigger变量
local defs = {
	duration = 23,
	group_id = 220133065
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
	{ config_id = 65001, gadget_id = 70211111, pos = { x = 31.930, y = 158.375, z = 543.421 }, rot = { x = 13.956, y = 37.945, z = 349.537 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true },
	{ config_id = 65002, gadget_id = 70350083, pos = { x = -40.998, y = 162.200, z = 494.633 }, rot = { x = 344.396, y = 293.045, z = 353.060 }, level = 1, persistent = true },
	{ config_id = 65003, gadget_id = 70360001, pos = { x = -40.707, y = 163.120, z = 494.644 }, rot = { x = 344.396, y = 293.045, z = 352.585 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065005, name = "CHALLENGE_SUCCESS_65005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_65005", trigger_count = 0 },
	{ config_id = 1065006, name = "CHALLENGE_FAIL_65006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_65006", trigger_count = 0 },
	{ config_id = 1065007, name = "GADGET_STATE_CHANGE_65007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65007", action = "action_EVENT_GADGET_STATE_CHANGE_65007", trigger_count = 0 },
	{ config_id = 1065008, name = "GADGET_STATE_CHANGE_65008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65008", action = "", tag = "202" },
	{ config_id = 1065009, name = "GADGET_CREATE_65009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_65009", action = "action_EVENT_GADGET_CREATE_65009", trigger_count = 0 },
	{ config_id = 1065010, name = "SELECT_OPTION_65010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_65010", action = "action_EVENT_SELECT_OPTION_65010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1065011, name = "GROUP_LOAD_65011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_65011", trigger_count = 0 }
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
		gadgets = { 65002, 65003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_65005", "CHALLENGE_FAIL_65006", "GADGET_STATE_CHANGE_65007", "GADGET_STATE_CHANGE_65008", "GADGET_CREATE_65009", "SELECT_OPTION_65010", "GROUP_LOAD_65011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 65001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 65002 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_65005(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220133065, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220133065, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_65006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220133065, 2)
	
	-- 将configid为 65002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为65003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65007(context, evt)
	if 65002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65008(context, evt)
	if 65001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_65009(context, evt)
	if 65003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_65009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220133065, 65003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_65010(context, evt)
	-- 判断是gadgetid 65003 option_id 177
	if 65003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_65010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 65002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220133065, 2)
	
	-- 将configid为 65002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为65003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end