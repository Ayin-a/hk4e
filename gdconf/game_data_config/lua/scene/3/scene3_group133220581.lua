-- 基础信息
local base_info = {
	group_id = 133220581
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 581001, monster_id = 25100401, pos = { x = -2302.879, y = 199.953, z = -4245.485 }, rot = { x = 359.975, y = 251.192, z = 1.208 }, level = 27, drop_id = 1000100, affix = { 1008 }, isOneoff = true, pose_id = 1001, title_id = 10032, special_name_id = 10054, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 581002, gadget_id = 70380282, pos = { x = -2312.867, y = 202.415, z = -4250.066 }, rot = { x = 1.199, y = 152.875, z = 359.851 }, level = 27, persistent = true, interact_id = 25, area_id = 11 },
	{ config_id = 581003, gadget_id = 70290069, pos = { x = -2312.881, y = 201.172, z = -4250.041 }, rot = { x = 0.056, y = 247.321, z = 1.207 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 581004, gadget_id = 70290070, pos = { x = -2289.656, y = 203.476, z = -4232.524 }, rot = { x = 18.756, y = 67.831, z = 10.101 }, level = 27, persistent = true, mark_flag = 2, area_id = 11 },
	{ config_id = 581005, gadget_id = 70290070, pos = { x = -2287.379, y = 204.811, z = -4247.527 }, rot = { x = 22.378, y = 149.769, z = 352.268 }, level = 27, persistent = true, mark_flag = 2, area_id = 11 },
	{ config_id = 581006, gadget_id = 70290070, pos = { x = -2311.731, y = 200.873, z = -4236.630 }, rot = { x = 359.847, y = 215.670, z = 2.993 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 581007, gadget_id = 70290070, pos = { x = -2295.320, y = 200.386, z = -4266.548 }, rot = { x = 359.843, y = 337.327, z = 0.393 }, level = 27, state = GadgetState.GearStop, mark_flag = 2, area_id = 11 },
	{ config_id = 581008, gadget_id = 70330092, pos = { x = -2287.126, y = 204.786, z = -4247.510 }, rot = { x = 0.000, y = 262.488, z = 22.664 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 581009, gadget_id = 70800036, pos = { x = -2293.844, y = 213.114, z = -4238.703 }, rot = { x = 0.000, y = 250.520, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 581010, gadget_id = 70800037, pos = { x = -2300.042, y = 209.345, z = -4233.017 }, rot = { x = 0.000, y = 83.695, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 581012, gadget_id = 70330096, pos = { x = -2298.100, y = 203.527, z = -4243.707 }, rot = { x = 0.000, y = 247.613, z = 0.000 }, level = 27, state = GadgetState.GearAction1, area_id = 11 },
	{ config_id = 581014, gadget_id = 70330101, pos = { x = -2298.347, y = 204.175, z = -4243.166 }, rot = { x = 316.102, y = 335.143, z = 180.000 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 581015, gadget_id = 70330101, pos = { x = -2298.540, y = 203.045, z = -4242.748 }, rot = { x = 316.102, y = 335.143, z = 180.000 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 581016, gadget_id = 70330101, pos = { x = -2298.089, y = 202.468, z = -4243.717 }, rot = { x = 316.102, y = 335.143, z = 180.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 581017, gadget_id = 70330101, pos = { x = -2297.664, y = 203.024, z = -4244.638 }, rot = { x = 316.102, y = 335.143, z = 180.000 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 581018, gadget_id = 70330101, pos = { x = -2297.812, y = 204.281, z = -4244.315 }, rot = { x = 316.102, y = 335.143, z = 180.000 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 581019, gadget_id = 70330103, pos = { x = -2298.089, y = 202.468, z = -4243.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 581020, gadget_id = 70360001, pos = { x = -2301.095, y = 201.210, z = -4244.290 }, rot = { x = 0.000, y = 155.143, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 581038, gadget_id = 70330092, pos = { x = -2289.467, y = 203.453, z = -4232.528 }, rot = { x = 340.039, y = 267.723, z = 351.374 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1581011, name = "QUEST_FINISH_581011", event = EventType.EVENT_QUEST_FINISH, source = "7210011", condition = "", action = "action_EVENT_QUEST_FINISH_581011", trigger_count = 0 },
	-- (2)当1号雷桩是201时，加载2345的按钮。
	{ config_id = 1581013, name = "GADGET_STATE_CHANGE_581013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581013", action = "action_EVENT_GADGET_STATE_CHANGE_581013", trigger_count = 0 },
	-- 2号雷桩切换 加载1号判定按钮
	{ config_id = 1581021, name = "SELECT_OPTION_581021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_581021", action = "action_EVENT_SELECT_OPTION_581021", trigger_count = 0 },
	-- 3号雷桩切换 加载1号判定按钮
	{ config_id = 1581022, name = "SELECT_OPTION_581022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_581022", action = "action_EVENT_SELECT_OPTION_581022", trigger_count = 0 },
	-- 4号雷桩切换 加载1号判定按钮
	{ config_id = 1581023, name = "SELECT_OPTION_581023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_581023", action = "action_EVENT_SELECT_OPTION_581023", trigger_count = 0 },
	-- 5号雷桩切换 加载1号判定按钮
	{ config_id = 1581024, name = "SELECT_OPTION_581024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_581024", action = "action_EVENT_SELECT_OPTION_581024", trigger_count = 0 },
	-- 怪物死亡后创生操作台
	{ config_id = 1581025, name = "ANY_MONSTER_DIE_581025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_581025", action = "action_EVENT_ANY_MONSTER_DIE_581025", trigger_count = 0 },
	-- CS播完任务完成
	{ config_id = 1581026, name = "TIME_AXIS_PASS_581026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_581026", action = "action_EVENT_TIME_AXIS_PASS_581026", trigger_count = 0 },
	-- 1号雷桩交付祭具，提交后重置各个雷桩的状态
	{ config_id = 1581027, name = "VARIABLE_CHANGE_581027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581027", action = "action_EVENT_VARIABLE_CHANGE_581027", trigger_count = 0 },
	-- (1)当1号雷桩是201时，加载2345的按钮。
	{ config_id = 1581028, name = "GADGET_STATE_CHANGE_581028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581028", action = "action_EVENT_GADGET_STATE_CHANGE_581028", trigger_count = 0 },
	-- 判定trigger
	{ config_id = 1581029, name = "GADGET_STATE_CHANGE_581029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581029", action = "action_EVENT_GADGET_STATE_CHANGE_581029", trigger_count = 0 },
	-- 判定按钮
	{ config_id = 1581030, name = "SELECT_OPTION_581030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_581030", action = "action_EVENT_SELECT_OPTION_581030", trigger_count = 0 },
	-- winplay完成后
	{ config_id = 1581031, name = "TIME_AXIS_PASS_581031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_581031", action = "action_EVENT_TIME_AXIS_PASS_581031" },
	-- failedplay完成后
	{ config_id = 1581032, name = "TIME_AXIS_PASS_581032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_581032", action = "action_EVENT_TIME_AXIS_PASS_581032", trigger_count = 0 },
	-- 回滚
	{ config_id = 1581033, name = "GROUP_LOAD_581033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_581033", action = "action_EVENT_GROUP_LOAD_581033", trigger_count = 0 },
	-- 交付后交付变量=1
	{ config_id = 1581034, name = "GADGET_STATE_CHANGE_581034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581034", action = "action_EVENT_GADGET_STATE_CHANGE_581034", trigger_count = 0 },
	-- 1号雷桩启动后（201）时加载判定按钮
	{ config_id = 1581035, name = "GADGET_STATE_CHANGE_581035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581035", action = "action_EVENT_GADGET_STATE_CHANGE_581035", trigger_count = 0 },
	-- 断线重连再次发通知4
	{ config_id = 1581036, name = "GROUP_LOAD_581036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_581036", action = "action_EVENT_GROUP_LOAD_581036", trigger_count = 0 },
	{ config_id = 1581039, name = "USE_WIDGET_TOY_FOX_CAMERA_581039", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581039", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581039", trigger_count = 0 },
	{ config_id = 1581040, name = "USE_WIDGET_TOY_FOX_CAMERA_581040", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581040", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581040", trigger_count = 0 }
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
		gadgets = { 581002, 581003, 581006, 581007, 581008, 581009, 581010, 581020, 581038 },
		regions = { },
		triggers = { "QUEST_FINISH_581011", "GADGET_STATE_CHANGE_581013", "SELECT_OPTION_581021", "SELECT_OPTION_581022", "SELECT_OPTION_581023", "SELECT_OPTION_581024", "ANY_MONSTER_DIE_581025", "TIME_AXIS_PASS_581026", "VARIABLE_CHANGE_581027", "GADGET_STATE_CHANGE_581028", "GADGET_STATE_CHANGE_581029", "SELECT_OPTION_581030", "TIME_AXIS_PASS_581031", "TIME_AXIS_PASS_581032", "GROUP_LOAD_581033", "GADGET_STATE_CHANGE_581034", "GADGET_STATE_CHANGE_581035", "GROUP_LOAD_581036", "USE_WIDGET_TOY_FOX_CAMERA_581039", "USE_WIDGET_TOY_FOX_CAMERA_581040" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_581011(context, evt)
	-- 调用提示id为 322072605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581013(context, evt)
	if 581003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 581006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581007 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581007, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_581021(context, evt)
	-- 判断是gadgetid 581004 option_id 79
	if 581004 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_581021(context, evt)
	
	-- 将在groupid为 133220581 中的 configid为 581004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 581004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 581004 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_581022(context, evt)
	-- 判断是gadgetid 581005 option_id 79
	if 581005 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_581022(context, evt)
	
	-- 将在groupid为 133220581 中的 configid为 581005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 581005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 581005 .."State没有成功")
	
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_581023(context, evt)
	-- 判断是gadgetid 581006 option_id 79
	if 581006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_581023(context, evt)
	
	-- 将在groupid为 133220581 中的 configid为 581006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 581006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 581006 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_581024(context, evt)
	-- 判断是gadgetid 581007 option_id 79
	if 581007 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_581024(context, evt)
	
	-- 将在groupid为 133220581 中的 configid为 581007 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581007) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 581007 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581007, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581007, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 581007 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_581025(context, evt)
	--判断死亡怪物的configid是否为 581001
	if evt.param1 ~= 581001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_581025(context, evt)
	-- 创建标识为"cutscene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "cutscene", {2}, false)
	
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 581009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_581026(context, evt)
	if "cutscene" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_581026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 581009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581027(context, evt)
	-- 将configid为 581003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581028(context, evt)
	if 581003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 581007 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581007, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581005 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581005, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581029(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581003) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581004) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581005) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581006) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220581, 581007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581029(context, evt)
	-- 停止标识为"failedplay"的时间轴
	ScriptLib.EndTimeAxis(context, "failedplay")
	
	
	-- 创建标识为"winplay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "winplay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_581030(context, evt)
	-- 判断是gadgetid 581003 option_id 80
	if 581003 ~= evt.param1 then
		return false	
	end
	
	if 80 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_581030(context, evt)
	-- 删除指定group： 133220581 ；指定config：581003；物件身上指定option：80；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220581, 581003, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133220581中， configid为581003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220581, 581003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"failedplay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failedplay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_581031(context, evt)
	if "winplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_581031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 581001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_581032(context, evt)
	if "failedplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_581032(context, evt)
	-- 将configid为 581003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_581033(context, evt)
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_581033(context, evt)
	-- 将configid为 581002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为581012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 581003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581007 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581007, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581005 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581005, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 581004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581034(context, evt)
	if 581002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"giving"为0
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581034(context, evt)
	-- 针对当前group内变量名为 "giving" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "giving", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2298.592，203.659，-4244.03），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2298.592, y=203.659, z=-4244.03}
	  local pos_follow = {x=0, y=2, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建id为581012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581035(context, evt)
	if 581003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_581036(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_581036(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.MONSTER, 581001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581039(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==581038 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581039(context, evt)
	-- 创建id为581004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 581038 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581038, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581038 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 581004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581040(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==581008 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_581040(context, evt)
	-- 创建id为581005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 581008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.GADGET, 581008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 581005 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 581005, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220581, 581005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end