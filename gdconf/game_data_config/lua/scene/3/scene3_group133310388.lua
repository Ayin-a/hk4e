-- 基础信息
local base_info = {
	group_id = 133310388
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 7,
	group_id = 133310388,
	gadget_controller_id = 388011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 388001, monster_id = 25210101, pos = { x = -2320.456, y = 357.186, z = 4316.109 }, rot = { x = 0.000, y = 135.723, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 388002, monster_id = 25210101, pos = { x = -2320.273, y = 357.152, z = 4313.179 }, rot = { x = 0.000, y = 72.025, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 388003, monster_id = 25210201, pos = { x = -2318.827, y = 357.187, z = 4310.208 }, rot = { x = 0.000, y = 358.989, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 388004, monster_id = 25210201, pos = { x = -2311.293, y = 357.301, z = 4319.367 }, rot = { x = 0.000, y = 229.814, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 388005, monster_id = 25310101, pos = { x = -2316.524, y = 357.233, z = 4310.067 }, rot = { x = 0.000, y = 338.021, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 26 },
	{ config_id = 388006, monster_id = 25210302, pos = { x = -2310.487, y = 357.256, z = 4315.999 }, rot = { x = 0.000, y = 276.417, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 388007, monster_id = 25210302, pos = { x = -2314.546, y = 357.446, z = 4322.074 }, rot = { x = 0.000, y = 229.851, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 388008, gadget_id = 70330334, pos = { x = -2315.961, y = 357.346, z = 4315.383 }, rot = { x = 358.210, y = 0.276, z = 359.991 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 388011, gadget_id = 70360001, pos = { x = -2315.945, y = 358.368, z = 4315.384 }, rot = { x = 5.875, y = 359.916, z = 356.784 }, level = 30, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1388012, name = "SELECT_OPTION_388012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_388012", action = "action_EVENT_SELECT_OPTION_388012", trigger_count = 0 },
	{ config_id = 1388013, name = "CHALLENGE_SUCCESS_388013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_388013", trigger_count = 0 },
	{ config_id = 1388014, name = "CHALLENGE_FAIL_388014", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_388014", trigger_count = 0 },
	{ config_id = 1388016, name = "GADGET_CREATE_388016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_388016", action = "action_EVENT_GADGET_CREATE_388016", trigger_count = 0 },
	{ config_id = 1388017, name = "ANY_MONSTER_DIE_388017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_388017", action = "action_EVENT_ANY_MONSTER_DIE_388017", trigger_count = 0 },
	{ config_id = 1388018, name = "ANY_MONSTER_DIE_388018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_388018", action = "action_EVENT_ANY_MONSTER_DIE_388018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 388009, gadget_id = 70300118, pos = { x = -2315.801, y = 357.780, z = 4315.583 }, rot = { x = 358.212, y = 0.123, z = -0.004 }, level = 30, area_id = 26 },
		{ config_id = 388010, gadget_id = 70330011, pos = { x = -2315.712, y = 357.762, z = 4315.709 }, rot = { x = 358.212, y = 0.123, z = -0.004 }, level = 30, area_id = 26 }
	},
	triggers = {
		{ config_id = 1388015, name = "GADGET_STATE_CHANGE_388015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_388015", action = "action_EVENT_GADGET_STATE_CHANGE_388015", trigger_count = 0 }
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
		gadgets = { 388008, 388011 },
		regions = { },
		triggers = { "SELECT_OPTION_388012", "CHALLENGE_SUCCESS_388013", "CHALLENGE_FAIL_388014", "GADGET_CREATE_388016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 388001, 388002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_388017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 388004, 388006, 388007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_388018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 388003, 388005 },
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
function condition_EVENT_SELECT_OPTION_388012(context, evt)
	-- 判断是gadgetid 388011 option_id 177
	if 388011 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_388012(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388008, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_388013(context, evt)
	-- 将configid为 388008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388008, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_388014(context, evt)
	-- 将configid为 388008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为388011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 388011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310388, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310388, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_388016(context, evt)
	if 388011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_388016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310388, 388011, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_388017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_388017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310388, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310388, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_388018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_388018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310388, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310388, 3)
	
	return 0
end