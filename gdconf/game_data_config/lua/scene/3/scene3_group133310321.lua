-- 基础信息
local base_info = {
	group_id = 133310321
}

-- Trigger变量
local defs = {
	enter_region = 321014,
	leave_region = 321015,
	FindClue = 1,
	BeatMonster = 1,
	FindRock = 1,
	PuzzleProgress = 1,
	Total = 2
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
	{ config_id = 321001, gadget_id = 70330392, pos = { x = -2529.869, y = 161.153, z = 4953.495 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321002, gadget_id = 70330392, pos = { x = -2469.538, y = 161.153, z = 4964.979 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321004, gadget_id = 70330392, pos = { x = -2459.685, y = 161.153, z = 4975.303 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321005, gadget_id = 70800240, pos = { x = -2510.021, y = 162.972, z = 4984.625 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 321006, gadget_id = 70360001, pos = { x = -2551.157, y = 161.098, z = 4981.645 }, rot = { x = 0.000, y = 229.602, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 321007, gadget_id = 70220103, pos = { x = -2547.729, y = 163.094, z = 4920.059 }, rot = { x = 0.000, y = 229.602, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321008, gadget_id = 70800289, pos = { x = -2518.781, y = 161.280, z = 4923.404 }, rot = { x = 0.000, y = 229.602, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321009, gadget_id = 70330392, pos = { x = -2489.704, y = 161.153, z = 4964.563 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321010, gadget_id = 70310148, pos = { x = -2518.781, y = 161.280, z = 4923.404 }, rot = { x = 0.000, y = 229.602, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321011, gadget_id = 70330392, pos = { x = -2500.220, y = 161.153, z = 4984.548 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321012, gadget_id = 70330392, pos = { x = -2519.070, y = 161.280, z = 4923.402 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321016, gadget_id = 70330434, pos = { x = -2553.059, y = 130.160, z = 4929.231 }, rot = { x = 0.000, y = 229.602, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321018, gadget_id = 70330392, pos = { x = -2509.916, y = 161.153, z = 4964.103 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321019, gadget_id = 70330392, pos = { x = -2499.798, y = 161.153, z = 4964.351 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321020, gadget_id = 70800289, pos = { x = -2510.021, y = 162.972, z = 4984.625 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321021, gadget_id = 70330392, pos = { x = -2489.907, y = 161.153, z = 4974.660 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321026, gadget_id = 70330392, pos = { x = -2479.167, y = 161.153, z = 4944.534 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321028, gadget_id = 70330392, pos = { x = -2530.101, y = 161.153, z = 4963.598 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321030, gadget_id = 70330392, pos = { x = -2529.614, y = 161.153, z = 4943.357 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321031, gadget_id = 70330392, pos = { x = -2490.121, y = 161.153, z = 4984.771 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321032, gadget_id = 70330392, pos = { x = -2510.310, y = 161.153, z = 4984.323 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321033, gadget_id = 70330392, pos = { x = -2480.023, y = 161.153, z = 4984.981 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321034, gadget_id = 70330392, pos = { x = -2519.335, y = 161.153, z = 4933.521 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321035, gadget_id = 70330392, pos = { x = -2499.337, y = 161.153, z = 4944.029 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321036, gadget_id = 70330392, pos = { x = -2469.960, y = 161.153, z = 4985.179 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321037, gadget_id = 70330392, pos = { x = -2469.315, y = 161.153, z = 4954.863 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321038, gadget_id = 70330392, pos = { x = -2479.401, y = 161.153, z = 4954.671 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321039, gadget_id = 70330392, pos = { x = -2489.239, y = 161.153, z = 4944.309 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321040, gadget_id = 70330392, pos = { x = -2469.760, y = 161.153, z = 4975.088 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321041, gadget_id = 70330392, pos = { x = -2520.019, y = 161.153, z = 4963.853 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321042, gadget_id = 70330392, pos = { x = -2530.316, y = 161.153, z = 4973.703 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321043, gadget_id = 70330392, pos = { x = -2529.120, y = 161.280, z = 4923.183 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321044, gadget_id = 70330392, pos = { x = -2518.848, y = 161.280, z = 4913.307 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321045, gadget_id = 70330392, pos = { x = -2519.532, y = 161.153, z = 4943.631 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321046, gadget_id = 70330392, pos = { x = -2509.425, y = 161.153, z = 4943.832 }, rot = { x = 0.000, y = 268.763, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 321050, gadget_id = 70800289, pos = { x = -2518.781, y = 161.280, z = 4923.404 }, rot = { x = 0.000, y = 229.602, z = 0.000 }, level = 1, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 321013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2518.781, y = 161.280, z = 4923.404 }, area_id = 27 },
	{ config_id = 321014, shape = RegionShape.CYLINDER, radius = 140, pos = { x = -2533.498, y = 161.098, z = 4967.790 }, height = 400.000, area_id = 27 },
	{ config_id = 321015, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -2533.498, y = 161.098, z = 4967.790 }, height = 400.000, area_id = 27 },
	{ config_id = 321027, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2500.597, y = 161.472, z = 4984.870 }, area_id = 27 },
	{ config_id = 321047, shape = RegionShape.CYLINDER, radius = 55, pos = { x = -2497.223, y = 177.157, z = 4961.403 }, height = 40.000, area_id = 27 },
	{ config_id = 321049, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2518.781, y = 161.280, z = 4923.404 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1321013, name = "ENTER_REGION_321013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_321013", action = "action_EVENT_ENTER_REGION_321013" },
	{ config_id = 1321017, name = "GADGET_STATE_CHANGE_321017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_321017", action = "action_EVENT_GADGET_STATE_CHANGE_321017", trigger_count = 0 },
	{ config_id = 1321027, name = "ENTER_REGION_321027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_321027", action = "action_EVENT_ENTER_REGION_321027" },
	{ config_id = 1321047, name = "LEAVE_REGION_321047", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_321047", action = "action_EVENT_LEAVE_REGION_321047", trigger_count = 0 },
	{ config_id = 1321049, name = "ENTER_REGION_321049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_321049", action = "action_EVENT_ENTER_REGION_321049", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FindClue", value = 0, no_refresh = true },
	{ config_id = 2, name = "BeatMonster", value = -1, no_refresh = true },
	{ config_id = 3, name = "FindRock", value = -1, no_refresh = true },
	{ config_id = 4, name = "PuzzleProgress", value = -1, no_refresh = true },
	{ config_id = 5, name = "leave", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 321048, gadget_id = 70310148, pos = { x = -2518.781, y = 161.280, z = 4923.404 }, rot = { x = 0.000, y = 229.602, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 27 }
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
		gadgets = { 321006, 321007, 321008, 321010, 321012, 321016, 321043, 321044 },
		regions = { 321013, 321014, 321015, 321027, 321047, 321049 },
		triggers = { "ENTER_REGION_321013", "GADGET_STATE_CHANGE_321017", "ENTER_REGION_321027", "LEAVE_REGION_321047", "ENTER_REGION_321049" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 321001, 321002, 321004, 321009, 321011, 321018, 321019, 321021, 321026, 321028, 321030, 321031, 321033, 321034, 321035, 321036, 321037, 321038, 321039, 321040, 321041, 321042, 321045, 321046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 321005, 321032 },
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
function condition_EVENT_ENTER_REGION_321013(context, evt)
	if evt.param1 ~= 321013 then return false end
	
	-- 判断是区域321013
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 321013 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_321013(context, evt)
	-- 将configid为 321010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "FindClue" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindClue", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 变量"FindRock"赋值为0
	ScriptLib.SetGroupVariableValue(context, "FindRock", 0)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310321, 2)
	
	-- 调用提示id为 600157 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 321008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为321020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 321020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_321017(context, evt)
	if 321005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_321017(context, evt)
	-- 针对当前group内变量名为 "FindRock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindRock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310321, 2)
	
	-- 将configid为 321010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "leave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "leave", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_321027(context, evt)
	if evt.param1 ~= 321027 then return false end
	
	-- 判断是区域321027
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 321027 then
		return false
	end
	
	-- 判断变量"FindRock"为0
	if ScriptLib.GetGroupVariableValue(context, "FindRock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_321027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310321, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_321047(context, evt)
	-- 判断是区域321047
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 321047 then
		return false
	end
	
	-- 判断变量"leave"为0
	if ScriptLib.GetGroupVariableValue(context, "leave") ~= 0 then
			return false
	end
	
	-- 判断变量"FindClue"为1
	if ScriptLib.GetGroupVariableValue(context, "FindClue") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_321047(context, evt)
	-- 将configid为 321010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 321020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "leave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "leave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为321050的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 321050 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_321049(context, evt)
	if evt.param1 ~= 321049 then return false end
	
	-- 判断是区域321049
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 321049 then
		return false
	end
	
	-- 判断变量"leave"为1
	if ScriptLib.GetGroupVariableValue(context, "leave") ~= 1 then
			return false
	end
	
	-- 判断变量"FindClue"为1
	if ScriptLib.GetGroupVariableValue(context, "FindClue") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_321049(context, evt)
	-- 将configid为 321010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 321050 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为321020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 321020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 变量"leave"赋值为0
	ScriptLib.SetGroupVariableValue(context, "leave", 0)
	
	return 0
end

require "V3_1/Activity_RockBoardExplore"