-- 基础信息
local base_info = {
	group_id = 133307086
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
	{ config_id = 86001, gadget_id = 70330261, pos = { x = -1945.290, y = 160.070, z = 5936.050 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086002, name = "VARIABLE_CHANGE_86002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_86002", action = "action_EVENT_VARIABLE_CHANGE_86002" },
	{ config_id = 1086003, name = "TIME_AXIS_PASS_86003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_86003", action = "action_EVENT_TIME_AXIS_PASS_86003" },
	{ config_id = 1086004, name = "GROUP_LOAD_86004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_86004", action = "action_EVENT_GROUP_LOAD_86004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = false }
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
		gadgets = { 86001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_86002", "TIME_AXIS_PASS_86003", "GROUP_LOAD_86004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_86002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_86002(context, evt)
	-- 创建标识为"default"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "default", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_86003(context, evt)
	if "default" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_86003(context, evt)
	-- 将configid为 86001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_86004(context, evt)
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_86004(context, evt)
	-- 将configid为 86001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end