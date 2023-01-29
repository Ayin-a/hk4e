-- 基础信息
local base_info = {
	group_id = 247207014
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
	{ config_id = 14003, gadget_id = 70900201, pos = { x = 278.601, y = 160.649, z = 442.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14006, gadget_id = 70900201, pos = { x = 273.319, y = 160.958, z = 292.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 断裂桥道
	{ config_id = 14001, shape = RegionShape.CUBIC, size = { x = 25.000, y = 20.000, z = 20.000 }, pos = { x = 324.553, y = 163.738, z = 440.865 } },
	-- 断裂高坡
	{ config_id = 14002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 301.824, y = 172.942, z = 287.098 } },
	-- 断裂桥道房门
	{ config_id = 14004, shape = RegionShape.CUBIC, size = { x = 15.000, y = 20.000, z = 25.000 }, pos = { x = 278.601, y = 164.712, z = 442.000 } },
	-- 断裂高坡房门
	{ config_id = 14005, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 15.000 }, pos = { x = 273.319, y = 165.061, z = 292.256 } }
}

-- 触发器
triggers = {
	-- 断裂桥道
	{ config_id = 1014001, name = "ENTER_REGION_14001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14001", action = "action_EVENT_ENTER_REGION_14001", trigger_count = 0 },
	-- 断裂高坡
	{ config_id = 1014002, name = "ENTER_REGION_14002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14002", action = "action_EVENT_ENTER_REGION_14002", trigger_count = 0, forbid_guest = false },
	-- 断裂桥道房门
	{ config_id = 1014004, name = "ENTER_REGION_14004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14004", action = "action_EVENT_ENTER_REGION_14004", trigger_count = 0 },
	-- 断裂高坡房门
	{ config_id = 1014005, name = "ENTER_REGION_14005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14005", action = "action_EVENT_ENTER_REGION_14005", trigger_count = 0 }
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
		regions = { 14001, 14002 },
		triggers = { "ENTER_REGION_14001", "ENTER_REGION_14002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 14003 },
		regions = { 14001, 14002, 14004 },
		triggers = { "ENTER_REGION_14001", "ENTER_REGION_14002", "ENTER_REGION_14004" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 14006 },
		regions = { 14001, 14002, 14005 },
		triggers = { "ENTER_REGION_14001", "ENTER_REGION_14002", "ENTER_REGION_14005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_14001(context, evt)
	if evt.param1 ~= 14001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247207014, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14002(context, evt)
	if evt.param1 ~= 14002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247207014, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14004(context, evt)
	if evt.param1 ~= 14004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247207014, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14005(context, evt)
	if evt.param1 ~= 14005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247207014, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end