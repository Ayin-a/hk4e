-- 基础信息
local base_info = {
	group_id = 133309245
}

-- Trigger变量
local defs = {
	camera_x = -3040.89,
	camera_y = 269.08,
	camera_z = 4847.52,
	target_x = -3024.84,
	target_y = 268.74,
	target_z = 4872.4,
	gadget_door = 245002,
	gadget_switch = 245001,
	group_id = 133309245
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
	{ config_id = 245001, gadget_id = 70330459, pos = { x = -2169.554, y = 67.241, z = 5958.692 }, rot = { x = 270.000, y = 32.259, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { 1 } }, area_id = 27 },
	{ config_id = 245002, gadget_id = 70330416, pos = { x = -2172.757, y = 65.202, z = 5962.965 }, rot = { x = 0.000, y = 210.857, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	{ config_id = 245006, gadget_id = 70330333, pos = { x = -2175.195, y = 64.577, z = 5969.061 }, rot = { x = 9.466, y = 352.515, z = 36.243 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1245003, name = "TIME_AXIS_PASS_245003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_245003", action = "action_EVENT_TIME_AXIS_PASS_245003", trigger_count = 0 },
	-- 交互开门
	{ config_id = 1245004, name = "SELECT_OPTION_245004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_245004", action = "action_EVENT_SELECT_OPTION_245004", trigger_count = 0 },
	-- 保底开门
	{ config_id = 1245005, name = "GROUP_LOAD_245005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_245005", action = "action_EVENT_GROUP_LOAD_245005", trigger_count = 0 }
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
		gadgets = { 245001, 245002, 245006 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_245003", "SELECT_OPTION_245004", "GROUP_LOAD_245005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_245003(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_245003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_245004(context, evt)
	-- 判断是gadgetid 245001 option_id 1
	if 245001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_245004(context, evt)
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
function condition_EVENT_GROUP_LOAD_245005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309245, 245001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_245005(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133309245 ；指定config：245001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309245, 245001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end