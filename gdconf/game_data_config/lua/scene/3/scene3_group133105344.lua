-- 基础信息
local base_info = {
	group_id = 133105344
}

-- DEFS_MISCS
function Avatar_Eula_Plot_Fail(context)
        ScriptLib.SetGroupVariableValue(context, "youla", 1)
        ScriptLib.PrintContextLog(context, "youla fail")
        return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 344010, monster_id = 21010901, pos = { x = 894.689, y = 329.741, z = -593.468 }, rot = { x = 0.000, y = 342.765, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 344011, monster_id = 21010901, pos = { x = 885.232, y = 329.252, z = -597.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 344035, monster_id = 21011301, pos = { x = 878.924, y = 321.626, z = -519.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 344036, monster_id = 21011301, pos = { x = 874.859, y = 321.808, z = -518.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 344002, gadget_id = 70220020, pos = { x = 872.144, y = 323.536, z = -550.129 }, rot = { x = 0.000, y = 253.319, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344003, gadget_id = 70360093, pos = { x = 876.410, y = 320.714, z = -507.183 }, rot = { x = 0.000, y = 0.000, z = 355.163 }, level = 1, start_route = false, area_id = 10 },
	{ config_id = 344004, gadget_id = 70300075, pos = { x = 885.109, y = 323.555, z = -554.431 }, rot = { x = 0.000, y = 270.194, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344005, gadget_id = 70220020, pos = { x = 878.646, y = 323.209, z = -557.304 }, rot = { x = 0.000, y = 275.685, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344006, gadget_id = 70220055, pos = { x = 892.327, y = 326.808, z = -584.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344007, gadget_id = 70220055, pos = { x = 881.933, y = 323.672, z = -545.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344008, gadget_id = 70900201, pos = { x = 896.586, y = 332.835, z = -611.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344009, gadget_id = 70300075, pos = { x = 889.521, y = 323.708, z = -574.939 }, rot = { x = 0.000, y = 259.672, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344012, gadget_id = 70220020, pos = { x = 897.223, y = 329.691, z = -583.988 }, rot = { x = 0.000, y = 359.387, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344013, gadget_id = 70220055, pos = { x = 883.626, y = 326.505, z = -584.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344014, gadget_id = 70900201, pos = { x = 886.345, y = 326.161, z = -562.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344015, gadget_id = 70220020, pos = { x = 886.840, y = 324.278, z = -540.368 }, rot = { x = 0.000, y = 249.310, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344016, gadget_id = 70300075, pos = { x = 896.291, y = 330.617, z = -595.731 }, rot = { x = 7.643, y = 236.151, z = 352.333 }, level = 1, area_id = 10 },
	{ config_id = 344017, gadget_id = 70300075, pos = { x = 886.269, y = 329.829, z = -599.267 }, rot = { x = 344.927, y = 274.467, z = 359.459 }, level = 1, area_id = 10 },
	{ config_id = 344018, gadget_id = 70220043, pos = { x = 886.129, y = 329.135, z = -597.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344019, gadget_id = 70220043, pos = { x = 895.487, y = 329.889, z = -592.851 }, rot = { x = 0.000, y = 57.871, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344020, gadget_id = 70310015, pos = { x = 896.092, y = 323.846, z = -568.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 344021, gadget_id = 70220043, pos = { x = 880.840, y = 323.210, z = -569.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344022, gadget_id = 70220055, pos = { x = 902.000, y = 331.983, z = -587.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344023, gadget_id = 70220043, pos = { x = 880.234, y = 323.210, z = -570.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344024, gadget_id = 70220011, pos = { x = 895.274, y = 290.258, z = -557.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344026, gadget_id = 70710204, pos = { x = 888.405, y = 328.356, z = -596.231 }, rot = { x = 11.271, y = 344.518, z = 1.070 }, level = 1, area_id = 10 },
	{ config_id = 344028, gadget_id = 70690011, pos = { x = 895.432, y = 290.214, z = -558.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344029, gadget_id = 70360093, pos = { x = 896.595, y = 332.387, z = -606.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500132, start_route = false, area_id = 10 },
	{ config_id = 344030, gadget_id = 70220020, pos = { x = 898.452, y = 331.581, z = -599.789 }, rot = { x = 5.744, y = 324.274, z = 13.645 }, level = 1, area_id = 10 },
	{ config_id = 344031, gadget_id = 70220020, pos = { x = 890.457, y = 331.135, z = -605.610 }, rot = { x = 349.935, y = 325.122, z = 351.648 }, level = 1, area_id = 10 },
	{ config_id = 344032, gadget_id = 70300075, pos = { x = 876.348, y = 322.193, z = -522.695 }, rot = { x = 355.597, y = 270.176, z = 358.200 }, level = 1, area_id = 10 },
	{ config_id = 344033, gadget_id = 70360095, pos = { x = 891.517, y = 327.500, z = -585.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500113, area_id = 10 },
	{ config_id = 344034, gadget_id = 70900201, pos = { x = 876.676, y = 323.102, z = -518.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344037, gadget_id = 70310017, pos = { x = 879.340, y = 323.865, z = -533.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 344038, gadget_id = 70360024, pos = { x = 876.762, y = 322.418, z = -518.015 }, rot = { x = 0.000, y = 350.374, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344039, gadget_id = 70360025, pos = { x = 896.676, y = 331.929, z = -611.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344040, gadget_id = 70360024, pos = { x = 886.328, y = 324.518, z = -562.856 }, rot = { x = 0.000, y = 345.123, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 344043, gadget_id = 70220020, pos = { x = 868.095, y = 328.890, z = -538.997 }, rot = { x = 359.244, y = 347.409, z = 351.724 }, level = 1, area_id = 10 },
	{ config_id = 344047, gadget_id = 70360093, pos = { x = 887.181, y = 324.615, z = -546.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500116, area_id = 10 },
	{ config_id = 344048, gadget_id = 70360093, pos = { x = 878.976, y = 324.615, z = -552.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500115, area_id = 10 },
	{ config_id = 344049, gadget_id = 70360093, pos = { x = 876.744, y = 324.615, z = -544.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500117, area_id = 10 },
	{ config_id = 344050, gadget_id = 70360093, pos = { x = 884.545, y = 324.615, z = -536.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500114, area_id = 10 },
	{ config_id = 344051, gadget_id = 70360093, pos = { x = 888.531, y = 324.596, z = -570.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500130, area_id = 10 },
	{ config_id = 344052, gadget_id = 70360095, pos = { x = 882.837, y = 328.990, z = -592.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500131, area_id = 10 },
	{ config_id = 344053, gadget_id = 70220020, pos = { x = 887.371, y = 328.640, z = -529.749 }, rot = { x = 351.202, y = 59.275, z = 39.633 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 344027, shape = RegionShape.SPHERE, radius = 1.6, pos = { x = 888.338, y = 328.470, z = -596.079 }, area_id = 10 },
	{ config_id = 344045, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 896.642, y = 331.912, z = -611.309 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1344001, name = "VARIABLE_CHANGE_344001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_344001", action = "action_EVENT_VARIABLE_CHANGE_344001", tag = "666" },
	{ config_id = 1344025, name = "ANY_GADGET_DIE_344025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_344025", action = "action_EVENT_ANY_GADGET_DIE_344025" },
	{ config_id = 1344027, name = "ENTER_REGION_344027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_344027", action = "action_EVENT_ENTER_REGION_344027" },
	{ config_id = 1344041, name = "QUEST_START_344041", event = EventType.EVENT_QUEST_START, source = "1012115", condition = "", action = "action_EVENT_QUEST_START_344041" },
	{ config_id = 1344042, name = "CHALLENGE_FAIL_344042", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_344042", tag = "666" },
	{ config_id = 1344044, name = "GADGET_STATE_CHANGE_344044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_344044", action = "action_EVENT_GADGET_STATE_CHANGE_344044" },
	{ config_id = 1344045, name = "ENTER_REGION_344045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_344045", action = "action_EVENT_ENTER_REGION_344045", tag = "777" },
	{ config_id = 1344046, name = "GADGET_STATE_CHANGE_344046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_344046", action = "action_EVENT_GADGET_STATE_CHANGE_344046" }
}

-- 变量
variables = {
	{ config_id = 1, name = "youla", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_344001", "QUEST_START_344041", "CHALLENGE_FAIL_344042" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 344035, 344036 },
		gadgets = { 344002, 344003, 344004, 344005, 344007, 344015, 344032, 344034, 344037, 344038, 344043, 344047, 344048, 344049, 344050, 344053 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_344044" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 344006, 344009, 344013, 344014, 344018, 344019, 344020, 344021, 344023, 344024, 344033, 344040, 344051, 344052 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_344025", "GADGET_STATE_CHANGE_344046" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 344010, 344011 },
		gadgets = { 344008, 344012, 344016, 344017, 344022, 344026, 344029, 344030, 344031, 344039 },
		regions = { 344027, 344045 },
		triggers = { "ENTER_REGION_344027", "ENTER_REGION_344045" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_344001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"youla"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "youla", 133105344) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_344001(context, evt)
	-- 终止识别id为11的挑战，并判定失败
		ScriptLib.StopChallenge(context, 11, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_344025(context, evt)
	if 344024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_344025(context, evt)
	-- 创建id为344028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 344028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_344027(context, evt)
	if evt.param1 ~= 344027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_344027(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105344, 5)
	
	-- 将configid为 344026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 344029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "", play_type= 0, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_344041(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105344, 2)
	
	-- 开启编号为888，挑战内容为2的区域挑战
	ScriptLib.CreateFatherChallenge(context, 1012101, 226, 120, {success = 1, fail =1})
	ScriptLib.AttachChildChallenge(context, 1012101, 10, 168,{120, 4, 777, 1},{}, {success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 1012101, 11, 223,{120, 3, 666, 1},{}, {success=0, fail=1})
	ScriptLib.StartFatherChallenge(context, 1012101)
	
	-- 将本组内变量名为 "youla" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "youla", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_344042(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012190") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_344044(context, evt)
	if 344038 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_344044(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105344, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012115") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 344034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_344045(context, evt)
	if evt.param1 ~= 344045 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_344045(context, evt)
	-- 终止识别id为10的挑战，并判定成功
		ScriptLib.StopChallenge(context, 10, 1)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 344039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012117") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 344028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_344046(context, evt)
	if 344040 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_344046(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012116") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105344, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133105344, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 344014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end