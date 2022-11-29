-- 基础信息
local base_info = {
	group_id = 133102563
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 6,
	group_id = 133102563
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 563001, monster_id = 26060101, pos = { x = 1249.254, y = 200.824, z = 855.942 }, rot = { x = 0.000, y = 0.000, z = 350.247 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 563002, monster_id = 26060101, pos = { x = 1253.344, y = 200.692, z = 847.578 }, rot = { x = 0.000, y = 0.000, z = 350.247 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 563003, monster_id = 20010901, pos = { x = 1249.015, y = 200.583, z = 857.258 }, rot = { x = 350.448, y = 137.851, z = 2.650 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 563004, monster_id = 21010901, pos = { x = 1255.175, y = 200.838, z = 865.201 }, rot = { x = 349.634, y = 189.430, z = 5.038 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 563005, monster_id = 26060101, pos = { x = 1257.772, y = 200.248, z = 849.925 }, rot = { x = 352.743, y = 227.802, z = 6.534 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 563013, monster_id = 21010901, pos = { x = 1264.678, y = 200.169, z = 853.251 }, rot = { x = 0.000, y = 269.065, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 563006, gadget_id = 70900049, pos = { x = 1253.262, y = 201.004, z = 854.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 563007, gadget_id = 70300118, pos = { x = 1254.703, y = 202.607, z = 854.537 }, rot = { x = 0.000, y = 0.000, z = 350.247 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 563008, gadget_id = 70330014, pos = { x = 1253.300, y = 200.847, z = 854.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1563009, name = "GADGET_STATE_CHANGE_563009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_563009", action = "action_EVENT_GADGET_STATE_CHANGE_563009", trigger_count = 0 },
	{ config_id = 1563010, name = "CHALLENGE_SUCCESS_563010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_563010" },
	{ config_id = 1563011, name = "CHALLENGE_FAIL_563011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_563011", trigger_count = 0 },
	{ config_id = 1563012, name = "GADGET_STATE_CHANGE_563012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_563012", action = "action_EVENT_GADGET_STATE_CHANGE_563012", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 563006, 563007, 563008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_563009", "CHALLENGE_SUCCESS_563010", "CHALLENGE_FAIL_563011", "GADGET_STATE_CHANGE_563012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 563001, 563002, 563003, 563004, 563005, 563013 },
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
function condition_EVENT_GADGET_STATE_CHANGE_563009(context, evt)
	if 563006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_563009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133102563, 2)
	
	-- 13号挑��?,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_563010(context, evt)
	-- 将configid为 563008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_563011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102563, 2)
	
	-- 将configid为 563006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 563008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为563007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 563007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_563012(context, evt)
	if 563006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_563012(context, evt)
	-- 将configid为 563008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 563008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end