-- 基础信息
local base_info = {
	group_id = 133308481
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
	{ config_id = 481001, gadget_id = 70330468, pos = { x = -1442.517, y = 43.888, z = 4732.277 }, rot = { x = 0.000, y = 10.001, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1481002, name = "VARIABLE_CHANGE_481002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_481002", action = "action_EVENT_VARIABLE_CHANGE_481002", trigger_count = 0 },
	{ config_id = 1481003, name = "TIME_AXIS_PASS_481003", event = EventType.EVENT_TIME_AXIS_PASS, source = "finish", condition = "condition_EVENT_TIME_AXIS_PASS_481003", action = "action_EVENT_TIME_AXIS_PASS_481003", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1481005, name = "GROUP_LOAD_481005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_481005", action = "action_EVENT_GROUP_LOAD_481005", trigger_count = 0 }
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
		gadgets = { 481001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_481002", "TIME_AXIS_PASS_481003", "GROUP_LOAD_481005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_481002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_481002(context, evt)
	-- 创建标识为"finish"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "finish", {1}, false)
	
	
	-- 通知场景上的所有玩家播放名字为105 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 105, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_481003(context, evt)
	if "finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_481003(context, evt)
	-- 将configid为 481001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 481001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"finish"的时间轴
	ScriptLib.EndTimeAxis(context, "finish")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_481005(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_481005(context, evt)
	-- 将configid为 481001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 481001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end