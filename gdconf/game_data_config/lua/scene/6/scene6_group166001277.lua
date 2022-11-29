-- 基础信息
local base_info = {
	group_id = 166001277
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
	{ config_id = 277001, gadget_id = 70290219, pos = { x = 992.773, y = 837.607, z = 581.098 }, rot = { x = 36.505, y = 0.000, z = 15.807 }, level = 36, area_id = 300 },
	{ config_id = 277002, gadget_id = 70211022, pos = { x = 988.851, y = 839.000, z = 587.814 }, rot = { x = 0.000, y = 58.658, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 277004, gadget_id = 70690010, pos = { x = 992.459, y = 840.631, z = 590.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 277005, gadget_id = 70690010, pos = { x = 992.459, y = 886.126, z = 590.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 277006, gadget_id = 70690001, pos = { x = 992.495, y = 926.255, z = 590.731 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 277007, gadget_id = 70690001, pos = { x = 992.495, y = 936.479, z = 590.731 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 277008, gadget_id = 70690001, pos = { x = 992.495, y = 945.910, z = 590.731 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 277010, gadget_id = 70290219, pos = { x = 996.533, y = 838.798, z = 590.362 }, rot = { x = 1.041, y = 86.159, z = 359.412 }, level = 36, area_id = 300 },
	{ config_id = 277011, gadget_id = 70290219, pos = { x = 983.470, y = 838.409, z = 589.304 }, rot = { x = 358.900, y = 272.593, z = 0.468 }, level = 36, area_id = 300 },
	{ config_id = 277012, gadget_id = 70290219, pos = { x = 998.689, y = 838.092, z = 589.823 }, rot = { x = 16.843, y = 187.512, z = 341.029 }, level = 36, area_id = 300 },
	{ config_id = 277020, gadget_id = 70360001, pos = { x = 990.926, y = 839.128, z = 590.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1277009, name = "GADGET_CREATE_277009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_277009", action = "action_EVENT_GADGET_CREATE_277009" },
	{ config_id = 1277017, name = "TIME_AXIS_PASS_277017", event = EventType.EVENT_TIME_AXIS_PASS, source = "wind", condition = "condition_EVENT_TIME_AXIS_PASS_277017", action = "action_EVENT_TIME_AXIS_PASS_277017" },
	{ config_id = 1277018, name = "GADGET_STATE_CHANGE_277018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277018", action = "action_EVENT_GADGET_STATE_CHANGE_277018", trigger_count = 0 },
	{ config_id = 1277019, name = "TIME_AXIS_PASS_277019", event = EventType.EVENT_TIME_AXIS_PASS, source = "niubi", condition = "condition_EVENT_TIME_AXIS_PASS_277019", action = "action_EVENT_TIME_AXIS_PASS_277019", trigger_count = 0 },
	{ config_id = 1277021, name = "GADGET_STATE_CHANGE_277021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277021", action = "action_EVENT_GADGET_STATE_CHANGE_277021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1277003, name = "VARIABLE_CHANGE_277003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_277003", action = "action_EVENT_VARIABLE_CHANGE_277003" },
		{ config_id = 1277013, name = "GADGET_STATE_CHANGE_277013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277013", action = "action_EVENT_GADGET_STATE_CHANGE_277013", trigger_count = 0 },
		{ config_id = 1277014, name = "GADGET_STATE_CHANGE_277014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277014", action = "action_EVENT_GADGET_STATE_CHANGE_277014", trigger_count = 0 },
		{ config_id = 1277015, name = "GADGET_STATE_CHANGE_277015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277015", action = "action_EVENT_GADGET_STATE_CHANGE_277015", trigger_count = 0 },
		{ config_id = 1277016, name = "GADGET_STATE_CHANGE_277016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277016", action = "action_EVENT_GADGET_STATE_CHANGE_277016", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 277001, 277002, 277010, 277011, 277012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_277021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 277001, 277002, 277010, 277011, 277012, 277020 },
		regions = { },
		triggers = { "GADGET_CREATE_277009", "TIME_AXIS_PASS_277017", "GADGET_STATE_CHANGE_277018", "TIME_AXIS_PASS_277019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 277004, 277005, 277006, 277007, 277008 },
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
function condition_EVENT_GADGET_CREATE_277009(context, evt)
	if 277020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_277009(context, evt)
	-- 将configid为 277002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"wind"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wind", {15}, false)
	
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001277, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_277017(context, evt)
	if "wind" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_277017(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001277, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_277018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001277, 277010) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001277, 277012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001277, 3)
	
	-- 创建标识为"niubi"，时间节点为{11}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "niubi", {11}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_277019(context, evt)
	if "niubi" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_277019(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001277, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_277021(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001277, 277001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001277, 277010) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001277, 277011) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001277, 277012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277021(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001277, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end