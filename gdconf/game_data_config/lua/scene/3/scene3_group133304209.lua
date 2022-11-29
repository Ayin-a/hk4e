-- 基础信息
local base_info = {
	group_id = 133304209
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 209001, monster_id = 26120101, pos = { x = -1231.659, y = 155.751, z = 2154.775 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 209002, monster_id = 26090201, pos = { x = -1229.420, y = 156.628, z = 2169.358 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 209003, monster_id = 26090201, pos = { x = -1216.834, y = 158.320, z = 2163.069 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 209005, monster_id = 26090501, pos = { x = -1225.004, y = 155.826, z = 2160.803 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 209006, monster_id = 26090501, pos = { x = -1230.986, y = 156.612, z = 2162.187 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 209007, monster_id = 26090501, pos = { x = -1226.711, y = 155.519, z = 2154.971 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 209008, monster_id = 26090501, pos = { x = -1227.597, y = 155.466, z = 2150.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 209009, shape = RegionShape.SPHERE, radius = 4, pos = { x = -1223.376, y = 154.972, z = 2151.039 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1209004, name = "GROUP_LOAD_209004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_209004", action = "action_EVENT_GROUP_LOAD_209004", trigger_count = 0 },
	{ config_id = 1209009, name = "ENTER_REGION_209009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209009", action = "action_EVENT_ENTER_REGION_209009" }
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
		monsters = { 209005, 209006 },
		gadgets = { },
		regions = { 209009 },
		triggers = { "GROUP_LOAD_209004", "ENTER_REGION_209009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 209001, 209002, 209003 },
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
function condition_EVENT_GROUP_LOAD_209004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_209004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304209, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_209009(context, evt)
	if evt.param1 ~= 209009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_209009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 209007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 209008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"