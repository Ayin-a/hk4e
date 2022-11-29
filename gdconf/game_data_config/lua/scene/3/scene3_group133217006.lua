-- 基础信息
local base_info = {
	group_id = 133217006
}

-- DEFS_MISCS
local defs = {
	-- 该参数 填入ConfigID 用来确认临接关系
	InitFloorArrays = {
		{6001,6004,6007,6010},
		{6002,6006,6009,6012},
		{6003,6005,6008,6011},
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
	[6001] = { config_id = 6001, gadget_id = 70310059, pos = { x = -4435.776, y = 205.633, z = -3972.056 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6002] = { config_id = 6002, gadget_id = 70310060, pos = { x = -4435.191, y = 205.630, z = -3974.974 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6003] = { config_id = 6003, gadget_id = 70310061, pos = { x = -4434.601, y = 205.626, z = -3977.909 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6004] = { config_id = 6004, gadget_id = 70310059, pos = { x = -4432.838, y = 205.649, z = -3971.467 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6005] = { config_id = 6005, gadget_id = 70310059, pos = { x = -4431.660, y = 205.643, z = -3977.317 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6006] = { config_id = 6006, gadget_id = 70310060, pos = { x = -4432.250, y = 205.646, z = -3974.385 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6007] = { config_id = 6007, gadget_id = 70310061, pos = { x = -4429.896, y = 205.666, z = -3970.875 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6008] = { config_id = 6008, gadget_id = 70310060, pos = { x = -4428.720, y = 205.659, z = -3976.727 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6009] = { config_id = 6009, gadget_id = 70310061, pos = { x = -4429.308, y = 205.663, z = -3973.795 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6010] = { config_id = 6010, gadget_id = 70310060, pos = { x = -4426.952, y = 205.682, z = -3970.284 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6011] = { config_id = 6011, gadget_id = 70310061, pos = { x = -4425.777, y = 205.676, z = -3976.135 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[6012] = { config_id = 6012, gadget_id = 70310059, pos = { x = -4426.364, y = 205.679, z = -3973.205 }, rot = { x = 359.686, y = 78.716, z = 359.936 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	-- 只是一个普通机关，用来表达状态切换。具体是否可以操作依赖操作台。
	[6014] = { config_id = 6014, gadget_id = 70360170, pos = { x = -4432.673, y = 207.029, z = -3966.272 }, rot = { x = 270.690, y = 224.790, z = 125.400 }, level = 30, persistent = true, area_id = 14 },
	[6023] = { config_id = 6023, gadget_id = 70360286, pos = { x = -4432.542, y = 204.555, z = -3966.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	-- 进入区域后判定是否满足开关可用条件
	[6018] = { config_id = 6018, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4432.698, y = 207.433, z = -3967.332 }, area_id = 14 },
	-- 离开区域时，卸载操作台
	[6020] = { config_id = 6020, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4432.698, y = 207.433, z = -3967.332 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- 判断失败，失败的时候，物件变成不可以交互的状态
	{ config_id = 1006013, name = "VARIABLE_CHANGE_6013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6013", action = "action_EVENT_VARIABLE_CHANGE_6013" },
	-- 当拉杆开关被使用的时候重置所有地板的状态，并使物件可以被交互
	{ config_id = 1006015, name = "GADGET_STATE_CHANGE_6015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6015", action = "" },
	-- 判断成功，当成功的时候，通知任务进度，或者做别的骚事情
	{ config_id = 1006016, name = "VARIABLE_CHANGE_6016", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayEnd", condition = "condition_EVENT_VARIABLE_CHANGE_6016", action = "action_EVENT_VARIABLE_CHANGE_6016", trigger_count = 0 },
	-- 任务到达某个阶段的时候，让人类拉杆机关可以被使用。
	{ config_id = 1006017, name = "QUEST_START_6017", event = EventType.EVENT_QUEST_START, source = "7216210", condition = "", action = "action_EVENT_QUEST_START_6017", trigger_count = 0 },
	-- 进入区域后判定是否满足开关可用条件
	{ config_id = 1006018, name = "ENTER_REGION_6018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6018", action = "action_EVENT_ENTER_REGION_6018", trigger_count = 0 },
	-- 启动操作台动作，注意设置\"FloorPlayStart\"即可开始玩法。此时会将所有地板设为可交互，并同时将参数初始化。
	{ config_id = 1006019, name = "SELECT_OPTION_6019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6019", action = "action_EVENT_SELECT_OPTION_6019", trigger_count = 0 },
	-- 离开区域时，卸载操作台
	{ config_id = 1006020, name = "LEAVE_REGION_6020", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_6020", trigger_count = 0 },
	-- 监听“FloorPlayStart == 0”，此时代表玩法被中断。此时将拉杆置回。
	{ config_id = 1006021, name = "VARIABLE_CHANGE_6021", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayStart", condition = "condition_EVENT_VARIABLE_CHANGE_6021", action = "action_EVENT_VARIABLE_CHANGE_6021", trigger_count = 0 },
	{ config_id = 1006022, name = "TIME_AXIS_PASS_6022", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "condition_EVENT_TIME_AXIS_PASS_6022", action = "action_EVENT_TIME_AXIS_PASS_6022", trigger_count = 0 },
	-- 保底
	{ config_id = 1006024, name = "GROUP_LOAD_6024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6024", action = "action_EVENT_GROUP_LOAD_6024" }
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
		gadgets = { 6001, 6002, 6003, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 6012, 6014, 6023 },
		regions = { 6018, 6020 },
		triggers = { "VARIABLE_CHANGE_6016", "QUEST_START_6017", "ENTER_REGION_6018", "SELECT_OPTION_6019", "LEAVE_REGION_6020", "VARIABLE_CHANGE_6021", "TIME_AXIS_PASS_6022", "GROUP_LOAD_6024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_VARIABLE_CHANGE_6013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"lastConfigID"为0
	if ScriptLib.GetGroupVariableValue(context, "lastConfigID") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6013(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 0, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6015(context, evt)
	-- 检测config_id为0的gadget是否从GadgetState.Default变为GadgetState.Default
	if 0 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6016(context, evt)
	-- 将configid为 6014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216207") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建标识为"Finish"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Finish", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_6017(context, evt)
	-- 将本组内变量名为 "Quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6018(context, evt)
	if evt.param1 ~= 6018 then return false end
	
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
function action_EVENT_ENTER_REGION_6018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217006, 6014, {7}) then
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
function condition_EVENT_SELECT_OPTION_6019(context, evt)
	-- 判断是gadgetid 6014 option_id 7
	if 6014 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216210") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 6014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "FloorPlayStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "FloorPlayStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133217006 ；指定config：6014；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133217006, 6014, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_6020(context, evt)
	-- 删除指定group： 133217006 ；指定config：6014；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133217006, 6014, 7) then
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
function condition_EVENT_VARIABLE_CHANGE_6021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayStart"为0
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayStart") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6021(context, evt)
	-- 将configid为 6014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_6022(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217006, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217228, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6024(context, evt)
	-- 判断变量""01group变量为1，02group变量为0的时候
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "FloorPlayEnd", 133217228) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217006, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217228, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_1/WoodFloorPlayOrder"