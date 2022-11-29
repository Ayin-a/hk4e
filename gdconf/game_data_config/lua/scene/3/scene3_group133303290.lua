-- 基础信息
local base_info = {
	group_id = 133303290
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 24020301, pos = { x = -1304.011, y = 184.586, z = 3293.158 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 23 },
	{ config_id = 290002, monster_id = 24020201, pos = { x = -1301.772, y = 185.463, z = 3307.741 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 23 },
	{ config_id = 290003, monster_id = 24020201, pos = { x = -1290.027, y = 184.388, z = 3301.815 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 23 },
	{ config_id = 290006, monster_id = 24020301, pos = { x = -1305.780, y = 183.582, z = 3308.280 }, rot = { x = 0.000, y = 82.470, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 290007, monster_id = 24020201, pos = { x = -1297.001, y = 188.133, z = 3279.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 6117 }, pose_id = 100, area_id = 23 },
	{ config_id = 290008, monster_id = 24020201, pos = { x = -1284.184, y = 183.827, z = 3308.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 6117 }, pose_id = 100, area_id = 23 },
	{ config_id = 290009, monster_id = 24020101, pos = { x = -1287.246, y = 183.831, z = 3305.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 6117 }, pose_id = 100, area_id = 23 },
	{ config_id = 290010, monster_id = 24020101, pos = { x = -1292.982, y = 177.399, z = 3333.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 6117 }, pose_id = 100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 290005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1300.227, y = 185.130, z = 3302.647 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1290004, name = "GROUP_LOAD_290004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_290004", action = "action_EVENT_GROUP_LOAD_290004", trigger_count = 0 },
	{ config_id = 1290005, name = "ENTER_REGION_290005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_290005", action = "action_EVENT_ENTER_REGION_290005" }
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
		monsters = { 290006, 290007, 290010 },
		gadgets = { },
		regions = { 290005 },
		triggers = { "GROUP_LOAD_290004", "ENTER_REGION_290005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 290001, 290002, 290003 },
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
function condition_EVENT_GROUP_LOAD_290004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_290004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303290, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_290005(context, evt)
	if evt.param1 ~= 290005 then return false end
	
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
function action_EVENT_ENTER_REGION_290005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 290008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 290009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"