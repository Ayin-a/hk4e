-- 基础信息
local base_info = {
	group_id = 133212166
}

-- Trigger变量
local defs = {
	duration = 240,
	kill_sum = 14,
	group_id = 133212166,
	gadget_controller_id = 166005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 166001, monster_id = 21011601, pos = { x = -3980.202, y = 200.779, z = -2565.037 }, rot = { x = 0.000, y = 245.226, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 166002, monster_id = 21011601, pos = { x = -3987.714, y = 205.336, z = -2553.404 }, rot = { x = 0.000, y = 182.409, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 166003, monster_id = 21010601, pos = { x = -4003.057, y = 201.102, z = -2570.131 }, rot = { x = 0.000, y = 67.726, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 166011, monster_id = 21010601, pos = { x = -3996.294, y = 202.966, z = -2555.219 }, rot = { x = 0.000, y = 140.896, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 166012, monster_id = 21030601, pos = { x = -3982.637, y = 202.880, z = -2556.612 }, rot = { x = 0.000, y = 213.339, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 166013, monster_id = 21030601, pos = { x = -4002.978, y = 201.051, z = -2571.249 }, rot = { x = 0.000, y = 48.833, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 166014, monster_id = 21010301, pos = { x = -3998.502, y = 201.877, z = -2560.205 }, rot = { x = 0.000, y = 124.092, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 166015, monster_id = 21010301, pos = { x = -3997.983, y = 201.023, z = -2567.664 }, rot = { x = 0.000, y = 48.833, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 166016, monster_id = 21010301, pos = { x = -3985.441, y = 200.572, z = -2572.031 }, rot = { x = 0.000, y = 324.615, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 166017, monster_id = 21010301, pos = { x = -3983.690, y = 201.299, z = -2560.765 }, rot = { x = 0.000, y = 233.859, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 166018, monster_id = 21020201, pos = { x = -4000.944, y = 201.785, z = -2561.484 }, rot = { x = 0.000, y = 120.644, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 166019, monster_id = 21020701, pos = { x = -3980.263, y = 200.621, z = -2570.340 }, rot = { x = 0.000, y = 279.111, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 166020, monster_id = 21010301, pos = { x = -3992.861, y = 200.475, z = -2573.902 }, rot = { x = 0.000, y = 19.205, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 166004, gadget_id = 70350082, pos = { x = -3994.347, y = 201.142, z = -2564.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 166005, gadget_id = 70360001, pos = { x = -3994.352, y = 202.163, z = -2564.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 166022, gadget_id = 70330082, pos = { x = -3990.764, y = 201.620, z = -2564.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1166006, name = "SELECT_OPTION_166006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_166006", action = "action_EVENT_SELECT_OPTION_166006", trigger_count = 0 },
	{ config_id = 1166007, name = "CHALLENGE_SUCCESS_166007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_166007", trigger_count = 0 },
	{ config_id = 1166008, name = "CHALLENGE_FAIL_166008", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_166008", trigger_count = 0 },
	{ config_id = 1166009, name = "GADGET_STATE_CHANGE_166009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166009", action = "action_EVENT_GADGET_STATE_CHANGE_166009", trigger_count = 0 },
	{ config_id = 1166010, name = "GADGET_CREATE_166010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_166010", action = "action_EVENT_GADGET_CREATE_166010", trigger_count = 0 },
	{ config_id = 1166021, name = "MONSTER_TIDE_DIE_166021", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_166021", action = "action_EVENT_MONSTER_TIDE_DIE_166021" }
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
		gadgets = { 166004, 166005, 166022 },
		regions = { },
		triggers = { "SELECT_OPTION_166006", "CHALLENGE_SUCCESS_166007", "CHALLENGE_FAIL_166008", "GADGET_STATE_CHANGE_166009", "GADGET_CREATE_166010", "MONSTER_TIDE_DIE_166021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 166001, 166002, 166003, 166011, 166012, 166013, 166014, 166015, 166016, 166017, 166020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 166018, 166019 },
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
function condition_EVENT_SELECT_OPTION_166006(context, evt)
	-- 判断是gadgetid 166005 option_id 177
	if 166005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_166006(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166004, GadgetState.GearStart) then
	return -1
	end 
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166022, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_166007(context, evt)
	-- 将configid为 166004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 166022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166022, GadgetState.Default) then
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
function action_EVENT_CHALLENGE_FAIL_166008(context, evt)
	--销毁编号为1（该怪物潮的识别id)的怪物潮
	ScriptLib.KillMonsterTide(context, 133212166, 1)
	
	--销毁编号为2（该怪物潮的识别id)的怪物潮
	ScriptLib.KillMonsterTide(context, 133212166, 2) 
	
	--销毁编号为3（该怪物潮的识别id)的怪物潮
	ScriptLib.KillMonsterTide(context, 133212166, 3)
	
	-- 重新生成指定group，指定suite
	ScriptLib.RefreshGroup(context, { group_id = 133212166, suite = 1 }) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_166009(context, evt)
	if 166004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166009(context, evt)
	-- 将configid为 166022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133212166, {166001,166003,166002,166011}, 4, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133212166, {166012,166013}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133212166, {166014,166015,166016,166017,166020}, 6, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_166010(context, evt)
	if 166005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_166010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212166, 166005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_166021(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_166021(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212166, 3)
	
	return 0
end