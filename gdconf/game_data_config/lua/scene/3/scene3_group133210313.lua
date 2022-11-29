-- 基础信息
local base_info = {
	group_id = 133210313
}

-- Trigger变量
local defs = {
	duration = 300,
	kill_sum = 12,
	group_id = 133210313,
	gadget_controller_id = 313010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 313001, monster_id = 25070101, pos = { x = -3773.596, y = 202.630, z = -498.941 }, rot = { x = 0.000, y = 141.201, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313002, monster_id = 25070101, pos = { x = -3780.122, y = 204.929, z = -503.949 }, rot = { x = 0.000, y = 112.289, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313003, monster_id = 25030301, pos = { x = -3771.529, y = 201.507, z = -529.007 }, rot = { x = 0.000, y = 359.904, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313004, monster_id = 25030201, pos = { x = -3763.773, y = 200.868, z = -525.129 }, rot = { x = 0.000, y = 309.152, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313005, monster_id = 25010301, pos = { x = -3769.772, y = 200.738, z = -536.626 }, rot = { x = 0.000, y = 16.634, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313016, monster_id = 25060101, pos = { x = -3778.890, y = 203.747, z = -498.120 }, rot = { x = 0.000, y = 127.298, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313017, monster_id = 25060101, pos = { x = -3777.729, y = 204.245, z = -508.477 }, rot = { x = 0.000, y = 90.355, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313018, monster_id = 25010601, pos = { x = -3759.488, y = 200.168, z = -531.236 }, rot = { x = 0.000, y = 287.049, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313020, monster_id = 25010701, pos = { x = -3771.906, y = 202.700, z = -501.062 }, rot = { x = 0.000, y = 141.201, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313021, monster_id = 25010501, pos = { x = -3780.428, y = 205.124, z = -505.766 }, rot = { x = 0.000, y = 87.905, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313022, monster_id = 25010401, pos = { x = -3777.981, y = 203.019, z = -495.897 }, rot = { x = 0.000, y = 127.298, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 313023, monster_id = 25010701, pos = { x = -3776.121, y = 203.739, z = -509.023 }, rot = { x = 0.000, y = 90.355, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 313006, gadget_id = 70330115, pos = { x = -3761.976, y = 201.196, z = -513.014 }, rot = { x = 0.000, y = 27.778, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 313007, gadget_id = 70330064, pos = { x = -3774.182, y = 202.692, z = -518.471 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 313008, gadget_id = 70350082, pos = { x = -3768.100, y = 201.548, z = -516.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 313010, gadget_id = 70360001, pos = { x = -3768.100, y = 201.698, z = -516.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313011, name = "SELECT_OPTION_313011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_313011", action = "action_EVENT_SELECT_OPTION_313011", trigger_count = 0 },
	{ config_id = 1313012, name = "CHALLENGE_SUCCESS_313012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_313012", trigger_count = 0 },
	{ config_id = 1313013, name = "CHALLENGE_FAIL_313013", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_313013", trigger_count = 0 },
	{ config_id = 1313014, name = "GADGET_CREATE_313014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313014", action = "action_EVENT_GADGET_CREATE_313014", trigger_count = 0 },
	{ config_id = 1313015, name = "ANY_MONSTER_DIE_313015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_313015", action = "action_EVENT_ANY_MONSTER_DIE_313015" },
	{ config_id = 1313019, name = "ANY_MONSTER_DIE_313019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_313019", action = "action_EVENT_ANY_MONSTER_DIE_313019" }
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
		gadgets = { 313007, 313008, 313010 },
		regions = { },
		triggers = { "SELECT_OPTION_313011", "CHALLENGE_SUCCESS_313012", "CHALLENGE_FAIL_313013", "GADGET_CREATE_313014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 313001, 313002, 313016, 313017 },
		gadgets = { 313006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_313015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 313003, 313004, 313005, 313018 },
		gadgets = { 313006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_313019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 313020, 313021, 313022, 313023 },
		gadgets = { 313006 },
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
function condition_EVENT_SELECT_OPTION_313011(context, evt)
	-- 判断是gadgetid 313010 option_id 177
	if 313010 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_313011(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 78, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313008, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_313012(context, evt)
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 313008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 313007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 313006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 313009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_313013(context, evt)
	-- 将configid为 313008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为313010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 313010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210313, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210313, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210313, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210313, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_313014(context, evt)
	if 313010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_313014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210313, 313010, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_313015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_313015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210313, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_313019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_313019(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210313, 4)
	
	return 0
end