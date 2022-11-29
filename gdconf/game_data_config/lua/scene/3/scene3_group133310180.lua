-- 基础信息
local base_info = {
	group_id = 133310180
}

-- Trigger变量
local defs = {
	gadget_door = 180002,
	gadget_switch = 180001,
	group_id = 133310180
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
	{ config_id = 180001, gadget_id = 70330341, pos = { x = -2428.648, y = 151.706, z = 4513.089 }, rot = { x = 270.000, y = 15.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { 1 } }, area_id = 26 },
	{ config_id = 180002, gadget_id = 70330416, pos = { x = -2433.526, y = 149.748, z = 4509.330 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1180003, name = "TIME_AXIS_PASS_180003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_180003", action = "action_EVENT_TIME_AXIS_PASS_180003", trigger_count = 0 },
	-- 交互开门
	{ config_id = 1180004, name = "SELECT_OPTION_180004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_180004", action = "action_EVENT_SELECT_OPTION_180004", trigger_count = 0 },
	-- 保底开门
	{ config_id = 1180005, name = "GROUP_LOAD_180005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_180005", action = "action_EVENT_GROUP_LOAD_180005", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 180006, pos = { x = -2400.739, y = 89.457, z = 5095.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
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
		gadgets = { 180001, 180002 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_180003", "SELECT_OPTION_180004", "GROUP_LOAD_180005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_180003(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_180003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_180004(context, evt)
	-- 判断是gadgetid 180001 option_id 1
	if 180001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_180004(context, evt)
	-- 创建标识为"open_door"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "open_door", {1}, false)
	
	-- 将configid为 defs.gadget_switch 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： defs.group_id ；指定config：defs.gadget_switch；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_switch, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_180005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310180, 180001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_180005(context, evt)
	-- 将configid为 180002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133310180 ；指定config：180001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310180, 180001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end