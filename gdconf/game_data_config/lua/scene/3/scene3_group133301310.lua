-- 基础信息
local base_info = {
	group_id = 133301310
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 7,
	group_id = 133301310,
	gadget_controller_id = 310009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 310001, monster_id = 25210101, pos = { x = -875.805, y = 183.397, z = 3739.397 }, rot = { x = 0.000, y = 135.434, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 310002, monster_id = 25210101, pos = { x = -875.622, y = 182.927, z = 3736.467 }, rot = { x = 0.000, y = 70.090, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 310003, monster_id = 25210201, pos = { x = -874.176, y = 182.283, z = 3733.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 310004, monster_id = 25210201, pos = { x = -866.641, y = 180.149, z = 3742.654 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 310005, monster_id = 25310101, pos = { x = -871.873, y = 181.465, z = 3733.353 }, rot = { x = 0.000, y = 339.522, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 23 },
	{ config_id = 310015, monster_id = 25210302, pos = { x = -865.836, y = 179.687, z = 3739.286 }, rot = { x = 0.000, y = 275.271, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 310016, monster_id = 25210302, pos = { x = -869.896, y = 182.048, z = 3745.361 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 310006, gadget_id = 70350082, pos = { x = -871.311, y = 181.218, z = 3738.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 310009, gadget_id = 70360001, pos = { x = -871.291, y = 182.444, z = 3738.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1310010, name = "SELECT_OPTION_310010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_310010", action = "action_EVENT_SELECT_OPTION_310010", trigger_count = 0 },
	{ config_id = 1310011, name = "CHALLENGE_SUCCESS_310011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_310011", trigger_count = 0 },
	{ config_id = 1310012, name = "CHALLENGE_FAIL_310012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_310012", trigger_count = 0 },
	{ config_id = 1310014, name = "GADGET_CREATE_310014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_310014", action = "action_EVENT_GADGET_CREATE_310014", trigger_count = 0 },
	{ config_id = 1310017, name = "ANY_MONSTER_DIE_310017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_310017", action = "action_EVENT_ANY_MONSTER_DIE_310017", trigger_count = 0 },
	{ config_id = 1310018, name = "ANY_MONSTER_DIE_310018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_310018", action = "action_EVENT_ANY_MONSTER_DIE_310018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 310007, gadget_id = 70300118, pos = { x = -871.147, y = 182.412, z = 3738.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 310008, gadget_id = 70330011, pos = { x = -871.058, y = 182.379, z = 3738.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1310013, name = "GADGET_STATE_CHANGE_310013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310013", action = "action_EVENT_GADGET_STATE_CHANGE_310013", trigger_count = 0 }
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
		gadgets = { 310006, 310009 },
		regions = { },
		triggers = { "SELECT_OPTION_310010", "CHALLENGE_SUCCESS_310011", "CHALLENGE_FAIL_310012", "GADGET_CREATE_310014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 310001, 310002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_310017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 310004, 310015, 310016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_310018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 310003, 310005 },
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
function condition_EVENT_SELECT_OPTION_310010(context, evt)
	-- 判断是gadgetid 310009 option_id 177
	if 310009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_310010(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_310011(context, evt)
	-- 将configid为 310006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310006, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_310012(context, evt)
	-- 将configid为 310006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为310009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 310009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301310, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301310, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_310014(context, evt)
	if 310009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_310014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301310, 310009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_310017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_310017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301310, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301310, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_310018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_310018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301310, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301310, 3)
	
	return 0
end