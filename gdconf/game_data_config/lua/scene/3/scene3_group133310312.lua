-- 基础信息
local base_info = {
	group_id = 133310312
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
	{ config_id = 312001, gadget_id = 70330261, pos = { x = -2367.319, y = 196.070, z = 4537.861 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延时激活特效
	{ config_id = 1312002, name = "VARIABLE_CHANGE_312002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_312002", action = "action_EVENT_VARIABLE_CHANGE_312002" },
	-- 到时间激活特效
	{ config_id = 1312003, name = "TIME_AXIS_PASS_312003", event = EventType.EVENT_TIME_AXIS_PASS, source = "delay", condition = "condition_EVENT_TIME_AXIS_PASS_312003", action = "action_EVENT_TIME_AXIS_PASS_312003", trigger_count = 0 },
	-- 保底激活特效
	{ config_id = 1312004, name = "GROUP_LOAD_312004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_312004", action = "action_EVENT_GROUP_LOAD_312004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 312001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_312002", "TIME_AXIS_PASS_312003", "GROUP_LOAD_312004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_312002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_312002(context, evt)
	-- 创建标识为"delay"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_312003(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_312003(context, evt)
	-- 将configid为 312001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_312004(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_312004(context, evt)
	-- 将configid为 312001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end