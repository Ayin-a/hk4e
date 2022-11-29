-- 基础信息
local base_info = {
	group_id = 133220570
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 570001, monster_id = 25100401, pos = { x = -2682.767, y = 214.594, z = -4330.343 }, rot = { x = 0.024, y = 306.310, z = 0.208 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 1001, title_id = 10031, special_name_id = 10053, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 570002, gadget_id = 70380282, pos = { x = -2696.717, y = 217.535, z = -4323.995 }, rot = { x = 2.748, y = 294.338, z = 10.900 }, level = 27, persistent = true, interact_id = 23, area_id = 11 },
	{ config_id = 570003, gadget_id = 70290069, pos = { x = -2696.653, y = 216.312, z = -4323.675 }, rot = { x = 358.320, y = 300.939, z = 10.923 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 570004, gadget_id = 70290070, pos = { x = -2679.061, y = 214.237, z = -4333.282 }, rot = { x = 0.199, y = 148.906, z = 1.604 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 570005, gadget_id = 70290070, pos = { x = -2691.691, y = 215.888, z = -4343.828 }, rot = { x = 0.822, y = 46.445, z = 1.893 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 570006, gadget_id = 70290070, pos = { x = -2672.623, y = 215.127, z = -4326.659 }, rot = { x = 358.944, y = 311.379, z = 1.873 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 570007, gadget_id = 70290070, pos = { x = -2664.546, y = 215.270, z = -4342.293 }, rot = { x = 357.456, y = 33.475, z = 6.977 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 570008, gadget_id = 70330103, pos = { x = -2681.008, y = 218.097, z = -4332.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 570009, gadget_id = 70800036, pos = { x = -2677.167, y = 227.610, z = -4333.579 }, rot = { x = 0.000, y = 312.450, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 570010, gadget_id = 70800037, pos = { x = -2672.020, y = 224.784, z = -4326.668 }, rot = { x = 0.000, y = 145.626, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 570012, gadget_id = 70330096, pos = { x = -2680.965, y = 218.121, z = -4332.765 }, rot = { x = 0.000, y = 312.977, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 11 },
	{ config_id = 570014, gadget_id = 70330101, pos = { x = -2680.916, y = 217.076, z = -4332.639 }, rot = { x = 46.344, y = 217.074, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 570015, gadget_id = 70330101, pos = { x = -2681.008, y = 218.097, z = -4332.763 }, rot = { x = 46.344, y = 217.074, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 570016, gadget_id = 70330101, pos = { x = -2681.037, y = 219.108, z = -4332.803 }, rot = { x = 46.344, y = 217.074, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 570017, gadget_id = 70330101, pos = { x = -2680.424, y = 218.398, z = -4331.992 }, rot = { x = 46.344, y = 217.074, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 570018, gadget_id = 70330101, pos = { x = -2681.586, y = 218.556, z = -4333.528 }, rot = { x = 0.000, y = 217.074, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 当1号雷桩是201时，加载2345的按钮。
	{ config_id = 1570013, name = "GADGET_STATE_CHANGE_570013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_570013", action = "action_EVENT_GADGET_STATE_CHANGE_570013", trigger_count = 0 },
	-- 断线重连再次发通知2
	{ config_id = 1570019, name = "GROUP_LOAD_570019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_570019", action = "action_EVENT_GROUP_LOAD_570019", trigger_count = 0 },
	-- 2号雷桩切换 加载1号判定按钮
	{ config_id = 1570021, name = "SELECT_OPTION_570021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_570021", action = "action_EVENT_SELECT_OPTION_570021", trigger_count = 0 },
	-- 3号雷桩切换 加载1号判定按钮
	{ config_id = 1570022, name = "SELECT_OPTION_570022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_570022", action = "action_EVENT_SELECT_OPTION_570022", trigger_count = 0 },
	-- 4号雷桩切换 加载1号判定按钮
	{ config_id = 1570023, name = "SELECT_OPTION_570023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_570023", action = "action_EVENT_SELECT_OPTION_570023", trigger_count = 0 },
	-- 5号雷桩切换 加载1号判定按钮
	{ config_id = 1570024, name = "SELECT_OPTION_570024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_570024", action = "action_EVENT_SELECT_OPTION_570024", trigger_count = 0 },
	-- 怪物死亡后创生操作台
	{ config_id = 1570025, name = "ANY_MONSTER_DIE_570025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_570025", action = "action_EVENT_ANY_MONSTER_DIE_570025", trigger_count = 0 },
	-- CS播完任务完成
	{ config_id = 1570026, name = "TIME_AXIS_PASS_570026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_570026", action = "action_EVENT_TIME_AXIS_PASS_570026", trigger_count = 0 },
	-- 1号雷桩交付祭具，提交后重置各个雷桩的状态
	{ config_id = 1570027, name = "VARIABLE_CHANGE_570027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_570027", action = "action_EVENT_VARIABLE_CHANGE_570027" },
	-- 回滚
	{ config_id = 1570028, name = "GROUP_LOAD_570028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_570028", action = "action_EVENT_GROUP_LOAD_570028", trigger_count = 0 },
	-- 判定trigger
	{ config_id = 1570029, name = "GADGET_STATE_CHANGE_570029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_570029", action = "action_EVENT_GADGET_STATE_CHANGE_570029", trigger_count = 0 },
	-- 判定按钮
	{ config_id = 1570030, name = "SELECT_OPTION_570030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_570030", action = "action_EVENT_SELECT_OPTION_570030", trigger_count = 0 },
	-- winplay完成后
	{ config_id = 1570031, name = "TIME_AXIS_PASS_570031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_570031", action = "action_EVENT_TIME_AXIS_PASS_570031" },
	-- failedplay完成后
	{ config_id = 1570032, name = "TIME_AXIS_PASS_570032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_570032", action = "action_EVENT_TIME_AXIS_PASS_570032", trigger_count = 0 },
	-- 交付后交付变量=1
	{ config_id = 1570034, name = "GADGET_STATE_CHANGE_570034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_570034", action = "action_EVENT_GADGET_STATE_CHANGE_570034", trigger_count = 0 },
	-- 1号雷桩启动后（201）时加载判定按钮
	{ config_id = 1570035, name = "GADGET_STATE_CHANGE_570035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_570035", action = "action_EVENT_GADGET_STATE_CHANGE_570035", trigger_count = 0 }
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
		gadgets = { 570002, 570003, 570004, 570005, 570006, 570007, 570009, 570010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_570013", "GROUP_LOAD_570019", "SELECT_OPTION_570021", "SELECT_OPTION_570022", "SELECT_OPTION_570023", "SELECT_OPTION_570024", "ANY_MONSTER_DIE_570025", "TIME_AXIS_PASS_570026", "VARIABLE_CHANGE_570027", "GROUP_LOAD_570028", "GADGET_STATE_CHANGE_570029", "SELECT_OPTION_570030", "TIME_AXIS_PASS_570031", "TIME_AXIS_PASS_570032", "GADGET_STATE_CHANGE_570034", "GADGET_STATE_CHANGE_570035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_570013(context, evt)
	if 570003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_570013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 570004 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570004, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_570019(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_570019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.MONSTER, 570001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_570021(context, evt)
	-- 判断是gadgetid 570004 option_id 79
	if 570004 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_570021(context, evt)
	
	-- 将在groupid为 133220570 中的 configid为 570004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 570004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 570004 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_570022(context, evt)
	-- 判断是gadgetid 570005 option_id 79
	if 570005 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_570022(context, evt)
	
	-- 将在groupid为 133220570 中的 configid为 570005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 570005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 570005 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_570023(context, evt)
	-- 判断是gadgetid 570006 option_id 79
	if 570006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_570023(context, evt)
	
	-- 将在groupid为 133220570 中的 configid为 570006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 570006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 570006 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_570024(context, evt)
	-- 判断是gadgetid 570007 option_id 79
	if 570007 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_570024(context, evt)
	
	-- 将在groupid为 133220570 中的 configid为 570007 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570007) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 570007 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570007, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570007, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 570007 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_570025(context, evt)
	--判断死亡怪物的configid是否为 570001
	if evt.param1 ~= 570001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_570025(context, evt)
	-- 创建标识为"cutscene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "cutscene", {2}, false)
	
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 570009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220570, EntityType.GADGET, 570014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220570, EntityType.GADGET, 570015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220570, EntityType.GADGET, 570016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220570, EntityType.GADGET, 570017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220570, EntityType.GADGET, 570018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220570, EntityType.GADGET, 570008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_570026(context, evt)
	if "cutscene" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_570026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_570027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_570027(context, evt)
	-- 将configid为 570003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_570028(context, evt)
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_570028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220570, 570007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 570003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 570007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为570012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 570002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_570029(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570003) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570004) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570005) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570006) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220570, 570007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_570029(context, evt)
	-- 停止标识为"failedplay"的时间轴
	ScriptLib.EndTimeAxis(context, "failedplay")
	
	
	-- 创建标识为"winplay"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "winplay", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_570030(context, evt)
	-- 判断是gadgetid 570003 option_id 80
	if 570003 ~= evt.param1 then
		return false	
	end
	
	if 80 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_570030(context, evt)
	-- 删除指定group： 133220570 ；指定config：570003；物件身上指定option：80；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220570, 570003, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133220570中， configid为570003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220570, 570003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"failedplay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failedplay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_570031(context, evt)
	if "winplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_570031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 570001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 7210719 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210719) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_570032(context, evt)
	if "failedplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_570032(context, evt)
	-- 将configid为 570003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 570003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_570034(context, evt)
	if 570002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"giving"为0
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_570034(context, evt)
	-- 针对当前group内变量名为 "giving" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "giving", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为570012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2680.661，217.827，-4332.786），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2680.661, y=217.827, z=-4332.786}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_570035(context, evt)
	if 570003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_570035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end