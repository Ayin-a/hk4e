-- 基础信息
local base_info = {
	group_id = 133108258
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
	{ config_id = 258007, gadget_id = 70800089, pos = { x = -385.485, y = 200.000, z = -643.371 }, rot = { x = 0.000, y = 343.740, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 258008, gadget_id = 70800060, pos = { x = -406.329, y = 200.000, z = -647.866 }, rot = { x = 0.000, y = 288.479, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 258009, gadget_id = 70800060, pos = { x = -403.389, y = 200.000, z = -644.218 }, rot = { x = 0.000, y = 34.526, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一次加载
	{ config_id = 1258001, name = "GROUP_REFRESH_258001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_258001", trigger_count = 0 },
	-- 第一个箱子被捡
	{ config_id = 1258002, name = "GADGET_STATE_CHANGE_258002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_258002", action = "action_EVENT_GADGET_STATE_CHANGE_258002", trigger_count = 0 },
	-- 第二个箱子被捡
	{ config_id = 1258003, name = "GADGET_STATE_CHANGE_258003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_258003", action = "action_EVENT_GADGET_STATE_CHANGE_258003", trigger_count = 0 },
	-- 创建第一个箱子
	{ config_id = 1258004, name = "GROUP_LOAD_258004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_258004", action = "action_EVENT_GROUP_LOAD_258004", trigger_count = 0 },
	-- 创建第二个箱子
	{ config_id = 1258005, name = "GROUP_LOAD_258005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_258005", action = "action_EVENT_GROUP_LOAD_258005", trigger_count = 0 },
	-- 超级大保底，都被捡了发两次通知
	{ config_id = 1258006, name = "GROUP_LOAD_258006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_258006", action = "action_EVENT_GROUP_LOAD_258006", trigger_count = 0 },
	{ config_id = 1258011, name = "SELECT_OPTION_258011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_258011", action = "action_EVENT_SELECT_OPTION_258011", trigger_count = 0 },
	{ config_id = 1258012, name = "GADGET_CREATE_258012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_258012", action = "action_EVENT_GADGET_CREATE_258012", trigger_count = 0 },
	-- 3rd progress
	{ config_id = 1258014, name = "VARIABLE_CHANGE_258014", event = EventType.EVENT_VARIABLE_CHANGE, source = "picked", condition = "condition_EVENT_VARIABLE_CHANGE_258014", action = "action_EVENT_VARIABLE_CHANGE_258014", trigger_count = 0 },
	{ config_id = 1258015, name = "GADGET_STATE_CHANGE_258015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_258015", action = "action_EVENT_GADGET_STATE_CHANGE_258015", trigger_count = 0 },
	-- 挂特效用
	{ config_id = 1258018, name = "VARIABLE_CHANGE_258018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_258018", action = "action_EVENT_VARIABLE_CHANGE_258018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "picked", value = 0, no_refresh = false },
	{ config_id = 2, name = "pick1", value = 0, no_refresh = false },
	{ config_id = 3, name = "pick2", value = 0, no_refresh = false }
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
		gadgets = { 258007 },
		regions = { },
		triggers = { "GROUP_REFRESH_258001", "GADGET_STATE_CHANGE_258002", "GADGET_STATE_CHANGE_258003", "GROUP_LOAD_258004", "GROUP_LOAD_258005", "GROUP_LOAD_258006", "SELECT_OPTION_258011", "GADGET_CREATE_258012", "VARIABLE_CHANGE_258014", "GADGET_STATE_CHANGE_258015", "VARIABLE_CHANGE_258018" },
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
	},
	{
		-- suite_id = 3,
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

-- 触发操作
function action_EVENT_GROUP_REFRESH_258001(context, evt)
	-- 创建id为258008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 258008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为258009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 258009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_258002(context, evt)
	if 258008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_258002(context, evt)
	-- 将本组内变量名为 "pick1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_258003(context, evt)
	if 258009 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_258003(context, evt)
	-- 将本组内变量名为 "pick2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_258004(context, evt)
	-- 判断变量"pick1"为0
	if ScriptLib.GetGroupVariableValue(context, "pick1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_258004(context, evt)
	-- 创建id为258008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 258008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_258005(context, evt)
	-- 判断变量"pick2"为0
	if ScriptLib.GetGroupVariableValue(context, "pick2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_258005(context, evt)
	-- 创建id为258009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 258009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_258006(context, evt)
	-- 判断变量"picked"为2
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_258006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_258011(context, evt)
	-- 判断是gadgetid 0 option_id 0
	if 70800060 ~= ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_258011(context, evt)
	-- 删除指定group： 133108200 ；指定config：evt.param1；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108258, evt.param1, 68) then
		return -1
	end
	
	
	-- 根据不同的选项做不同的操作
	if 68 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStop) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_option")
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_258012(context, evt)
	if 70800060 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_258012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_258014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 1 > evt.param1 or 2 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_258014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_258015(context, evt)
	if 70800060 ~= ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_258015(context, evt)
	-- 针对当前group内变量名为 "picked" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "picked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_258018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"picked"为2
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_258018(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "GV_Mark_Skiff", 1)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_Box_Count", 6); 
	
	return 0
end