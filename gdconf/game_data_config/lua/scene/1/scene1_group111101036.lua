-- 基础信息
local base_info = {
	group_id = 111101036
}

-- Trigger变量
local defs = {
	elevatorOptionID = 24,
	gadget_elevatorID = 36001,
	finalMovePoints = {1,2,3,4,5}
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
	{ config_id = 36001, gadget_id = 70330316, pos = { x = 2985.933, y = 263.500, z = -1365.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036003, name = "VARIABLE_CHANGE_36003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36003", action = "action_EVENT_VARIABLE_CHANGE_36003", trigger_count = 0 },
	{ config_id = 1036004, name = "VARIABLE_CHANGE_36004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36004", action = "action_EVENT_VARIABLE_CHANGE_36004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "pointarray_ID", value = 110100050, no_refresh = false },
	{ config_id = 2, name = "CurMovePoint", value = 1, no_refresh = false },
	{ config_id = 3, name = "MovePoint1", value = 1, no_refresh = false },
	{ config_id = 4, name = "MovePoint2", value = 2, no_refresh = false },
	{ config_id = 5, name = "IsBlockMoveMode", value = 0, no_refresh = false },
	{ config_id = 6, name = "IsFinalMove", value = 0, no_refresh = false },
	{ config_id = 7, name = "moveState", value = 0, no_refresh = false }
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
		gadgets = { 36001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_36003", "VARIABLE_CHANGE_36004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	if evt.source_name ~= "moveState"then return false end
	
	-- 判断变量"moveState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "moveState", 111101036) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36003(context, evt)
	SetElevator(context,110100058,1)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	if evt.source_name ~= "moveState"then return false end
	
	-- 判断变量"moveState"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "moveState", 111101036) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36004(context, evt)
	SetElevator_finalMove(context,110100059,1)
	return 0
end

require "V3_1/DeshretElevator"