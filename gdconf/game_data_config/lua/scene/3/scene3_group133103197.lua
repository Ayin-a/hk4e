-- 基础信息
local base_info = {
	group_id = 133103197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197002, gadget_id = 70310013, pos = { x = 845.374, y = 392.403, z = 1453.414 }, rot = { x = 0.000, y = 323.440, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 197003, gadget_id = 70310013, pos = { x = 850.320, y = 394.403, z = 1452.659 }, rot = { x = 0.000, y = 312.946, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 197004, gadget_id = 70310013, pos = { x = 855.379, y = 396.403, z = 1451.360 }, rot = { x = 0.000, y = 150.697, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 197007, gadget_id = 70310013, pos = { x = 840.300, y = 390.400, z = 1452.097 }, rot = { x = 0.000, y = 249.231, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 197001, shape = RegionShape.SPHERE, radius = 2, pos = { x = 840.430, y = 390.489, z = 1452.666 }, area_id = 6 },
	{ config_id = 197005, shape = RegionShape.SPHERE, radius = 4.4, pos = { x = 856.985, y = 399.402, z = 1444.069 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1197001, name = "ENTER_REGION_197001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_197001", action = "action_EVENT_ENTER_REGION_197001", trigger_count = 0 },
	{ config_id = 1197005, name = "ENTER_REGION_197005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_197005", action = "action_EVENT_ENTER_REGION_197005", trigger_count = 0 }
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
		gadgets = { 197007 },
		regions = { 197001, 197005 },
		triggers = { "ENTER_REGION_197001", "ENTER_REGION_197005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 197002, 197003, 197004 },
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
function condition_EVENT_ENTER_REGION_197001(context, evt)
	if evt.param1 ~= 197001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_197001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103197, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_197005(context, evt)
	if evt.param1 ~= 197005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_197005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103197, 2)
	
	return 0
end