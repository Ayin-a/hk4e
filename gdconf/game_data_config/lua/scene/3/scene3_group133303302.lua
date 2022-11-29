-- 基础信息
local base_info = {
	group_id = 133303302
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 302002, monster_id = 20010501, pos = { x = -1300.867, y = 266.555, z = 3636.876 }, rot = { x = 0.000, y = 183.746, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	{ config_id = 302003, monster_id = 20010501, pos = { x = -1319.506, y = 274.211, z = 3671.724 }, rot = { x = 0.000, y = 306.697, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	{ config_id = 302005, monster_id = 20010501, pos = { x = -1294.071, y = 263.856, z = 3634.325 }, rot = { x = 0.000, y = 55.103, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	{ config_id = 302006, monster_id = 20010501, pos = { x = -1310.273, y = 272.664, z = 3671.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	{ config_id = 302007, monster_id = 20010501, pos = { x = -1307.257, y = 271.590, z = 3671.719 }, rot = { x = 0.000, y = 326.938, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	{ config_id = 302008, monster_id = 20010501, pos = { x = -1319.506, y = 274.211, z = 3671.724 }, rot = { x = 0.000, y = 306.697, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 23 },
	{ config_id = 302009, monster_id = 20010501, pos = { x = -1294.071, y = 263.856, z = 3634.325 }, rot = { x = 0.000, y = 55.103, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 23 },
	{ config_id = 302010, monster_id = 20010501, pos = { x = -1314.455, y = 276.470, z = 3678.844 }, rot = { x = 0.000, y = 86.735, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 23 },
	{ config_id = 302011, monster_id = 20010601, pos = { x = -1299.844, y = 266.799, z = 3662.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 23 },
	{ config_id = 302016, monster_id = 20010501, pos = { x = -1314.455, y = 276.470, z = 3678.844 }, rot = { x = 0.000, y = 86.735, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, affix = { 6117 }, area_id = 23 },
	{ config_id = 302017, monster_id = 20010601, pos = { x = -1299.844, y = 266.799, z = 3662.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", affix = { 6117 }, area_id = 23 },
	{ config_id = 302018, monster_id = 20010501, pos = { x = -1301.739, y = 268.052, z = 3653.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", affix = { 6117 }, area_id = 23 },
	{ config_id = 302019, monster_id = 20010701, pos = { x = -1293.599, y = 263.524, z = 3654.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", affix = { 6117 }, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 302001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1309.179, y = 272.706, z = 3674.485 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1302001, name = "ENTER_REGION_302001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302001", action = "action_EVENT_ENTER_REGION_302001" },
	{ config_id = 1302004, name = "GROUP_LOAD_302004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_302004", action = "action_EVENT_GROUP_LOAD_302004", trigger_count = 0 }
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
		monsters = { 302002, 302003, 302005, 302016, 302017, 302018, 302019 },
		gadgets = { },
		regions = { 302001 },
		triggers = { "ENTER_REGION_302001", "GROUP_LOAD_302004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 302008, 302009, 302010, 302011 },
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
function condition_EVENT_ENTER_REGION_302001(context, evt)
	if evt.param1 ~= 302001 then return false end
	
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
function action_EVENT_ENTER_REGION_302001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 302006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 302007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_302004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_302004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303302, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"