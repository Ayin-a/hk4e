-- 基础信息
local base_info = {
	group_id = 133107163
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
	{ config_id = 163001, gadget_id = 70710283, pos = { x = -473.265, y = 210.315, z = 327.255 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 默认201（201打开 202转 0不亮）
	{ config_id = 163002, gadget_id = 70710283, pos = { x = -473.096, y = 210.311, z = 324.492 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 默认201（201打开 202转 0不亮）
	{ config_id = 163003, gadget_id = 70710283, pos = { x = -470.402, y = 210.308, z = 324.373 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	-- 左：901/902/903
	{ config_id = 163004, gadget_id = 70710277, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action02, persistent = true, mark_flag = 2, area_id = 7 },
	-- 中：901/902/903
	{ config_id = 163005, gadget_id = 70710278, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action03, persistent = true, mark_flag = 4, area_id = 7 },
	-- 右：901/902/903
	{ config_id = 163006, gadget_id = 70710279, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action01, persistent = true, mark_flag = 8, area_id = 7 },
	{ config_id = 163008, gadget_id = 70360001, pos = { x = -470.443, y = 210.934, z = 327.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- 无gadgetstate（第一章最上部分解谜）
	{ config_id = 163011, gadget_id = 70710276, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, area_id = 7 },
	-- 切201播放成功 莲花
	{ config_id = 163012, gadget_id = 70710282, pos = { x = -469.556, y = 209.750, z = 328.014 }, rot = { x = 359.299, y = 225.330, z = 359.287 }, level = 18, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163009, name = "GADGET_CREATE_163009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_163009", action = "action_EVENT_GADGET_CREATE_163009", trigger_count = 0 },
	{ config_id = 1163010, name = "SELECT_OPTION_163010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_163010", action = "action_EVENT_SELECT_OPTION_163010", trigger_count = 0 },
	{ config_id = 1163013, name = "SELECT_OPTION_163013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_163013", action = "action_EVENT_SELECT_OPTION_163013", trigger_count = 0 },
	{ config_id = 1163014, name = "GADGET_CREATE_163014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_163014", action = "action_EVENT_GADGET_CREATE_163014", trigger_count = 0 },
	{ config_id = 1163015, name = "GADGET_CREATE_163015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_163015", action = "action_EVENT_GADGET_CREATE_163015", trigger_count = 0 },
	{ config_id = 1163016, name = "GADGET_CREATE_163016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_163016", action = "action_EVENT_GADGET_CREATE_163016", trigger_count = 0 },
	{ config_id = 1163017, name = "SELECT_OPTION_163017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_163017", action = "action_EVENT_SELECT_OPTION_163017", trigger_count = 0 },
	{ config_id = 1163018, name = "SELECT_OPTION_163018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_163018", action = "action_EVENT_SELECT_OPTION_163018", trigger_count = 0 },
	{ config_id = 1163019, name = "GADGET_STATE_CHANGE_163019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163019", action = "action_EVENT_GADGET_STATE_CHANGE_163019", trigger_count = 0 },
	{ config_id = 1163020, name = "TIMER_EVENT_163020", event = EventType.EVENT_TIMER_EVENT, source = "findelay", condition = "", action = "action_EVENT_TIMER_EVENT_163020", trigger_count = 0 },
	{ config_id = 1163021, name = "GADGET_STATE_CHANGE_163021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163021", action = "action_EVENT_GADGET_STATE_CHANGE_163021", trigger_count = 0 },
	{ config_id = 1163022, name = "GADGET_STATE_CHANGE_163022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163022", action = "action_EVENT_GADGET_STATE_CHANGE_163022", trigger_count = 0 },
	{ config_id = 1163023, name = "GADGET_STATE_CHANGE_163023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163023", action = "action_EVENT_GADGET_STATE_CHANGE_163023", trigger_count = 0 },
	{ config_id = 1163024, name = "GADGET_STATE_CHANGE_163024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163024", action = "action_EVENT_GADGET_STATE_CHANGE_163024", trigger_count = 0 },
	{ config_id = 1163025, name = "GROUP_LOAD_163025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163025", action = "action_EVENT_GROUP_LOAD_163025", trigger_count = 0 },
	{ config_id = 1163026, name = "TIMER_EVENT_163026", event = EventType.EVENT_TIMER_EVENT, source = "guanchahou1", condition = "", action = "action_EVENT_TIMER_EVENT_163026", trigger_count = 0 },
	{ config_id = 1163027, name = "GROUP_LOAD_163027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163027", action = "action_EVENT_GROUP_LOAD_163027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
	{ config_id = 2, name = "guancha1", value = 0, no_refresh = true }
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
		gadgets = { 163001, 163002, 163003, 163004, 163005, 163006, 163011, 163012 },
		regions = { },
		triggers = { "GADGET_CREATE_163009", "SELECT_OPTION_163010", "SELECT_OPTION_163013", "GADGET_CREATE_163014", "GADGET_CREATE_163015", "GADGET_CREATE_163016", "SELECT_OPTION_163017", "SELECT_OPTION_163018", "GADGET_STATE_CHANGE_163019", "TIMER_EVENT_163020", "GADGET_STATE_CHANGE_163021", "GADGET_STATE_CHANGE_163022", "GADGET_STATE_CHANGE_163023", "GADGET_STATE_CHANGE_163024", "GROUP_LOAD_163025", "TIMER_EVENT_163026", "GROUP_LOAD_163027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_163009(context, evt)
	if 163008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_163009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107163, 163008, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_163010(context, evt)
	-- 判断是gadgetid 163008 option_id 188
	if 163008 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_163010(context, evt)
	-- 删除指定group： 133107163 ；指定config：163008；物件身上指定option：188；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163008, 188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "guancha1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 163008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟9秒后,向groupId为：133107163的对象,请求一次调用,并将string参数："guanchahou1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107163, "guanchahou1", 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 调用提示id为 1110186 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_163013(context, evt)
	-- 判断是gadgetid 163001 option_id 51
	if 163001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_163013(context, evt)
	-- 将configid为 163001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107163 ；指定config：163001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	-- 将在groupid为 133107163 中的 configid为 163004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107163, 163004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 163004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107163, 163004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107163, 163004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 163004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_163014(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 163001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_163014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_163015(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 163002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_163015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_163016(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	if 163003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_163016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_163017(context, evt)
	-- 判断是gadgetid 163002 option_id 52
	if 163002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_163017(context, evt)
	-- 将configid为 163002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107163 ；指定config：163002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	-- 将在groupid为 133107163 中的 configid为 163005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107163, 163005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 163005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107163, 163005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107163, 163005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 163005 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_163018(context, evt)
	-- 判断是gadgetid 163003 option_id 53
	if 163003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_163018(context, evt)
	-- 将configid为 163003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107163 ；指定config：163003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	-- 将在groupid为 133107163 中的 configid为 163006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107163, 163006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 163006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107163, 163006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107163, 163006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 163006 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163019(context, evt)
	-- 第一章判定
	
	--物件发生状态改变时开始判断，缩小判定范围至物件ID
	if 163004 ~= evt.param2 and 163005 ~= evt.param2 and 163006 ~= evt.param2 then
	        return false
	end
	
	--当某物件状态为Action03时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 163004) ~= GadgetState.Action03 then
	        return false
	end 
	
	--当某物件状态为Action03时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 163005) ~= GadgetState.Action03 then
	        return false
	end        
	
	--当某物件状态为Action03时，向下执行
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 163006) ~= GadgetState.Action03 then
	        return false
	end        
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163019(context, evt)
	-- 针对当前group内变量名为 "fin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：133107163的对象,请求一次调用,并将string参数："findelay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107163, "findelay", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 163001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107163 ；指定config：163001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107163 ；指定config：163002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107163 ；指定config：163003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_163020(context, evt)
	-- 将configid为 163012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107163") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "guancha1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133107163 ；指定config：163001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107163 ；指定config：163002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107163 ；指定config：163003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163003, 53) then
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
	
	-- 创建id为163008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163021(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为163001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 163001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163022(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为163002的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 163002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163023(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为163003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 163003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163024(context, evt)
	-- 检测config_id为163012的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 163012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163024(context, evt)
	-- 删除指定group： 133107163 ；指定config：163001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107163 ；指定config：163002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107163 ；指定config：163003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107163, 163003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_163025(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "fin", 133107163) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_163025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107163") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "guancha1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guancha1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 163012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163004 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163004, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163005 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163005, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163006 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163006, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163006 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163006, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_163026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_guancha01") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_163027(context, evt)
	-- 判断变量"guancha1"为1
	if ScriptLib.GetGroupVariableValue(context, "guancha1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_163027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_guancha01") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end