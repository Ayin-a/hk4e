-- 基础信息
local base_info = {
	group_id = 133303608
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 608006, monster_id = 26090201, pos = { x = -1159.633, y = 266.590, z = 3296.394 }, rot = { x = 0.000, y = 263.015, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 608007, monster_id = 26090201, pos = { x = -1159.696, y = 266.618, z = 3294.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 608009, monster_id = 26120101, pos = { x = -1162.156, y = 265.778, z = 3302.072 }, rot = { x = 0.000, y = 295.208, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 608001, gadget_id = 70330218, pos = { x = -1166.198, y = 266.234, z = 3278.571 }, rot = { x = 0.000, y = 325.232, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 608002, gadget_id = 70330219, pos = { x = -1156.943, y = 266.551, z = 3295.297 }, rot = { x = 0.000, y = 271.672, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 608003, gadget_id = 70217020, pos = { x = -1167.438, y = 267.148, z = 3279.851 }, rot = { x = 345.719, y = 165.867, z = 340.226 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 608008, gadget_id = 70310198, pos = { x = -1163.608, y = 265.297, z = 3304.581 }, rot = { x = 0.000, y = 318.182, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 608011, gadget_id = 70210101, pos = { x = -1166.971, y = 264.169, z = 3315.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 608010, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1163.824, y = 265.918, z = 3304.632 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1608004, name = "ANY_GADGET_DIE_608004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_608004", action = "action_EVENT_ANY_GADGET_DIE_608004" },
	{ config_id = 1608005, name = "ANY_GADGET_DIE_608005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_608005", action = "action_EVENT_ANY_GADGET_DIE_608005" },
	{ config_id = 1608010, name = "ENTER_REGION_608010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_608010", action = "action_EVENT_ENTER_REGION_608010" }
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
	end_suite = 0,
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
		gadgets = { 608001, 608002, 608008, 608011 },
		regions = { 608010 },
		triggers = { "ANY_GADGET_DIE_608004", "ANY_GADGET_DIE_608005", "ENTER_REGION_608010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_608004(context, evt)
	if 608001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_608004(context, evt)
	-- 创建id为608003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 608003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_608005(context, evt)
	if 608002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_608005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 608006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 608007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_608010(context, evt)
	if evt.param1 ~= 608010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_608010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 608009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end