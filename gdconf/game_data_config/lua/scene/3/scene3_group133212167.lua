-- 基础信息
local base_info = {
	group_id = 133212167
}

-- Trigger变量
local defs = {
	duration = 300,
	kill_sum = 4,
	group_id = 133212167,
	gadget_controller_id = 167005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 23010401, pos = { x = -3650.497, y = 235.694, z = -2392.900 }, rot = { x = 0.000, y = 334.085, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 167002, monster_id = 23010101, pos = { x = -3659.943, y = 237.144, z = -2377.906 }, rot = { x = 0.000, y = 126.675, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 167003, monster_id = 23010501, pos = { x = -3661.721, y = 236.702, z = -2387.627 }, rot = { x = 0.000, y = 65.581, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 167012, monster_id = 23010201, pos = { x = -3642.680, y = 236.341, z = -2380.279 }, rot = { x = 0.000, y = 259.539, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167004, gadget_id = 70350082, pos = { x = -3652.352, y = 236.455, z = -2381.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 167005, gadget_id = 70360001, pos = { x = -3652.360, y = 237.475, z = -2381.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 167011, gadget_id = 70330082, pos = { x = -3651.792, y = 236.399, z = -2382.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167006, name = "SELECT_OPTION_167006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_167006", action = "action_EVENT_SELECT_OPTION_167006", trigger_count = 0 },
	{ config_id = 1167007, name = "CHALLENGE_SUCCESS_167007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_167007", trigger_count = 0 },
	{ config_id = 1167008, name = "CHALLENGE_FAIL_167008", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_167008", trigger_count = 0 },
	{ config_id = 1167009, name = "GADGET_STATE_CHANGE_167009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167009", action = "", trigger_count = 0 },
	{ config_id = 1167010, name = "GADGET_CREATE_167010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_167010", action = "action_EVENT_GADGET_CREATE_167010", trigger_count = 0 },
	{ config_id = 1167014, name = "ANY_MONSTER_DIE_167014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167014", action = "action_EVENT_ANY_MONSTER_DIE_167014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 167013, monster_id = 23010401, pos = { x = -3653.841, y = 237.365, z = -2371.791 }, rot = { x = 0.000, y = 147.280, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 167004, 167005, 167011 },
		regions = { },
		triggers = { "SELECT_OPTION_167006", "CHALLENGE_SUCCESS_167007", "CHALLENGE_FAIL_167008", "GADGET_STATE_CHANGE_167009", "GADGET_CREATE_167010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 167001, 167002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 167003, 167012 },
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
function condition_EVENT_SELECT_OPTION_167006(context, evt)
	-- 判断是gadgetid 167005 option_id 177
	if 167005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_167006(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167004, GadgetState.GearStart) then
	return -1
	end 
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167011, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_167007(context, evt)
	-- 将configid为 167004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 167011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167011, GadgetState.Default) then
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
function action_EVENT_CHALLENGE_FAIL_167008(context, evt)
	-- 将configid为 167004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 167011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为167005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212167, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167009(context, evt)
	if 167004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_167010(context, evt)
	if 167005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_167010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212167, 167005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212167, 3)
	
	return 0
end