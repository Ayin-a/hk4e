-- 基础信息
local base_info = {
	group_id = 220138040
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
	{ config_id = 40001, gadget_id = 70690011, pos = { x = -1.628, y = 18.969, z = 60.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40002, gadget_id = 70360002, pos = { x = 29.012, y = 34.084, z = 60.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 40003, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 30.000 }, pos = { x = 2.760, y = 24.012, z = 59.124 } },
	{ config_id = 40004, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 30.000 }, pos = { x = -16.372, y = 49.466, z = 60.755 } },
	{ config_id = 40005, shape = RegionShape.CUBIC, size = { x = 30.000, y = 30.000, z = 10.000 }, pos = { x = 1.881, y = 49.466, z = 41.664 } },
	{ config_id = 40006, shape = RegionShape.CUBIC, size = { x = 30.000, y = 30.000, z = 10.000 }, pos = { x = 2.916, y = 49.466, z = 81.018 } }
}

-- 触发器
triggers = {
	{ config_id = 1040003, name = "ENTER_REGION_40003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40003", action = "action_EVENT_ENTER_REGION_40003", trigger_count = 0 },
	{ config_id = 1040004, name = "ENTER_REGION_40004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40004", action = "action_EVENT_ENTER_REGION_40004", trigger_count = 0 },
	{ config_id = 1040005, name = "ENTER_REGION_40005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40005", action = "action_EVENT_ENTER_REGION_40005", trigger_count = 0 },
	{ config_id = 1040006, name = "ENTER_REGION_40006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40006", action = "action_EVENT_ENTER_REGION_40006", trigger_count = 0 }
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
		gadgets = { 40002 },
		regions = { 40003, 40004, 40005, 40006 },
		triggers = { "ENTER_REGION_40003", "ENTER_REGION_40004", "ENTER_REGION_40005", "ENTER_REGION_40006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 40001 },
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
function condition_EVENT_ENTER_REGION_40003(context, evt)
	if evt.param1 ~= 40003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220138040, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40004(context, evt)
	if evt.param1 ~= 40004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220138040, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40005(context, evt)
	if evt.param1 ~= 40005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220138040, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40006(context, evt)
	if evt.param1 ~= 40006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220138040, 2)
	
	return 0
end