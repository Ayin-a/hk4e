-- 基础信息
local base_info = {
	group_id = 144001119
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
}

-- 区域
regions = {
	{ config_id = 119001, shape = RegionShape.SPHERE, radius = 168, pos = { x = 743.487, y = 120.493, z = 259.011 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1119001, name = "ENTER_REGION_119001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119001", action = "action_EVENT_ENTER_REGION_119001" },
	{ config_id = 1119002, name = "GROUP_LOAD_119002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_119002", action = "action_EVENT_GROUP_LOAD_119002", trigger_count = 0 },
	{ config_id = 1119003, name = "GROUP_LOAD_119003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_119003", action = "action_EVENT_GROUP_LOAD_119003", trigger_count = 0 },
	{ config_id = 1119004, name = "GROUP_LOAD_119004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_119004", action = "action_EVENT_GROUP_LOAD_119004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "samanweather", value = 1, no_refresh = false }
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
		regions = { 119001 },
		triggers = { "ENTER_REGION_119001", "GROUP_LOAD_119002", "GROUP_LOAD_119003", "GROUP_LOAD_119004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_119001(context, evt)
	if evt.param1 ~= 119001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_119001(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_119002(context, evt)
	-- 判断变量"samandie"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "samandie", 144001002) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_119002(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_119003(context, evt)
	-- 判断变量"samandie"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "samandie", 144001002) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_119003(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_119004(context, evt)
	-- 判断变量"samandie"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "samandie", 144001002) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_119004(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end