-- 基础信息
local base_info = {
	group_id = 133220165
}

-- Trigger变量
local defs = {
	duration = 240,
	kill_sum = 15,
	group_id = 133220165,
	gadget_controller_id = 165003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 165001, monster_id = 26010301, pos = { x = -2744.221, y = 238.142, z = -4421.299 }, rot = { x = 0.000, y = 55.383, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165010, monster_id = 26010301, pos = { x = -2715.715, y = 238.826, z = -4415.562 }, rot = { x = 0.000, y = 270.543, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165011, monster_id = 26010301, pos = { x = -2736.448, y = 238.450, z = -4410.522 }, rot = { x = 0.000, y = 138.391, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165012, monster_id = 20011101, pos = { x = -2721.742, y = 236.624, z = -4424.730 }, rot = { x = 0.000, y = 311.861, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165013, monster_id = 20011101, pos = { x = -2729.670, y = 236.460, z = -4426.220 }, rot = { x = 0.000, y = 355.063, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165014, monster_id = 20011101, pos = { x = -2719.959, y = 240.421, z = -4411.493 }, rot = { x = 0.000, y = 203.230, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165015, monster_id = 20011101, pos = { x = -2717.261, y = 237.989, z = -4419.988 }, rot = { x = 0.000, y = 268.114, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165016, monster_id = 20011101, pos = { x = -2737.272, y = 237.051, z = -4423.161 }, rot = { x = 0.000, y = 45.692, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 165017, monster_id = 20011101, pos = { x = -2726.956, y = 240.357, z = -4411.351 }, rot = { x = 0.000, y = 180.540, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 165002, gadget_id = 70350082, pos = { x = -2733.700, y = 237.963, z = -4418.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 165003, gadget_id = 70360001, pos = { x = -2733.725, y = 238.991, z = -4418.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 165004, gadget_id = 70330082, pos = { x = -2733.775, y = 238.984, z = -4418.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1165005, name = "SELECT_OPTION_165005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165005", action = "action_EVENT_SELECT_OPTION_165005", trigger_count = 0 },
	{ config_id = 1165006, name = "CHALLENGE_SUCCESS_165006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_165006", trigger_count = 0 },
	{ config_id = 1165007, name = "CHALLENGE_FAIL_165007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_165007", trigger_count = 0 },
	{ config_id = 1165008, name = "GADGET_STATE_CHANGE_165008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165008", action = "action_EVENT_GADGET_STATE_CHANGE_165008", trigger_count = 0 },
	{ config_id = 1165009, name = "GADGET_CREATE_165009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_165009", action = "action_EVENT_GADGET_CREATE_165009", trigger_count = 0 }
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
		gadgets = { 165002, 165003, 165004 },
		regions = { },
		triggers = { "SELECT_OPTION_165005", "CHALLENGE_SUCCESS_165006", "CHALLENGE_FAIL_165007", "GADGET_STATE_CHANGE_165008", "GADGET_CREATE_165009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 165001, 165010, 165011, 165012, 165013, 165014, 165015, 165016, 165017 },
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
function condition_EVENT_SELECT_OPTION_165005(context, evt)
	-- 判断是gadgetid 165003 option_id 177
	if 165003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165005(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165002, GadgetState.GearStart) then
	return -1
	end 
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165004, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_165006(context, evt)
	-- 将configid为 165002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 165004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165004, GadgetState.Default) then
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
function action_EVENT_CHALLENGE_FAIL_165007(context, evt)
	-- 将configid为 165002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为165003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 165003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 165004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220165, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220165, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165008(context, evt)
	if 165002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165008(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133220165, {165001,165010,165011}, 3, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为12，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133220165, {165012,165013,165014,165015,165016,165017}, 12, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_165009(context, evt)
	if 165003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_165009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220165, 165003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end