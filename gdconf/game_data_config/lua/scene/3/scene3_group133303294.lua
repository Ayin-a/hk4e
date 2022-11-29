-- 基础信息
local base_info = {
	group_id = 133303294
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 294001, monster_id = 26120101, pos = { x = -1499.654, y = 219.095, z = 3120.607 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 21 },
	{ config_id = 294002, monster_id = 26090201, pos = { x = -1497.415, y = 219.972, z = 3135.190 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 294003, monster_id = 26090201, pos = { x = -1484.829, y = 221.664, z = 3128.901 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 294005, monster_id = 24010101, pos = { x = -1521.143, y = 217.445, z = 3138.221 }, rot = { x = 0.000, y = 53.931, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 23 },
	-- 死域怪伏击
	{ config_id = 294007, monster_id = 24020301, pos = { x = -1513.347, y = 214.164, z = 3147.292 }, rot = { x = 0.000, y = 346.094, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 6117 }, pose_id = 100, area_id = 23 },
	{ config_id = 294010, monster_id = 26090201, pos = { x = -1499.810, y = 217.474, z = 3159.321 }, rot = { x = 0.000, y = 181.511, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 294011, monster_id = 26090201, pos = { x = -1487.224, y = 220.228, z = 3153.032 }, rot = { x = 0.000, y = 290.327, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 294012, monster_id = 24010101, pos = { x = -1504.720, y = 221.608, z = 3115.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 21 },
	-- 死域怪伏击
	{ config_id = 294015, monster_id = 24020101, pos = { x = -1503.209, y = 221.228, z = 3115.470 }, rot = { x = 0.000, y = 274.263, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 6117 }, pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 死域词缀怪伏击
	{ config_id = 294006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1511.569, y = 214.855, z = 3150.041 }, area_id = 23 },
	-- 死域词缀怪伏击
	{ config_id = 294008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1506.864, y = 221.387, z = 3117.551 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1294004, name = "GROUP_LOAD_294004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_294004", action = "action_EVENT_GROUP_LOAD_294004", trigger_count = 0 },
	-- 死域词缀怪伏击
	{ config_id = 1294006, name = "ENTER_REGION_294006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_294006", action = "action_EVENT_ENTER_REGION_294006" },
	-- 死域词缀怪伏击
	{ config_id = 1294008, name = "ENTER_REGION_294008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_294008", action = "action_EVENT_ENTER_REGION_294008" }
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
		monsters = { 294005 },
		gadgets = { },
		regions = { 294006, 294008 },
		triggers = { "GROUP_LOAD_294004", "ENTER_REGION_294006", "ENTER_REGION_294008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 294001, 294002, 294003, 294010, 294011, 294012 },
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
function condition_EVENT_GROUP_LOAD_294004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_294004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303294, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_294006(context, evt)
	if evt.param1 ~= 294006 then return false end
	
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
function action_EVENT_ENTER_REGION_294006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 294007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_294008(context, evt)
	if evt.param1 ~= 294008 then return false end
	
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
function action_EVENT_ENTER_REGION_294008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 294015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"