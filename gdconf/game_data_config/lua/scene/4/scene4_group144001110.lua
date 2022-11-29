-- 基础信息
local base_info = {
	group_id = 144001110
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
	{ config_id = 110001, shape = RegionShape.SPHERE, radius = 168, pos = { x = 743.487, y = 120.493, z = 259.011 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1110001, name = "ENTER_REGION_110001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110001", action = "action_EVENT_ENTER_REGION_110001" },
	{ config_id = 1110002, name = "GROUP_LOAD_110002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_110002", action = "action_EVENT_GROUP_LOAD_110002", trigger_count = 0 },
	{ config_id = 1110003, name = "GROUP_LOAD_110003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_110003", action = "action_EVENT_GROUP_LOAD_110003", trigger_count = 0 },
	{ config_id = 1110004, name = "GROUP_LOAD_110004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_110004", action = "action_EVENT_GROUP_LOAD_110004", trigger_count = 0 }
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
		regions = { },
		triggers = { "GROUP_LOAD_110002", "GROUP_LOAD_110003", "GROUP_LOAD_110004" },
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
function condition_EVENT_ENTER_REGION_110001(context, evt)
	if evt.param1 ~= 110001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_110001(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_110002(context, evt)
	-- 判断变量"samandie"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "samandie", 144001002) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_110002(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_110003(context, evt)
	-- 判断变量"samandie"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "samandie", 144001002) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_110003(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_110004(context, evt)
	-- 判断变量"samandie"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "samandie", 144001002) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_110004(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 1)
	return 0
end