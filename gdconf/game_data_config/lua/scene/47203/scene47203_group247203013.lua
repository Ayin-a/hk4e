-- 基础信息
local base_info = {
	group_id = 247203013
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
	{ config_id = 13003, gadget_id = 70900203, pos = { x = 209.187, y = 160.680, z = 441.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13004, gadget_id = 70900201, pos = { x = 324.831, y = 158.632, z = 331.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 机关直道
	{ config_id = 13001, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 10.000 }, pos = { x = 181.014, y = 153.471, z = 292.230 } },
	-- 断裂高坡
	{ config_id = 13002, shape = RegionShape.CUBIC, size = { x = 25.000, y = 80.000, z = 40.000 }, pos = { x = 313.671, y = 168.105, z = 289.494 } },
	-- 机关直道房门
	{ config_id = 13005, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 10.000 }, pos = { x = 209.187, y = 164.804, z = 441.955 } },
	-- 断裂高坡房门
	{ config_id = 13006, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 10.000 }, pos = { x = 324.831, y = 165.358, z = 331.116 } }
}

-- 触发器
triggers = {
	-- 机关直道
	{ config_id = 1013001, name = "ENTER_REGION_13001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13001", action = "action_EVENT_ENTER_REGION_13001", trigger_count = 0 },
	-- 断裂高坡
	{ config_id = 1013002, name = "ENTER_REGION_13002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13002", action = "action_EVENT_ENTER_REGION_13002", trigger_count = 0 },
	-- 机关直道房门
	{ config_id = 1013005, name = "ENTER_REGION_13005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13005", action = "action_EVENT_ENTER_REGION_13005", trigger_count = 0 },
	-- 断裂高坡房门
	{ config_id = 1013006, name = "ENTER_REGION_13006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13006", action = "action_EVENT_ENTER_REGION_13006", trigger_count = 0 }
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
		regions = { 13001, 13002 },
		triggers = { "ENTER_REGION_13001", "ENTER_REGION_13002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 13003 },
		regions = { 13001, 13002, 13005 },
		triggers = { "ENTER_REGION_13001", "ENTER_REGION_13002", "ENTER_REGION_13005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 13004 },
		regions = { 13001, 13002, 13006 },
		triggers = { "ENTER_REGION_13001", "ENTER_REGION_13002", "ENTER_REGION_13006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_13001(context, evt)
	if evt.param1 ~= 13001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247203013, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13002(context, evt)
	if evt.param1 ~= 13002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247203013, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13005(context, evt)
	if evt.param1 ~= 13005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247203013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13006(context, evt)
	if evt.param1 ~= 13006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247203013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end