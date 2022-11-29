-- 基础信息
local base_info = {
	group_id = 133108093
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 20010801, pos = { x = -301.491, y = 209.374, z = -905.592 }, rot = { x = 0.000, y = 206.800, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93002, monster_id = 20011401, pos = { x = -325.677, y = 224.796, z = -935.177 }, rot = { x = 347.130, y = 230.609, z = 334.021 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93003, monster_id = 20011401, pos = { x = -328.027, y = 225.255, z = -936.272 }, rot = { x = 336.483, y = 202.817, z = 342.893 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93012, monster_id = 20010801, pos = { x = -301.111, y = 208.947, z = -902.990 }, rot = { x = 0.000, y = 206.800, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93013, monster_id = 20011201, pos = { x = -276.011, y = 201.044, z = -873.710 }, rot = { x = 0.000, y = 195.453, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93014, monster_id = 20011201, pos = { x = -273.677, y = 200.764, z = -872.177 }, rot = { x = 0.000, y = 216.193, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93015, monster_id = 20011401, pos = { x = -327.837, y = 224.193, z = -933.736 }, rot = { x = 334.030, y = 192.765, z = 347.110 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93018, monster_id = 20010801, pos = { x = -298.872, y = 208.971, z = -905.656 }, rot = { x = 341.286, y = 206.429, z = 2.253 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93019, monster_id = 20011201, pos = { x = -276.425, y = 200.810, z = -871.364 }, rot = { x = 349.988, y = 215.775, z = 4.765 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93023, monster_id = 20010901, pos = { x = -287.364, y = 200.383, z = -825.559 }, rot = { x = 0.867, y = 216.276, z = 357.307 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93024, monster_id = 20010301, pos = { x = -314.893, y = 215.007, z = -917.281 }, rot = { x = 328.746, y = 183.225, z = 10.472 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 },
	{ config_id = 93025, monster_id = 20010301, pos = { x = -285.390, y = 204.209, z = -890.546 }, rot = { x = 346.809, y = 217.463, z = 359.865 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 93004, gadget_id = 70360005, pos = { x = -331.935, y = 228.946, z = -946.688 }, rot = { x = 7.758, y = 0.000, z = 0.172 }, level = 1, area_id = 7 },
	{ config_id = 93005, gadget_id = 70360025, pos = { x = -290.697, y = 200.300, z = -819.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 93006, gadget_id = 70350085, pos = { x = -290.697, y = 200.300, z = -819.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 93007, gadget_id = 70350085, pos = { x = -331.935, y = 230.356, z = -946.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 93016, gadget_id = 70220005, pos = { x = -323.987, y = 224.112, z = -932.867 }, rot = { x = 4.888, y = 0.128, z = 2.990 }, level = 1, area_id = 7 },
	{ config_id = 93017, gadget_id = 70220005, pos = { x = -328.974, y = 224.311, z = -933.446 }, rot = { x = 16.880, y = 353.598, z = 347.146 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 93008, shape = RegionShape.SPHERE, radius = 3, pos = { x = -290.659, y = 200.305, z = -819.751 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1093008, name = "ENTER_REGION_93008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93008", action = "action_EVENT_ENTER_REGION_93008", tag = "666", forbid_guest = false },
	{ config_id = 1093009, name = "CHALLENGE_SUCCESS_93009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_93009", trigger_count = 0 },
	{ config_id = 1093010, name = "CHALLENGE_FAIL_93010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_93010", trigger_count = 0 },
	{ config_id = 1093011, name = "GADGET_STATE_CHANGE_93011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93011", action = "action_EVENT_GADGET_STATE_CHANGE_93011", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 93004, 93007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_93011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 93001, 93002, 93003, 93012, 93013, 93014, 93015, 93018, 93019, 93023, 93024, 93025 },
		gadgets = { 93005, 93006, 93016, 93017 },
		regions = { 93008 },
		triggers = { "ENTER_REGION_93008", "CHALLENGE_SUCCESS_93009", "CHALLENGE_FAIL_93010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_93008(context, evt)
	if evt.param1 ~= 93008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 93005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_93009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 93007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108093, 2)
	
	-- 将configid为 93004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108093, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_93010(context, evt)
	-- 将configid为 93007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108093, 2)
	
	-- 将configid为 93004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93011(context, evt)
	if 93004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108093, 2)
	
	-- 将configid为 93007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 20, 4, 666, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end