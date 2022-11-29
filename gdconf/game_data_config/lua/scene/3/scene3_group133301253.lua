-- 基础信息
local base_info = {
	group_id = 133301253
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253001, monster_id = 26090501, pos = { x = -84.319, y = 284.922, z = 3197.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 22 },
	{ config_id = 253002, monster_id = 26090501, pos = { x = -87.003, y = 284.599, z = 3192.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 22 },
	{ config_id = 253003, monster_id = 26090501, pos = { x = -81.380, y = 289.325, z = 3183.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 22 },
	{ config_id = 253005, monster_id = 26090501, pos = { x = -85.997, y = 284.679, z = 3196.070 }, rot = { x = 0.000, y = 114.683, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 253006, monster_id = 26090501, pos = { x = -87.057, y = 284.333, z = 3194.055 }, rot = { x = 0.000, y = 98.716, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 253007, monster_id = 26090501, pos = { x = -54.959, y = 287.341, z = 3208.174 }, rot = { x = 0.000, y = 124.389, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 253008, monster_id = 26090501, pos = { x = -54.571, y = 287.430, z = 3206.030 }, rot = { x = 0.000, y = 32.734, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 253009, monster_id = 26090501, pos = { x = -52.582, y = 287.291, z = 3205.124 }, rot = { x = 0.000, y = 357.556, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 253010, monster_id = 26090501, pos = { x = -75.422, y = 289.146, z = 3184.271 }, rot = { x = 0.000, y = 264.532, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 253016, monster_id = 26090501, pos = { x = -89.250, y = 290.399, z = 3204.304 }, rot = { x = 0.000, y = 13.178, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 253014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -88.465, y = 297.113, z = 3193.515 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1253004, name = "GROUP_LOAD_253004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_253004", action = "action_EVENT_GROUP_LOAD_253004", trigger_count = 0 },
	{ config_id = 1253014, name = "ENTER_REGION_253014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253014", action = "action_EVENT_ENTER_REGION_253014" }
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
		monsters = { 253007, 253008, 253009, 253010, 253016 },
		gadgets = { },
		regions = { 253014 },
		triggers = { "GROUP_LOAD_253004", "ENTER_REGION_253014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 253001, 253002, 253003 },
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
function condition_EVENT_GROUP_LOAD_253004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_253004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301253, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253014(context, evt)
	if evt.param1 ~= 253014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 253005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 253006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"