-- 基础信息
local base_info = {
	group_id = 133302236
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 236001, monster_id = 26090101, pos = { x = -406.125, y = 104.391, z = 2260.551 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 104, area_id = 24 },
	{ config_id = 236002, monster_id = 26090101, pos = { x = -403.376, y = 105.025, z = 2258.606 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 104, area_id = 24 },
	{ config_id = 236003, monster_id = 26090101, pos = { x = -408.069, y = 105.018, z = 2258.353 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 104, area_id = 24 },
	{ config_id = 236005, monster_id = 26090101, pos = { x = -393.991, y = 107.501, z = 2246.885 }, rot = { x = 0.000, y = 350.041, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 236006, monster_id = 26090101, pos = { x = -393.122, y = 106.883, z = 2244.626 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 236007, monster_id = 26090101, pos = { x = -353.366, y = 106.335, z = 2281.370 }, rot = { x = 0.000, y = 350.041, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 236008, monster_id = 26090101, pos = { x = -357.524, y = 106.821, z = 2283.137 }, rot = { x = 0.000, y = 350.041, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 236011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -356.571, y = 106.981, z = 2285.603 }, area_id = 24 },
	{ config_id = 236012, shape = RegionShape.SPHERE, radius = 5, pos = { x = -396.260, y = 106.602, z = 2244.524 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1236004, name = "GROUP_LOAD_236004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_236004", action = "action_EVENT_GROUP_LOAD_236004", trigger_count = 0 },
	{ config_id = 1236011, name = "ENTER_REGION_236011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236011", action = "action_EVENT_ENTER_REGION_236011" },
	{ config_id = 1236012, name = "ENTER_REGION_236012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236012", action = "action_EVENT_ENTER_REGION_236012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 236009, monster_id = 26090901, pos = { x = -356.269, y = 108.904, z = 2232.095 }, rot = { x = 0.000, y = 350.041, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
		{ config_id = 236010, monster_id = 26090901, pos = { x = -354.009, y = 107.413, z = 2234.390 }, rot = { x = 0.000, y = 350.041, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
		{ config_id = 236013, monster_id = 26090101, pos = { x = -386.287, y = 105.825, z = 2255.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
		{ config_id = 236014, monster_id = 26090101, pos = { x = -385.437, y = 106.129, z = 2252.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
		{ config_id = 236015, monster_id = 26090101, pos = { x = -384.091, y = 106.306, z = 2250.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 }
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
		monsters = { },
		gadgets = { },
		regions = { 236011, 236012 },
		triggers = { "GROUP_LOAD_236004", "ENTER_REGION_236011", "ENTER_REGION_236012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 236001, 236002, 236003 },
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
function condition_EVENT_GROUP_LOAD_236004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_236004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302236, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_236011(context, evt)
	if evt.param1 ~= 236011 then return false end
	
	-- 判断是区域236011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 236011 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_236011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_236012(context, evt)
	if evt.param1 ~= 236012 then return false end
	
	-- 判断是区域236012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 236012 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_236012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"