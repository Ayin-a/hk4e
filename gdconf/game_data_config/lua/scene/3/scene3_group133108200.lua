-- 基础信息
local base_info = {
	group_id = 133108200
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
	{ config_id = 200001, gadget_id = 70800060, pos = { x = -510.986, y = 200.000, z = -763.657 }, rot = { x = 352.272, y = 277.805, z = 358.971 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 200002, gadget_id = 70800060, pos = { x = -516.551, y = 200.000, z = -763.332 }, rot = { x = 0.000, y = 50.786, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 200005, gadget_id = 70800060, pos = { x = -515.320, y = 200.000, z = -759.460 }, rot = { x = 0.000, y = 270.807, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 200008, gadget_id = 70800089, pos = { x = -385.485, y = 200.000, z = -643.371 }, rot = { x = 0.000, y = 343.740, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1st progress
	{ config_id = 1200003, name = "VARIABLE_CHANGE_200003", event = EventType.EVENT_VARIABLE_CHANGE, source = "picked", condition = "condition_EVENT_VARIABLE_CHANGE_200003", action = "action_EVENT_VARIABLE_CHANGE_200003", trigger_count = 0 },
	{ config_id = 1200009, name = "SELECT_OPTION_200009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_200009", action = "action_EVENT_SELECT_OPTION_200009", trigger_count = 0 },
	{ config_id = 1200010, name = "GADGET_CREATE_200010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_200010", action = "action_EVENT_GADGET_CREATE_200010", trigger_count = 0 },
	{ config_id = 1200014, name = "GADGET_STATE_CHANGE_200014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200014", action = "action_EVENT_GADGET_STATE_CHANGE_200014", trigger_count = 0 },
	-- 挂特效用
	{ config_id = 1200015, name = "VARIABLE_CHANGE_200015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_200015", action = "action_EVENT_VARIABLE_CHANGE_200015", trigger_count = 0 },
	-- 超级大保底，发三次通知
	{ config_id = 1200019, name = "GROUP_LOAD_200019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_200019", action = "action_EVENT_GROUP_LOAD_200019", trigger_count = 0 },
	-- 刷出一号箱
	{ config_id = 1200021, name = "GROUP_LOAD_200021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_200021", action = "action_EVENT_GROUP_LOAD_200021", trigger_count = 0 },
	-- 刷出二号箱
	{ config_id = 1200022, name = "GROUP_LOAD_200022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_200022", action = "action_EVENT_GROUP_LOAD_200022", trigger_count = 0 },
	-- 刷出三号箱
	{ config_id = 1200023, name = "GROUP_LOAD_200023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_200023", action = "action_EVENT_GROUP_LOAD_200023", trigger_count = 0 },
	-- 捡起一号箱
	{ config_id = 1200024, name = "GADGET_STATE_CHANGE_200024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200024", action = "action_EVENT_GADGET_STATE_CHANGE_200024", trigger_count = 0 },
	-- 捡起二号箱
	{ config_id = 1200025, name = "GADGET_STATE_CHANGE_200025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200025", action = "action_EVENT_GADGET_STATE_CHANGE_200025", trigger_count = 0 },
	-- 捡起三号箱
	{ config_id = 1200026, name = "GADGET_STATE_CHANGE_200026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200026", action = "action_EVENT_GADGET_STATE_CHANGE_200026", trigger_count = 0 },
	-- 第一次加载
	{ config_id = 1200027, name = "GROUP_REFRESH_200027", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_200027", trigger_count = 0 }
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
	gadgets = {
		{ config_id = 200004, gadget_id = 70800060, pos = { x = -486.960, y = 200.000, z = -672.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
		{ config_id = 200006, gadget_id = 70800060, pos = { x = -487.422, y = 200.000, z = -678.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
		{ config_id = 200007, gadget_id = 70800060, pos = { x = -490.548, y = 200.000, z = -675.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
		{ config_id = 200011, gadget_id = 70800060, pos = { x = -406.329, y = 200.000, z = -647.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
		{ config_id = 200017, gadget_id = 70800060, pos = { x = -403.389, y = 200.000, z = -644.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 }
	},
	triggers = {
		{ config_id = 1200012, name = "VARIABLE_CHANGE_200012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_200012", action = "action_EVENT_VARIABLE_CHANGE_200012", trigger_count = 0 },
		{ config_id = 1200013, name = "VARIABLE_CHANGE_200013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_200013", action = "action_EVENT_VARIABLE_CHANGE_200013", trigger_count = 0 },
		{ config_id = 1200016, name = "VARIABLE_CHANGE_200016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_200016", action = "action_EVENT_VARIABLE_CHANGE_200016", trigger_count = 0 },
		{ config_id = 1200018, name = "VARIABLE_CHANGE_200018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_200018", action = "action_EVENT_VARIABLE_CHANGE_200018", trigger_count = 0 },
		{ config_id = 1200020, name = "SELECT_OPTION_200020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_200020", action = "action_EVENT_SELECT_OPTION_200020", trigger_count = 0 }
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
		gadgets = { 200008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_200003", "SELECT_OPTION_200009", "GADGET_CREATE_200010", "GADGET_STATE_CHANGE_200014", "VARIABLE_CHANGE_200015", "GROUP_LOAD_200019", "GROUP_LOAD_200021", "GROUP_LOAD_200022", "GROUP_LOAD_200023", "GADGET_STATE_CHANGE_200024", "GADGET_STATE_CHANGE_200025", "GADGET_STATE_CHANGE_200026", "GROUP_REFRESH_200027" },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_200003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 1 > evt.param1 or 3 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_200003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_200009(context, evt)
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
function action_EVENT_SELECT_OPTION_200009(context, evt)
	-- 删除指定group： 133108200 ；指定config：evt.param1；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108200, evt.param1, 68) then
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
function condition_EVENT_GADGET_CREATE_200010(context, evt)
	if 70800060 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_200010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200014(context, evt)
	if 70800060 ~= ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200014(context, evt)
	-- 针对当前group内变量名为 "picked" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "picked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_200015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"picked"为3
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_200015(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "GV_Mark_Skiff", 1)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_Box_Count", 4); 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_200019(context, evt)
	-- 判断变量"picked"为3
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_200019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310820001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_200021(context, evt)
	-- 判断变量"pick1"为0
	if ScriptLib.GetGroupVariableValue(context, "pick1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_200021(context, evt)
	-- 创建id为200001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_200022(context, evt)
	-- 判断变量"pick2"为0
	if ScriptLib.GetGroupVariableValue(context, "pick2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_200022(context, evt)
	-- 创建id为200002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_200023(context, evt)
	-- 判断变量"pick3"为0
	if ScriptLib.GetGroupVariableValue(context, "pick3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_200023(context, evt)
	-- 创建id为200005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200024(context, evt)
	if 200001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200024(context, evt)
	-- 将本组内变量名为 "pick1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200025(context, evt)
	if 200002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200025(context, evt)
	-- 将本组内变量名为 "pick2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200026(context, evt)
	if 200005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200026(context, evt)
	-- 将本组内变量名为 "pick3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_200027(context, evt)
	-- 创建id为200001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为200002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为200005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end