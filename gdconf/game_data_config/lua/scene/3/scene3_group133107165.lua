-- 基础信息
local base_info = {
	group_id = 133107165
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
	{ config_id = 165001, gadget_id = 70710283, pos = { x = -473.265, y = 210.315, z = 327.255 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 默认201（201打开 202转 0不亮）
	{ config_id = 165002, gadget_id = 70710283, pos = { x = -473.096, y = 210.311, z = 324.492 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 默认201（201打开 202转 0不亮）
	{ config_id = 165003, gadget_id = 70710283, pos = { x = -470.402, y = 210.308, z = 324.373 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 左：901/902/903
	{ config_id = 165004, gadget_id = 70710277, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action02, persistent = true, mark_flag = 2, area_id = 7 },
	-- 中：901/902/903
	{ config_id = 165005, gadget_id = 70710278, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action03, persistent = true, mark_flag = 4, area_id = 7 },
	-- 右：901/902/903
	{ config_id = 165006, gadget_id = 70710279, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action01, persistent = true, mark_flag = 8, area_id = 7 },
	-- 无gadgetstate（第三章下部分解谜）
	{ config_id = 165011, gadget_id = 70710275, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	-- 切201播放成功 仙鹤
	{ config_id = 165012, gadget_id = 70710281, pos = { x = -469.556, y = 209.750, z = 328.014 }, rot = { x = 359.299, y = 225.330, z = 359.287 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 165032, gadget_id = 70360001, pos = { x = -470.443, y = 210.934, z = 327.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1165008, name = "GADGET_STATE_CHANGE_165008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165008", action = "action_EVENT_GADGET_STATE_CHANGE_165008", trigger_count = 0 },
	{ config_id = 1165009, name = "GROUP_LOAD_165009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_165009", action = "action_EVENT_GROUP_LOAD_165009", trigger_count = 0 },
	{ config_id = 1165010, name = "GADGET_CREATE_165010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_165010", action = "action_EVENT_GADGET_CREATE_165010", trigger_count = 0 },
	{ config_id = 1165013, name = "SELECT_OPTION_165013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165013", action = "action_EVENT_SELECT_OPTION_165013", trigger_count = 0 },
	{ config_id = 1165014, name = "GADGET_CREATE_165014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_165014", action = "action_EVENT_GADGET_CREATE_165014", trigger_count = 0 },
	{ config_id = 1165015, name = "GADGET_CREATE_165015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_165015", action = "action_EVENT_GADGET_CREATE_165015", trigger_count = 0 },
	{ config_id = 1165016, name = "GADGET_CREATE_165016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_165016", action = "action_EVENT_GADGET_CREATE_165016", trigger_count = 0 },
	{ config_id = 1165017, name = "SELECT_OPTION_165017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165017", action = "action_EVENT_SELECT_OPTION_165017", trigger_count = 0 },
	{ config_id = 1165018, name = "SELECT_OPTION_165018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165018", action = "action_EVENT_SELECT_OPTION_165018", trigger_count = 0 },
	{ config_id = 1165019, name = "TIMER_EVENT_165019", event = EventType.EVENT_TIMER_EVENT, source = "findelay", condition = "", action = "action_EVENT_TIMER_EVENT_165019", trigger_count = 0 },
	{ config_id = 1165020, name = "GADGET_STATE_CHANGE_165020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165020", action = "action_EVENT_GADGET_STATE_CHANGE_165020", trigger_count = 0 },
	{ config_id = 1165021, name = "GADGET_STATE_CHANGE_165021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165021", action = "action_EVENT_GADGET_STATE_CHANGE_165021", trigger_count = 0 },
	{ config_id = 1165022, name = "GADGET_STATE_CHANGE_165022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165022", action = "action_EVENT_GADGET_STATE_CHANGE_165022", trigger_count = 0 },
	{ config_id = 1165023, name = "SELECT_OPTION_165023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165023", action = "action_EVENT_SELECT_OPTION_165023", trigger_count = 0 },
	{ config_id = 1165024, name = "SELECT_OPTION_165024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165024", action = "action_EVENT_SELECT_OPTION_165024", trigger_count = 0 },
	{ config_id = 1165025, name = "SELECT_OPTION_165025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165025", action = "action_EVENT_SELECT_OPTION_165025", trigger_count = 0 },
	{ config_id = 1165026, name = "SELECT_OPTION_165026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165026", action = "action_EVENT_SELECT_OPTION_165026", trigger_count = 0 },
	{ config_id = 1165027, name = "SELECT_OPTION_165027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165027", action = "action_EVENT_SELECT_OPTION_165027", trigger_count = 0 },
	{ config_id = 1165028, name = "SELECT_OPTION_165028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165028", action = "action_EVENT_SELECT_OPTION_165028", trigger_count = 0 },
	{ config_id = 1165029, name = "SELECT_OPTION_165029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165029", action = "action_EVENT_SELECT_OPTION_165029", trigger_count = 0 },
	{ config_id = 1165030, name = "TIMER_EVENT_165030", event = EventType.EVENT_TIMER_EVENT, source = "guanchahou3", condition = "", action = "action_EVENT_TIMER_EVENT_165030", trigger_count = 0 },
	{ config_id = 1165031, name = "GROUP_LOAD_165031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_165031", action = "action_EVENT_GROUP_LOAD_165031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
	{ config_id = 2, name = "guancha3", value = 0, no_refresh = true }
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
		gadgets = { 165001, 165002, 165003, 165004, 165005, 165006, 165011, 165012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_165008", "GROUP_LOAD_165009", "GADGET_CREATE_165010", "SELECT_OPTION_165013", "GADGET_CREATE_165014", "GADGET_CREATE_165015", "GADGET_CREATE_165016", "SELECT_OPTION_165017", "SELECT_OPTION_165018", "TIMER_EVENT_165019", "GADGET_STATE_CHANGE_165020", "GADGET_STATE_CHANGE_165021", "GADGET_STATE_CHANGE_165022", "SELECT_OPTION_165023", "SELECT_OPTION_165024", "SELECT_OPTION_165025", "SELECT_OPTION_165026", "SELECT_OPTION_165027", "SELECT_OPTION_165028", "SELECT_OPTION_165029", "TIMER_EVENT_165030", "GROUP_LOAD_165031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165008(context, evt)
	-- 第三章判定
	
	--物件发生状态改变时开始判断，缩小判定范围至物件ID
	if 165004 ~= evt.param2 and 165005 ~= evt.param2 and 165006 ~= evt.param2 then
	        return false
	end
	
	--当某物件状态为Action01时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 165004) ~= GadgetState.Action01 then
	        return false
	end 
	
	--当某物件状态为Action01时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 165005) ~= GadgetState.Action01 then
	        return false
	end        
	
	--当某物件状态为Action01时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 165006) ~= GadgetState.Action01 then
	        return false
	end        
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165008(context, evt)
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：133107165的对象,请求一次调用,并将string参数："findelay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107165, "findelay", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 165001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 165002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 165003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107165 ；指定config：165001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107165 ；指定config：165002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107165 ；指定config：165003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_165009(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_165009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107165") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 165004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "guancha3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 165005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 165006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165006, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 165012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_165010(context, evt)
	if 165032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_165010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107165, 165032, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165013(context, evt)
	-- 判断是gadgetid 165001 option_id 51
	if 165001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165013(context, evt)
	-- 将configid为 165001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107165 中的 configid为 165004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107165, 165004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 165004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 165004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_165014(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 165001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_165014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_165015(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 165002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_165015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_165016(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 165003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_165016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165017(context, evt)
	-- 判断是gadgetid 165032 option_id 188
	if 165032 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165017(context, evt)
	-- 删除指定group： 133107165 ；指定config：165032；物件身上指定option：188；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165032, 188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 165032 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "guancha3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟9秒后,向groupId为：133107165的对象,请求一次调用,并将string参数："guanchahou3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107165, "guanchahou3", 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 调用提示id为 1110191 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110191) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165018(context, evt)
	-- 判断是gadgetid 165003 option_id 53
	if 165003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165018(context, evt)
	-- 删除指定group： 133107165 ；指定config：165003；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165003, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_165019(context, evt)
	-- 将configid为 165012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107165") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "guancha3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133107165 ；指定config：165001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107165 ；指定config：165002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107165 ；指定config：165003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165003, 53) then
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
	
	-- 创建id为165032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 165032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165020(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为165001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 165001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165021(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为165002的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 165002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165022(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为165003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 165003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165023(context, evt)
	-- 判断是gadgetid 165001 option_id 51
	if 165001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165023(context, evt)
	-- 删除指定group： 133107165 ；指定config：165001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165024(context, evt)
	-- 判断是gadgetid 165002 option_id 52
	if 165002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165024(context, evt)
	-- 删除指定group： 133107165 ；指定config：165002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107165, 165002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165025(context, evt)
	-- 判断是gadgetid 165002 option_id 52
	if 165002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165025(context, evt)
	-- 将configid为 165002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107165 中的 configid为 165005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107165, 165005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 165005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 165005 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165026(context, evt)
	-- 判断是gadgetid 165002 option_id 52
	if 165002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165026(context, evt)
	-- 将configid为 165003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107165 中的 configid为 165006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107165, 165006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 165006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 165006 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165027(context, evt)
	-- 判断是gadgetid 165003 option_id 53
	if 165003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165027(context, evt)
	-- 将configid为 165001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107165 中的 configid为 165004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107165, 165004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 165004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 165004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165028(context, evt)
	-- 判断是gadgetid 165003 option_id 53
	if 165003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165028(context, evt)
	-- 将configid为 165003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107165 中的 configid为 165006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107165, 165006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 165006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 165006 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165029(context, evt)
	-- 判断是gadgetid 165001 option_id 51
	if 165001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165029(context, evt)
	-- 将configid为 165002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 将在groupid为 133107165 中的 configid为 165005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107165, 165005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 165005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107165, 165005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 165005 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_165030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_guancha03") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_165031(context, evt)
	-- 判断变量"guancha3"为1
	if ScriptLib.GetGroupVariableValue(context, "guancha3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_165031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_guancha03") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end