-- 基础信息
local base_info = {
	group_id = 133310135
}

-- Trigger变量
local defs = {
	gadget_door = 135002,
	gadget_switch = 135001,
	group_id = 133310135,
	point_camera = 135006,
	gadget_lookEntity = 135002,
	look_duration = 4,
	pos_x = -2992.88,
	pos_y = 200.72,
	pos_z = 5471.07,
	pos_follow_x = -2992.364,
	pos_follow_y = 197.9206,
	pos_follow_z = 5458.369
}

-- DEFS_MISCS
local pos = {x=pos_x, y=pos_y, z=pos_z}
local pos_follow = {x=pos_follow_x, y=pos_follow_y, z=pos_follow_z }

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
	[135001] = { config_id = 135001, gadget_id = 70330341, pos = { x = -3014.172, y = 275.587, z = 4767.776 }, rot = { x = 90.000, y = 330.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { 1 } }, area_id = 28 },
	[135002] = { config_id = 135002, gadget_id = 70330416, pos = { x = -3009.140, y = 272.609, z = 4769.470 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1135003, name = "TIME_AXIS_PASS_135003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_135003", action = "action_EVENT_TIME_AXIS_PASS_135003", trigger_count = 0 },
	-- 交互开门
	{ config_id = 1135004, name = "SELECT_OPTION_135004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135004", action = "action_EVENT_SELECT_OPTION_135004", trigger_count = 0 },
	-- 保底开门
	{ config_id = 1135005, name = "GROUP_LOAD_135005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_135005", action = "action_EVENT_GROUP_LOAD_135005", trigger_count = 0 }
}

-- 点位
points = {
	[135006] = { config_id = 135006, pos = { x = -2977.406, y = 206.720, z = 5355.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1135007, name = "GADGET_STATE_CHANGE_135007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_135007", action = "action_EVENT_GADGET_STATE_CHANGE_135007" }
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
		gadgets = { 135001, 135002 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_135003", "SELECT_OPTION_135004", "GROUP_LOAD_135005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_135003(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_135003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135004(context, evt)
	-- 判断是gadgetid 135001 option_id 1
	if 135001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_135004(context, evt)
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
function condition_EVENT_GROUP_LOAD_135005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310135, 135001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_135005(context, evt)
	-- 将configid为 135002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133310135 ；指定config：135001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310135, 135001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end