-- 基础信息
local base_info = {
	group_id = 133220139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139027, monster_id = 25100301, pos = { x = -2845.458, y = 173.110, z = -4113.941 }, rot = { x = 0.000, y = 95.810, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1008 }, pose_id = 1001, title_id = 10032, special_name_id = 10052, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139001, gadget_id = 70380282, pos = { x = -2833.113, y = 174.618, z = -4111.616 }, rot = { x = 0.000, y = 88.516, z = 0.000 }, level = 27, persistent = true, interact_id = 22, area_id = 11 },
	{ config_id = 139002, gadget_id = 70290069, pos = { x = -2833.570, y = 173.700, z = -4111.734 }, rot = { x = 0.000, y = 91.471, z = 0.000 }, level = 27, persistent = true, mark_flag = 2, area_id = 11 },
	{ config_id = 139003, gadget_id = 70290070, pos = { x = -2839.397, y = 173.481, z = -4099.435 }, rot = { x = 0.000, y = 295.188, z = 2.610 }, level = 27, persistent = true, mark_flag = 2, area_id = 11 },
	{ config_id = 139004, gadget_id = 70290070, pos = { x = -2852.765, y = 173.410, z = -4104.514 }, rot = { x = 0.000, y = 135.087, z = 0.000 }, level = 27, persistent = true, mark_flag = 2, area_id = 11 },
	{ config_id = 139005, gadget_id = 70290070, pos = { x = -2835.807, y = 176.678, z = -4125.135 }, rot = { x = 359.260, y = 73.116, z = 10.447 }, level = 27, persistent = true, mark_flag = 2, area_id = 11 },
	{ config_id = 139006, gadget_id = 70290070, pos = { x = -2855.391, y = 175.237, z = -4126.407 }, rot = { x = 2.578, y = 231.682, z = 353.345 }, level = 27, persistent = true, mark_flag = 2, area_id = 11 },
	{ config_id = 139008, gadget_id = 70800036, pos = { x = -2850.068, y = 187.130, z = -4115.099 }, rot = { x = 0.000, y = 95.376, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 139016, gadget_id = 70800037, pos = { x = -2849.145, y = 182.650, z = -4125.038 }, rot = { x = 0.000, y = 288.552, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 139023, gadget_id = 70330064, pos = { x = -2846.318, y = 174.327, z = -4093.526 }, rot = { x = 7.858, y = 176.879, z = 3.610 }, level = 27, persistent = true, interact_id = 35, area_id = 11 },
	{ config_id = 139025, gadget_id = 70330096, pos = { x = -2846.547, y = 176.702, z = -4113.432 }, rot = { x = 355.112, y = 103.915, z = 31.637 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 139028, gadget_id = 70330101, pos = { x = -2846.456, y = 175.544, z = -4113.407 }, rot = { x = 77.613, y = 28.404, z = 16.969 }, level = 27, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 139029, gadget_id = 70330101, pos = { x = -2846.268, y = 176.288, z = -4112.493 }, rot = { x = 77.613, y = 28.404, z = 16.969 }, level = 27, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 139030, gadget_id = 70330101, pos = { x = -2846.461, y = 177.476, z = -4112.816 }, rot = { x = 77.613, y = 28.404, z = 16.969 }, level = 27, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 139031, gadget_id = 70330101, pos = { x = -2846.732, y = 176.306, z = -4114.299 }, rot = { x = 77.613, y = 28.404, z = 16.969 }, level = 27, state = GadgetState.GearAction1, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 139032, gadget_id = 70330101, pos = { x = -2846.705, y = 177.472, z = -4114.073 }, rot = { x = 77.613, y = 28.404, z = 16.969 }, level = 27, state = GadgetState.GearAction2, persistent = true, mark_flag = 3, area_id = 11 },
	{ config_id = 139035, gadget_id = 70360001, pos = { x = -2844.541, y = 174.383, z = -4113.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 139036, gadget_id = 70330103, pos = { x = -2846.456, y = 175.544, z = -4113.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 139037, gadget_id = 70500000, pos = { x = -2831.615, y = 173.544, z = -4099.935 }, rot = { x = 0.000, y = 280.644, z = 0.000 }, level = 27, point_type = 2040, area_id = 11 },
	{ config_id = 139038, gadget_id = 70500000, pos = { x = -2819.444, y = 173.439, z = -4096.640 }, rot = { x = 0.000, y = 280.644, z = 0.000 }, level = 27, point_type = 2040, area_id = 11 },
	{ config_id = 139039, gadget_id = 70500000, pos = { x = -2845.848, y = 176.186, z = -4091.122 }, rot = { x = 0.000, y = 346.457, z = 0.000 }, level = 27, point_type = 2040, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 139007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2833.777, y = 174.402, z = -4111.926 }, area_id = 11 },
	-- 进圈完注目
	{ config_id = 139022, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2810.256, y = 176.290, z = -4100.432 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1139007, name = "ENTER_REGION_139007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_139007", action = "action_EVENT_ENTER_REGION_139007" },
	-- 2号雷桩切换 加载1号判定按钮
	{ config_id = 1139009, name = "SELECT_OPTION_139009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_139009", action = "action_EVENT_SELECT_OPTION_139009", trigger_count = 0 },
	-- 3号雷桩切换 加载1号判定按钮
	{ config_id = 1139010, name = "SELECT_OPTION_139010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_139010", action = "action_EVENT_SELECT_OPTION_139010", trigger_count = 0 },
	-- 4号雷桩切换 加载1号判定按钮
	{ config_id = 1139011, name = "SELECT_OPTION_139011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_139011", action = "action_EVENT_SELECT_OPTION_139011", trigger_count = 0 },
	-- 5号雷桩切换 加载1号判定按钮
	{ config_id = 1139012, name = "SELECT_OPTION_139012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_139012", action = "action_EVENT_SELECT_OPTION_139012", trigger_count = 0 },
	-- 怪物死亡后创生操作台
	{ config_id = 1139013, name = "ANY_MONSTER_DIE_139013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139013", action = "action_EVENT_ANY_MONSTER_DIE_139013", trigger_count = 0 },
	-- CS播完任务完成
	{ config_id = 1139014, name = "TIME_AXIS_PASS_139014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_139014", action = "action_EVENT_TIME_AXIS_PASS_139014", trigger_count = 0 },
	-- 1号雷桩交付祭具，提交后重置各个雷桩的状态
	{ config_id = 1139015, name = "VARIABLE_CHANGE_139015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_139015", action = "action_EVENT_VARIABLE_CHANGE_139015" },
	-- 当1号雷桩是201时，加载2345的按钮。
	{ config_id = 1139017, name = "GADGET_STATE_CHANGE_139017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139017", action = "action_EVENT_GADGET_STATE_CHANGE_139017", trigger_count = 0 },
	-- 判定trigger
	{ config_id = 1139018, name = "GADGET_STATE_CHANGE_139018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139018", action = "action_EVENT_GADGET_STATE_CHANGE_139018", trigger_count = 0 },
	-- 判定按钮
	{ config_id = 1139019, name = "SELECT_OPTION_139019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_139019", action = "action_EVENT_SELECT_OPTION_139019", trigger_count = 0 },
	-- winplay完成后
	{ config_id = 1139020, name = "TIME_AXIS_PASS_139020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_139020", action = "action_EVENT_TIME_AXIS_PASS_139020" },
	-- failedplay完成后
	{ config_id = 1139021, name = "TIME_AXIS_PASS_139021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_139021", action = "action_EVENT_TIME_AXIS_PASS_139021", trigger_count = 0 },
	-- 进圈完注目
	{ config_id = 1139022, name = "ENTER_REGION_139022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_139022", action = "action_EVENT_ENTER_REGION_139022" },
	-- 交付后交付变量=1
	{ config_id = 1139024, name = "GADGET_STATE_CHANGE_139024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139024", action = "action_EVENT_GADGET_STATE_CHANGE_139024", trigger_count = 0 },
	-- 回滚时，giving为1创生
	{ config_id = 1139026, name = "GROUP_LOAD_139026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_139026", action = "action_EVENT_GROUP_LOAD_139026", trigger_count = 0 },
	{ config_id = 1139033, name = "ANY_MONSTER_LIVE_139033", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_139033", action = "action_EVENT_ANY_MONSTER_LIVE_139033", trigger_count = 0 },
	-- 1号雷桩启动后（201）时加载判定按钮
	{ config_id = 1139034, name = "GADGET_STATE_CHANGE_139034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139034", action = "action_EVENT_GADGET_STATE_CHANGE_139034", trigger_count = 0 },
	-- 断线重连再次发通知1
	{ config_id = 1139040, name = "GROUP_LOAD_139040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_139040", action = "action_EVENT_GROUP_LOAD_139040", trigger_count = 0 }
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
		gadgets = { 139001, 139002, 139003, 139004, 139005, 139006, 139008, 139016, 139023, 139035, 139037, 139038, 139039 },
		regions = { 139007, 139022 },
		triggers = { "ENTER_REGION_139007", "SELECT_OPTION_139009", "SELECT_OPTION_139010", "SELECT_OPTION_139011", "SELECT_OPTION_139012", "ANY_MONSTER_DIE_139013", "TIME_AXIS_PASS_139014", "VARIABLE_CHANGE_139015", "GADGET_STATE_CHANGE_139017", "GADGET_STATE_CHANGE_139018", "SELECT_OPTION_139019", "TIME_AXIS_PASS_139020", "TIME_AXIS_PASS_139021", "ENTER_REGION_139022", "GADGET_STATE_CHANGE_139024", "GROUP_LOAD_139026", "ANY_MONSTER_LIVE_139033", "GADGET_STATE_CHANGE_139034", "GROUP_LOAD_139040" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_139007(context, evt)
	if evt.param1 ~= 139007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_139007(context, evt)
	-- 触发镜头注目，注目位置为坐标（-2833.777，174.4017，-4111.926），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2833.777, y=174.4017, z=-4111.926}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 -1074246882 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246882) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_139009(context, evt)
	-- 判断是gadgetid 139003 option_id 79
	if 139003 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_139009(context, evt)
	
	-- 将在groupid为 133220139 中的 configid为 139003 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139003) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 139003 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139003, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139003, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 139003 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139002, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_139010(context, evt)
	-- 判断是gadgetid 139004 option_id 79
	if 139004 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_139010(context, evt)
	
	-- 将在groupid为 133220139 中的 configid为 139004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 139004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 139004 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139002, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_139011(context, evt)
	-- 判断是gadgetid 139005 option_id 79
	if 139005 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_139011(context, evt)
	
	-- 将在groupid为 133220139 中的 configid为 139005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 139005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 139005 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139002, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_139012(context, evt)
	-- 判断是gadgetid 139006 option_id 79
	if 139006 ~= evt.param1 then
		return false	
	end
	
	if 79 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_139012(context, evt)
	
	-- 将在groupid为 133220139 中的 configid为 139006 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {203,204,901,902}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139006) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 139006 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139006, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139006, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 139006 .."State没有成功")
	
	  return -1
	end
	
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139002, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_139013(context, evt)
	--判断死亡怪物的configid是否为 139027
	if evt.param1 ~= 139027 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_139013(context, evt)
	-- 创建标识为"cutscene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "cutscene", {2}, false)
	
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 139016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_139014(context, evt)
	if "cutscene" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_139014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139002, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.GADGET, 139028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.GADGET, 139029 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.GADGET, 139030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.GADGET, 139031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.GADGET, 139032 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.GADGET, 139036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_139015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_139015(context, evt)
	-- 将configid为 139002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139017(context, evt)
	if 139002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139003, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 139003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139005 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139005, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139018(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139002) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139003) then
		return false
	end
	
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139004) then
		return false
	end
	
	if GadgetState.Action01 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139005) then
		return false
	end
	
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220139, 139006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139018(context, evt)
	-- 停止标识为"failedplay"的时间轴
	ScriptLib.EndTimeAxis(context, "failedplay")
	
	
	-- 创建标识为"winplay"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "winplay", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_139019(context, evt)
	-- 判断是gadgetid 139002 option_id 80
	if 139002 ~= evt.param1 then
		return false	
	end
	
	if 80 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_139019(context, evt)
	-- 删除指定group： 133220139 ；指定config：139002；物件身上指定option：80；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220139, 139002, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133220139中， configid为139002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220139, 139002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"failedplay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failedplay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_139020(context, evt)
	if "winplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_139020(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139027, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_139021(context, evt)
	if "failedplay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_139021(context, evt)
	-- 将configid为 139002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_139022(context, evt)
	if evt.param1 ~= 139022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_139022(context, evt)
	-- 调用提示id为 -1074246886 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246886) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2841.13，176.808，-4112.96），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2841.13, y=176.808, z=-4112.96}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139024(context, evt)
	if 139001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"giving"为0
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139024(context, evt)
	-- 将本组内变量名为 "giving" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "giving", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为139025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2846.547，176.704，-4113.459），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2846.547, y=176.704, z=-4113.459}
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
function condition_EVENT_GROUP_LOAD_139026(context, evt)
	-- 判断变量"giving"为1
	if ScriptLib.GetGroupVariableValue(context, "giving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_139026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139002, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139003, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139004, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为139036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139005, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220139, 139006, {79}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 139002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为139032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为139028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 139003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139005 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139005, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 139001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_139033(context, evt)
	if 139027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_139033(context, evt)
	-- 调用提示id为 -1074246884 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246884) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139034(context, evt)
	if 139002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {80}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_139040(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_139040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220139, EntityType.MONSTER, 139027)
	
		
	
	return 0
end