-- 基础信息
local base_info = {
	group_id = 230001019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 1, npc_id = 86, pos = { x = -5.657, y = 0.017, z = -9.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 装置
gadgets = {
	{ config_id = 74, gadget_id = 70211001, pos = { x = -5.256, y = 0.016, z = -78.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 75, gadget_id = 70211001, pos = { x = -5.308, y = 0.017, z = -76.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 76, gadget_id = 70211011, pos = { x = -5.329, y = 0.016, z = -74.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 77, gadget_id = 70350002, pos = { x = -4.900, y = -0.240, z = -83.906 }, rot = { x = 0.000, y = 177.663, z = 0.000 }, level = 1 },
	{ config_id = 126, gadget_id = 70211012, pos = { x = 1.280, y = 7.517, z = -119.299 }, rot = { x = 0.000, y = 269.400, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 127, gadget_id = 70211012, pos = { x = -2.734, y = 7.517, z = -122.953 }, rot = { x = 0.000, y = 359.200, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 128, gadget_id = 70211012, pos = { x = -9.135, y = 7.517, z = -122.652 }, rot = { x = 0.000, y = 359.900, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 129, gadget_id = 70211012, pos = { x = -11.642, y = 7.517, z = -118.448 }, rot = { x = 0.000, y = 93.490, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.CUBIC, size = { x = 2.530, y = 5.910, z = 10.380 }, pos = { x = 37.816, y = 1.516, z = -106.200 } },
	{ config_id = 6, shape = RegionShape.CUBIC, size = { x = 3.020, y = 9.360, z = 17.840 }, pos = { x = 13.800, y = 2.899, z = -75.214 } },
	{ config_id = 8, shape = RegionShape.CUBIC, size = { x = 2.690, y = 18.810, z = 8.740 }, pos = { x = 74.620, y = -0.484, z = -114.557 } },
	{ config_id = 9, shape = RegionShape.CUBIC, size = { x = 2.460, y = 15.380, z = 10.110 }, pos = { x = 142.004, y = -0.484, z = -114.956 } },
	{ config_id = 10, shape = RegionShape.CUBIC, size = { x = 2.460, y = 15.240, z = 8.060 }, pos = { x = 65.265, y = -0.483, z = -156.546 } },
	{ config_id = 11, shape = RegionShape.CUBIC, size = { x = 2.140, y = 13.440, z = 8.650 }, pos = { x = 37.776, y = -0.484, z = -154.862 } },
	{ config_id = 12, shape = RegionShape.CUBIC, size = { x = 9.090, y = 15.540, z = 2.300 }, pos = { x = 55.620, y = -0.484, z = -124.911 } },
	{ config_id = 13, shape = RegionShape.CUBIC, size = { x = 11.930, y = 17.260, z = 3.180 }, pos = { x = 11.789, y = -0.484, z = -192.948 } },
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 10.130, y = 24.110, z = 3.090 }, pos = { x = -20.194, y = -0.568, z = -234.308 } },
	{ config_id = 15, shape = RegionShape.CUBIC, size = { x = 17.500, y = 14.630, z = 2.790 }, pos = { x = -66.600, y = 5.425, z = -179.311 } },
	{ config_id = 16, shape = RegionShape.CUBIC, size = { x = 8.800, y = 12.310, z = 2.500 }, pos = { x = -45.998, y = 2.017, z = -120.205 } },
	{ config_id = 17, shape = RegionShape.CUBIC, size = { x = 3.890, y = 14.970, z = 13.130 }, pos = { x = -22.903, y = 0.016, z = -74.020 } },
	{ config_id = 18, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4.733, y = 0.016, z = -12.288 } },
	{ config_id = 50, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5.324, y = 0.016, z = -23.993 } }
}

-- 触发器
triggers = {
	{ config_id = 1000005, name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5", action = "action_EVENT_ENTER_REGION_5", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000006, name = "ENTER_REGION_6", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6", action = "action_EVENT_ENTER_REGION_6", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000008, name = "ENTER_REGION_8", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8", action = "action_EVENT_ENTER_REGION_8", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000009, name = "ENTER_REGION_9", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9", action = "action_EVENT_ENTER_REGION_9", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000010, name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000012, name = "ENTER_REGION_12", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12", action = "action_EVENT_ENTER_REGION_12", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000013, name = "ENTER_REGION_13", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13", action = "action_EVENT_ENTER_REGION_13", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000014, name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14", action = "action_EVENT_ENTER_REGION_14", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000015, name = "ENTER_REGION_15", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15", action = "action_EVENT_ENTER_REGION_15", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000016, name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16", action = "action_EVENT_ENTER_REGION_16", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000017, name = "ENTER_REGION_17", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17", action = "action_EVENT_ENTER_REGION_17", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000018, name = "ENTER_REGION_18", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18", action = "action_EVENT_ENTER_REGION_18", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000050, name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "action_EVENT_ENTER_REGION_50", forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "grouplevel1", value = 0, no_refresh = false },
	{ config_id = 2, name = "grouplevel3", value = 0, no_refresh = false },
	{ config_id = 3, name = "grouplevel5", value = 0, no_refresh = false },
	{ config_id = 4, name = "grouplevel7", value = 0, no_refresh = false },
	{ config_id = 5, name = "grouplevel9", value = 0, no_refresh = false },
	{ config_id = 6, name = "grouplevel12", value = 0, no_refresh = false },
	{ config_id = 7, name = "grouplevel14", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 77, 126, 127, 128, 129 },
		regions = { 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 50 },
		triggers = { "ENTER_REGION_5", "ENTER_REGION_6", "ENTER_REGION_8", "ENTER_REGION_9", "ENTER_REGION_10", "ENTER_REGION_11", "ENTER_REGION_12", "ENTER_REGION_13", "ENTER_REGION_14", "ENTER_REGION_15", "ENTER_REGION_16", "ENTER_REGION_17", "ENTER_REGION_18", "ENTER_REGION_50" },
		npcs = { 1 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5(context, evt)
	if evt.param1 ~= 5 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 重新生成指定group，默认为独立随机
	-- 判断如果group1中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel1", 1)
	   c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) > 0 then
	c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001008 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001016 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6(context, evt)
	if evt.param1 ~= 6 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6(context, evt)
	-- 重新生成指定group，默认为独立随机
	-- 判断如果group3中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	end
	-- 判断如果group3中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
			return -1
		end
	
	end
	
	
	
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001016 }) then
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8(context, evt)
	if evt.param1 ~= 8 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8(context, evt)
	-- 判断如果230001005中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001005) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel5", 1)
	   local c_grouplevel5 = ScriptLib.GetGroupVariableValue(context, "grouplevel5")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001005, refresh_level_revise = c_grouplevel5}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001005) > 0 then
	local c_grouplevel5 = ScriptLib.GetGroupVariableValue(context, "grouplevel5")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001005, refresh_level_revise = c_grouplevel5}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9(context, evt)
	if evt.param1 ~= 9 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9(context, evt)
	-- 判断如果230001003中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 判断如果230001009中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel9", 1)
	   local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) > 0 then
	local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 判断如果230001003中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
	-- 判断如果230001003中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel3", 1)
	   local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001003) > 0 then
	local c_grouplevel3 = ScriptLib.GetGroupVariableValue(context, "grouplevel3")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001003, refresh_level_revise = c_grouplevel3}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 判断如果230001009中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel9", 1)
	   local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) > 0 then
	local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12(context, evt)
	if evt.param1 ~= 12 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 判断如果230001009中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel9", 1)
	   local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001009) > 0 then
	local c_grouplevel9 = ScriptLib.GetGroupVariableValue(context, "grouplevel9")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001009, refresh_level_revise = c_grouplevel9}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13(context, evt)
	if evt.param1 ~= 13 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13(context, evt)
	-- 判断如果230001012中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel12", 1)
	   local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) > 0 then
	local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14(context, evt)
	if evt.param1 ~= 14 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 判断如果230001014中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel14", 1)
	   local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) > 0 then
	local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15(context, evt)
	if evt.param1 ~= 15 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15(context, evt)
	-- 判断如果230001007中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel7", 1)
	   local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001007) > 0 then
	local c_grouplevel7 = ScriptLib.GetGroupVariableValue(context, "grouplevel7")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001007, refresh_level_revise = c_grouplevel7}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 判断如果230001012中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel12", 1)
	   local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001012) > 0 then
	local c_grouplevel12 = ScriptLib.GetGroupVariableValue(context, "grouplevel12")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001012, refresh_level_revise = c_grouplevel12}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16(context, evt)
	if evt.param1 ~= 16 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 判断如果230001001中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel1", 1)
	   local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) > 0 then
	local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17(context, evt)
	if evt.param1 ~= 17 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17(context, evt)
	-- 判断如果230001014中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel14", 1)
	   local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001014) > 0 then
	local c_grouplevel14 = ScriptLib.GetGroupVariableValue(context, "grouplevel14")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001014, refresh_level_revise = c_grouplevel14}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18(context, evt)
	if evt.param1 ~= 18 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18(context, evt)
	-- 判断如果230001001中怪物已经被清除完，那么再次刷新会递增其level等级，提高group的数值强度
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) == 0 then
	
	   ScriptLib.ChangeGroupVariableValue(context, "grouplevel1", 1)
	   local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	end
	-- 判断如果group1中怪物没有清除完，那么单纯刷新
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230001001) > 0 then
	local c_grouplevel1 = ScriptLib.GetGroupVariableValue(context, "grouplevel1")
	   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230001001, refresh_level_revise = c_grouplevel1}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : test_curseMaze_groupLevel")
			return -1
		end
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_50(context, evt)
	if evt.param1 ~= 50 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50(context, evt)
	-- 调用提示id为 20010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end