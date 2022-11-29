-- 基础信息
local base_info = {
	group_id = 133310179
}

-- Trigger变量
local defs = {
	gadget_door = 179002,
	gadget_switch = 179001,
	group_id = 133310179,
	point_camera = 179006,
	gadget_lookEntity = 179002,
	look_duration = 4
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
	[179001] = { config_id = 179001, gadget_id = 70330341, pos = { x = -2415.773, y = 154.501, z = 4546.007 }, rot = { x = 0.000, y = 105.000, z = 90.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { 1 } }, area_id = 26 },
	[179002] = { config_id = 179002, gadget_id = 70330416, pos = { x = -2410.809, y = 152.837, z = 4549.491 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1179003, name = "TIME_AXIS_PASS_179003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_179003", action = "action_EVENT_TIME_AXIS_PASS_179003", trigger_count = 0 },
	-- 交互开门
	{ config_id = 1179004, name = "SELECT_OPTION_179004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_179004", action = "action_EVENT_SELECT_OPTION_179004", trigger_count = 0 },
	-- 保底开门
	{ config_id = 1179005, name = "GROUP_LOAD_179005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_179005", action = "action_EVENT_GROUP_LOAD_179005", trigger_count = 0 }
}

-- 点位
points = {
	[179006] = { config_id = 179006, pos = { x = -2429.183, y = 159.236, z = 4555.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 179007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2410.809, y = 152.837, z = 4549.491 }, area_id = 26 },
		{ config_id = 179008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2410.809, y = 152.837, z = 4549.491 }, area_id = 26 }
	},
	triggers = {
		{ config_id = 1179007, name = "ENTER_REGION_179007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179007", action = "action_EVENT_ENTER_REGION_179007", trigger_count = 0 },
		{ config_id = 1179008, name = "LEAVE_REGION_179008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_179008", action = "action_EVENT_LEAVE_REGION_179008", trigger_count = 0 },
		{ config_id = 1179009, name = "SELECT_OPTION_179009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_179009", action = "action_EVENT_SELECT_OPTION_179009" }
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
		gadgets = { 179001, 179002 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_179003", "SELECT_OPTION_179004", "GROUP_LOAD_179005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_179003(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_179003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_179004(context, evt)
	-- 判断是gadgetid 179001 option_id 1
	if 179001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_179004(context, evt)
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
function condition_EVENT_GROUP_LOAD_179005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310179, 179001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_179005(context, evt)
	-- 将configid为 179002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133310179 ；指定config：179001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310179, 179001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end