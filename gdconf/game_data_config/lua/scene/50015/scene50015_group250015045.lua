-- 基础信息
local base_info = {
	group_id = 250015045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 21030401, pos = { x = -83.456, y = -2.202, z = -287.972 }, rot = { x = 0.000, y = 6.471, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45002, monster_id = 21011201, pos = { x = -80.006, y = -2.202, z = -283.972 }, rot = { x = 0.000, y = 329.932, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45003, monster_id = 20011401, pos = { x = -106.300, y = -7.932, z = -342.749 }, rot = { x = 0.000, y = 14.301, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45004, monster_id = 20011401, pos = { x = -102.303, y = -7.932, z = -343.566 }, rot = { x = 0.000, y = 329.952, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45005, monster_id = 21011201, pos = { x = -100.182, y = 8.148, z = -390.527 }, rot = { x = 0.000, y = 324.008, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45006, monster_id = 21011201, pos = { x = -106.616, y = 8.148, z = -390.347 }, rot = { x = 0.000, y = 43.618, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45032, monster_id = 21020301, pos = { x = -102.768, y = 2.248, z = -522.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45033, monster_id = 21020301, pos = { x = -104.054, y = 2.248, z = -525.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45034, monster_id = 21020301, pos = { x = -105.034, y = 2.248, z = -522.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45037, monster_id = 21011201, pos = { x = -86.747, y = -2.202, z = -282.912 }, rot = { x = 0.000, y = 42.334, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45038, monster_id = 20011401, pos = { x = -104.342, y = -7.932, z = -345.506 }, rot = { x = 0.000, y = 329.952, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 45039, monster_id = 21011201, pos = { x = -103.503, y = 8.148, z = -383.640 }, rot = { x = 0.000, y = 203.164, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45007, gadget_id = 70360005, pos = { x = -102.791, y = 8.428, z = -251.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 45008, gadget_id = 70360025, pos = { x = -104.105, y = 2.248, z = -536.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45009, gadget_id = 70900201, pos = { x = -83.877, y = -2.202, z = -284.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45010, gadget_id = 70900201, pos = { x = -101.070, y = 2.248, z = -441.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45011, gadget_id = 70900201, pos = { x = -103.634, y = -7.932, z = -334.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45013, gadget_id = 70900201, pos = { x = -104.098, y = 8.148, z = -386.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45014, gadget_id = 70950006, pos = { x = -101.044, y = 2.290, z = -441.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45015, gadget_id = 70900201, pos = { x = -104.122, y = 2.290, z = -536.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45016, gadget_id = 70300118, pos = { x = -102.837, y = 9.351, z = -251.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45017, gadget_id = 70950006, pos = { x = -83.844, y = -2.210, z = -284.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45018, gadget_id = 70950006, pos = { x = -103.644, y = -7.910, z = -334.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45019, gadget_id = 70950006, pos = { x = -104.144, y = 8.190, z = -386.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45030, gadget_id = 70360002, pos = { x = -100.874, y = 2.248, z = -442.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45031, gadget_id = 70360002, pos = { x = -107.906, y = 2.248, z = -496.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45036, gadget_id = 70900206, pos = { x = -104.105, y = -7.932, z = -348.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45040, gadget_id = 70380009, pos = { x = -104.266, y = 1.932, z = -447.075 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 45041, gadget_id = 70380009, pos = { x = -104.266, y = 1.932, z = -452.138 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 45042, gadget_id = 70380009, pos = { x = -104.266, y = 1.932, z = -457.153 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 45043, gadget_id = 70380009, pos = { x = -104.266, y = 1.932, z = -462.224 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, route_id = 8, start_route = false },
	{ config_id = 45044, gadget_id = 70380009, pos = { x = -104.266, y = 1.932, z = -462.157 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 45045, gadget_id = 70380009, pos = { x = -104.266, y = 1.932, z = -467.254 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 45046, gadget_id = 70380009, pos = { x = -104.266, y = 1.932, z = -472.312 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 45047, gadget_id = 70380009, pos = { x = -104.266, y = 1.786, z = -501.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 12, start_route = false },
	{ config_id = 45048, gadget_id = 70380009, pos = { x = -104.266, y = 1.786, z = -505.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 13, start_route = false },
	{ config_id = 45050, gadget_id = 70380009, pos = { x = -104.266, y = 1.786, z = -510.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 45051, gadget_id = 70380009, pos = { x = -104.266, y = 1.786, z = -516.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 15, start_route = false },
	{ config_id = 45052, gadget_id = 70380009, pos = { x = -104.266, y = 1.786, z = -520.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 16, start_route = false },
	{ config_id = 45053, gadget_id = 70380009, pos = { x = -104.266, y = 1.786, z = -526.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 17, start_route = false },
	{ config_id = 45056, gadget_id = 70690006, pos = { x = -103.430, y = -11.731, z = -367.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45058, gadget_id = 70360016, pos = { x = -108.439, y = -7.932, z = -348.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45059, gadget_id = 70360019, pos = { x = -104.973, y = -7.279, z = -348.795 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 45060, gadget_id = 70360016, pos = { x = -108.439, y = -7.932, z = -342.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45061, gadget_id = 70360016, pos = { x = -108.439, y = -7.932, z = -336.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45062, gadget_id = 70360016, pos = { x = -108.439, y = -7.932, z = -330.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45063, gadget_id = 70360016, pos = { x = -108.439, y = -7.932, z = -324.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45064, gadget_id = 70690006, pos = { x = -91.895, y = -7.803, z = -303.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45068, gadget_id = 70690006, pos = { x = -103.430, y = -11.731, z = -406.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 45012, shape = RegionShape.SPHERE, radius = 7, pos = { x = -101.044, y = 2.290, z = -441.898 } },
	{ config_id = 45023, shape = RegionShape.SPHERE, radius = 2, pos = { x = -104.122, y = 2.290, z = -536.215 } },
	{ config_id = 45024, shape = RegionShape.SPHERE, radius = 7, pos = { x = -83.844, y = -2.210, z = -284.798 } },
	{ config_id = 45026, shape = RegionShape.SPHERE, radius = 7, pos = { x = -103.644, y = -7.910, z = -334.098 } },
	{ config_id = 45028, shape = RegionShape.SPHERE, radius = 7, pos = { x = -104.144, y = 8.190, z = -386.198 } },
	{ config_id = 45057, shape = RegionShape.SPHERE, radius = 16, pos = { x = -103.644, y = -7.910, z = -334.098 } },
	{ config_id = 45066, shape = RegionShape.SPHERE, radius = 7, pos = { x = -105.073, y = 2.290, z = -493.983 } }
}

-- 触发器
triggers = {
	{ config_id = 1045012, name = "ENTER_REGION_45012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45012", action = "action_EVENT_ENTER_REGION_45012" },
	{ config_id = 1045020, name = "GADGET_STATE_CHANGE_45020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45020", action = "action_EVENT_GADGET_STATE_CHANGE_45020", trigger_count = 0 },
	{ config_id = 1045021, name = "CHALLENGE_SUCCESS_45021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_45021", trigger_count = 0 },
	{ config_id = 1045022, name = "CHALLENGE_FAIL_45022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_45022", trigger_count = 0 },
	{ config_id = 1045023, name = "ENTER_REGION_45023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45023", action = "", tag = "888" },
	{ config_id = 1045024, name = "ENTER_REGION_45024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45024", action = "action_EVENT_ENTER_REGION_45024" },
	{ config_id = 1045025, name = "ANY_MONSTER_DIE_45025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45025", action = "action_EVENT_ANY_MONSTER_DIE_45025" },
	{ config_id = 1045026, name = "ENTER_REGION_45026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45026", action = "action_EVENT_ENTER_REGION_45026" },
	{ config_id = 1045027, name = "ANY_MONSTER_DIE_45027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45027", action = "action_EVENT_ANY_MONSTER_DIE_45027" },
	{ config_id = 1045028, name = "ENTER_REGION_45028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45028", action = "action_EVENT_ENTER_REGION_45028" },
	{ config_id = 1045029, name = "ANY_MONSTER_DIE_45029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45029", action = "action_EVENT_ANY_MONSTER_DIE_45029" },
	{ config_id = 1045035, name = "GADGET_CREATE_45035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_45035", action = "action_EVENT_GADGET_CREATE_45035", trigger_count = 0 },
	{ config_id = 1045049, name = "SELECT_OPTION_45049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_45049", action = "action_EVENT_SELECT_OPTION_45049", trigger_count = 0 },
	{ config_id = 1045054, name = "GADGET_CREATE_45054", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_45054", action = "action_EVENT_GADGET_CREATE_45054", trigger_count = 0 },
	{ config_id = 1045055, name = "SELECT_OPTION_45055", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_45055", action = "action_EVENT_SELECT_OPTION_45055", trigger_count = 0 },
	{ config_id = 1045057, name = "ENTER_REGION_45057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45057", action = "action_EVENT_ENTER_REGION_45057" },
	{ config_id = 1045065, name = "GADGET_STATE_CHANGE_45065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45065", action = "action_EVENT_GADGET_STATE_CHANGE_45065", trigger_count = 0 },
	{ config_id = 1045066, name = "ENTER_REGION_45066", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45066", action = "action_EVENT_ENTER_REGION_45066" },
	{ config_id = 1045067, name = "SELECT_OPTION_45067", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_45067", action = "action_EVENT_SELECT_OPTION_45067", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false },
	{ config_id = 2, name = "hasFlipped", value = 0, no_refresh = false }
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
		gadgets = { 45007, 45016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_45020", "CHALLENGE_SUCCESS_45021", "CHALLENGE_FAIL_45022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { 45032, 45033, 45034 },
		gadgets = { 45008, 45015, 45031, 45047, 45048, 45050, 45051, 45052, 45053 },
		regions = { 45023, 45066 },
		triggers = { "ENTER_REGION_45023", "GADGET_CREATE_45035", "SELECT_OPTION_45049", "ENTER_REGION_45066", "SELECT_OPTION_45067" },
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
		monsters = { 45001, 45002, 45037 },
		gadgets = { 45009, 45017 },
		regions = { 45024 },
		triggers = { "ENTER_REGION_45024", "ANY_MONSTER_DIE_45025" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 45003, 45004, 45038 },
		gadgets = { 45011, 45018, 45036, 45058, 45059, 45060, 45061, 45062, 45063, 45064 },
		regions = { 45026, 45057 },
		triggers = { "ENTER_REGION_45026", "ANY_MONSTER_DIE_45027", "ENTER_REGION_45057", "GADGET_STATE_CHANGE_45065" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { 45005, 45006, 45039 },
		gadgets = { 45013, 45019, 45056 },
		regions = { 45028 },
		triggers = { "ENTER_REGION_45028", "ANY_MONSTER_DIE_45029" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { },
		gadgets = { 45010, 45014, 45030, 45040, 45041, 45042, 45043, 45044, 45045, 45046, 45068 },
		regions = { 45012 },
		triggers = { "ENTER_REGION_45012", "GADGET_CREATE_45054", "SELECT_OPTION_45055" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 节点5,
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
function condition_EVENT_ENTER_REGION_45012(context, evt)
	if evt.param1 ~= 45012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为0的挑战，并判定失败
		ScriptLib.StopChallenge(context, 0, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45020(context, evt)
	if 45007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45020(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 189, 60, 4, 888, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015045, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_45021(context, evt)
	-- 将configid为 45007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250015045, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_45022(context, evt)
	-- 将configid为 45007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为45016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 45016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 250015045, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 250015045, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 250015045, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 250015045, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 2)
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45023(context, evt)
	if evt.param1 ~= 45023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45024(context, evt)
	if evt.param1 ~= 45024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45025(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015045, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45026(context, evt)
	if evt.param1 ~= 45026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45027(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015045, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45028(context, evt)
	if evt.param1 ~= 45028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45029(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015045, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015045, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_45035(context, evt)
	if 45031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_45035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015045, 45031, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_45049(context, evt)
	-- 判断是gadgetid 45031 option_id 7
	if 45031 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"hasFlipped"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFlipped") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_45049(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45047, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45048, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45050, 14) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45051, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45052, 16) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45053, 17) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "hasFlipped" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFlipped", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45052) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_45054(context, evt)
	if 45030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_45054(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015045, 45030, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_45055(context, evt)
	-- 判断是gadgetid 45030 option_id 7
	if 45030 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_45055(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45040) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45041) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45043) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45045) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45046) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015045, 2)
	
	-- 删除指定group： 250015045 ；指定config：45030；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250015045, 45030, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45057(context, evt)
	if evt.param1 ~= 45057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45057(context, evt)
	-- 将configid为 45036 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45036, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45065(context, evt)
	if 45059 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45065(context, evt)
	-- 将configid为 45036 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45036, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45066(context, evt)
	if evt.param1 ~= 45066 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45066(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 45032, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 45033, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 45034, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_45067(context, evt)
	-- 判断是gadgetid 45031 option_id 7
	if 45031 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"hasFlipped"为1
	if ScriptLib.GetGroupVariableValue(context, "hasFlipped") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_45067(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45047, 19) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45048, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45050, 21) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45051, 22) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45052, 23) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 45053, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45052) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 45053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "hasFlipped" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFlipped", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end