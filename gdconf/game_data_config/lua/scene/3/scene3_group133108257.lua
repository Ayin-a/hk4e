-- 基础信息
local base_info = {
	group_id = 133108257
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
	{ config_id = 257003, gadget_id = 70800060, pos = { x = -486.960, y = 200.000, z = -672.782 }, rot = { x = 0.000, y = 218.017, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 257005, gadget_id = 70800060, pos = { x = -487.422, y = 200.000, z = -678.017 }, rot = { x = 0.000, y = 96.888, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 257006, gadget_id = 70800060, pos = { x = -490.548, y = 200.000, z = -675.940 }, rot = { x = 0.000, y = 306.311, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 257007, gadget_id = 70800089, pos = { x = -385.485, y = 200.000, z = -643.371 }, rot = { x = 0.000, y = 343.740, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一次加载
	{ config_id = 1257001, name = "GROUP_REFRESH_257001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_257001", trigger_count = 0 },
	-- 第一个箱子被捡
	{ config_id = 1257002, name = "GADGET_STATE_CHANGE_257002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_257002", action = "action_EVENT_GADGET_STATE_CHANGE_257002", trigger_count = 0 },
	-- 第二个箱子被捡
	{ config_id = 1257004, name = "GADGET_STATE_CHANGE_257004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_257004", action = "action_EVENT_GADGET_STATE_CHANGE_257004", trigger_count = 0 },
	-- 第三个箱子被捡
	{ config_id = 1257008, name = "GADGET_STATE_CHANGE_257008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_257008", action = "action_EVENT_GADGET_STATE_CHANGE_257008", trigger_count = 0 },
	-- groupload放出一号箱
	{ config_id = 1257009, name = "GROUP_LOAD_257009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_257009", action = "action_EVENT_GROUP_LOAD_257009", trigger_count = 0 },
	-- groupload放出二号箱
	{ config_id = 1257010, name = "GROUP_LOAD_257010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_257010", action = "action_EVENT_GROUP_LOAD_257010", trigger_count = 0 },
	{ config_id = 1257011, name = "SELECT_OPTION_257011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_257011", action = "action_EVENT_SELECT_OPTION_257011", trigger_count = 0 },
	{ config_id = 1257012, name = "GADGET_CREATE_257012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_257012", action = "action_EVENT_GADGET_CREATE_257012", trigger_count = 0 },
	-- 2nd progress
	{ config_id = 1257013, name = "VARIABLE_CHANGE_257013", event = EventType.EVENT_VARIABLE_CHANGE, source = "picked", condition = "condition_EVENT_VARIABLE_CHANGE_257013", action = "action_EVENT_VARIABLE_CHANGE_257013", trigger_count = 0 },
	-- groupload放出三号箱
	{ config_id = 1257014, name = "GROUP_LOAD_257014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_257014", action = "action_EVENT_GROUP_LOAD_257014", trigger_count = 0 },
	-- 超级大保底，如果都捡了发三次通知
	{ config_id = 1257016, name = "GROUP_LOAD_257016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_257016", action = "action_EVENT_GROUP_LOAD_257016", trigger_count = 0 },
	-- 挂特效用
	{ config_id = 1257017, name = "VARIABLE_CHANGE_257017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_257017", action = "action_EVENT_VARIABLE_CHANGE_257017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "picked", value = 0, no_refresh = false },
	{ config_id = 2, name = "pick1", value = 0, no_refresh = false },
	{ config_id = 3, name = "pick2", value = 0, no_refresh = false },
	{ config_id = 4, name = "pick3", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1257015, name = "GADGET_STATE_CHANGE_257015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_257015", action = "action_EVENT_GADGET_STATE_CHANGE_257015", trigger_count = 0 }
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
		gadgets = { 257007 },
		regions = { },
		triggers = { "GROUP_REFRESH_257001", "GADGET_STATE_CHANGE_257002", "GADGET_STATE_CHANGE_257004", "GADGET_STATE_CHANGE_257008", "GROUP_LOAD_257009", "GROUP_LOAD_257010", "SELECT_OPTION_257011", "GADGET_CREATE_257012", "VARIABLE_CHANGE_257013", "GROUP_LOAD_257014", "GROUP_LOAD_257016", "VARIABLE_CHANGE_257017" },
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
function action_EVENT_GROUP_REFRESH_257001(context, evt)
	-- 创建id为257003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为257005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为257006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_257002(context, evt)
	if 257003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_257002(context, evt)
	-- 针对当前group内变量名为 "picked" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "picked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "pick1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pick1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_257004(context, evt)
	if 257005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_257004(context, evt)
	-- 针对当前group内变量名为 "picked" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "picked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "pick2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pick2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_257008(context, evt)
	if 257006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_257008(context, evt)
	-- 针对当前group内变量名为 "picked" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "picked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "pick3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pick3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_257009(context, evt)
	-- 判断变量"pick1"为0
	if ScriptLib.GetGroupVariableValue(context, "pick1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_257009(context, evt)
	-- 创建id为257003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_257010(context, evt)
	-- 判断变量"pick2"为0
	if ScriptLib.GetGroupVariableValue(context, "pick2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_257010(context, evt)
	-- 创建id为257005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_257011(context, evt)
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
function action_EVENT_SELECT_OPTION_257011(context, evt)
	-- 删除指定group： 133108200 ；指定config：evt.param1；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108257, evt.param1, 68) then
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
function condition_EVENT_GADGET_CREATE_257012(context, evt)
	if 70800060 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_257012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_257013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 1 > evt.param1 or 3 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_257013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_257014(context, evt)
	-- 判断变量"pick3"为0
	if ScriptLib.GetGroupVariableValue(context, "pick3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_257014(context, evt)
	-- 创建id为257006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_257016(context, evt)
	-- 判断变量"picked"为3
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_257016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_257017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"picked"为3
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_257017(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "GV_Mark_Skiff", 1)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_Box_Count", 5); 
	
	return 0
end