-- 基础信息
local base_info = {
	group_id = 133220603
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 603001, monster_id = 25100301, pos = { x = -2260.954, y = 136.244, z = -4853.118 }, rot = { x = 354.110, y = 3.513, z = 359.023 }, level = 27, drop_id = 1000100, pose_id = 1001, title_id = 10032, special_name_id = 10054, climate_area_id = 8, area_id = 11 },
	{ config_id = 603008, monster_id = 25100401, pos = { x = -2256.899, y = 136.351, z = -4852.629 }, rot = { x = 1.439, y = 299.553, z = 1.482 }, level = 27, drop_id = 1000100, pose_id = 1001, title_id = 10032, special_name_id = 10054, climate_area_id = 8, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 603002, gadget_id = 70380282, pos = { x = -2259.780, y = 137.701, z = -4850.851 }, rot = { x = 357.943, y = 328.639, z = 4.936 }, level = 27, persistent = true, interact_id = 26, area_id = 11 },
	{ config_id = 603003, gadget_id = 70290069, pos = { x = -2259.806, y = 136.470, z = -4850.751 }, rot = { x = 357.691, y = 331.585, z = 4.824 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 603004, gadget_id = 70290070, pos = { x = -2266.230, y = 137.099, z = -4841.703 }, rot = { x = 7.635, y = 157.484, z = 0.539 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 603005, gadget_id = 70290070, pos = { x = -2253.014, y = 137.008, z = -4865.837 }, rot = { x = 356.993, y = 52.350, z = 11.076 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 603006, gadget_id = 70290070, pos = { x = -2247.612, y = 138.524, z = -4846.012 }, rot = { x = 3.923, y = 315.801, z = 3.700 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 603007, gadget_id = 70290070, pos = { x = -2269.649, y = 138.054, z = -4857.913 }, rot = { x = 21.478, y = 65.930, z = 0.682 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 603009, gadget_id = 70800036, pos = { x = -2253.371, y = 149.784, z = -4858.313 }, rot = { x = 359.694, y = 335.586, z = 2.073 }, level = 27, area_id = 11 },
	{ config_id = 603010, gadget_id = 70800037, pos = { x = -2245.174, y = 145.728, z = -4852.707 }, rot = { x = 0.771, y = 168.754, z = 358.052 }, level = 27, area_id = 11 },
	{ config_id = 603012, gadget_id = 70330096, pos = { x = -2256.281, y = 138.769, z = -4856.021 }, rot = { x = 359.799, y = 332.682, z = 2.086 }, level = 27, state = GadgetState.GearStop, area_id = 11 },
	{ config_id = 603014, gadget_id = 70330101, pos = { x = -2256.323, y = 138.727, z = -4856.007 }, rot = { x = 48.436, y = 240.339, z = 0.167 }, level = 27, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 603015, gadget_id = 70330101, pos = { x = -2256.510, y = 139.730, z = -4856.112 }, rot = { x = 48.436, y = 240.339, z = 0.167 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 603016, gadget_id = 70330101, pos = { x = -2255.966, y = 137.685, z = -4855.799 }, rot = { x = 48.436, y = 240.339, z = 0.167 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 603017, gadget_id = 70330101, pos = { x = -2255.510, y = 139.335, z = -4855.542 }, rot = { x = 48.436, y = 240.339, z = 0.167 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 603018, gadget_id = 70330101, pos = { x = -2257.051, y = 137.930, z = -4856.421 }, rot = { x = 48.436, y = 240.339, z = 0.167 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 603020, gadget_id = 70211001, pos = { x = -2238.970, y = 154.106, z = -4845.386 }, rot = { x = 2.213, y = 266.966, z = 13.972 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 603036, gadget_id = 70330103, pos = { x = -2256.323, y = 138.727, z = -4856.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 怪物死亡变量+1
	{ config_id = 1603011, name = "ANY_MONSTER_DIE_603011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_603011", action = "action_EVENT_ANY_MONSTER_DIE_603011", trigger_count = 0 },
	-- 回滚
	{ config_id = 1603013, name = "GROUP_LOAD_603013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_603013", action = "action_EVENT_GROUP_LOAD_603013", trigger_count = 0 },
	-- 怪物死亡变量+1
	{ config_id = 1603019, name = "ANY_MONSTER_DIE_603019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_603019", action = "action_EVENT_ANY_MONSTER_DIE_603019", trigger_count = 0 },
	-- 2号雷桩切换 加载1号判定按钮
	{ config_id = 1603021, name = "SELECT_OPTION_603021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_603021", action = "action_EVENT_SELECT_OPTION_603021", trigger_count = 0 },
	-- 3号雷桩切换 加载1号判定按钮
	{ config_id = 1603022, name = "SELECT_OPTION_603022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_603022", action = "action_EVENT_SELECT_OPTION_603022", trigger_count = 0 },
	-- 4号雷桩切换 加载1号判定按钮
	{ config_id = 1603023, name = "SELECT_OPTION_603023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_603023", action = "action_EVENT_SELECT_OPTION_603023", trigger_count = 0 },
	-- 5号雷桩切换 加载1号判定按钮
	{ config_id = 1603024, name = "SELECT_OPTION_603024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_603024", action = "action_EVENT_SELECT_OPTION_603024", trigger_count = 0 },
	-- 怪物死亡后创生操作台
	{ config_id = 1603025, name = "VARIABLE_CHANGE_603025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_603025", action = "action_EVENT_VARIABLE_CHANGE_603025", trigger_count = 0 },
	-- CS播完任务完成
	{ config_id = 1603026, name = "TIME_AXIS_PASS_603026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_603026", action = "action_EVENT_TIME_AXIS_PASS_603026", trigger_count = 0 },
	-- 1号雷桩交付祭具，提交后重置各个雷桩的状态
	{ config_id = 1603027, name = "VARIABLE_CHANGE_603027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_603027", action = "action_EVENT_VARIABLE_CHANGE_603027" },
	-- 当1号雷桩是201时，加载2345的按钮。
	{ config_id = 1603028, name = "GADGET_STATE_CHANGE_603028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_603028", action = "action_EVENT_GADGET_STATE_CHANGE_603028", trigger_count = 0 },
	-- 判定trigger
	{ config_id = 1603029, name = "GADGET_STATE_CHANGE_603029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_603029", action = "action_EVENT_GADGET_STATE_CHANGE_603029", trigger_count = 0 },
	-- 判定按钮
	{ config_id = 1603030, name = "SELECT_OPTION_603030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_603030", action = "action_EVENT_SELECT_OPTION_603030", trigger_count = 0 },
	-- winplay完成后
	{ config_id = 1603031, name = "TIME_AXIS_PASS_603031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_603031", action = "action_EVENT_TIME_AXIS_PASS_603031" },
	-- failedplay完成后
	{ config_id = 1603032, name = "TIME_AXIS_PASS_603032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_603032", action = "action_EVENT_TIME_AXIS_PASS_603032", trigger_count = 0 },
	{ config_id = 1603033, name = "QUEST_FINISH_603033", event = EventType.EVENT_QUEST_FINISH, source = "7210011", condition = "", action = "action_EVENT_QUEST_FINISH_603033" },
	-- 交付后交付变量=1
	{ config_id = 1603034, name = "GADGET_STATE_CHANGE_603034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_603034", action = "action_EVENT_GADGET_STATE_CHANGE_603034", trigger_count = 0 },
	-- 1号雷桩启动后（201）时加载判定按钮
	{ config_id = 1603035, name = "GADGET_STATE_CHANGE_603035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_603035", action = "action_EVENT_GADGET_STATE_CHANGE_603035", trigger_count = 0 },
	-- 断线重连再次发通知5
	{ config_id = 1603037, name = "GROUP_LOAD_603037", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_603037", action = "action_EVENT_GROUP_LOAD_603037", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "giving", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = true },
	{ config_id = 3, name = "win", value = 0, no_refresh = true }
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
		gadgets = { 603002, 603003, 603004, 603005, 603006, 603007, 603009, 603010, 603020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_603011", "GROUP_LOAD_603013", "ANY_MONSTER_DIE_603019", "SELECT_OPTION_603021", "SELECT_OPTION_603022", "SELECT_OPTION_603023", "SELECT_OPTION_603024", "VARIABLE_CHANGE_603025", "TIME_AXIS_PASS_603026", "VARIABLE_CHANGE_603027", "GADGET_STATE_CHANGE_603028", "GADGET_STATE_CHANGE_603029", "SELECT_OPTION_603030", "TIME_AXIS_PASS_603031", "TIME_AXIS_PASS_603032", "QUEST_FINISH_603033", "GADGET_STATE_CHANGE_603034", "GADGET_STATE_CHANGE_603035", "GROUP_LOAD_603037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_603011(context, evt)
	--判断死亡怪物的configid是否为 603008
	if evt.param1 ~= 603008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_603011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_603013(context, evt)
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_603013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为603036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 603004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为603012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 603002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_603019(context, evt)
	--判断死亡怪物的configid是否为 603001
	if evt.param1 ~= 603001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_603019(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_603021(context, evt)
	-- 判断是gadgetid 603004 option_id 79
	if 603004 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_603021(context, evt)
	
	-- 将在groupid为 133220603 中的 configid为 603004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 603004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 603004 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_603022(context, evt)
	-- 判断是gadgetid 603005 option_id 79
	if 603005 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_603022(context, evt)
	
	-- 将在groupid为 133220603 中的 configid为 603005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 603005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 603005 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_603023(context, evt)
	-- 判断是gadgetid 603006 option_id 79
	if 603006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_603023(context, evt)
	
	-- 将在groupid为 133220603 中的 configid为 603006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 603006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 603006 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_603024(context, evt)
	-- 判断是gadgetid 603007 option_id 79
	if 603007 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_603024(context, evt)
	
	-- 将在groupid为 133220603 中的 configid为 603007 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603007) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 603007 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603007, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603007, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 603007 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_603025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_603025(context, evt)
	-- 创建标识为"cutscene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "cutscene", {2}, false)
	
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 603009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220603, EntityType.GADGET, 603014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220603, EntityType.GADGET, 603015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220603, EntityType.GADGET, 603016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220603, EntityType.GADGET, 603017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220603, EntityType.GADGET, 603018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220603, EntityType.GADGET, 603036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_603026(context, evt)
	if "cutscene" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_603026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603003, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133220662) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_603027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_603027(context, evt)
	-- 将configid为 603003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_603028(context, evt)
	if 603003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_603028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220603, 603007, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 603004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 603007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_603029(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603003) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603004) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603005) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603006) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220603, 603007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_603029(context, evt)
	-- 停止标识为"failedplay"的时间轴
	ScriptLib.EndTimeAxis(context, "failedplay")
	
	
	-- 创建标识为"winplay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "winplay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_603030(context, evt)
	-- 判断是gadgetid 603003 option_id 80
	if 603003 ~= evt.param1 then
		return false	
	end
	
	if 80 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_603030(context, evt)
	-- 删除指定group： 133220603 ；指定config：603003；物件身上指定option：80；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220603, 603003, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133220603中， configid为603003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220603, 603003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"failedplay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failedplay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_603031(context, evt)
	if "winplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_603031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 603001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 603008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_603032(context, evt)
	if "failedplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_603032(context, evt)
	-- 将configid为 603003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 603003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_603033(context, evt)
	-- 调用提示id为 322072605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_603034(context, evt)
	if 603002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"giving"为0
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_603034(context, evt)
	-- 针对当前group内变量名为 "giving" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "giving", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为603012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为603036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 603036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2255.951，138.861，-4856.384），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2255.951, y=138.861, z=-4856.384}
	  local pos_follow = {x=0, y=2, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_603035(context, evt)
	if 603003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_603035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_603037(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_603037(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.MONSTER, 603008)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220581, EntityType.MONSTER, 603001)
	
		
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133220662) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end