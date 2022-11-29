-- 基础信息
local base_info = {
	group_id = 133001379
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379001, monster_id = 21010701, pos = { x = 1941.342, y = 196.487, z = -1587.297 }, rot = { x = 0.000, y = 86.860, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 2 },
	{ config_id = 379003, monster_id = 21011001, pos = { x = 1879.261, y = 201.861, z = -1520.613 }, rot = { x = 0.000, y = 162.350, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379004, monster_id = 21011001, pos = { x = 1877.085, y = 195.771, z = -1533.572 }, rot = { x = 0.000, y = 145.781, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379008, monster_id = 21011001, pos = { x = 1900.593, y = 197.714, z = -1544.331 }, rot = { x = 0.000, y = 234.361, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379010, monster_id = 21010901, pos = { x = 1813.501, y = 201.317, z = -1474.303 }, rot = { x = 355.290, y = 113.324, z = 357.276 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379016, monster_id = 21010701, pos = { x = 1956.727, y = 195.159, z = -1612.977 }, rot = { x = 0.000, y = 301.802, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 2 },
	{ config_id = 379018, monster_id = 21010701, pos = { x = 1987.460, y = 198.579, z = -1616.319 }, rot = { x = 0.000, y = 260.168, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 2 },
	{ config_id = 379031, monster_id = 21030301, pos = { x = 1876.065, y = 196.040, z = -1553.025 }, rot = { x = 0.000, y = 89.759, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 379032, monster_id = 21020101, pos = { x = 1891.833, y = 197.241, z = -1521.105 }, rot = { x = 3.118, y = 229.172, z = 358.312 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 379053, monster_id = 21030101, pos = { x = 1805.586, y = 195.231, z = -1478.733 }, rot = { x = 0.000, y = 148.101, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 379054, monster_id = 21010901, pos = { x = 1867.408, y = 201.221, z = -1485.449 }, rot = { x = 355.468, y = 157.052, z = 356.988 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379055, monster_id = 21030301, pos = { x = 1763.868, y = 195.357, z = -1502.357 }, rot = { x = 0.000, y = 54.521, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 379057, monster_id = 21011001, pos = { x = 1742.179, y = 201.725, z = -1470.876 }, rot = { x = 0.000, y = 102.131, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379058, monster_id = 21010601, pos = { x = 1741.563, y = 199.074, z = -1443.492 }, rot = { x = 0.000, y = 177.025, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379059, monster_id = 21030201, pos = { x = 1737.264, y = 198.763, z = -1450.156 }, rot = { x = 0.000, y = 177.512, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 379061, monster_id = 21011001, pos = { x = 1723.280, y = 203.191, z = -1455.785 }, rot = { x = 0.000, y = 100.282, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 379091, monster_id = 22010101, pos = { x = 1712.676, y = 204.202, z = -1432.546 }, rot = { x = 0.000, y = 116.375, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 379105, monster_id = 21010901, pos = { x = 1772.192, y = 201.147, z = -1505.377 }, rot = { x = 0.000, y = 67.263, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379005, gadget_id = 70300084, pos = { x = 1880.819, y = 195.038, z = -1566.345 }, rot = { x = 3.978, y = 142.440, z = 3.699 }, level = 1, area_id = 2 },
	{ config_id = 379006, gadget_id = 70300090, pos = { x = 1867.939, y = 195.330, z = -1485.648 }, rot = { x = 0.000, y = 46.958, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 379007, gadget_id = 70300090, pos = { x = 1813.967, y = 195.058, z = -1474.062 }, rot = { x = 0.000, y = 6.796, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 379009, gadget_id = 70300084, pos = { x = 1869.576, y = 196.159, z = -1544.227 }, rot = { x = 356.094, y = 194.299, z = 0.849 }, level = 1, area_id = 2 },
	{ config_id = 379011, gadget_id = 70300090, pos = { x = 1879.489, y = 195.636, z = -1520.478 }, rot = { x = 355.342, y = 96.414, z = 0.144 }, level = 1, area_id = 2 },
	{ config_id = 379012, gadget_id = 70300090, pos = { x = 1771.777, y = 195.087, z = -1505.574 }, rot = { x = 0.000, y = 336.626, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 379013, gadget_id = 70300089, pos = { x = 1894.555, y = 197.749, z = -1519.194 }, rot = { x = 353.720, y = 103.249, z = 359.439 }, level = 1, area_id = 2 },
	{ config_id = 379014, gadget_id = 70220035, pos = { x = 1876.085, y = 195.988, z = -1541.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 379015, gadget_id = 70710116, pos = { x = 2012.586, y = 199.716, z = -1627.335 }, rot = { x = 0.000, y = 263.360, z = 0.000 }, level = 1, route_id = 300100252, start_route = false, persistent = true, area_id = 2 },
	{ config_id = 379017, gadget_id = 70220013, pos = { x = 1895.393, y = 197.967, z = -1523.353 }, rot = { x = 353.720, y = 103.249, z = 359.439 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 2 },
	{ config_id = 379019, gadget_id = 70220035, pos = { x = 1889.289, y = 197.173, z = -1535.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 379022, gadget_id = 70300090, pos = { x = 1742.101, y = 195.581, z = -1471.064 }, rot = { x = 0.000, y = 18.701, z = 0.000 }, level = 1, area_id = 2 },
	-- 第一检查点
	{ config_id = 379023, gadget_id = 70710126, pos = { x = 1924.847, y = 195.137, z = -1585.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 379024, gadget_id = 70300090, pos = { x = 1722.967, y = 197.455, z = -1455.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	-- 第二检查点
	{ config_id = 379026, gadget_id = 70710126, pos = { x = 1885.158, y = 195.941, z = -1557.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 379040, gadget_id = 70300084, pos = { x = 2016.045, y = 199.142, z = -1624.097 }, rot = { x = 355.405, y = 308.239, z = 19.459 }, level = 1, area_id = 2 },
	{ config_id = 379041, gadget_id = 70300084, pos = { x = 2017.090, y = 196.936, z = -1631.532 }, rot = { x = 343.384, y = 38.147, z = 355.866 }, level = 1, area_id = 2 },
	-- 第三检查点
	{ config_id = 379062, gadget_id = 70710126, pos = { x = 1876.633, y = 196.454, z = -1500.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	-- 第四检查点
	{ config_id = 379063, gadget_id = 70710126, pos = { x = 1813.332, y = 195.099, z = -1483.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	-- 第五检查点
	{ config_id = 379064, gadget_id = 70710126, pos = { x = 1769.115, y = 195.128, z = -1498.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	-- 第六检查点
	{ config_id = 379065, gadget_id = 70710126, pos = { x = 1748.845, y = 195.164, z = -1459.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	-- 第七检查点
	{ config_id = 379066, gadget_id = 70710126, pos = { x = 1711.510, y = 204.126, z = -1432.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	-- 第八检查点
	{ config_id = 379067, gadget_id = 70710126, pos = { x = 1729.029, y = 213.735, z = -1370.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 379077, shape = RegionShape.SPHERE, radius = 15.5, pos = { x = 2012.907, y = 198.891, z = -1627.274 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1379077, name = "ENTER_REGION_379077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_379077", action = "action_EVENT_ENTER_REGION_379077" },
	{ config_id = 1379078, name = "CHALLENGE_SUCCESS_379078", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_379078", trigger_count = 0 },
	{ config_id = 1379079, name = "PLATFORM_REACH_POINT_379079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379079", action = "action_EVENT_PLATFORM_REACH_POINT_379079", trigger_count = 0, tag = "888" },
	{ config_id = 1379080, name = "CHALLENGE_FAIL_379080", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_379080", trigger_count = 0 },
	{ config_id = 1379081, name = "ANY_GADGET_DIE_379081", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_379081", action = "action_EVENT_ANY_GADGET_DIE_379081", tag = "999" },
	{ config_id = 1379082, name = "PLATFORM_REACH_POINT_379082", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379082", action = "action_EVENT_PLATFORM_REACH_POINT_379082", trigger_count = 0, tag = "888" },
	{ config_id = 1379085, name = "PLATFORM_REACH_POINT_379085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379085", action = "action_EVENT_PLATFORM_REACH_POINT_379085", trigger_count = 0, tag = "888" },
	{ config_id = 1379086, name = "PLATFORM_REACH_POINT_379086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379086", action = "action_EVENT_PLATFORM_REACH_POINT_379086", trigger_count = 0, tag = "888" },
	{ config_id = 1379087, name = "PLATFORM_REACH_POINT_379087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379087", action = "action_EVENT_PLATFORM_REACH_POINT_379087", trigger_count = 0, tag = "888" },
	{ config_id = 1379088, name = "PLATFORM_REACH_POINT_379088", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379088", action = "action_EVENT_PLATFORM_REACH_POINT_379088", trigger_count = 0, tag = "888" },
	{ config_id = 1379089, name = "PLATFORM_REACH_POINT_379089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379089", action = "action_EVENT_PLATFORM_REACH_POINT_379089", trigger_count = 0, tag = "888" },
	{ config_id = 1379090, name = "PLATFORM_REACH_POINT_379090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_379090", action = "action_EVENT_PLATFORM_REACH_POINT_379090", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "sealMatrix", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 6,
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
		gadgets = { 379015, 379040, 379041 },
		regions = { 379077 },
		triggers = { "ENTER_REGION_379077", "CHALLENGE_SUCCESS_379078", "PLATFORM_REACH_POINT_379079", "CHALLENGE_FAIL_379080", "ANY_GADGET_DIE_379081", "PLATFORM_REACH_POINT_379082", "PLATFORM_REACH_POINT_379085", "PLATFORM_REACH_POINT_379086", "PLATFORM_REACH_POINT_379087", "PLATFORM_REACH_POINT_379088", "PLATFORM_REACH_POINT_379089", "PLATFORM_REACH_POINT_379090" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 379023, 379026, 379062, 379063, 379064, 379065, 379066, 379067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 379001, 379004, 379008, 379016, 379018, 379031 },
		gadgets = { 379014, 379019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 379003, 379010, 379032, 379053, 379054, 379055, 379105 },
		gadgets = { 379005, 379006, 379007, 379009, 379011, 379012, 379013, 379017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 379057, 379058, 379059, 379061, 379091 },
		gadgets = { 379022, 379024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_379077(context, evt)
	if evt.param1 ~= 379077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379077(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
	-- 将configid为 379015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379015, GadgetState.GearStart) then
			return -1
		end 
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001379, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001379, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 379015) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_379078(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379040 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379041 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133001379, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379079(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 38 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 38 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379067 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_379080(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001379, EntityType.GADGET, 379015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 5)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001379, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_379081(context, evt)
	if 379015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_379081(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379082(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 12 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379082(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133001379, EntityType.MONSTER, 379001)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133001379, EntityType.MONSTER, 379018)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133001379, EntityType.MONSTER, 379016)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379085(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 8 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379085(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001379, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379086(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 18 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379086(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379087(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 22 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379087(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379063 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001379, 5)
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133001379, EntityType.MONSTER, 379032)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133001379, EntityType.MONSTER, 379003)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133001379, EntityType.MONSTER, 379054)
	
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379088(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 24 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379088(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379064 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379089(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 26 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 26 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379089(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379065 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001379, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_379090(context, evt)
	-- 判断是gadgetid 为 379015的移动平台，是否到达了300100252 的路线中的 32 点
	
	if 379015 ~= evt.param1 then
	  return false
	end
	
	if 300100252 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_379090(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379066 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end