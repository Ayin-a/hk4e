-- 基础信息
local base_info = {
	group_id = 133217228
}

-- DEFS_MISCS
local defs = {
	-- 该参数 填入ConfigID 用来确认临接关系
	InitFloorArrays = {
		{228001,228004,228007,228010},
		{228002,228006,228009,228012},
		{228003,228005,228008,228011},
	},
	-- 该参数用来确认合法序列 (日月星)
	FloorGadgetID = {70310059,70310060,70310061}, --lastFloorIndex
	FloorNum = 12,
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
	[228001] = { config_id = 228001, gadget_id = 70310059, pos = { x = -4435.776, y = 205.625, z = -3972.064 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228002] = { config_id = 228002, gadget_id = 70310060, pos = { x = -4435.188, y = 205.616, z = -3974.982 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228003] = { config_id = 228003, gadget_id = 70310061, pos = { x = -4434.594, y = 205.608, z = -3977.916 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228004] = { config_id = 228004, gadget_id = 70310061, pos = { x = -4432.841, y = 205.643, z = -3971.470 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228005] = { config_id = 228005, gadget_id = 70310060, pos = { x = -4431.657, y = 205.626, z = -3977.320 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228006] = { config_id = 228006, gadget_id = 70310061, pos = { x = -4432.249, y = 205.634, z = -3974.387 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228007] = { config_id = 228007, gadget_id = 70310060, pos = { x = -4429.899, y = 205.661, z = -3970.874 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228008] = { config_id = 228008, gadget_id = 70310059, pos = { x = -4428.715, y = 205.644, z = -3976.725 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228009] = { config_id = 228009, gadget_id = 70310059, pos = { x = -4429.308, y = 205.653, z = -3973.793 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228010] = { config_id = 228010, gadget_id = 70310059, pos = { x = -4426.958, y = 205.679, z = -3970.279 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228011] = { config_id = 228011, gadget_id = 70310061, pos = { x = -4425.774, y = 205.662, z = -3976.127 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[228012] = { config_id = 228012, gadget_id = 70310060, pos = { x = -4426.367, y = 205.671, z = -3973.198 }, rot = { x = 359.654, y = 78.505, z = 359.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	-- 只是一个普通机关，用来表达状态切换。具体是否可以操作依赖操作台。
	[228013] = { config_id = 228013, gadget_id = 70360170, pos = { x = -4432.673, y = 207.020, z = -3966.272 }, rot = { x = 270.690, y = 224.790, z = 125.400 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	-- 进入区域后判定是否满足开关可用条件
	[228018] = { config_id = 228018, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4432.698, y = 207.433, z = -3967.332 }, area_id = 14 },
	-- 离开区域时，卸载操作台
	[228020] = { config_id = 228020, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4432.698, y = 207.433, z = -3967.332 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- 判断失败，失败的时候，物件变成不可以交互的状态
	{ config_id = 1228014, name = "VARIABLE_CHANGE_228014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_228014", action = "action_EVENT_VARIABLE_CHANGE_228014" },
	-- 当拉杆开关被使用的时候重置所有地板的状态，并使物件可以被交互
	{ config_id = 1228015, name = "GADGET_STATE_CHANGE_228015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228015", action = "" },
	-- 判断成功，当成功的时候，通知任务进度，或者做别的骚事情
	{ config_id = 1228016, name = "VARIABLE_CHANGE_228016", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayEnd", condition = "condition_EVENT_VARIABLE_CHANGE_228016", action = "action_EVENT_VARIABLE_CHANGE_228016", trigger_count = 0 },
	-- 任务到达某个阶段的时候，让人类拉杆机关可以被使用。
	{ config_id = 1228017, name = "QUEST_START_228017", event = EventType.EVENT_QUEST_START, source = "7216208", condition = "", action = "action_EVENT_QUEST_START_228017", trigger_count = 0 },
	-- 进入区域后判定是否满足开关可用条件
	{ config_id = 1228018, name = "ENTER_REGION_228018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_228018", action = "action_EVENT_ENTER_REGION_228018", trigger_count = 0 },
	-- 启动操作台动作，注意设置\"FloorPlayStart\"即可开始玩法。此时会将所有地板设为可交互，并同时将参数初始化。
	{ config_id = 1228019, name = "SELECT_OPTION_228019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_228019", action = "action_EVENT_SELECT_OPTION_228019", trigger_count = 0 },
	-- 离开区域时，卸载操作台
	{ config_id = 1228020, name = "LEAVE_REGION_228020", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_228020", trigger_count = 0 },
	-- 监听“FloorPlayStart == 0”，此时代表玩法被中断。此时将拉杆置回。
	{ config_id = 1228021, name = "VARIABLE_CHANGE_228021", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayStart", condition = "condition_EVENT_VARIABLE_CHANGE_228021", action = "action_EVENT_VARIABLE_CHANGE_228021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Option", value = 0, no_refresh = false },
	{ config_id = 2, name = "Quest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 228001, 228002, 228003, 228004, 228005, 228006, 228007, 228008, 228009, 228010, 228011, 228012, 228013 },
		regions = { 228018, 228020 },
		triggers = { "VARIABLE_CHANGE_228016", "QUEST_START_228017", "ENTER_REGION_228018", "SELECT_OPTION_228019", "LEAVE_REGION_228020", "VARIABLE_CHANGE_228021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_228017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_228014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"lastConfigID"为0
	if ScriptLib.GetGroupVariableValue(context, "lastConfigID") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_228014(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 0, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228015(context, evt)
	-- 检测config_id为0的gadget是否从GadgetState.Default变为GadgetState.Default
	if 0 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_228016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_228016(context, evt)
	-- 将configid为 228013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216208") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_228017(context, evt)
	-- 将本组内变量名为 "Quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_228018(context, evt)
	if evt.param1 ~= 228018 then return false end
	
	-- 判断变量"FloorPlayStart"为0
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayStart") ~= 0 then
			return false
	end
	
	-- 判断变量"Option"为0
	if ScriptLib.GetGroupVariableValue(context, "Option") ~= 0 then
			return false
	end
	
	-- 判断变量"Quest"为1
	if ScriptLib.GetGroupVariableValue(context, "Quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_228018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217228, 228013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "Option" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Option", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_228019(context, evt)
	-- 判断是gadgetid 228013 option_id 7
	if 228013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_228019(context, evt)
	-- 将configid为 228013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "FloorPlayStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "FloorPlayStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133217228 ；指定config：228013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133217228, 228013, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_228020(context, evt)
	-- 删除指定group： 133217228 ；指定config：228013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133217228, 228013, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "Option" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Option", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_228021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayStart"为0
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayStart") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_228021(context, evt)
	-- 将configid为 228013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/WoodFloorPlayOrder"