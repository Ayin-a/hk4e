-- 基础信息
local base_info = {
	group_id = 133303298
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 298001, monster_id = 26120101, pos = { x = -1395.686, y = 260.912, z = 3848.973 }, rot = { x = 0.000, y = 152.169, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 },
	{ config_id = 298002, monster_id = 26090201, pos = { x = -1419.344, y = 256.733, z = 3833.061 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 298003, monster_id = 26090201, pos = { x = -1412.158, y = 252.010, z = 3816.556 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 298005, monster_id = 20011301, pos = { x = -1427.043, y = 257.415, z = 3834.956 }, rot = { x = 0.000, y = 160.154, z = 0.000 }, level = 30, drop_tag = "大史莱姆", disableWander = true, affix = { 6117 }, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	-- 伏击怪2#
	{ config_id = 298006, monster_id = 20011201, pos = { x = -1411.606, y = 255.604, z = 3828.994 }, rot = { x = 0.000, y = 117.979, z = 0.000 }, level = 30, drop_tag = "史莱姆", affix = { 6117 }, area_id = 23 },
	-- 伏击怪2#
	{ config_id = 298007, monster_id = 20011201, pos = { x = -1414.968, y = 255.378, z = 3827.560 }, rot = { x = 0.000, y = 58.802, z = 0.000 }, level = 30, drop_tag = "史莱姆", affix = { 6117 }, area_id = 23 },
	{ config_id = 298008, monster_id = 20011301, pos = { x = -1383.529, y = 263.264, z = 3843.877 }, rot = { x = 0.000, y = 134.509, z = 0.000 }, level = 30, drop_tag = "大史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	-- 伏击怪1#
	{ config_id = 298009, monster_id = 20011201, pos = { x = -1406.964, y = 280.245, z = 3871.517 }, rot = { x = 0.000, y = 42.898, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	-- 伏击怪1#
	{ config_id = 298010, monster_id = 20011201, pos = { x = -1412.560, y = 280.487, z = 3871.983 }, rot = { x = 0.000, y = 310.725, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	-- 无掉落伏击怪
	{ config_id = 298012, monster_id = 20011301, pos = { x = -1406.749, y = 259.999, z = 3845.352 }, rot = { x = 0.000, y = 229.442, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 298011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1409.874, y = 281.136, z = 3870.257 }, area_id = 23 },
	{ config_id = 298013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1412.374, y = 255.446, z = 3828.653 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1298004, name = "GROUP_LOAD_298004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_298004", action = "action_EVENT_GROUP_LOAD_298004", trigger_count = 0 },
	{ config_id = 1298011, name = "ENTER_REGION_298011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_298011", action = "action_EVENT_ENTER_REGION_298011" },
	{ config_id = 1298013, name = "ENTER_REGION_298013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_298013", action = "action_EVENT_ENTER_REGION_298013" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { 298005, 298008 },
		gadgets = { },
		regions = { 298011, 298013 },
		triggers = { "GROUP_LOAD_298004", "ENTER_REGION_298011", "ENTER_REGION_298013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 298001, 298002, 298003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 298012 },
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
function condition_EVENT_GROUP_LOAD_298004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_298004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303298, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_298011(context, evt)
	if evt.param1 ~= 298011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 死域值为0，不触发trigger
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_298011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_298013(context, evt)
	if evt.param1 ~= 298013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 死域值为0，不触发trigger
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_298013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"