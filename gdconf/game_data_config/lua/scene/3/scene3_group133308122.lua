-- 基础信息
local base_info = {
	group_id = 133308122
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
	{ config_id = 122001, gadget_id = 70330468, pos = { x = -1302.484, y = 81.490, z = 4526.717 }, rot = { x = 0.000, y = 100.001, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122002, name = "VARIABLE_CHANGE_122002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122002", action = "action_EVENT_VARIABLE_CHANGE_122002", trigger_count = 0 },
	{ config_id = 1122003, name = "TIME_AXIS_PASS_122003", event = EventType.EVENT_TIME_AXIS_PASS, source = "finish", condition = "condition_EVENT_TIME_AXIS_PASS_122003", action = "action_EVENT_TIME_AXIS_PASS_122003", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1122004, name = "GROUP_LOAD_122004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_122004", action = "action_EVENT_GROUP_LOAD_122004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 122001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_122002", "TIME_AXIS_PASS_122003", "GROUP_LOAD_122004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_122002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122002(context, evt)
	-- 创建标识为"finish"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "finish", {1}, false)
	
	
	-- 通知场景上的所有玩家播放名字为106 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 106, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122003(context, evt)
	if "finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122003(context, evt)
	-- 将configid为 122001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"finish"的时间轴
	ScriptLib.EndTimeAxis(context, "finish")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_122004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_122004(context, evt)
	-- 将configid为 122001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end