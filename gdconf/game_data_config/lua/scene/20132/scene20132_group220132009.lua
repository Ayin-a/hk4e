-- 基础信息
local base_info = {
	group_id = 220132009
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
	{ config_id = 9001, gadget_id = 70360001, pos = { x = 447.916, y = 22.037, z = 568.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70900201, pos = { x = 430.368, y = 25.282, z = 599.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9004, gadget_id = 70900201, pos = { x = 379.428, y = 77.470, z = 503.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9005, gadget_id = 70900201, pos = { x = 409.728, y = 83.789, z = 488.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9007, gadget_id = 70900201, pos = { x = 426.893, y = 81.082, z = 483.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9003, shape = RegionShape.SPHERE, radius = 15, pos = { x = 379.325, y = 83.910, z = 503.612 } },
	{ config_id = 9006, shape = RegionShape.SPHERE, radius = 6, pos = { x = 410.919, y = 83.789, z = 487.020 } },
	{ config_id = 9008, shape = RegionShape.CUBIC, size = { x = 6.000, y = 10.000, z = 10.000 }, pos = { x = 425.910, y = 83.052, z = 483.981 } },
	{ config_id = 9009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 480.492, y = 21.235, z = 484.191 } }
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "ENTER_REGION_9003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9003", action = "action_EVENT_ENTER_REGION_9003" },
	{ config_id = 1009006, name = "ENTER_REGION_9006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9006", action = "action_EVENT_ENTER_REGION_9006" },
	{ config_id = 1009008, name = "ENTER_REGION_9008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9008", action = "action_EVENT_ENTER_REGION_9008" },
	{ config_id = 1009009, name = "ENTER_REGION_9009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9009", action = "action_EVENT_ENTER_REGION_9009" }
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
		gadgets = { 9001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9002 },
		regions = { 9003 },
		triggers = { "ENTER_REGION_9003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 9005 },
		regions = { 9006, 9009 },
		triggers = { "ENTER_REGION_9006", "ENTER_REGION_9009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 9007 },
		regions = { 9008, 9009 },
		triggers = { "ENTER_REGION_9008", "ENTER_REGION_9009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9003(context, evt)
	if evt.param1 ~= 9003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9006(context, evt)
	if evt.param1 ~= 9006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9008(context, evt)
	if evt.param1 ~= 9008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9008(context, evt)
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "KeyCount", 220132011) ~= 3 then
	    if ScriptLib.GetGroupVariableValueByGroup(context, "KeyU", 220132011) ~= 1 then
	        ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 5 })
	    else
	        ScriptLib.RefreshGroup(context, { group_id = 220132010, suite = 2 })
	    end
	else
	    ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 2 })
	end
	
	ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 1 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9009(context, evt)
	if evt.param1 ~= 9009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9009(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "KeyHigh", 220132011) ~= 1 then
	    ScriptLib.RefreshGroup(context, { group_id = 220132010, suite = 2 })
	else
	    ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 2 })
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 1 }) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	    return -1
	end
	
	return 0
end