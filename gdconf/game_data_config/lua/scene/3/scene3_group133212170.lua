-- 基础信息
local base_info = {
	group_id = 133212170
}

-- Trigger变量
local defs = {
	duration = 240,
	kill_sum = 5,
	group_id = 133212170,
	gadget_controller_id = 170007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 170001, monster_id = 25080101, pos = { x = -3816.245, y = 201.619, z = -2645.510 }, rot = { x = 0.000, y = 185.492, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 170002, monster_id = 25080201, pos = { x = -3824.817, y = 200.694, z = -2647.597 }, rot = { x = 0.000, y = 142.114, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 170003, monster_id = 25080301, pos = { x = -3803.028, y = 200.689, z = -2650.690 }, rot = { x = 0.000, y = 283.783, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 170004, monster_id = 25100201, pos = { x = -3806.538, y = 200.458, z = -2654.771 }, rot = { x = 0.000, y = 277.124, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 170014, monster_id = 25100201, pos = { x = -3827.786, y = 200.419, z = -2650.957 }, rot = { x = 0.000, y = 106.511, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 170006, gadget_id = 70350082, pos = { x = -3816.708, y = 200.136, z = -2652.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 170007, gadget_id = 70360001, pos = { x = -3816.691, y = 201.159, z = -2652.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 170008, gadget_id = 70330082, pos = { x = -3816.450, y = 201.466, z = -2652.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1170005, name = "ANY_MONSTER_DIE_170005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_170005", action = "action_EVENT_ANY_MONSTER_DIE_170005" },
	{ config_id = 1170009, name = "SELECT_OPTION_170009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_170009", action = "action_EVENT_SELECT_OPTION_170009", trigger_count = 0 },
	{ config_id = 1170010, name = "CHALLENGE_SUCCESS_170010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_170010", trigger_count = 0 },
	{ config_id = 1170011, name = "CHALLENGE_FAIL_170011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_170011", trigger_count = 0 },
	{ config_id = 1170012, name = "GADGET_STATE_CHANGE_170012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170012", action = "", trigger_count = 0 },
	{ config_id = 1170013, name = "GADGET_CREATE_170013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_170013", action = "action_EVENT_GADGET_CREATE_170013", trigger_count = 0 }
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
		gadgets = { 170006, 170007, 170008 },
		regions = { },
		triggers = { "SELECT_OPTION_170009", "CHALLENGE_SUCCESS_170010", "CHALLENGE_FAIL_170011", "GADGET_STATE_CHANGE_170012", "GADGET_CREATE_170013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 170001, 170002, 170003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_170005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 170004, 170014 },
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
function condition_EVENT_ANY_MONSTER_DIE_170005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_170005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212170, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_170009(context, evt)
	-- 判断是gadgetid 170007 option_id 177
	if 170007 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_170009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 76, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170006, GadgetState.GearStart) then
	return -1
	end 
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170008, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_170010(context, evt)
	-- 将configid为 170006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 170008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170008, GadgetState.Default) then
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
function action_EVENT_CHALLENGE_FAIL_170011(context, evt)
	-- 将configid为 170006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 170008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为170007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212170, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212170, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170012(context, evt)
	if 170006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_170013(context, evt)
	if 170007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_170013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212170, 170007, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end