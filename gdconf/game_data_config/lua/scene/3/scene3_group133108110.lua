-- 基础信息
local base_info = {
	group_id = 133108110
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110003, monster_id = 21030301, pos = { x = -95.045, y = 200.455, z = -732.307 }, rot = { x = 0.000, y = 355.249, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110004, monster_id = 21010901, pos = { x = -84.746, y = 204.899, z = -735.478 }, rot = { x = 0.000, y = 304.778, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110005, monster_id = 21010901, pos = { x = -90.738, y = 204.744, z = -755.039 }, rot = { x = 0.000, y = 353.451, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110006, monster_id = 20010801, pos = { x = -91.483, y = 200.463, z = -785.969 }, rot = { x = 0.000, y = 330.505, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110013, monster_id = 21030301, pos = { x = -128.993, y = 200.105, z = -822.551 }, rot = { x = 358.630, y = 44.215, z = 352.467 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110014, monster_id = 21011001, pos = { x = -100.316, y = 204.699, z = -777.457 }, rot = { x = 0.773, y = 82.642, z = 358.998 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110019, monster_id = 20010801, pos = { x = -91.550, y = 200.161, z = -782.045 }, rot = { x = 0.000, y = 35.954, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110020, monster_id = 20010801, pos = { x = -89.170, y = 200.569, z = -784.558 }, rot = { x = 0.000, y = 354.570, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110024, monster_id = 21011001, pos = { x = -97.168, y = 204.475, z = -803.892 }, rot = { x = 352.987, y = 348.235, z = 356.922 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110091, monster_id = 21011201, pos = { x = -119.895, y = 200.923, z = -868.020 }, rot = { x = 357.953, y = 15.345, z = 4.071 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 110092, monster_id = 21020101, pos = { x = -120.389, y = 200.164, z = -854.888 }, rot = { x = 359.509, y = 303.237, z = 0.749 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110093, monster_id = 21010201, pos = { x = -117.566, y = 200.320, z = -861.285 }, rot = { x = 0.000, y = 326.468, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110094, monster_id = 21010201, pos = { x = -121.575, y = 200.448, z = -863.649 }, rot = { x = 0.000, y = 320.010, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 110098, monster_id = 21020301, pos = { x = -123.079, y = 200.512, z = -865.232 }, rot = { x = 354.160, y = 69.256, z = 2.207 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 110001, gadget_id = 70300090, pos = { x = -100.375, y = 199.014, z = -777.641 }, rot = { x = 0.000, y = 33.237, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 110010, gadget_id = 70300084, pos = { x = -98.063, y = 200.984, z = -704.302 }, rot = { x = 358.320, y = 200.196, z = 359.382 }, level = 1, area_id = 7 },
	{ config_id = 110011, gadget_id = 70300090, pos = { x = -97.354, y = 198.791, z = -804.583 }, rot = { x = 0.000, y = 14.576, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 110015, gadget_id = 70710116, pos = { x = -94.095, y = 201.194, z = -705.952 }, rot = { x = 0.000, y = 163.671, z = 0.000 }, level = 1, route_id = 310800031, start_route = false, persistent = true, area_id = 7 },
	{ config_id = 110016, gadget_id = 70300084, pos = { x = -90.254, y = 201.387, z = -703.319 }, rot = { x = 8.249, y = 322.320, z = 4.835 }, level = 1, area_id = 7 },
	{ config_id = 110017, gadget_id = 70300090, pos = { x = -84.572, y = 199.214, z = -735.564 }, rot = { x = 0.000, y = 299.762, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 110018, gadget_id = 70300090, pos = { x = -90.484, y = 199.060, z = -755.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 110022, gadget_id = 70220011, pos = { x = -126.435, y = 200.707, z = -867.147 }, rot = { x = 4.690, y = 81.058, z = 1.069 }, level = 1, area_id = 7 },
	-- 第一检查点
	{ config_id = 110023, gadget_id = 70710126, pos = { x = -93.549, y = 200.338, z = -725.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- 第二检查点
	{ config_id = 110026, gadget_id = 70710126, pos = { x = -83.258, y = 200.026, z = -754.037 }, rot = { x = 3.573, y = 0.084, z = 2.684 }, level = 1, area_id = 7 },
	{ config_id = 110031, gadget_id = 70220020, pos = { x = -125.265, y = 200.005, z = -817.217 }, rot = { x = 359.562, y = 29.133, z = 357.034 }, level = 1, area_id = 7 },
	{ config_id = 110032, gadget_id = 70220020, pos = { x = -130.932, y = 200.090, z = -814.535 }, rot = { x = 4.557, y = 32.581, z = 17.201 }, level = 1, area_id = 7 },
	-- 第三检查点
	{ config_id = 110062, gadget_id = 70710126, pos = { x = -93.316, y = 200.328, z = -789.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- 第四检查点
	{ config_id = 110063, gadget_id = 70710126, pos = { x = -117.978, y = 200.020, z = -810.651 }, rot = { x = 359.105, y = 359.993, z = 0.895 }, level = 1, area_id = 7 },
	-- 第五检查点
	{ config_id = 110064, gadget_id = 70710126, pos = { x = -133.630, y = 200.643, z = -834.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- 第六检查点
	{ config_id = 110065, gadget_id = 70710126, pos = { x = -117.901, y = 200.390, z = -861.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- 第七检查点
	{ config_id = 110066, gadget_id = 70710126, pos = { x = -138.705, y = 201.033, z = -887.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 110077, shape = RegionShape.SPHERE, radius = 15, pos = { x = -94.095, y = 201.194, z = -705.952 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1110002, name = "PLATFORM_REACH_POINT_110002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110002", action = "action_EVENT_PLATFORM_REACH_POINT_110002", trigger_count = 0 },
	{ config_id = 1110007, name = "PLATFORM_REACH_POINT_110007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110007", action = "action_EVENT_PLATFORM_REACH_POINT_110007", trigger_count = 0 },
	{ config_id = 1110008, name = "PLATFORM_REACH_POINT_110008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110008", action = "action_EVENT_PLATFORM_REACH_POINT_110008", trigger_count = 0 },
	{ config_id = 1110009, name = "PLATFORM_REACH_POINT_110009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110009", action = "action_EVENT_PLATFORM_REACH_POINT_110009", trigger_count = 0, tag = "888" },
	{ config_id = 1110012, name = "PLATFORM_REACH_POINT_110012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110012", action = "action_EVENT_PLATFORM_REACH_POINT_110012", trigger_count = 0, tag = "888" },
	{ config_id = 1110077, name = "ENTER_REGION_110077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110077", action = "action_EVENT_ENTER_REGION_110077" },
	{ config_id = 1110078, name = "CHALLENGE_SUCCESS_110078", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_110078", trigger_count = 0 },
	{ config_id = 1110079, name = "PLATFORM_REACH_POINT_110079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110079", action = "action_EVENT_PLATFORM_REACH_POINT_110079", trigger_count = 0, tag = "888" },
	{ config_id = 1110080, name = "CHALLENGE_FAIL_110080", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_110080", trigger_count = 0 },
	{ config_id = 1110081, name = "ANY_GADGET_DIE_110081", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_110081", action = "action_EVENT_ANY_GADGET_DIE_110081", tag = "999" },
	{ config_id = 1110082, name = "PLATFORM_REACH_POINT_110082", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110082", action = "action_EVENT_PLATFORM_REACH_POINT_110082", trigger_count = 0, tag = "888" },
	{ config_id = 1110085, name = "PLATFORM_REACH_POINT_110085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110085", action = "action_EVENT_PLATFORM_REACH_POINT_110085", trigger_count = 0, tag = "888" },
	{ config_id = 1110086, name = "PLATFORM_REACH_POINT_110086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110086", action = "action_EVENT_PLATFORM_REACH_POINT_110086", trigger_count = 0, tag = "888" },
	{ config_id = 1110087, name = "PLATFORM_REACH_POINT_110087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110087", action = "action_EVENT_PLATFORM_REACH_POINT_110087", trigger_count = 0, tag = "888" },
	{ config_id = 1110089, name = "PLATFORM_REACH_POINT_110089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110089", action = "action_EVENT_PLATFORM_REACH_POINT_110089", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 8,
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
		gadgets = { 110010, 110015, 110016 },
		regions = { 110077 },
		triggers = { "PLATFORM_REACH_POINT_110002", "PLATFORM_REACH_POINT_110007", "PLATFORM_REACH_POINT_110008", "PLATFORM_REACH_POINT_110009", "ENTER_REGION_110077", "CHALLENGE_SUCCESS_110078", "PLATFORM_REACH_POINT_110079", "CHALLENGE_FAIL_110080", "ANY_GADGET_DIE_110081", "PLATFORM_REACH_POINT_110082", "PLATFORM_REACH_POINT_110085", "PLATFORM_REACH_POINT_110086", "PLATFORM_REACH_POINT_110087", "PLATFORM_REACH_POINT_110089" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = AllGadgets,
		monsters = { },
		gadgets = { 110001, 110011, 110017, 110018, 110022, 110023, 110026, 110031, 110032, 110062, 110063, 110064, 110065, 110066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Monster1,
		monsters = { 110003, 110004, 110005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Monster2,
		monsters = { 110006, 110014, 110019, 110020, 110024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Monster3,
		monsters = { 110092, 110093, 110094 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Monster4,
		monsters = { 110091, 110098 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Monster6,
		monsters = { 110013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 事件完成空Suite,
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
function condition_EVENT_PLATFORM_REACH_POINT_110002(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 8 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110002(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108110, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110007(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 13 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 13 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110007(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 4)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108110, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110008(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 21 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110008(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 7)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108110, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110009(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 25 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110065 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110073 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110012(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 30 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110012(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_110077(context, evt)
	if evt.param1 ~= 110077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_110077(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 7, 2,999,1}) then
		return -1
	end
	
		
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108110, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108110, 3)
	
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 110015, GadgetState.GearStart) then
	  return -1
	end 
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 110015, 310800031) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 110015) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_110078(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108110, EntityType.GADGET, 110010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108110, EntityType.GADGET, 110016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 7)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108110, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110079(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 28 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110066 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_110080(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108110, EntityType.GADGET, 110015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108110, 7)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108110, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_110081(context, evt)
	if 110015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_110081(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110082(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 7 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110082(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110069 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110085(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 3 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110085(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110068 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110086(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 11 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 11 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110086(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110070 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110087(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 17 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110087(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110063 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110071 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_110089(context, evt)
	-- 判断是gadgetid 为 110015的移动平台，是否到达了310800031 的路线中的 21 点
	
	if 110015 ~= evt.param1 then
	  return false
	end
	
	if 310800031 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_110089(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110064 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110072 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end