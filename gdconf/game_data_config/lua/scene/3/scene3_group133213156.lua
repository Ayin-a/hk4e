-- 基础信息
local base_info = {
	group_id = 133213156
}

-- Trigger变量
local defs = {
	duration = 240,
	monster_id = 156001,
	group_id = 133213156,
	gadget_controller_id = 156009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156001, monster_id = 23020102, pos = { x = -3686.717, y = 200.167, z = -2869.201 }, rot = { x = 0.000, y = 76.207, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6110 }, isElite = true, area_id = 12 },
	{ config_id = 156002, monster_id = 23010301, pos = { x = -3681.298, y = 200.094, z = -2875.037 }, rot = { x = 0.000, y = 37.107, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 12 },
	{ config_id = 156003, monster_id = 23010501, pos = { x = -3684.224, y = 200.000, z = -2863.090 }, rot = { x = 0.000, y = 86.681, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 156006, gadget_id = 70350082, pos = { x = -3674.801, y = 200.239, z = -2864.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 156009, gadget_id = 70360001, pos = { x = -3674.819, y = 201.260, z = -2864.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1156010, name = "SELECT_OPTION_156010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_156010", action = "action_EVENT_SELECT_OPTION_156010", trigger_count = 0 },
	{ config_id = 1156011, name = "CHALLENGE_SUCCESS_156011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_156011", trigger_count = 0 },
	{ config_id = 1156012, name = "CHALLENGE_FAIL_156012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_156012", trigger_count = 0 },
	{ config_id = 1156013, name = "GADGET_STATE_CHANGE_156013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_156013", action = "action_EVENT_GADGET_STATE_CHANGE_156013", trigger_count = 0 },
	{ config_id = 1156014, name = "GADGET_CREATE_156014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_156014", action = "action_EVENT_GADGET_CREATE_156014", trigger_count = 0 }
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
		gadgets = { 156006, 156009 },
		regions = { },
		triggers = { "SELECT_OPTION_156010", "CHALLENGE_SUCCESS_156011", "CHALLENGE_FAIL_156012", "GADGET_STATE_CHANGE_156013", "GADGET_CREATE_156014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 156001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 156002, 156003 },
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
function condition_EVENT_SELECT_OPTION_156010(context, evt)
	-- 判断是gadgetid 156009 option_id 177
	if 156009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_156010(context, evt)
	-- 180号挑战,duration内击杀指定config_id的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 74, defs.duration, defs.group_id, defs.monster_id, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156006, GadgetState.GearStart) then
	return -1
	end 
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156010, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_156011(context, evt)
	-- 将configid为 156006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213156, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_156012(context, evt)
	-- 将configid为 156006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为156009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 156009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213156, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213156, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_156013(context, evt)
	if 156006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_156013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213156, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_156014(context, evt)
	if 156009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_156014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213156, 156009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end