-- 基础信息
local base_info = {
	group_id = 133107164
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
	-- 默认201（201打开 202转 0不亮）
	{ config_id = 164001, gadget_id = 70710283, pos = { x = -473.265, y = 210.315, z = 327.255 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 默认201（201打开 202转 0不亮）
	{ config_id = 164002, gadget_id = 70710283, pos = { x = -473.096, y = 210.311, z = 324.492 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 默认201（201打开 202转 0不亮）
	{ config_id = 164003, gadget_id = 70710283, pos = { x = -470.402, y = 210.308, z = 324.373 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 左：901/902/903
	{ config_id = 164004, gadget_id = 70710277, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action02, persistent = true, mark_flag = 2, area_id = 7 },
	-- 中：901/902/903
	{ config_id = 164005, gadget_id = 70710278, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action03, persistent = true, mark_flag = 4, area_id = 7 },
	-- 右：901/902/903
	{ config_id = 164006, gadget_id = 70710279, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action01, persistent = true, mark_flag = 8, area_id = 7 },
	-- 无gadgetstate（第二章中部分解谜）
	{ config_id = 164011, gadget_id = 70710274, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	-- 切201播放成功 摩拉
	{ config_id = 164012, gadget_id = 70710280, pos = { x = -469.556, y = 209.750, z = 328.014 }, rot = { x = 359.299, y = 225.330, z = 359.287 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 164032, gadget_id = 70360001, pos = { x = -470.443, y = 210.934, z = 327.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164008, name = "GADGET_CREATE_164008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_164008", action = "action_EVENT_GADGET_CREATE_164008", trigger_count = 0 },
	{ config_id = 1164009, name = "SELECT_OPTION_164009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164009", action = "action_EVENT_SELECT_OPTION_164009", trigger_count = 0 },
	{ config_id = 1164010, name = "TIMER_EVENT_164010", event = EventType.EVENT_TIMER_EVENT, source = "guanchahou2", condition = "", action = "action_EVENT_TIMER_EVENT_164010", trigger_count = 0 },
	{ config_id = 1164013, name = "SELECT_OPTION_164013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164013", action = "action_EVENT_SELECT_OPTION_164013", trigger_count = 0 },
	{ config_id = 1164014, name = "GADGET_CREATE_164014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_164014", action = "action_EVENT_GADGET_CREATE_164014", trigger_count = 0 },
	{ config_id = 1164015, name = "GADGET_CREATE_164015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_164015", action = "action_EVENT_GADGET_CREATE_164015", trigger_count = 0 },
	{ config_id = 1164016, name = "GADGET_CREATE_164016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_164016", action = "action_EVENT_GADGET_CREATE_164016", trigger_count = 0 },
	{ config_id = 1164017, name = "SELECT_OPTION_164017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164017", action = "action_EVENT_SELECT_OPTION_164017", trigger_count = 0 },
	{ config_id = 1164018, name = "SELECT_OPTION_164018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164018", action = "action_EVENT_SELECT_OPTION_164018", trigger_count = 0 },
	{ config_id = 1164019, name = "TIMER_EVENT_164019", event = EventType.EVENT_TIMER_EVENT, source = "findelay", condition = "", action = "action_EVENT_TIMER_EVENT_164019", trigger_count = 0 },
	{ config_id = 1164020, name = "GADGET_STATE_CHANGE_164020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164020", action = "action_EVENT_GADGET_STATE_CHANGE_164020", trigger_count = 0 },
	{ config_id = 1164021, name = "GADGET_STATE_CHANGE_164021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164021", action = "action_EVENT_GADGET_STATE_CHANGE_164021", trigger_count = 0 },
	{ config_id = 1164022, name = "GADGET_STATE_CHANGE_164022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164022", action = "action_EVENT_GADGET_STATE_CHANGE_164022", trigger_count = 0 },
	{ config_id = 1164023, name = "SELECT_OPTION_164023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164023", action = "action_EVENT_SELECT_OPTION_164023", trigger_count = 0 },
	{ config_id = 1164024, name = "SELECT_OPTION_164024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164024", action = "action_EVENT_SELECT_OPTION_164024", trigger_count = 0 },
	{ config_id = 1164025, name = "SELECT_OPTION_164025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164025", action = "action_EVENT_SELECT_OPTION_164025", trigger_count = 0 },
	{ config_id = 1164026, name = "SELECT_OPTION_164026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164026", action = "action_EVENT_SELECT_OPTION_164026", trigger_count = 0 },
	{ config_id = 1164027, name = "SELECT_OPTION_164027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164027", action = "action_EVENT_SELECT_OPTION_164027", trigger_count = 0 },
	{ config_id = 1164028, name = "SELECT_OPTION_164028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164028", action = "action_EVENT_SELECT_OPTION_164028", trigger_count = 0 },
	{ config_id = 1164029, name = "GADGET_STATE_CHANGE_164029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164029", action = "action_EVENT_GADGET_STATE_CHANGE_164029", trigger_count = 0 },
	{ config_id = 1164030, name = "GROUP_LOAD_164030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164030", action = "action_EVENT_GROUP_LOAD_164030", trigger_count = 0 },
	{ config_id = 1164031, name = "GROUP_LOAD_164031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164031", action = "action_EVENT_GROUP_LOAD_164031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
	{ config_id = 2, name = "guancha2", value = 0, no_refresh = true }
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
		gadgets = { 164001, 164002, 164003, 164004, 164005, 164006, 164011, 164012 },
		regions = { },
		triggers = { "GADGET_CREATE_164008", "SELECT_OPTION_164009", "TIMER_EVENT_164010", "SELECT_OPTION_164013", "GADGET_CREATE_164014", "GADGET_CREATE_164015", "GADGET_CREATE_164016", "SELECT_OPTION_164017", "SELECT_OPTION_164018", "TIMER_EVENT_164019", "GADGET_STATE_CHANGE_164020", "GADGET_STATE_CHANGE_164021", "GADGET_STATE_CHANGE_164022", "SELECT_OPTION_164023", "SELECT_OPTION_164024", "SELECT_OPTION_164025", "SELECT_OPTION_164026", "SELECT_OPTION_164027", "SELECT_OPTION_164028", "GADGET_STATE_CHANGE_164029", "GROUP_LOAD_164030", "GROUP_LOAD_164031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_164008(context, evt)
	if 164032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_164008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107164, 164032, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164009(context, evt)
	-- 判断是gadgetid 164032 option_id 188
	if 164032 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164009(context, evt)
	-- 删除指定group： 133107164 ；指定config：164032；物件身上指定option：188；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164032, 188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 164032 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "guancha2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟9秒后,向groupId为：133107164的对象,请求一次调用,并将string参数："guanchahou2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107164, "guanchahou2", 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 调用提示id为 1110190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_guancha02") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164013(context, evt)
	-- 判断是gadgetid 164001 option_id 51
	if 164001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164013(context, evt)
	-- 将configid为 164001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107164 中的 configid为 164004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107164, 164004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 164004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 164004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_164014(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 164001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_164014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_164015(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 164002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_164015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_164016(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 164003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_164016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164017(context, evt)
	-- 判断是gadgetid 164002 option_id 52
	if 164002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164017(context, evt)
	-- 将configid为 164001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107164 中的 configid为 164004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107164, 164004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 164004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 164004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164018(context, evt)
	-- 判断是gadgetid 164003 option_id 53
	if 164003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164018(context, evt)
	-- 删除指定group： 133107164 ；指定config：164003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164019(context, evt)
	-- 将configid为 164012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107164") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "guancha2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133107164 ；指定config：164001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107164 ；指定config：164002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107164 ；指定config：164003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-470，212，328），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-470, y=212, z=328}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建id为164032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164020(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为164001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164021(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为164002的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 164002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164022(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为164003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 164003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164023(context, evt)
	-- 判断是gadgetid 164001 option_id 51
	if 164001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164023(context, evt)
	-- 删除指定group： 133107164 ；指定config：164001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164024(context, evt)
	-- 判断是gadgetid 164002 option_id 52
	if 164002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164024(context, evt)
	-- 删除指定group： 133107164 ；指定config：164002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164025(context, evt)
	-- 判断是gadgetid 164002 option_id 52
	if 164002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164025(context, evt)
	-- 将configid为 164002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107164 中的 configid为 164005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107164, 164005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 164005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 164005 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164026(context, evt)
	-- 判断是gadgetid 164002 option_id 52
	if 164002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164026(context, evt)
	-- 将configid为 164003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107164 中的 configid为 164006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107164, 164006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 164006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 164006 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164027(context, evt)
	-- 判断是gadgetid 164003 option_id 53
	if 164003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164027(context, evt)
	-- 将configid为 164001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107164 中的 configid为 164004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107164, 164004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 164004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 164004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164028(context, evt)
	-- 判断是gadgetid 164003 option_id 53
	if 164003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164028(context, evt)
	-- 将configid为 164003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107164 中的 configid为 164006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107164, 164006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 164006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107164, 164006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 164006 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164029(context, evt)
	-- 第二章判定
	
	--物件发生状态改变时开始判断，缩小判定范围至物件ID
	if 164004 ~= evt.param2 and 164005 ~= evt.param2 and 164006 ~= evt.param2 then
	        return false
	end
	
	--当某物件状态为Action02时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 164004) ~= GadgetState.Action02 then
	        return false
	end 
	
	--当某物件状态为Action02时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 164005) ~= GadgetState.Action02 then
	        return false
	end        
	
	--当某物件状态为Action02时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 164006) ~= GadgetState.Action02 then
	        return false
	end        
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164029(context, evt)
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：133107164的对象,请求一次调用,并将string参数："findelay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107164, "findelay", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 164001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107164 ；指定config：164001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107164 ；指定config：164002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107164 ；指定config：164003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107164, 164003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164030(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107164") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "guancha2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 164004 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164005 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164005, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164006 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164006, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164031(context, evt)
	-- 判断变量"guancha2"为1
	if ScriptLib.GetGroupVariableValue(context, "guancha2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_guancha02") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end