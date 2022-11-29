-- 基础信息
local base_info = {
	group_id = 133213462
}

-- Trigger变量
local defs = {
	maxPathNode = 6,
	pointarray_route = 321300036,
	gadget_bubble = 462002,
	group_id = 133213462,
	gadget_reward = 462001
}

-- DEFS_MISCS
function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	local pathnodeindex = ScriptLib.GetGroupVariableValue(context, "currentPathNode") + 1

	if pathnodeindex > defs.maxPathNode then 
		pathnodeindex = defs.maxPathNode
	end

	ScriptLib.SetPlatformPointArray(context, defs.gadget_bubble, defs.pointarray_route, {pathnodeindex}, { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 462006, monster_id = 20010901, pos = { x = -3578.935, y = 200.000, z = -3616.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 12 },
	{ config_id = 462007, monster_id = 20010801, pos = { x = -3578.745, y = 200.000, z = -3610.771 }, rot = { x = 0.000, y = 119.038, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 12 },
	{ config_id = 462008, monster_id = 20010901, pos = { x = -3605.383, y = 200.000, z = -3634.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 12 },
	{ config_id = 462009, monster_id = 20010801, pos = { x = -3607.071, y = 200.000, z = -3632.836 }, rot = { x = 0.000, y = 119.038, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 12 },
	{ config_id = 462010, monster_id = 22010401, pos = { x = -3583.646, y = 200.108, z = -3637.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "深渊法师", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 462011, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3586.475, y = 200.049, z = -3637.486 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1462011, name = "ENTER_REGION_462011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462011", action = "action_EVENT_ENTER_REGION_462011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "currentPathNode", value = 0, no_refresh = false },
	{ config_id = 2, name = "isReachGoal", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 462001, gadget_id = 70210105, pos = { x = -3589.266, y = 200.000, z = -3586.250 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
		{ config_id = 462002, gadget_id = 70950081, pos = { x = -3580.622, y = 200.000, z = -3619.726 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 12 }
	},
	regions = {
		{ config_id = 462004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3580.622, y = 200.000, z = -3619.726 }, area_id = 12 }
	},
	triggers = {
		{ config_id = 1462003, name = "AVATAR_NEAR_PLATFORM_462003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_462003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_462003", trigger_count = 0 },
		{ config_id = 1462004, name = "ENTER_REGION_462004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462004", action = "action_EVENT_ENTER_REGION_462004", trigger_count = 0 },
		{ config_id = 1462005, name = "PLATFORM_REACH_POINT_462005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_462005", action = "action_EVENT_PLATFORM_REACH_POINT_462005", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 462006, 462007, 462008, 462009 },
		gadgets = { },
		regions = { 462011 },
		triggers = { "ENTER_REGION_462011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 462010 },
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
function condition_EVENT_ENTER_REGION_462011(context, evt)
	if evt.param1 ~= 462011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_462011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 462010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end