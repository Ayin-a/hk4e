-- 基础信息
local base_info = {
	group_id = 133107153
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
	-- 默认0 201打开 202转 0是不亮
	{ config_id = 153001, gadget_id = 70710283, pos = { x = -473.265, y = 210.315, z = 327.255 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	-- 默认0 201打开 202转 0是不亮
	{ config_id = 153002, gadget_id = 70710283, pos = { x = -473.096, y = 210.311, z = 324.492 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	-- 默认0 201打开 202转 0是不亮
	{ config_id = 153003, gadget_id = 70710283, pos = { x = -470.402, y = 210.308, z = 324.373 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	-- 左：901/902/903
	{ config_id = 153004, gadget_id = 70710277, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action01, persistent = true, mark_flag = 2, area_id = 7 },
	-- 中：901/902/903
	{ config_id = 153005, gadget_id = 70710278, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action02, persistent = true, mark_flag = 4, area_id = 7 },
	-- 右：901/902/903
	{ config_id = 153006, gadget_id = 70710279, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, state = GadgetState.Action03, persistent = true, mark_flag = 8, area_id = 7 },
	{ config_id = 153014, gadget_id = 70300118, pos = { x = -473.265, y = 210.368, z = 327.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 153015, gadget_id = 70300118, pos = { x = -473.096, y = 210.366, z = 324.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 153016, gadget_id = 70300118, pos = { x = -470.402, y = 210.359, z = 324.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- 无gadgetstate
	{ config_id = 153018, gadget_id = 70710276, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 0.000, y = 225.330, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	-- 切201播放成功
	{ config_id = 153019, gadget_id = 70710280, pos = { x = -469.531, y = 209.750, z = 328.039 }, rot = { x = 359.299, y = 225.330, z = 359.287 }, level = 18, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1153007, name = "SELECT_OPTION_153007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153007", action = "action_EVENT_SELECT_OPTION_153007", trigger_count = 0 },
	{ config_id = 1153008, name = "GADGET_STATE_CHANGE_153008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "fin", condition = "condition_EVENT_GADGET_STATE_CHANGE_153008", action = "action_EVENT_GADGET_STATE_CHANGE_153008", trigger_count = 0 },
	{ config_id = 1153009, name = "GADGET_STATE_CHANGE_153009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "fin", condition = "condition_EVENT_GADGET_STATE_CHANGE_153009", action = "action_EVENT_GADGET_STATE_CHANGE_153009", trigger_count = 0 },
	{ config_id = 1153010, name = "GADGET_STATE_CHANGE_153010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "fin", condition = "condition_EVENT_GADGET_STATE_CHANGE_153010", action = "action_EVENT_GADGET_STATE_CHANGE_153010", trigger_count = 0 },
	{ config_id = 1153011, name = "SELECT_OPTION_153011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153011", action = "action_EVENT_SELECT_OPTION_153011", trigger_count = 0 },
	{ config_id = 1153012, name = "SELECT_OPTION_153012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153012", action = "action_EVENT_SELECT_OPTION_153012", trigger_count = 0 },
	{ config_id = 1153013, name = "SELECT_OPTION_153013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153013", action = "action_EVENT_SELECT_OPTION_153013", trigger_count = 0 },
	{ config_id = 1153017, name = "SELECT_OPTION_153017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153017", action = "action_EVENT_SELECT_OPTION_153017", trigger_count = 0 },
	{ config_id = 1153020, name = "QUEST_FINISH_153020", event = EventType.EVENT_QUEST_FINISH, source = "4135702", condition = "condition_EVENT_QUEST_FINISH_153020", action = "action_EVENT_QUEST_FINISH_153020", trigger_count = 0 },
	{ config_id = 1153021, name = "SELECT_OPTION_153021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153021", action = "action_EVENT_SELECT_OPTION_153021", trigger_count = 0 },
	{ config_id = 1153022, name = "GADGET_CREATE_153022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_153022", action = "action_EVENT_GADGET_CREATE_153022", trigger_count = 0 },
	{ config_id = 1153023, name = "GADGET_CREATE_153023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_153023", action = "action_EVENT_GADGET_CREATE_153023", trigger_count = 0 },
	{ config_id = 1153024, name = "GADGET_CREATE_153024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_153024", action = "action_EVENT_GADGET_CREATE_153024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true }
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
		gadgets = { 153001, 153002, 153003, 153018, 153019 },
		regions = { },
		triggers = { "SELECT_OPTION_153007", "GADGET_STATE_CHANGE_153008", "GADGET_STATE_CHANGE_153009", "GADGET_STATE_CHANGE_153010", "SELECT_OPTION_153011", "SELECT_OPTION_153012", "SELECT_OPTION_153013", "SELECT_OPTION_153017", "QUEST_FINISH_153020", "SELECT_OPTION_153021", "GADGET_CREATE_153022", "GADGET_CREATE_153023", "GADGET_CREATE_153024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 153004, 153005, 153006, 153014, 153015, 153016 },
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
function condition_EVENT_SELECT_OPTION_153007(context, evt)
	-- 判断是gadgetid 153001 option_id 51
	if 153001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153007(context, evt)
	-- 将configid为 153001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107153 ；指定config：153001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	-- 将在groupid为 133107153 中的 configid为 153004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107153, 153004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 153004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107153, 153004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107153, 153004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 153004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153008(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为153001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 153001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153009(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为153002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 153002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153010(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	-- 检测config_id为153003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 153003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_153011(context, evt)
	-- 判断是gadgetid 153002 option_id 52
	if 153002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153011(context, evt)
	-- 将configid为 153002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107153 ；指定config：153002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	-- 将在groupid为 133107153 中的 configid为 153005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107153, 153005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 153005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107153, 153005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107153, 153005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 153005 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_153012(context, evt)
	-- 判断是gadgetid 153003 option_id 53
	if 153003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153012(context, evt)
	-- 将configid为 153003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133107153 ；指定config：153003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	-- 将在groupid为 133107153 中的 configid为 153006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {901,902,903}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133107153, 153006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 153006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133107153, 153006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107153, 153006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 153006 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_153013(context, evt)
	-- 判断是gadgetid 153001 option_id 51
	if 153001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107153") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_153017(context, evt)
	-- 判断是gadgetid 153002 option_id 52
	if 153002 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107153") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_153020(context, evt)
	--检查ID为4135702的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4135702 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_153020(context, evt)
	-- 将configid为 153001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 153002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 153003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107153, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_153021(context, evt)
	-- 判断是gadgetid 153003 option_id 53
	if 153003 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107153") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153001；物件身上指定option：51；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153001, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153002；物件身上指定option：52；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153002, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133107153 ；指定config：153003；物件身上指定option：53；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107153, 153003, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_153022(context, evt)
	if 153004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_153022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107153, 153001, {51}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_153023(context, evt)
	if 153005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_153023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107153, 153002, {52}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_153024(context, evt)
	if 153006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_153024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107153, 153003, {53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end