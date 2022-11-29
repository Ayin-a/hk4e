-- 基础信息
local base_info = {
	group_id = 133303306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306001, monster_id = 26120301, pos = { x = -1951.547, y = 219.448, z = 3257.173 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 306002, monster_id = 26090201, pos = { x = -1948.330, y = 221.751, z = 3273.946 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 306003, monster_id = 26090201, pos = { x = -1936.721, y = 218.152, z = 3265.467 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 306005, monster_id = 26090101, pos = { x = -1951.691, y = 218.969, z = 3251.580 }, rot = { x = 0.000, y = 291.953, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 306006, monster_id = 26090101, pos = { x = -1928.609, y = 215.896, z = 3277.933 }, rot = { x = 0.000, y = 171.483, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	-- 伏击
	{ config_id = 306007, monster_id = 26090101, pos = { x = -1964.439, y = 224.902, z = 3267.375 }, rot = { x = 0.000, y = 157.174, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	-- 伏击
	{ config_id = 306008, monster_id = 26090101, pos = { x = -1963.885, y = 224.196, z = 3263.106 }, rot = { x = 0.000, y = 89.409, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	-- 无掉落
	{ config_id = 306010, monster_id = 26120301, pos = { x = -1932.790, y = 217.685, z = 3261.564 }, rot = { x = 0.000, y = 269.429, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 306011, monster_id = 26090101, pos = { x = -1944.507, y = 219.244, z = 3264.020 }, rot = { x = 0.000, y = 291.953, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 306012, monster_id = 26090101, pos = { x = -1955.731, y = 221.320, z = 3264.816 }, rot = { x = 0.000, y = 173.814, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	-- 伏击
	{ config_id = 306013, monster_id = 26090101, pos = { x = -1938.532, y = 217.192, z = 3252.697 }, rot = { x = 0.000, y = 220.299, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	-- 伏击
	{ config_id = 306014, monster_id = 26090101, pos = { x = -1941.277, y = 217.012, z = 3247.406 }, rot = { x = 0.000, y = 89.409, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 306009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1961.227, y = 224.693, z = 3266.236 }, area_id = 23 },
	{ config_id = 306015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1937.850, y = 218.143, z = 3249.814 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1306004, name = "GROUP_LOAD_306004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_306004", action = "action_EVENT_GROUP_LOAD_306004", trigger_count = 0 },
	{ config_id = 1306009, name = "ENTER_REGION_306009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306009", action = "action_EVENT_ENTER_REGION_306009" },
	{ config_id = 1306015, name = "ENTER_REGION_306015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306015", action = "action_EVENT_ENTER_REGION_306015" }
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
		monsters = { 306005, 306006, 306011, 306012 },
		gadgets = { },
		regions = { 306009, 306015 },
		triggers = { "GROUP_LOAD_306004", "ENTER_REGION_306009", "ENTER_REGION_306015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 306001, 306002, 306003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 死域节点伏击怪,
		monsters = { 306010 },
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
function condition_EVENT_GROUP_LOAD_306004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_306004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303306, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_306009(context, evt)
	if evt.param1 ~= 306009 then return false end
	
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
function action_EVENT_ENTER_REGION_306009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 306007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 306008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_306015(context, evt)
	if evt.param1 ~= 306015 then return false end
	
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
function action_EVENT_ENTER_REGION_306015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 306013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 306014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"