-- 基础信息
local base_info = {
	group_id = 133213179
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179001, monster_id = 20011301, pos = { x = -3733.646, y = 232.482, z = -3266.602 }, rot = { x = 0.000, y = 76.235, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 179002, monster_id = 20010601, pos = { x = -3723.848, y = 229.148, z = -3268.841 }, rot = { x = 0.000, y = 265.450, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 179003, monster_id = 20011301, pos = { x = -3796.274, y = 270.232, z = -3224.996 }, rot = { x = 0.000, y = 42.499, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 12 },
	{ config_id = 179004, monster_id = 20010701, pos = { x = -3931.875, y = 225.223, z = -3291.960 }, rot = { x = 0.000, y = 348.265, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 12 },
	{ config_id = 179005, monster_id = 20010601, pos = { x = -3935.974, y = 226.311, z = -3291.711 }, rot = { x = 0.000, y = 6.074, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 12 },
	{ config_id = 179006, monster_id = 20010601, pos = { x = -3927.852, y = 223.643, z = -3290.419 }, rot = { x = 0.000, y = 334.854, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 12 },
	{ config_id = 179031, monster_id = 20010701, pos = { x = -3725.435, y = 229.004, z = -3263.022 }, rot = { x = 0.000, y = 249.856, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 179033, monster_id = 20011301, pos = { x = -3796.792, y = 270.638, z = -3220.217 }, rot = { x = 0.000, y = 103.689, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 179007, gadget_id = 70360005, pos = { x = -3650.357, y = 261.309, z = -3248.760 }, rot = { x = 0.000, y = 344.749, z = 0.000 }, level = 19, persistent = true, area_id = 12 },
	{ config_id = 179008, gadget_id = 70360025, pos = { x = -3905.228, y = 200.450, z = -3332.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179009, gadget_id = 70350085, pos = { x = -3724.407, y = 228.739, z = -3263.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179011, gadget_id = 70350085, pos = { x = -3793.660, y = 270.351, z = -3221.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179012, gadget_id = 70300114, pos = { x = -3799.422, y = 268.076, z = -3220.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179013, gadget_id = 70350085, pos = { x = -3930.664, y = 225.189, z = -3288.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179015, gadget_id = 70350085, pos = { x = -3905.228, y = 201.241, z = -3332.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179016, gadget_id = 70350085, pos = { x = -3650.352, y = 264.476, z = -3248.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179017, gadget_id = 70710126, pos = { x = -3724.407, y = 228.739, z = -3263.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179018, gadget_id = 70710126, pos = { x = -3793.660, y = 270.351, z = -3221.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179019, gadget_id = 70710126, pos = { x = -3930.664, y = 224.022, z = -3288.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 179030, gadget_id = 70330064, pos = { x = -3651.508, y = 261.465, z = -3253.782 }, rot = { x = 0.000, y = 308.279, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 179032, gadget_id = 70900380, pos = { x = -3659.610, y = 262.273, z = -3246.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179034, gadget_id = 70900380, pos = { x = -3677.348, y = 255.011, z = -3240.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179035, gadget_id = 70900380, pos = { x = -3699.427, y = 245.647, z = -3240.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179036, gadget_id = 70900380, pos = { x = -3716.834, y = 238.035, z = -3248.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179038, gadget_id = 70330064, pos = { x = -3734.366, y = 229.881, z = -3255.945 }, rot = { x = 0.000, y = 271.280, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 179040, gadget_id = 70900380, pos = { x = -3741.492, y = 239.211, z = -3251.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179041, gadget_id = 70900380, pos = { x = -3752.441, y = 248.915, z = -3241.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179042, gadget_id = 70900380, pos = { x = -3773.593, y = 274.155, z = -3226.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179043, gadget_id = 70900380, pos = { x = -3762.847, y = 258.883, z = -3231.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179046, gadget_id = 70900380, pos = { x = -3820.888, y = 272.339, z = -3236.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179048, gadget_id = 70900380, pos = { x = -3852.036, y = 260.780, z = -3247.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179050, gadget_id = 70900380, pos = { x = -3882.478, y = 248.181, z = -3260.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 179051, gadget_id = 70900380, pos = { x = -3912.019, y = 236.506, z = -3275.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 179023, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3905.263, y = 200.332, z = -3332.943 }, area_id = 12 },
	{ config_id = 179024, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3724.360, y = 228.713, z = -3263.946 }, area_id = 12 },
	{ config_id = 179026, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3793.660, y = 270.351, z = -3221.267 }, area_id = 12 },
	{ config_id = 179028, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3930.682, y = 224.027, z = -3288.571 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1179020, name = "GADGET_STATE_CHANGE_179020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179020", action = "action_EVENT_GADGET_STATE_CHANGE_179020", trigger_count = 0 },
	{ config_id = 1179021, name = "CHALLENGE_SUCCESS_179021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_179021", trigger_count = 0 },
	{ config_id = 1179022, name = "CHALLENGE_FAIL_179022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_179022", trigger_count = 0 },
	{ config_id = 1179023, name = "ENTER_REGION_179023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179023", action = "action_EVENT_ENTER_REGION_179023", trigger_count = 0, tag = "888" },
	{ config_id = 1179024, name = "ENTER_REGION_179024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179024", action = "action_EVENT_ENTER_REGION_179024" },
	{ config_id = 1179026, name = "ENTER_REGION_179026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179026", action = "action_EVENT_ENTER_REGION_179026" },
	{ config_id = 1179028, name = "ENTER_REGION_179028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179028", action = "action_EVENT_ENTER_REGION_179028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
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
		-- description = 起点,
		monsters = { },
		gadgets = { 179007, 179016, 179030, 179038 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_179020", "CHALLENGE_SUCCESS_179021", "CHALLENGE_FAIL_179022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 179008, 179015 },
		regions = { 179023 },
		triggers = { "ENTER_REGION_179023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点1,
		monsters = { },
		gadgets = { 179009, 179017, 179032, 179034, 179035, 179036 },
		regions = { 179024 },
		triggers = { "ENTER_REGION_179024" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { },
		gadgets = { 179011, 179012, 179018, 179040, 179041, 179042, 179043 },
		regions = { 179026 },
		triggers = { "ENTER_REGION_179026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 179013, 179019, 179046, 179048, 179050, 179051 },
		regions = { 179028 },
		triggers = { "ENTER_REGION_179028" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 怪物组1,
		monsters = { 179001, 179002, 179003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 怪物组2,
		monsters = { 179004, 179005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 怪物组3,
		monsters = { 179006, 179031, 179033 },
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
function condition_EVENT_GADGET_STATE_CHANGE_179020(context, evt)
	if 179007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_179020(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建编号为666（该挑战的识别id),挑战内容为207的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 207, 60, 4, 888, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 179016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213179, 4)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213179, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_179021(context, evt)
	-- 将configid为 179007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 2)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 9)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213179, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_179022(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 179007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 179016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213179, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213179, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213179, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 2)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_179023(context, evt)
	if evt.param1 ~= 179023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_179024(context, evt)
	if evt.param1 ~= 179024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213179, 5)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213179, 8)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_179026(context, evt)
	if evt.param1 ~= 179026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213179, 6)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213179, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_179028(context, evt)
	if evt.param1 ~= 179028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 179019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213179, 2)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213179, 6)
	
	return 0
end

require "V2_0/ElectricCore"