-- 基础信息
local base_info = {
	group_id = 220113001
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
	-- 车车
	{ config_id = 1001, gadget_id = 70211011, pos = { x = -50.098, y = -10.818, z = 52.914 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	-- 车车
	{ config_id = 1002, gadget_id = 70211011, pos = { x = 0.490, y = -8.393, z = 56.584 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	-- 1
	{ config_id = 1003, gadget_id = 70900201, pos = { x = -30.439, y = 3.381, z = 70.720 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 1004, gadget_id = 70900201, pos = { x = -35.042, y = -8.705, z = 67.016 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	-- 3
	{ config_id = 1005, gadget_id = 70900201, pos = { x = -19.452, y = 12.625, z = 52.217 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 1
	{ config_id = 1006, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 10.000 }, pos = { x = -47.497, y = 5.418, z = 52.345 } },
	-- 1
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 5.000 }, pos = { x = -33.216, y = -5.909, z = 42.530 } },
	-- 1
	{ config_id = 1008, shape = RegionShape.CUBIC, size = { x = 20.000, y = 5.000, z = 10.000 }, pos = { x = -14.049, y = 11.246, z = 52.534 } },
	{ config_id = 1009, shape = RegionShape.SPHERE, radius = 3, pos = { x = -30.340, y = 1.563, z = 70.714 } },
	{ config_id = 1010, shape = RegionShape.SPHERE, radius = 3, pos = { x = -35.027, y = -10.455, z = 67.321 } },
	{ config_id = 1011, shape = RegionShape.CUBIC, size = { x = 8.000, y = 7.000, z = 8.000 }, pos = { x = -18.614, y = 12.978, z = 52.117 } }
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1001006, name = "ENTER_REGION_1006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1006", action = "action_EVENT_ENTER_REGION_1006" },
	-- 1
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" },
	-- 1
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1008", action = "action_EVENT_ENTER_REGION_1008" },
	{ config_id = 1001009, name = "ENTER_REGION_1009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1009", action = "action_EVENT_ENTER_REGION_1009" },
	{ config_id = 1001010, name = "ENTER_REGION_1010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1010", action = "action_EVENT_ENTER_REGION_1010" },
	{ config_id = 1001011, name = "ENTER_REGION_1011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1011", action = "action_EVENT_ENTER_REGION_1011" }
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
		gadgets = { 1001, 1002 },
		regions = { 1006, 1007, 1008 },
		triggers = { "ENTER_REGION_1006", "ENTER_REGION_1007", "ENTER_REGION_1008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1003 },
		regions = { 1009 },
		triggers = { "ENTER_REGION_1009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1004 },
		regions = { 1010 },
		triggers = { "ENTER_REGION_1010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1005 },
		regions = { 1011 },
		triggers = { "ENTER_REGION_1011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1006(context, evt)
	if evt.param1 ~= 1006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220113001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220113001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1008(context, evt)
	if evt.param1 ~= 1008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1008(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220113001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1009(context, evt)
	if evt.param1 ~= 1009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1010(context, evt)
	if evt.param1 ~= 1010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1011(context, evt)
	if evt.param1 ~= 1011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end