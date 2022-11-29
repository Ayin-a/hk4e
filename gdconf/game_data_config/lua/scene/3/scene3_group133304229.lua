-- 基础信息
local base_info = {
	group_id = 133304229
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 229001, monster_id = 26120101, pos = { x = -1667.889, y = 96.882, z = 2091.552 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 229002, monster_id = 26090201, pos = { x = -1657.335, y = 96.390, z = 2102.751 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 229003, monster_id = 26090201, pos = { x = -1662.129, y = 104.161, z = 2108.542 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 229005, monster_id = 26090201, pos = { x = -1669.043, y = 96.440, z = 2094.791 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 229006, monster_id = 26090201, pos = { x = -1653.709, y = 96.999, z = 2103.392 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 229008, monster_id = 26090201, pos = { x = -1655.448, y = 98.091, z = 2086.981 }, rot = { x = 0.000, y = 354.079, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, isOneoff = true, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 229007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1655.945, y = 97.996, z = 2086.464 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1229004, name = "GROUP_LOAD_229004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_229004", action = "action_EVENT_GROUP_LOAD_229004", trigger_count = 0 },
	{ config_id = 1229007, name = "ENTER_REGION_229007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229007", action = "action_EVENT_ENTER_REGION_229007" }
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
		monsters = { 229005, 229006 },
		gadgets = { },
		regions = { 229007 },
		triggers = { "GROUP_LOAD_229004", "ENTER_REGION_229007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 229001, 229002, 229003 },
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
function condition_EVENT_GROUP_LOAD_229004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_229004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304229, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_229007(context, evt)
	if evt.param1 ~= 229007 then return false end
	
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
function action_EVENT_ENTER_REGION_229007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 229008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"