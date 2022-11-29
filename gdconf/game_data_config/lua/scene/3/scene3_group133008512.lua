-- 基础信息
local base_info = {
	group_id = 133008512
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 512001, monster_id = 20010801, pos = { x = 1229.913, y = 374.340, z = -782.389 }, rot = { x = 0.000, y = 126.530, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512002, monster_id = 20010801, pos = { x = 1228.628, y = 374.813, z = -777.817 }, rot = { x = 0.000, y = 125.914, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512003, monster_id = 20010501, pos = { x = 1270.620, y = 341.139, z = -792.557 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512004, monster_id = 20010501, pos = { x = 1274.922, y = 340.938, z = -796.138 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512005, monster_id = 20011401, pos = { x = 1367.658, y = 292.013, z = -745.014 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512006, monster_id = 20011401, pos = { x = 1366.382, y = 292.009, z = -743.353 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512030, monster_id = 20010801, pos = { x = 1233.430, y = 374.758, z = -778.251 }, rot = { x = 0.000, y = 157.293, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512031, monster_id = 20010501, pos = { x = 1270.246, y = 340.718, z = -798.350 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512032, monster_id = 20011401, pos = { x = 1363.839, y = 292.302, z = -746.450 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512033, monster_id = 20011401, pos = { x = 1369.110, y = 281.898, z = -693.947 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512034, monster_id = 20010801, pos = { x = 1365.684, y = 280.781, z = -691.457 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 512040, monster_id = 20010501, pos = { x = 1365.291, y = 281.581, z = -695.383 }, rot = { x = 0.000, y = 140.017, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 512007, gadget_id = 70360005, pos = { x = 1259.333, y = 380.817, z = -848.306 }, rot = { x = 6.230, y = 359.805, z = 356.424 }, level = 1, persistent = true, area_id = 10 },
	{ config_id = 512008, gadget_id = 70360025, pos = { x = 1373.085, y = 268.821, z = -625.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512009, gadget_id = 70350085, pos = { x = 1230.743, y = 374.662, z = -779.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512010, gadget_id = 70300114, pos = { x = 1230.743, y = 373.948, z = -779.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512011, gadget_id = 70350085, pos = { x = 1272.070, y = 340.915, z = -795.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512012, gadget_id = 70300114, pos = { x = 1272.059, y = 340.446, z = -795.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512013, gadget_id = 70350085, pos = { x = 1365.191, y = 292.104, z = -745.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512014, gadget_id = 70300114, pos = { x = 1365.172, y = 290.629, z = -745.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512015, gadget_id = 70350085, pos = { x = 1373.085, y = 268.821, z = -625.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512016, gadget_id = 70350085, pos = { x = 1259.333, y = 381.283, z = -848.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512017, gadget_id = 70710126, pos = { x = 1230.743, y = 374.662, z = -779.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512018, gadget_id = 70710126, pos = { x = 1272.070, y = 340.915, z = -795.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512019, gadget_id = 70710126, pos = { x = 1365.191, y = 292.104, z = -745.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512035, gadget_id = 70350085, pos = { x = 1366.643, y = 281.353, z = -693.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512036, gadget_id = 70300114, pos = { x = 1366.624, y = 277.849, z = -693.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512037, gadget_id = 70710126, pos = { x = 1366.643, y = 281.353, z = -693.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512041, gadget_id = 70690001, pos = { x = 1295.947, y = 339.396, z = -789.771 }, rot = { x = 24.682, y = 69.293, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512042, gadget_id = 70690001, pos = { x = 1312.014, y = 331.502, z = -783.697 }, rot = { x = 29.267, y = 67.324, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512043, gadget_id = 70690001, pos = { x = 1328.062, y = 321.755, z = -776.992 }, rot = { x = 30.029, y = 60.392, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512044, gadget_id = 70690001, pos = { x = 1343.098, y = 311.759, z = -768.448 }, rot = { x = 30.295, y = 50.124, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 512045, gadget_id = 70690001, pos = { x = 1356.238, y = 301.755, z = -757.470 }, rot = { x = 30.295, y = 50.124, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 512023, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1373.085, y = 268.821, z = -625.696 }, area_id = 10 },
	{ config_id = 512024, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1230.792, y = 374.666, z = -779.270 }, area_id = 10 },
	{ config_id = 512026, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1272.059, y = 340.913, z = -795.856 }, area_id = 10 },
	{ config_id = 512028, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1365.172, y = 292.106, z = -745.036 }, area_id = 10 },
	{ config_id = 512038, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1366.624, y = 281.350, z = -693.970 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1512020, name = "GADGET_STATE_CHANGE_512020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_512020", action = "action_EVENT_GADGET_STATE_CHANGE_512020", trigger_count = 0 },
	{ config_id = 1512021, name = "CHALLENGE_SUCCESS_512021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_512021", trigger_count = 0 },
	{ config_id = 1512022, name = "CHALLENGE_FAIL_512022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_512022", trigger_count = 0 },
	{ config_id = 1512023, name = "ENTER_REGION_512023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_512023", action = "", trigger_count = 0, tag = "888" },
	{ config_id = 1512024, name = "ENTER_REGION_512024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_512024", action = "action_EVENT_ENTER_REGION_512024" },
	{ config_id = 1512025, name = "ANY_MONSTER_DIE_512025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_512025", action = "action_EVENT_ANY_MONSTER_DIE_512025" },
	{ config_id = 1512026, name = "ENTER_REGION_512026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_512026", action = "action_EVENT_ENTER_REGION_512026" },
	{ config_id = 1512027, name = "ANY_MONSTER_DIE_512027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_512027", action = "action_EVENT_ANY_MONSTER_DIE_512027" },
	{ config_id = 1512028, name = "ENTER_REGION_512028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_512028", action = "action_EVENT_ENTER_REGION_512028" },
	{ config_id = 1512029, name = "ANY_MONSTER_DIE_512029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_512029", action = "action_EVENT_ANY_MONSTER_DIE_512029" },
	{ config_id = 1512038, name = "ENTER_REGION_512038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_512038", action = "action_EVENT_ENTER_REGION_512038" },
	{ config_id = 1512039, name = "ANY_MONSTER_DIE_512039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_512039", action = "action_EVENT_ANY_MONSTER_DIE_512039" }
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
		gadgets = { 512007, 512016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_512020", "CHALLENGE_SUCCESS_512021", "CHALLENGE_FAIL_512022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 512008, 512015 },
		regions = { 512023 },
		triggers = { "ENTER_REGION_512023" },
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
		monsters = { 512001, 512002, 512030 },
		gadgets = { 512009, 512010, 512017 },
		regions = { 512024 },
		triggers = { "ENTER_REGION_512024", "ANY_MONSTER_DIE_512025" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 512003, 512004, 512031 },
		gadgets = { 512011, 512012, 512018 },
		regions = { 512026 },
		triggers = { "ENTER_REGION_512026", "ANY_MONSTER_DIE_512027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { 512005, 512006, 512032 },
		gadgets = { 512013, 512014, 512019, 512041, 512042, 512043, 512044, 512045 },
		regions = { 512028 },
		triggers = { "ENTER_REGION_512028", "ANY_MONSTER_DIE_512029" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { 512033, 512034, 512040 },
		gadgets = { 512035, 512036, 512037 },
		regions = { 512038 },
		triggers = { "ENTER_REGION_512038", "ANY_MONSTER_DIE_512039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_512020(context, evt)
	if 512007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_512020(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为207的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 207, 75, 4, 888, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 512016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008512, 4)
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_512021(context, evt)
	-- 将configid为 512007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008512, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_512022(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 512007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 512016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_512023(context, evt)
	if evt.param1 ~= 512023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_512024(context, evt)
	if evt.param1 ~= 512024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_512024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 512010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_512025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_512025(context, evt)
	-- 将configid为 512010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008512, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_512026(context, evt)
	if evt.param1 ~= 512026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_512026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 512012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_512027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_512027(context, evt)
	-- 将configid为 512012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008512, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_512028(context, evt)
	if evt.param1 ~= 512028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_512028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 512014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_512029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_512029(context, evt)
	-- 将configid为 512014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008512, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_512038(context, evt)
	if evt.param1 ~= 512038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_512038(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 512037 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 512036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_512039(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_512039(context, evt)
	-- 将configid为 512036 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512036, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008512, 2)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008512, 7)
	
	return 0
end