-- 基础信息
local base_info = {
	group_id = 133304225
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 225001, monster_id = 25210101, pos = { x = -1321.917, y = 274.987, z = 2867.757 }, rot = { x = 0.000, y = 83.513, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9003, area_id = 21 },
	{ config_id = 225002, monster_id = 25210402, pos = { x = -1319.138, y = 275.214, z = 2869.142 }, rot = { x = 0.000, y = 146.498, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9001, area_id = 21 },
	{ config_id = 225003, monster_id = 25210502, pos = { x = -1318.078, y = 275.251, z = 2867.714 }, rot = { x = 0.000, y = 310.645, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9002, area_id = 21 },
	{ config_id = 225007, monster_id = 24020101, pos = { x = -1294.700, y = 276.467, z = 2880.922 }, rot = { x = 0.000, y = 228.437, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 21 },
	{ config_id = 225009, monster_id = 24020301, pos = { x = -1312.247, y = 275.778, z = 2861.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 21 },
	{ config_id = 225010, monster_id = 24020401, pos = { x = -1301.658, y = 279.987, z = 2851.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 21 },
	{ config_id = 225012, monster_id = 24020201, pos = { x = -1292.838, y = 280.617, z = 2859.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225005, gadget_id = 70210101, pos = { x = -1322.918, y = 275.395, z = 2876.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 225006, gadget_id = 70210101, pos = { x = -1320.410, y = 275.240, z = 2876.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 225008, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1313.840, y = 275.421, z = 2868.365 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1225004, name = "GROUP_LOAD_225004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_225004", action = "action_EVENT_GROUP_LOAD_225004", trigger_count = 0 },
	{ config_id = 1225008, name = "ENTER_REGION_225008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225008", action = "action_EVENT_ENTER_REGION_225008" },
	{ config_id = 1225011, name = "VARIABLE_CHANGE_225011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_225011", action = "action_EVENT_VARIABLE_CHANGE_225011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "dead", value = 0, no_refresh = true }
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
		monsters = { 225007, 225010 },
		gadgets = { },
		regions = { 225008 },
		triggers = { "GROUP_LOAD_225004", "ENTER_REGION_225008", "VARIABLE_CHANGE_225011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 225001, 225002, 225003 },
		gadgets = { 225005, 225006 },
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
function condition_EVENT_GROUP_LOAD_225004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_225004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304225, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_225008(context, evt)
	if evt.param1 ~= 225008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 225009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_225011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"dead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "dead", 133304225) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_225011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 225012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"