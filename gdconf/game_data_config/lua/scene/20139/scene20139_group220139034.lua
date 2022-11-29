-- 基础信息
local base_info = {
	group_id = 220139034
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
	{ config_id = 34001, gadget_id = 70690011, pos = { x = 128.431, y = 85.760, z = 28.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34002, gadget_id = 70360001, pos = { x = 133.160, y = 81.549, z = 23.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 34003, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 30.000 }, pos = { x = 125.257, y = 96.217, z = 24.378 } },
	{ config_id = 34004, shape = RegionShape.CUBIC, size = { x = 30.000, y = 30.000, z = 10.000 }, pos = { x = 123.839, y = 124.666, z = 0.601 } },
	{ config_id = 34005, shape = RegionShape.CUBIC, size = { x = 30.000, y = 30.000, z = 10.000 }, pos = { x = 123.839, y = 124.666, z = 44.411 } },
	{ config_id = 34006, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 40.000 }, pos = { x = 107.529, y = 124.666, z = 21.852 } },
	{ config_id = 34007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 40.000 }, pos = { x = 140.865, y = 124.666, z = 21.852 } }
}

-- 触发器
triggers = {
	{ config_id = 1034003, name = "ENTER_REGION_34003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34003", action = "action_EVENT_ENTER_REGION_34003", trigger_count = 0 },
	{ config_id = 1034004, name = "ENTER_REGION_34004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34004", action = "action_EVENT_ENTER_REGION_34004", trigger_count = 0 },
	{ config_id = 1034005, name = "ENTER_REGION_34005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34005", action = "action_EVENT_ENTER_REGION_34005", trigger_count = 0 },
	{ config_id = 1034006, name = "ENTER_REGION_34006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34006", action = "action_EVENT_ENTER_REGION_34006", trigger_count = 0 },
	{ config_id = 1034007, name = "ENTER_REGION_34007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34007", action = "action_EVENT_ENTER_REGION_34007", trigger_count = 0 }
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
		gadgets = { 34002 },
		regions = { 34003, 34004, 34005, 34006, 34007 },
		triggers = { "ENTER_REGION_34003", "ENTER_REGION_34004", "ENTER_REGION_34005", "ENTER_REGION_34006", "ENTER_REGION_34007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 34001 },
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
function condition_EVENT_ENTER_REGION_34003(context, evt)
	if evt.param1 ~= 34003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220139034, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_34004(context, evt)
	if evt.param1 ~= 34004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220139034, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_34005(context, evt)
	if evt.param1 ~= 34005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220139034, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_34006(context, evt)
	if evt.param1 ~= 34006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220139034, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_34007(context, evt)
	if evt.param1 ~= 34007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220139034, 2)
	
	return 0
end