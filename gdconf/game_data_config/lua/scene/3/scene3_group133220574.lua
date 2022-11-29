-- 基础信息
local base_info = {
	group_id = 133220574
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 574001, monster_id = 25100301, pos = { x = -2655.974, y = 202.999, z = -4556.621 }, rot = { x = 0.114, y = 172.148, z = 0.176 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 1, title_id = 10032, special_name_id = 10054, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 574002, gadget_id = 70380282, pos = { x = -2655.858, y = 204.117, z = -4562.922 }, rot = { x = 4.495, y = 63.083, z = 6.479 }, level = 27, persistent = true, interact_id = 24, area_id = 11 },
	{ config_id = 574003, gadget_id = 70290069, pos = { x = -2655.920, y = 202.845, z = -4563.055 }, rot = { x = 349.548, y = 188.896, z = 1.821 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 574004, gadget_id = 70290070, pos = { x = -2651.263, y = 203.615, z = -4555.899 }, rot = { x = 4.654, y = 359.864, z = 2.206 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 574005, gadget_id = 70290070, pos = { x = -2671.471, y = 203.450, z = -4550.867 }, rot = { x = 0.000, y = 174.551, z = 0.000 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 574006, gadget_id = 70290070, pos = { x = -2661.804, y = 213.714, z = -4546.407 }, rot = { x = 0.684, y = 211.634, z = 358.493 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 574007, gadget_id = 70290070, pos = { x = -2649.637, y = 216.847, z = -4550.645 }, rot = { x = 0.000, y = 348.444, z = 0.000 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 574009, gadget_id = 70800036, pos = { x = -2657.800, y = 226.208, z = -4549.912 }, rot = { x = 0.000, y = 194.239, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 574010, gadget_id = 70800037, pos = { x = -2663.756, y = 224.358, z = -4550.976 }, rot = { x = 0.000, y = 91.849, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 574011, gadget_id = 70330103, pos = { x = -2655.178, y = 215.477, z = -4550.950 }, rot = { x = 0.000, y = 193.487, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 574012, gadget_id = 70330096, pos = { x = -2654.920, y = 216.508, z = -4551.004 }, rot = { x = 0.000, y = 193.487, z = 0.713 }, level = 27, state = GadgetState.Action01, area_id = 11 },
	{ config_id = 574014, gadget_id = 70330101, pos = { x = -2655.178, y = 215.477, z = -4550.950 }, rot = { x = 0.000, y = 193.487, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 574015, gadget_id = 70330101, pos = { x = -2654.861, y = 217.331, z = -4551.047 }, rot = { x = 0.000, y = 193.487, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 574016, gadget_id = 70330101, pos = { x = -2654.023, y = 216.775, z = -4551.262 }, rot = { x = 0.000, y = 193.487, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 574017, gadget_id = 70330101, pos = { x = -2655.939, y = 216.616, z = -4550.799 }, rot = { x = 0.000, y = 193.487, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 574018, gadget_id = 70330101, pos = { x = -2654.022, y = 216.016, z = -4551.281 }, rot = { x = 0.000, y = 193.487, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 574020, gadget_id = 70360001, pos = { x = -2655.751, y = 203.000, z = -4556.432 }, rot = { x = 359.983, y = 91.083, z = 359.936 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 574008, shape = RegionShape.SPHERE, radius = 12, pos = { x = -2655.758, y = 201.697, z = -4563.559 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1574008, name = "ENTER_REGION_574008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_574008", action = "action_EVENT_ENTER_REGION_574008" },
	-- 当1号雷桩是201时，加载2345的按钮。
	{ config_id = 1574013, name = "GROUP_LOAD_574013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_574013", action = "action_EVENT_GROUP_LOAD_574013", trigger_count = 0 },
	-- 断线重连再次发通知3
	{ config_id = 1574019, name = "GROUP_LOAD_574019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_574019", action = "action_EVENT_GROUP_LOAD_574019", trigger_count = 0 },
	-- 2号雷桩切换 加载1号判定按钮
	{ config_id = 1574021, name = "SELECT_OPTION_574021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_574021", action = "action_EVENT_SELECT_OPTION_574021", trigger_count = 0 },
	-- 3号雷桩切换 加载1号判定按钮
	{ config_id = 1574022, name = "SELECT_OPTION_574022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_574022", action = "action_EVENT_SELECT_OPTION_574022", trigger_count = 0 },
	-- 4号雷桩切换 加载1号判定按钮
	{ config_id = 1574023, name = "SELECT_OPTION_574023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_574023", action = "action_EVENT_SELECT_OPTION_574023", trigger_count = 0 },
	-- 5号雷桩切换 加载1号判定按钮
	{ config_id = 1574024, name = "SELECT_OPTION_574024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_574024", action = "action_EVENT_SELECT_OPTION_574024", trigger_count = 0 },
	-- 怪物死亡后创生操作台
	{ config_id = 1574025, name = "ANY_MONSTER_DIE_574025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_574025", action = "action_EVENT_ANY_MONSTER_DIE_574025", trigger_count = 0 },
	-- CS播完任务完成
	{ config_id = 1574026, name = "TIME_AXIS_PASS_574026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_574026", action = "action_EVENT_TIME_AXIS_PASS_574026", trigger_count = 0 },
	-- 1号雷桩交付祭具，提交后重置各个雷桩的状态
	{ config_id = 1574027, name = "VARIABLE_CHANGE_574027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_574027", action = "action_EVENT_VARIABLE_CHANGE_574027" },
	-- 当1号雷桩是201时，加载2345的按钮。
	{ config_id = 1574028, name = "GADGET_STATE_CHANGE_574028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_574028", action = "action_EVENT_GADGET_STATE_CHANGE_574028", trigger_count = 0 },
	-- 判定trigger
	{ config_id = 1574029, name = "GADGET_STATE_CHANGE_574029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_574029", action = "action_EVENT_GADGET_STATE_CHANGE_574029", trigger_count = 0 },
	-- 判定按钮
	{ config_id = 1574030, name = "SELECT_OPTION_574030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_574030", action = "action_EVENT_SELECT_OPTION_574030", trigger_count = 0 },
	-- winplay完成后
	{ config_id = 1574031, name = "TIME_AXIS_PASS_574031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_574031", action = "action_EVENT_TIME_AXIS_PASS_574031" },
	-- failedplay完成后
	{ config_id = 1574032, name = "TIME_AXIS_PASS_574032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_574032", action = "action_EVENT_TIME_AXIS_PASS_574032", trigger_count = 0 },
	-- 创生后
	{ config_id = 1574033, name = "ANY_MONSTER_LIVE_574033", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_574033", action = "action_EVENT_ANY_MONSTER_LIVE_574033", trigger_count = 0 },
	-- 交付后交付变量=1
	{ config_id = 1574034, name = "GADGET_STATE_CHANGE_574034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_574034", action = "action_EVENT_GADGET_STATE_CHANGE_574034", trigger_count = 0 },
	-- 1号雷桩启动后（201）时加载判定按钮
	{ config_id = 1574035, name = "GADGET_STATE_CHANGE_574035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_574035", action = "action_EVENT_GADGET_STATE_CHANGE_574035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "giving", value = 0, no_refresh = true },
	{ config_id = 2, name = "win", value = 0, no_refresh = true }
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
		gadgets = { 574002, 574003, 574004, 574005, 574006, 574007, 574009, 574010, 574020 },
		regions = { 574008 },
		triggers = { "ENTER_REGION_574008", "GROUP_LOAD_574013", "GROUP_LOAD_574019", "SELECT_OPTION_574021", "SELECT_OPTION_574022", "SELECT_OPTION_574023", "SELECT_OPTION_574024", "ANY_MONSTER_DIE_574025", "TIME_AXIS_PASS_574026", "VARIABLE_CHANGE_574027", "GADGET_STATE_CHANGE_574028", "GADGET_STATE_CHANGE_574029", "SELECT_OPTION_574030", "TIME_AXIS_PASS_574031", "TIME_AXIS_PASS_574032", "ANY_MONSTER_LIVE_574033", "GADGET_STATE_CHANGE_574034", "GADGET_STATE_CHANGE_574035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_574008(context, evt)
	if evt.param1 ~= 574008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"giving"为0
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_574008(context, evt)
	-- 调用提示id为 322072824 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072824) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2655.858，204.1，-4562.9），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2655.858, y=204.1, z=-4562.9}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_574013(context, evt)
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_574013(context, evt)
	-- 将configid为 574003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 574004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 574005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 574006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 574007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为574012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 574002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_574019(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_574019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210004") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.MONSTER, 574001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_574021(context, evt)
	-- 判断是gadgetid 574004 option_id 79
	if 574004 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_574021(context, evt)
	
	-- 将在groupid为 133220574 中的 configid为 574004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 574004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 574004 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_574022(context, evt)
	-- 判断是gadgetid 574005 option_id 79
	if 574005 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_574022(context, evt)
	
	-- 将在groupid为 133220574 中的 configid为 574005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 574005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 574005 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_574023(context, evt)
	-- 判断是gadgetid 574006 option_id 79
	if 574006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_574023(context, evt)
	
	-- 将在groupid为 133220574 中的 configid为 574006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 574006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 574006 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_574024(context, evt)
	-- 判断是gadgetid 574007 option_id 79
	if 574007 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_574024(context, evt)
	
	-- 将在groupid为 133220574 中的 configid为 574007 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574007) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 574007 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574007, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574007, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 574007 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_574025(context, evt)
	--判断死亡怪物的configid是否为 574001
	if evt.param1 ~= 574001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_574025(context, evt)
	-- 创建标识为"cutscene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "cutscene", {2}, false)
	
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 574009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 574010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220574, EntityType.GADGET, 574014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220574, EntityType.GADGET, 574015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220574, EntityType.GADGET, 574016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220574, EntityType.GADGET, 574017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220574, EntityType.GADGET, 574018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220574, EntityType.GADGET, 574011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_574026(context, evt)
	if "cutscene" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_574026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210004") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_574027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_574027(context, evt)
	-- 将configid为 574003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_574028(context, evt)
	if 574003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_574028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220574, 574007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 574004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 574005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 574006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 574007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_574029(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574003) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574007) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574006) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574005) then
		return false
	end
	
	if GadgetState.Action01 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220574, 574004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_574029(context, evt)
	-- 停止标识为"failedplay"的时间轴
	ScriptLib.EndTimeAxis(context, "failedplay")
	
	
	-- 创建标识为"winplay"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "winplay", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_574030(context, evt)
	-- 判断是gadgetid 574003 option_id 80
	if 574003 ~= evt.param1 then
		return false	
	end
	
	if 80 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_574030(context, evt)
	-- 删除指定group： 133220574 ；指定config：574003；物件身上指定option：80；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220574, 574003, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133220574中， configid为574003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220574, 574003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"failedplay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failedplay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_574031(context, evt)
	if "winplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_574031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 574001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_574032(context, evt)
	if "failedplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_574032(context, evt)
	-- 将configid为 574003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 574003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_574033(context, evt)
	if 574001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_574033(context, evt)
	-- 调用提示id为 322072825 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072825) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_574034(context, evt)
	if 574002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"giving"为0
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_574034(context, evt)
	-- 针对当前group内变量名为 "giving" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "giving", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为574012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为574011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 574011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2654.943，216.45，-4550.968），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2654.943, y=216.45, z=-4550.968}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 5 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_574035(context, evt)
	if 574003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_574035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end