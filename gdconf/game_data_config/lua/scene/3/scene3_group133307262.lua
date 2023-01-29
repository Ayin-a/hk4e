-- 基础信息
local base_info = {
	group_id = 133307262
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
	{ config_id = 262002, gadget_id = 70211021, pos = { x = -1358.883, y = -31.768, z = 5581.819 }, rot = { x = 0.000, y = 284.805, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262001, name = "VARIABLE_CHANGE_262001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_262001", action = "action_EVENT_VARIABLE_CHANGE_262001" },
	{ config_id = 1262003, name = "GROUP_LOAD_262003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_262003", action = "action_EVENT_GROUP_LOAD_262003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "fin_2", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_262001", "GROUP_LOAD_262003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_262001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fin_1"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_1") ~= 1 then
			return false
	end
	
	-- 判断变量"fin_2"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_262001(context, evt)
	ScriptLib.CreateGadget(context, {config_id=262002})
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_262003(context, evt)
	-- 判断变量"fin_1"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_1") ~= 1 then
			return false
	end
	
	-- 判断变量"fin_2"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_262003(context, evt)
	ScriptLib.CreateGadget(context, {config_id=262002})
	
	return 0
end