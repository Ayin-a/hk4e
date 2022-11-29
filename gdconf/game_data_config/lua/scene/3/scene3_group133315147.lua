-- 基础信息
local base_info = {
	group_id = 133315147
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 3,
	group_id = 133315147,
	gadget_controller_id = 147009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147001, monster_id = 23010101, pos = { x = 228.800, y = 303.567, z = 2501.185 }, rot = { x = 0.000, y = 311.193, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 20 },
	{ config_id = 147002, monster_id = 23010201, pos = { x = 217.829, y = 300.736, z = 2499.976 }, rot = { x = 0.000, y = 50.277, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 20 },
	{ config_id = 147003, monster_id = 23010301, pos = { x = 222.797, y = 300.384, z = 2494.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 147006, gadget_id = 70350082, pos = { x = 222.797, y = 301.916, z = 2503.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 20 },
	{ config_id = 147009, gadget_id = 70360001, pos = { x = 222.797, y = 303.101, z = 2503.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147010, name = "SELECT_OPTION_147010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147010", action = "action_EVENT_SELECT_OPTION_147010", trigger_count = 0 },
	{ config_id = 1147011, name = "CHALLENGE_SUCCESS_147011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_147011", trigger_count = 0 },
	{ config_id = 1147012, name = "CHALLENGE_FAIL_147012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_147012", trigger_count = 0 },
	{ config_id = 1147014, name = "GADGET_CREATE_147014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147014", action = "action_EVENT_GADGET_CREATE_147014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 147004, monster_id = 21010101, pos = { x = 219.293, y = 302.178, z = 2507.477 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 20 },
		{ config_id = 147005, monster_id = 21010101, pos = { x = 227.814, y = 304.036, z = 2508.039 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 20 }
	},
	gadgets = {
		{ config_id = 147007, gadget_id = 70300118, pos = { x = 222.797, y = 303.101, z = 2503.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 20 },
		{ config_id = 147008, gadget_id = 70330011, pos = { x = 222.797, y = 303.101, z = 2503.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 20 }
	},
	triggers = {
		{ config_id = 1147013, name = "GADGET_STATE_CHANGE_147013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147013", action = "action_EVENT_GADGET_STATE_CHANGE_147013", trigger_count = 0 }
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
		gadgets = { 147006, 147009 },
		regions = { },
		triggers = { "SELECT_OPTION_147010", "CHALLENGE_SUCCESS_147011", "CHALLENGE_FAIL_147012", "GADGET_CREATE_147014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 147001, 147002, 147003 },
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
function condition_EVENT_SELECT_OPTION_147010(context, evt)
	-- 判断是gadgetid 147009 option_id 177
	if 147009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147010(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_147011(context, evt)
	-- 将configid为 147006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147006, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_147012(context, evt)
	-- 将configid为 147006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为147009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 147009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315147, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315147, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147014(context, evt)
	if 147009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315147, 147009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end