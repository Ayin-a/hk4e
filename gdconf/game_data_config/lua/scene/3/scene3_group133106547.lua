-- 基础信息
local base_info = {
	group_id = 133106547
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 547003, monster_id = 26040102, pos = { x = -728.630, y = 104.729, z = 1701.005 }, rot = { x = 0.000, y = 252.161, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", isOneoff = true, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 547001, gadget_id = 70290395, pos = { x = -734.234, y = 100.693, z = 1693.965 }, rot = { x = 3.879, y = 17.965, z = 343.779 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 547002, gadget_id = 70290395, pos = { x = -724.521, y = 100.033, z = 1701.486 }, rot = { x = 7.559, y = 192.630, z = 343.639 }, level = 36, isOneoff = true, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 547004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -732.942, y = 106.864, z = 1695.964 }, area_id = 19 },
	{ config_id = 547005, shape = RegionShape.SPHERE, radius = 15, pos = { x = -732.942, y = 106.864, z = 1695.964 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1547004, name = "ENTER_REGION_547004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_547004", action = "action_EVENT_ENTER_REGION_547004" },
	{ config_id = 1547005, name = "ENTER_REGION_547005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_547005", action = "action_EVENT_ENTER_REGION_547005" },
	{ config_id = 1547006, name = "ANY_GADGET_DIE_547006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_547006", action = "action_EVENT_ANY_GADGET_DIE_547006" },
	{ config_id = 1547007, name = "ANY_GADGET_DIE_547007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_547007", action = "action_EVENT_ANY_GADGET_DIE_547007" }
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
		gadgets = { 547001, 547002 },
		regions = { 547004, 547005 },
		triggers = { "ENTER_REGION_547004", "ENTER_REGION_547005", "ANY_GADGET_DIE_547006", "ANY_GADGET_DIE_547007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 547003 },
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
function condition_EVENT_ENTER_REGION_547004(context, evt)
	if evt.param1 ~= 547004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_547004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 547001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_547005(context, evt)
	if evt.param1 ~= 547005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_547005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 547002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_547006(context, evt)
	if 547001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_547006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106547, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_547007(context, evt)
	if 547002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_547007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106547, 2)
	
	return 0
end