-- 基础信息
local base_info = {
	group_id = 133212156
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156001, monster_id = 21010701, pos = { x = -3683.524, y = 237.372, z = -2284.042 }, rot = { x = 0.000, y = 45.007, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156003, monster_id = 22010301, pos = { x = -3747.946, y = 254.810, z = -2319.187 }, rot = { x = 0.000, y = 51.541, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156004, monster_id = 20010501, pos = { x = -3771.295, y = 257.698, z = -2302.461 }, rot = { x = 0.000, y = 127.774, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156005, monster_id = 20010501, pos = { x = -3774.695, y = 257.908, z = -2305.176 }, rot = { x = 0.000, y = 106.692, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156014, monster_id = 21010701, pos = { x = -3684.979, y = 237.427, z = -2282.078 }, rot = { x = 0.000, y = 45.007, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156015, monster_id = 21010501, pos = { x = -3699.526, y = 249.929, z = -2296.587 }, rot = { x = 0.000, y = 45.007, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156030, monster_id = 21011001, pos = { x = -3692.254, y = 250.198, z = -2301.098 }, rot = { x = 0.000, y = 45.007, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156032, monster_id = 20010501, pos = { x = -3774.100, y = 258.567, z = -2310.204 }, rot = { x = 0.000, y = 94.802, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156035, monster_id = 21011601, pos = { x = -3717.583, y = 248.678, z = -2315.712 }, rot = { x = 0.000, y = 107.467, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 156038, monster_id = 21010601, pos = { x = -3715.941, y = 250.558, z = -2325.131 }, rot = { x = 0.000, y = 31.970, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 156044, monster_id = 21010401, pos = { x = -3821.729, y = 272.349, z = -2305.881 }, rot = { x = 0.000, y = 91.252, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156045, monster_id = 21010401, pos = { x = -3818.649, y = 271.773, z = -2321.409 }, rot = { x = 0.000, y = 32.589, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 156046, monster_id = 21020701, pos = { x = -3810.769, y = 265.062, z = -2319.298 }, rot = { x = 0.000, y = 10.188, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 156006, gadget_id = 70300090, pos = { x = -3692.146, y = 244.513, z = -2301.123 }, rot = { x = 0.000, y = 27.051, z = 0.000 }, level = 30, area_id = 13 },
	-- 封印圈陷阱
	{ config_id = 156007, gadget_id = 70300114, pos = { x = -3746.041, y = 253.210, z = -2318.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 156008, gadget_id = 70710116, pos = { x = -3676.252, y = 237.363, z = -2276.045 }, rot = { x = 0.000, y = 236.978, z = 0.000 }, level = 1, route_id = 321200091, start_route = false, persistent = true, area_id = 13 },
	-- 第一检查点
	{ config_id = 156009, gadget_id = 70710126, pos = { x = -3694.743, y = 244.191, z = -2297.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	-- 第二检查点
	{ config_id = 156010, gadget_id = 70710126, pos = { x = -3718.328, y = 250.032, z = -2319.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	-- 第三检查点
	{ config_id = 156011, gadget_id = 70710126, pos = { x = -3746.035, y = 254.363, z = -2317.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
	-- 第四检查点
	{ config_id = 156012, gadget_id = 70710126, pos = { x = -3770.763, y = 257.710, z = -2307.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 156013, gadget_id = 70300090, pos = { x = -3699.527, y = 244.452, z = -2296.529 }, rot = { x = 0.000, y = 26.679, z = 0.000 }, level = 30, area_id = 13 },
	-- 第五检查点
	{ config_id = 156016, gadget_id = 70710126, pos = { x = -3829.770, y = 268.160, z = -2315.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 156034, gadget_id = 70300084, pos = { x = -3674.238, y = 237.135, z = -2273.878 }, rot = { x = 0.000, y = 309.379, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 156036, gadget_id = 70900380, pos = { x = -3685.557, y = 245.919, z = -2290.581 }, rot = { x = 0.000, y = 26.679, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 156037, gadget_id = 70330064, pos = { x = -3678.360, y = 236.995, z = -2285.778 }, rot = { x = 0.000, y = 36.079, z = 0.000 }, level = 30, interact_id = 35, area_id = 13 },
	{ config_id = 156042, gadget_id = 70300090, pos = { x = -3821.823, y = 266.792, z = -2305.873 }, rot = { x = 0.000, y = 91.776, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 156043, gadget_id = 70300090, pos = { x = -3818.657, y = 266.316, z = -2321.475 }, rot = { x = 0.000, y = 28.577, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 156047, gadget_id = 70300076, pos = { x = -3819.116, y = 266.363, z = -2308.381 }, rot = { x = 357.935, y = 86.976, z = 357.608 }, level = 1, area_id = 13 },
	{ config_id = 156048, gadget_id = 70300076, pos = { x = -3815.514, y = 265.728, z = -2321.208 }, rot = { x = 354.710, y = 66.907, z = 355.813 }, level = 1, area_id = 13 },
	{ config_id = 156049, gadget_id = 70300084, pos = { x = -3832.986, y = 268.700, z = -2315.306 }, rot = { x = 0.556, y = 177.738, z = 9.186 }, level = 1, area_id = 13 },
	{ config_id = 156050, gadget_id = 70300088, pos = { x = -3833.271, y = 268.753, z = -2302.174 }, rot = { x = 0.000, y = 100.648, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 156051, gadget_id = 70300088, pos = { x = -3837.047, y = 269.643, z = -2301.539 }, rot = { x = 0.000, y = 92.580, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 156052, gadget_id = 70220065, pos = { x = -3830.186, y = 269.480, z = -2326.468 }, rot = { x = 0.000, y = 0.000, z = 351.223 }, level = 1, area_id = 13 },
	{ config_id = 156053, gadget_id = 70220065, pos = { x = -3830.481, y = 269.442, z = -2328.681 }, rot = { x = 349.849, y = 325.842, z = 345.440 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 156018, shape = RegionShape.SPHERE, radius = 4.5, pos = { x = -3746.041, y = 254.370, z = -2318.173 }, area_id = 13 },
	{ config_id = 156019, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3676.251, y = 237.363, z = -2276.046 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1156017, name = "VARIABLE_CHANGE_156017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_156017", action = "action_EVENT_VARIABLE_CHANGE_156017" },
	{ config_id = 1156018, name = "ENTER_REGION_156018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156018", action = "action_EVENT_ENTER_REGION_156018" },
	{ config_id = 1156019, name = "ENTER_REGION_156019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156019", action = "action_EVENT_ENTER_REGION_156019" },
	{ config_id = 1156020, name = "CHALLENGE_SUCCESS_156020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_156020", trigger_count = 0 },
	-- 5挑战失败的条件，到达终点挑战失败。
	{ config_id = 1156021, name = "PLATFORM_REACH_POINT_156021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_156021", action = "action_EVENT_PLATFORM_REACH_POINT_156021", trigger_count = 0, tag = "888" },
	-- 挑战失败移除怪物物件suite，调回至挑战未开始的初始suite
	{ config_id = 1156022, name = "CHALLENGE_FAIL_156022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_156022", trigger_count = 0 },
	{ config_id = 1156023, name = "ANY_GADGET_DIE_156023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_156023", action = "action_EVENT_ANY_GADGET_DIE_156023", tag = "999" },
	-- 2挑战失败的条件，check触发次数，创建后续suite
	{ config_id = 1156024, name = "PLATFORM_REACH_POINT_156024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_156024", action = "action_EVENT_PLATFORM_REACH_POINT_156024", trigger_count = 0, tag = "888" },
	-- 中间节点删除前置怪物与物件suite3
	{ config_id = 1156025, name = "PLATFORM_REACH_POINT_156025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_156025", action = "action_EVENT_PLATFORM_REACH_POINT_156025", trigger_count = 0 },
	-- 中间节点删除前置怪物与物件suite4
	{ config_id = 1156026, name = "PLATFORM_REACH_POINT_156026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_156026", action = "action_EVENT_PLATFORM_REACH_POINT_156026", trigger_count = 0 },
	-- 1挑战失败的条件，check触发次数，创建后续suite
	{ config_id = 1156027, name = "PLATFORM_REACH_POINT_156027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_156027", action = "action_EVENT_PLATFORM_REACH_POINT_156027", trigger_count = 0, tag = "888" },
	-- 3挑战失败的条件，check触发次数，创建后续suite
	{ config_id = 1156028, name = "PLATFORM_REACH_POINT_156028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_156028", action = "action_EVENT_PLATFORM_REACH_POINT_156028", trigger_count = 0, tag = "888" },
	-- 4挑战失败的条件，check触发次数
	{ config_id = 1156029, name = "PLATFORM_REACH_POINT_156029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_156029", action = "action_EVENT_PLATFORM_REACH_POINT_156029", trigger_count = 0, tag = "888" },
	{ config_id = 1156033, name = "ANY_MONSTER_DIE_156033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156033", action = "action_EVENT_ANY_MONSTER_DIE_156033" },
	-- 保底用重置group
	{ config_id = 1156055, name = "GROUP_LOAD_156055", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_156055", action = "action_EVENT_GROUP_LOAD_156055", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 156002, monster_id = 21030601, pos = { x = -3719.813, y = 250.056, z = -2314.252 }, rot = { x = 0.000, y = 117.851, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
		{ config_id = 156031, monster_id = 21030301, pos = { x = -3723.011, y = 250.820, z = -2315.477 }, rot = { x = 0.000, y = 81.183, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 }
	},
	gadgets = {
		{ config_id = 156039, gadget_id = 70220020, pos = { x = -3721.581, y = 249.649, z = -2318.990 }, rot = { x = 0.000, y = 68.089, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 156040, gadget_id = 70220020, pos = { x = -3720.637, y = 250.393, z = -2323.183 }, rot = { x = 0.000, y = 254.902, z = 345.100 }, level = 30, area_id = 13 },
		{ config_id = 156041, gadget_id = 70220020, pos = { x = -3719.516, y = 251.387, z = -2327.373 }, rot = { x = 0.000, y = 245.795, z = 345.100 }, level = 30, area_id = 13 }
	},
	regions = {
		{ config_id = 156054, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3832.531, y = 268.980, z = -2316.090 }, area_id = 13 }
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
	end_suite = 7,
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
		-- description = 总体逻辑控制,
		monsters = { },
		gadgets = { 156008, 156034, 156049, 156050, 156051, 156052, 156053 },
		regions = { 156019 },
		triggers = { "VARIABLE_CHANGE_156017", "ENTER_REGION_156019", "CHALLENGE_SUCCESS_156020", "PLATFORM_REACH_POINT_156021", "CHALLENGE_FAIL_156022", "ANY_GADGET_DIE_156023", "PLATFORM_REACH_POINT_156024", "PLATFORM_REACH_POINT_156025", "PLATFORM_REACH_POINT_156026", "PLATFORM_REACH_POINT_156027", "PLATFORM_REACH_POINT_156028", "PLATFORM_REACH_POINT_156029", "GROUP_LOAD_156055" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 156006, 156009, 156010, 156011, 156012, 156013, 156016, 156036, 156037, 156042, 156043, 156047, 156048 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { 156001, 156014, 156015, 156030 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { 156035, 156038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { },
		gadgets = { 156007 },
		regions = { 156018 },
		triggers = { "ENTER_REGION_156018", "ANY_MONSTER_DIE_156033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { 156004, 156005, 156032, 156044, 156045, 156046 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空的end suite,
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
function condition_EVENT_VARIABLE_CHANGE_156017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_156017(context, evt)
	-- 将configid为 156008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212156, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212156, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 156008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_156018(context, evt)
	if evt.param1 ~= 156018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 156003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 156007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_156019(context, evt)
	if evt.param1 ~= 156019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156019(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 5, 2,999,1}) then
		return -1
	end
	
		-- 
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_156020(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 6)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212156, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133212156, EntityType.MONSTER, 156003)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_156021(context, evt)
	-- 判断是gadgetid 为 156008的移动平台，是否到达了321200091 的路线中的 32 点
	
	if 156008 ~= evt.param1 then
	  return false
	end
	
	if 321200091 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_156021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_156022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133212156, EntityType.GADGET, 156008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 6)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212156, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133212156, EntityType.MONSTER, 156003)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_156023(context, evt)
	if 156008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_156023(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_156024(context, evt)
	-- 判断是gadgetid 为 156008的移动平台，是否到达了321200091 的路线中的 14 点
	
	if 156008 ~= evt.param1 then
	  return false
	end
	
	if 321200091 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_156024(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212156, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_156025(context, evt)
	-- 判断是gadgetid 为 156008的移动平台，是否到达了321200091 的路线中的 18 点
	
	if 156008 ~= evt.param1 then
	  return false
	end
	
	if 321200091 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_156025(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_156026(context, evt)
	-- 判断是gadgetid 为 156008的移动平台，是否到达了321200091 的路线中的 22 点
	
	if 156008 ~= evt.param1 then
	  return false
	end
	
	if 321200091 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_156026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212156, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_156027(context, evt)
	-- 判断是gadgetid 为 156008的移动平台，是否到达了321200091 的路线中的 7 点
	
	if 156008 ~= evt.param1 then
	  return false
	end
	
	if 321200091 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_156027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212156, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_156028(context, evt)
	-- 判断是gadgetid 为 156008的移动平台，是否到达了321200091 的路线中的 22 点
	
	if 156008 ~= evt.param1 then
	  return false
	end
	
	if 321200091 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_156028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212156, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_156029(context, evt)
	-- 判断是gadgetid 为 156008的移动平台，是否到达了321200091 的路线中的 26 点
	
	if 156008 ~= evt.param1 then
	  return false
	end
	
	if 321200091 ~= evt.param2 then
	  return false
	end
	
	if 26 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_156029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156033(context, evt)
	if 156003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156033(context, evt)
	-- 将configid为 156007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133212156, EntityType.GADGET, 156007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_156055(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_156055(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212156, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_0/ElectricCore"