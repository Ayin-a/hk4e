-- 基础信息
local base_info = {
	group_id = 133220164
}

-- Trigger变量
local defs = {
	duration = 240,
	monster_id = 164001,
	group_id = 133220164,
	gadget_controller_id = 164005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 23030101, pos = { x = -2135.608, y = 163.039, z = -4400.634 }, rot = { x = 0.000, y = 336.091, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6110, 9002 }, isElite = true, area_id = 11 },
	{ config_id = 164002, monster_id = 25020201, pos = { x = -2151.311, y = 162.290, z = -4380.560 }, rot = { x = 0.000, y = 121.906, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 11 },
	{ config_id = 164003, monster_id = 25020201, pos = { x = -2154.168, y = 161.935, z = -4387.984 }, rot = { x = 0.000, y = 55.206, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164004, gadget_id = 70350082, pos = { x = -2142.204, y = 161.386, z = -4386.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 164005, gadget_id = 70360001, pos = { x = -2142.203, y = 162.411, z = -4386.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164006, name = "SELECT_OPTION_164006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164006", action = "action_EVENT_SELECT_OPTION_164006", trigger_count = 0 },
	{ config_id = 1164007, name = "CHALLENGE_SUCCESS_164007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_164007", trigger_count = 0 },
	{ config_id = 1164008, name = "CHALLENGE_FAIL_164008", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_164008", trigger_count = 0 },
	{ config_id = 1164009, name = "GADGET_STATE_CHANGE_164009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164009", action = "action_EVENT_GADGET_STATE_CHANGE_164009", trigger_count = 0 },
	{ config_id = 1164010, name = "GADGET_CREATE_164010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_164010", action = "action_EVENT_GADGET_CREATE_164010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 164004, 164005 },
		regions = { },
		triggers = { "SELECT_OPTION_164006", "CHALLENGE_SUCCESS_164007", "CHALLENGE_FAIL_164008", "GADGET_STATE_CHANGE_164009", "GADGET_CREATE_164010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 164001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 164002, 164003 },
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
function condition_EVENT_SELECT_OPTION_164006(context, evt)
	-- 判断是gadgetid 164005 option_id 177
	if 164005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164006(context, evt)
	-- 180号挑战,duration内击杀指定monster_id的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 73, defs.duration, defs.group_id, defs.monster_id, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_164007(context, evt)
	-- 将configid为 164004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220164, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_164008(context, evt)
	-- 将configid为 164004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为164005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220164, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220164, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164009(context, evt)
	if 164004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220164, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_164010(context, evt)
	if 164005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_164010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220164, 164005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end