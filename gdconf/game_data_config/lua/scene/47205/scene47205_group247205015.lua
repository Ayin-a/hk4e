-- 基础信息
local base_info = {
	group_id = 247205015
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
	{ config_id = 15007, gadget_id = 70900201, pos = { x = 324.360, y = 158.404, z = 402.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15008, gadget_id = 70900203, pos = { x = 210.883, y = 160.929, z = 292.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 断裂桥道
	{ config_id = 15003, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 20.000 }, pos = { x = 324.263, y = 162.114, z = 442.007 } },
	-- 机关直道
	{ config_id = 15004, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 10.000 }, pos = { x = 181.012, y = 150.872, z = 442.007 } },
	-- 断裂桥道房门
	{ config_id = 15005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 10.000 }, pos = { x = 324.360, y = 161.101, z = 402.624 } },
	-- 机关直道房门
	{ config_id = 15006, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 10.000 }, pos = { x = 210.883, y = 163.117, z = 292.255 } }
}

-- 触发器
triggers = {
	-- 断裂桥道
	{ config_id = 1015003, name = "ENTER_REGION_15003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15003", action = "action_EVENT_ENTER_REGION_15003", trigger_count = 0 },
	-- 机关直道
	{ config_id = 1015004, name = "ENTER_REGION_15004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15004", action = "action_EVENT_ENTER_REGION_15004", trigger_count = 0 },
	-- 断裂桥道房门
	{ config_id = 1015005, name = "ENTER_REGION_15005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15005", action = "action_EVENT_ENTER_REGION_15005", trigger_count = 0 },
	-- 机关直道房门
	{ config_id = 1015006, name = "ENTER_REGION_15006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15006", action = "action_EVENT_ENTER_REGION_15006", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 15003, 15004 },
		triggers = { "ENTER_REGION_15003", "ENTER_REGION_15004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 15007 },
		regions = { 15003, 15004, 15005 },
		triggers = { "ENTER_REGION_15003", "ENTER_REGION_15004", "ENTER_REGION_15005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 15008 },
		regions = { 15003, 15004, 15006 },
		triggers = { "ENTER_REGION_15003", "ENTER_REGION_15004", "ENTER_REGION_15006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15003(context, evt)
	if evt.param1 ~= 15003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247205015, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15004(context, evt)
	if evt.param1 ~= 15004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247205015, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15005(context, evt)
	if evt.param1 ~= 15005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247205015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15006(context, evt)
	if evt.param1 ~= 15006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247205015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end