-- 基础信息
local base_info = {
	group_id = 133302454
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 12,
	group_id = 133302454,
	gadget_controller_id = 454009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 454001, monster_id = 25010201, pos = { x = -733.585, y = 230.152, z = 2216.424 }, rot = { x = 0.000, y = 46.783, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454002, monster_id = 25010201, pos = { x = -729.487, y = 231.900, z = 2208.057 }, rot = { x = 0.000, y = 319.354, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454003, monster_id = 25020201, pos = { x = -735.645, y = 231.352, z = 2210.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454004, monster_id = 25020201, pos = { x = -733.355, y = 231.833, z = 2208.250 }, rot = { x = 0.000, y = 26.822, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454005, monster_id = 25070101, pos = { x = -724.568, y = 231.106, z = 2212.071 }, rot = { x = 0.000, y = 310.020, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454015, monster_id = 25010301, pos = { x = -722.283, y = 231.767, z = 2209.496 }, rot = { x = 0.000, y = 310.020, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454016, monster_id = 25010601, pos = { x = -725.099, y = 231.868, z = 2208.432 }, rot = { x = 0.000, y = 310.020, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454017, monster_id = 25010301, pos = { x = -719.805, y = 231.367, z = 2212.554 }, rot = { x = 0.000, y = 289.835, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454018, monster_id = 25030201, pos = { x = -725.073, y = 229.625, z = 2219.034 }, rot = { x = 0.000, y = 185.550, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454019, monster_id = 25030301, pos = { x = -727.873, y = 228.880, z = 2220.955 }, rot = { x = 0.000, y = 185.550, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454020, monster_id = 25020201, pos = { x = -722.570, y = 229.527, z = 2220.597 }, rot = { x = 0.000, y = 185.550, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 454021, monster_id = 25020201, pos = { x = -724.770, y = 228.882, z = 2222.154 }, rot = { x = 0.000, y = 185.550, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 454006, gadget_id = 70350082, pos = { x = -728.127, y = 230.178, z = 2215.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 24 },
	{ config_id = 454009, gadget_id = 70360001, pos = { x = -728.130, y = 231.333, z = 2215.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1454010, name = "SELECT_OPTION_454010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_454010", action = "action_EVENT_SELECT_OPTION_454010", trigger_count = 0 },
	{ config_id = 1454011, name = "CHALLENGE_SUCCESS_454011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_454011", trigger_count = 0 },
	{ config_id = 1454012, name = "CHALLENGE_FAIL_454012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_454012", trigger_count = 0 },
	{ config_id = 1454014, name = "GADGET_CREATE_454014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_454014", action = "action_EVENT_GADGET_CREATE_454014", trigger_count = 0 },
	{ config_id = 1454022, name = "ANY_MONSTER_DIE_454022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_454022", action = "action_EVENT_ANY_MONSTER_DIE_454022", trigger_count = 0 },
	{ config_id = 1454023, name = "ANY_MONSTER_DIE_454023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_454023", action = "action_EVENT_ANY_MONSTER_DIE_454023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 454007, gadget_id = 70300118, pos = { x = -728.130, y = 231.333, z = 2215.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 24 },
		{ config_id = 454008, gadget_id = 70330011, pos = { x = -728.035, y = 231.339, z = 2215.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 24 }
	},
	triggers = {
		{ config_id = 1454013, name = "GADGET_STATE_CHANGE_454013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_454013", action = "action_EVENT_GADGET_STATE_CHANGE_454013", trigger_count = 0 }
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
		gadgets = { 454006, 454009 },
		regions = { },
		triggers = { "SELECT_OPTION_454010", "CHALLENGE_SUCCESS_454011", "CHALLENGE_FAIL_454012", "GADGET_CREATE_454014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 454001, 454002, 454003, 454004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_454022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 454005, 454015, 454016, 454017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_454023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 454018, 454019, 454020, 454021 },
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
function condition_EVENT_SELECT_OPTION_454010(context, evt)
	-- 判断是gadgetid 454009 option_id 177
	if 454009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_454010(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_454011(context, evt)
	-- 将configid为 454006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454006, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_454012(context, evt)
	-- 将configid为 454006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为454009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302454, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302454, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_454014(context, evt)
	if 454009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_454014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302454, 454009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_454022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_454022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302454, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302454, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_454023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_454023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302454, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302454, 3)
	
	return 0
end