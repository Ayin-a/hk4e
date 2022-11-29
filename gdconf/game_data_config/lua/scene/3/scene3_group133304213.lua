-- 基础信息
local base_info = {
	group_id = 133304213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 26090201, pos = { x = -1623.188, y = 212.884, z = 2776.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 213002, monster_id = 26090901, pos = { x = -1634.401, y = 214.317, z = 2762.926 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 213003, monster_id = 26090901, pos = { x = -1631.138, y = 214.611, z = 2760.842 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 213005, monster_id = 26090401, pos = { x = -1602.839, y = 208.837, z = 2746.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 213006, monster_id = 26090401, pos = { x = -1604.446, y = 208.183, z = 2748.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 213007, monster_id = 26120101, pos = { x = -1609.752, y = 208.821, z = 2766.832 }, rot = { x = 0.000, y = 10.426, z = 0.000 }, level = 30, drop_tag = "大蕈兽", affix = { 6117 }, pose_id = 201, area_id = 21 },
	{ config_id = 213008, monster_id = 26120101, pos = { x = -1624.825, y = 213.637, z = 2778.505 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 30, drop_tag = "大蕈兽", affix = { 6117 }, pose_id = 201, area_id = 21 },
	{ config_id = 213010, monster_id = 26090201, pos = { x = -1610.995, y = 207.863, z = 2761.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 213011, monster_id = 26090201, pos = { x = -1632.044, y = 214.483, z = 2773.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 213012, monster_id = 26090201, pos = { x = -1628.235, y = 214.299, z = 2777.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 213013, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1631.290, y = 214.803, z = 2776.986 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1213004, name = "GROUP_LOAD_213004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_213004", action = "action_EVENT_GROUP_LOAD_213004", trigger_count = 0 },
	{ config_id = 1213013, name = "ENTER_REGION_213013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_213013", action = "action_EVENT_ENTER_REGION_213013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 213009, monster_id = 26090201, pos = { x = -1613.767, y = 207.942, z = 2763.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 }
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
		monsters = { 213001, 213007, 213008, 213010 },
		gadgets = { },
		regions = { 213013 },
		triggers = { "GROUP_LOAD_213004", "ENTER_REGION_213013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 213002, 213003, 213005, 213006 },
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
function condition_EVENT_GROUP_LOAD_213004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_213004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304213, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_213013(context, evt)
	if evt.param1 ~= 213013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_213013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 213011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 213012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"