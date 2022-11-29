-- 基础信息
local base_info = {
	group_id = 166001567
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
	{ config_id = 567005, gadget_id = 70360001, pos = { x = 430.767, y = 654.616, z = 384.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 567001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 432.685, y = 654.361, z = 374.614 }, area_id = 300 },
	{ config_id = 567002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 400.871, y = 657.200, z = 438.437 }, area_id = 300 },
	{ config_id = 567003, shape = RegionShape.SPHERE, radius = 20, pos = { x = 384.034, y = 660.587, z = 442.650 }, area_id = 300 },
	{ config_id = 567004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 335.796, y = 679.663, z = 403.553 }, area_id = 300 },
	{ config_id = 567006, shape = RegionShape.SPHERE, radius = 20, pos = { x = 348.188, y = 671.945, z = 373.235 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1567001, name = "ENTER_REGION_567001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567001", action = "action_EVENT_ENTER_REGION_567001" },
	{ config_id = 1567002, name = "ENTER_REGION_567002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567002", action = "action_EVENT_ENTER_REGION_567002" },
	{ config_id = 1567003, name = "ENTER_REGION_567003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567003", action = "action_EVENT_ENTER_REGION_567003" },
	{ config_id = 1567004, name = "ENTER_REGION_567004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567004", action = "action_EVENT_ENTER_REGION_567004" },
	{ config_id = 1567006, name = "ENTER_REGION_567006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567006", action = "action_EVENT_ENTER_REGION_567006" }
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
		gadgets = { 567005 },
		regions = { 567001, 567002, 567003, 567004, 567006 },
		triggers = { "ENTER_REGION_567001", "ENTER_REGION_567002", "ENTER_REGION_567003", "ENTER_REGION_567004", "ENTER_REGION_567006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_567001(context, evt)
	if evt.param1 ~= 567001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567001(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567002(context, evt)
	if evt.param1 ~= 567002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567003(context, evt)
	if evt.param1 ~= 567003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567004(context, evt)
	if evt.param1 ~= 567004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567006(context, evt)
	if evt.param1 ~= 567006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end