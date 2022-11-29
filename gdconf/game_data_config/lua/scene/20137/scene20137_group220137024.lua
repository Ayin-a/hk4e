-- 基础信息
local base_info = {
	group_id = 220137024
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
	{ config_id = 24001, gadget_id = 70690011, pos = { x = 696.771, y = 49.430, z = -102.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24002, gadget_id = 70360002, pos = { x = 696.288, y = 42.589, z = -103.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 24003, shape = RegionShape.CUBIC, size = { x = 25.000, y = 20.000, z = 25.000 }, pos = { x = 695.749, y = 59.277, z = -104.806 } },
	{ config_id = 24004, shape = RegionShape.CUBIC, size = { x = 30.000, y = 30.000, z = 10.000 }, pos = { x = 695.749, y = 86.069, z = -91.851 } },
	{ config_id = 24005, shape = RegionShape.CUBIC, size = { x = 30.000, y = 30.000, z = 10.000 }, pos = { x = 695.749, y = 89.603, z = -115.964 } },
	{ config_id = 24006, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 30.000 }, pos = { x = 682.745, y = 87.617, z = -109.816 } },
	{ config_id = 24007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 30.000 }, pos = { x = 707.921, y = 87.617, z = -109.816 } }
}

-- 触发器
triggers = {
	{ config_id = 1024003, name = "ENTER_REGION_24003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24003", action = "action_EVENT_ENTER_REGION_24003", trigger_count = 0 },
	{ config_id = 1024004, name = "ENTER_REGION_24004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24004", action = "action_EVENT_ENTER_REGION_24004", trigger_count = 0 },
	{ config_id = 1024005, name = "ENTER_REGION_24005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24005", action = "action_EVENT_ENTER_REGION_24005", trigger_count = 0 },
	{ config_id = 1024006, name = "ENTER_REGION_24006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24006", action = "action_EVENT_ENTER_REGION_24006", trigger_count = 0 },
	{ config_id = 1024007, name = "ENTER_REGION_24007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24007", action = "action_EVENT_ENTER_REGION_24007", trigger_count = 0 }
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
		gadgets = { 24002 },
		regions = { 24003, 24004, 24005, 24006, 24007 },
		triggers = { "ENTER_REGION_24003", "ENTER_REGION_24004", "ENTER_REGION_24005", "ENTER_REGION_24006", "ENTER_REGION_24007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 24001 },
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
function condition_EVENT_ENTER_REGION_24003(context, evt)
	if evt.param1 ~= 24003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220137024, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24004(context, evt)
	if evt.param1 ~= 24004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220137024, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24005(context, evt)
	if evt.param1 ~= 24005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220137024, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24006(context, evt)
	if evt.param1 ~= 24006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220137024, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24007(context, evt)
	if evt.param1 ~= 24007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220137024, 2)
	
	return 0
end