-- 基础信息
local base_info = {
	group_id = 133303282
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 282002, monster_id = 26090201, pos = { x = -1836.252, y = 358.255, z = 3541.141 }, rot = { x = 0.000, y = 247.191, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 282003, monster_id = 26090201, pos = { x = -1836.921, y = 358.296, z = 3543.194 }, rot = { x = 0.000, y = 228.671, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 282005, monster_id = 26090201, pos = { x = -1836.244, y = 356.629, z = 3562.424 }, rot = { x = 0.000, y = 120.379, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 282006, monster_id = 26090201, pos = { x = -1834.615, y = 354.197, z = 3582.164 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 282007, monster_id = 26090201, pos = { x = -1813.328, y = 352.724, z = 3567.952 }, rot = { x = 0.000, y = 181.928, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 282008, monster_id = 26090201, pos = { x = -1845.640, y = 358.840, z = 3545.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 282009, monster_id = 26090201, pos = { x = -1838.747, y = 354.421, z = 3587.525 }, rot = { x = 0.000, y = 29.422, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 282010, monster_id = 26090201, pos = { x = -1839.657, y = 354.820, z = 3589.362 }, rot = { x = 0.000, y = 47.684, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 282012, monster_id = 26090201, pos = { x = -1831.491, y = 355.896, z = 3566.906 }, rot = { x = 0.000, y = 120.379, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 282013, monster_id = 26090201, pos = { x = -1835.945, y = 356.304, z = 3567.237 }, rot = { x = 0.000, y = 120.379, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 282014, monster_id = 26090201, pos = { x = -1829.378, y = 355.161, z = 3572.108 }, rot = { x = 0.000, y = 104.673, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 282015, monster_id = 26090201, pos = { x = -1840.503, y = 356.676, z = 3571.417 }, rot = { x = 0.000, y = 264.760, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 282016, monster_id = 26090201, pos = { x = -1812.258, y = 352.121, z = 3562.566 }, rot = { x = 0.000, y = 297.949, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 282017, monster_id = 26090201, pos = { x = -1847.213, y = 358.903, z = 3526.781 }, rot = { x = 0.000, y = 135.028, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 282001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1836.370, y = 358.323, z = 3542.041 }, area_id = 23 },
	{ config_id = 282011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1839.156, y = 355.723, z = 3588.729 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1282001, name = "ENTER_REGION_282001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_282001", action = "action_EVENT_ENTER_REGION_282001" },
	{ config_id = 1282004, name = "GROUP_LOAD_282004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_282004", action = "action_EVENT_GROUP_LOAD_282004", trigger_count = 0 },
	{ config_id = 1282011, name = "ENTER_REGION_282011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_282011", action = "action_EVENT_ENTER_REGION_282011" }
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
		monsters = { 282005, 282006, 282007, 282008, 282012, 282013 },
		gadgets = { },
		regions = { 282001, 282011 },
		triggers = { "ENTER_REGION_282001", "GROUP_LOAD_282004", "ENTER_REGION_282011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 282014, 282015, 282016, 282017 },
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
function condition_EVENT_ENTER_REGION_282001(context, evt)
	if evt.param1 ~= 282001 then return false end
	
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
function action_EVENT_ENTER_REGION_282001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 282002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 282003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_282004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_282004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303282, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_282011(context, evt)
	if evt.param1 ~= 282011 then return false end
	
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
function action_EVENT_ENTER_REGION_282011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 282009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 282010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"