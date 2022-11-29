-- 基础信息
local base_info = {
	group_id = 133302172
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 5,
	group_id = 133302172,
	gadget_controller_id = 172009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 172001, monster_id = 25310301, pos = { x = -825.638, y = 196.152, z = 2661.609 }, rot = { x = 0.000, y = 286.849, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6110 }, isElite = true, area_id = 24 },
	{ config_id = 172002, monster_id = 25210101, pos = { x = -835.408, y = 196.497, z = 2664.542 }, rot = { x = 0.000, y = 110.687, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 24 },
	{ config_id = 172003, monster_id = 25210201, pos = { x = -824.912, y = 195.716, z = 2658.766 }, rot = { x = 0.000, y = 274.385, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 24 },
	{ config_id = 172004, monster_id = 25210201, pos = { x = -833.723, y = 196.949, z = 2667.712 }, rot = { x = 0.000, y = 132.903, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 24 },
	{ config_id = 172005, monster_id = 25210101, pos = { x = -835.841, y = 196.222, z = 2661.369 }, rot = { x = 0.000, y = 88.239, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 172006, gadget_id = 70350082, pos = { x = -830.550, y = 196.000, z = 2662.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 24 },
	{ config_id = 172009, gadget_id = 70360001, pos = { x = -830.544, y = 197.091, z = 2662.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1172010, name = "SELECT_OPTION_172010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_172010", action = "action_EVENT_SELECT_OPTION_172010", trigger_count = 0 },
	{ config_id = 1172011, name = "CHALLENGE_SUCCESS_172011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_172011", trigger_count = 0 },
	{ config_id = 1172012, name = "CHALLENGE_FAIL_172012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_172012", trigger_count = 0 },
	{ config_id = 1172014, name = "GADGET_CREATE_172014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_172014", action = "action_EVENT_GADGET_CREATE_172014", trigger_count = 0 },
	{ config_id = 1172015, name = "ANY_MONSTER_DIE_172015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_172015", action = "action_EVENT_ANY_MONSTER_DIE_172015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 172007, gadget_id = 70300118, pos = { x = -834.157, y = 196.154, z = 2662.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 24 },
		{ config_id = 172008, gadget_id = 70330011, pos = { x = -834.157, y = 196.154, z = 2662.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 24 }
	},
	triggers = {
		{ config_id = 1172013, name = "GADGET_STATE_CHANGE_172013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172013", action = "action_EVENT_GADGET_STATE_CHANGE_172013", trigger_count = 0 }
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
		gadgets = { 172006, 172009 },
		regions = { },
		triggers = { "SELECT_OPTION_172010", "CHALLENGE_SUCCESS_172011", "CHALLENGE_FAIL_172012", "GADGET_CREATE_172014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 172002, 172004, 172005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_172015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 172001, 172003 },
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
function condition_EVENT_SELECT_OPTION_172010(context, evt)
	-- 判断是gadgetid 172009 option_id 177
	if 172009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_172010(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_172011(context, evt)
	-- 将configid为 172006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_172012(context, evt)
	-- 将configid为 172006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为172009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 172009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302172, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302172, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_172014(context, evt)
	if 172009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_172014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302172, 172009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_172015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_172015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302172, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302172, 2)
	
	return 0
end