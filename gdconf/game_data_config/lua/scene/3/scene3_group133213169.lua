-- 基础信息
local base_info = {
	group_id = 133213169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 拦截点一
	{ config_id = 169001, monster_id = 21010501, pos = { x = -3567.934, y = 225.142, z = -3255.773 }, rot = { x = 0.000, y = 281.062, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 12 },
	-- 拦截点一
	{ config_id = 169003, monster_id = 21010901, pos = { x = -3580.527, y = 225.154, z = -3248.868 }, rot = { x = 0.000, y = 164.730, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 12 },
	-- 拦截点一
	{ config_id = 169004, monster_id = 21010301, pos = { x = -3562.217, y = 204.959, z = -3307.546 }, rot = { x = 0.000, y = 153.910, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 12 },
	-- 拦截点一
	{ config_id = 169005, monster_id = 21010301, pos = { x = -3564.889, y = 203.751, z = -3312.862 }, rot = { x = 0.000, y = 43.490, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 12 },
	-- 拦截点一
	{ config_id = 169006, monster_id = 21010301, pos = { x = -3556.153, y = 204.138, z = -3310.315 }, rot = { x = 0.000, y = 267.475, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 12 },
	-- 拦截点二
	{ config_id = 169007, monster_id = 21011001, pos = { x = -3566.637, y = 218.431, z = -3138.578 }, rot = { x = 0.000, y = 152.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 12 },
	-- 拦截点二
	{ config_id = 169008, monster_id = 21010501, pos = { x = -3571.673, y = 215.688, z = -3139.551 }, rot = { x = 0.000, y = 122.381, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 12 },
	-- 拦截点二
	{ config_id = 169009, monster_id = 21011601, pos = { x = -3571.245, y = 210.436, z = -3162.463 }, rot = { x = 0.000, y = 38.711, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 12 },
	-- 拦截点二
	{ config_id = 169010, monster_id = 21030601, pos = { x = -3565.665, y = 211.710, z = -3143.707 }, rot = { x = 0.000, y = 148.846, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 12 },
	-- 拦截点一
	{ config_id = 169014, monster_id = 21020701, pos = { x = -3571.089, y = 221.530, z = -3248.777 }, rot = { x = 0.000, y = 226.451, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	-- 拦截点二
	{ config_id = 169015, monster_id = 22010101, pos = { x = -3569.661, y = 210.857, z = -3149.146 }, rot = { x = 0.000, y = 117.797, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169016, gadget_id = 70380019, pos = { x = -3523.685, y = 200.410, z = -3342.853 }, rot = { x = 0.000, y = 304.139, z = 0.000 }, level = 12, route_id = 321300020, start_route = false, persistent = true, area_id = 12 },
	{ config_id = 169017, gadget_id = 70360001, pos = { x = -3523.671, y = 200.410, z = -3342.852 }, rot = { x = 0.000, y = 286.853, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 169018, gadget_id = 70300205, pos = { x = -3568.506, y = 221.587, z = -3247.225 }, rot = { x = 0.000, y = 139.686, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 169020, gadget_id = 70710126, pos = { x = -3612.519, y = 200.075, z = -3145.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 169022, gadget_id = 70300092, pos = { x = -3518.240, y = 200.436, z = -3340.940 }, rot = { x = 0.000, y = 296.337, z = 0.000 }, level = 27, area_id = 12 },
	-- 拦截点二
	{ config_id = 169024, gadget_id = 70300083, pos = { x = -3574.264, y = 210.652, z = -3154.174 }, rot = { x = 0.000, y = 275.809, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 169027, gadget_id = 70300092, pos = { x = -3615.566, y = 200.050, z = -3142.731 }, rot = { x = 0.000, y = 196.329, z = 0.000 }, level = 27, area_id = 12 },
	-- 拦截点二
	{ config_id = 169029, gadget_id = 70300083, pos = { x = -3573.465, y = 211.185, z = -3146.768 }, rot = { x = 0.000, y = 275.809, z = 9.100 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 169053, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3561.010, y = 204.248, z = -3309.631 }, area_id = 12 }
}

-- 触发器
triggers = {
	-- 拦截点二
	{ config_id = 1169002, name = "ANY_GADGET_DIE_169002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_169002", action = "action_EVENT_ANY_GADGET_DIE_169002", trigger_count = 0 },
	-- 拦截点二
	{ config_id = 1169013, name = "ANY_GADGET_DIE_169013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_169013", action = "action_EVENT_ANY_GADGET_DIE_169013", trigger_count = 0 },
	-- 拦截点二停车
	{ config_id = 1169019, name = "PLATFORM_REACH_POINT_169019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_169019", action = "action_EVENT_PLATFORM_REACH_POINT_169019", trigger_count = 0 },
	-- 拦截点二发车
	{ config_id = 1169025, name = "VARIABLE_CHANGE_169025", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle2Available", condition = "condition_EVENT_VARIABLE_CHANGE_169025", action = "action_EVENT_VARIABLE_CHANGE_169025" },
	{ config_id = 1169037, name = "GADGET_CREATE_169037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_169037", action = "action_EVENT_GADGET_CREATE_169037", trigger_count = 0 },
	{ config_id = 1169038, name = "SELECT_OPTION_169038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_169038", action = "action_EVENT_SELECT_OPTION_169038" },
	{ config_id = 1169039, name = "CHALLENGE_SUCCESS_169039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_169039", trigger_count = 0 },
	-- 到达点
	{ config_id = 1169040, name = "PLATFORM_REACH_POINT_169040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_169040", action = "action_EVENT_PLATFORM_REACH_POINT_169040", trigger_count = 0, tag = "888" },
	{ config_id = 1169041, name = "CHALLENGE_FAIL_169041", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_169041", trigger_count = 0 },
	{ config_id = 1169042, name = "ANY_GADGET_DIE_169042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_169042", action = "action_EVENT_ANY_GADGET_DIE_169042" },
	-- 拦截点一停车
	{ config_id = 1169043, name = "PLATFORM_REACH_POINT_169043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_169043", action = "action_EVENT_PLATFORM_REACH_POINT_169043", trigger_count = 0 },
	{ config_id = 1169044, name = "ANY_GADGET_DIE_169044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_169044", action = "action_EVENT_ANY_GADGET_DIE_169044", trigger_count = 0 },
	-- 拦截点一发车
	{ config_id = 1169046, name = "VARIABLE_CHANGE_169046", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle1Available", condition = "condition_EVENT_VARIABLE_CHANGE_169046", action = "action_EVENT_VARIABLE_CHANGE_169046", trigger_count = 0 },
	{ config_id = 1169053, name = "ENTER_REGION_169053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169053", action = "action_EVENT_ENTER_REGION_169053" },
	{ config_id = 1169054, name = "ANY_MONSTER_DIE_169054", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169054", action = "action_EVENT_ANY_MONSTER_DIE_169054" },
	{ config_id = 1169055, name = "ANY_MONSTER_DIE_169055", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169055", action = "action_EVENT_ANY_MONSTER_DIE_169055" },
	{ config_id = 1169056, name = "ANY_MONSTER_DIE_169056", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169056", action = "action_EVENT_ANY_MONSTER_DIE_169056" },
	{ config_id = 1169057, name = "VARIABLE_CHANGE_169057", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadMonster", condition = "condition_EVENT_VARIABLE_CHANGE_169057", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 2, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 2, no_refresh = false },
	{ config_id = 4, name = "deadMonster", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 169021, gadget_id = 70220048, pos = { x = -3517.411, y = 201.118, z = -3344.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 169023, gadget_id = 70220048, pos = { x = -3519.544, y = 200.800, z = -3344.093 }, rot = { x = 0.000, y = 41.498, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 169026, gadget_id = 70220048, pos = { x = -3614.577, y = 200.185, z = -3141.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 169028, gadget_id = 70220048, pos = { x = -3616.610, y = 200.044, z = -3140.284 }, rot = { x = 0.000, y = 41.498, z = 0.000 }, level = 27, area_id = 12 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 169016, 169017, 169022, 169027 },
		regions = { },
		triggers = { "GADGET_CREATE_169037", "SELECT_OPTION_169038", "CHALLENGE_SUCCESS_169039", "PLATFORM_REACH_POINT_169040", "CHALLENGE_FAIL_169041", "ANY_GADGET_DIE_169042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 169001, 169003, 169007, 169008, 169009, 169010, 169014, 169015 },
		gadgets = { 169018, 169020, 169024, 169029 },
		regions = { 169053 },
		triggers = { "ANY_GADGET_DIE_169002", "ANY_GADGET_DIE_169013", "PLATFORM_REACH_POINT_169019", "VARIABLE_CHANGE_169025", "PLATFORM_REACH_POINT_169043", "ANY_GADGET_DIE_169044", "VARIABLE_CHANGE_169046", "ENTER_REGION_169053", "ANY_MONSTER_DIE_169054", "ANY_MONSTER_DIE_169055", "ANY_MONSTER_DIE_169056", "VARIABLE_CHANGE_169057" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = end_suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 拦截点一埋伏怪,
		monsters = { 169004, 169005, 169006 },
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
function condition_EVENT_ANY_GADGET_DIE_169002(context, evt)
	if 169024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_169002(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_169013(context, evt)
	if 169029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_169013(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_169019(context, evt)
	-- 判断是gadgetid 为 169016的移动平台，是否到达了321300020 的路线中的 30 点
	
	if 169016 ~= evt.param1 then
	  return false
	end
	
	if 321300020 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为2
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") < 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_169019(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 169016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_169025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_169025(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 169016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_169037(context, evt)
	if 169017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_169037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213169, 169017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_169038(context, evt)
	-- 判断是gadgetid 169017 option_id 7
	if 169017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_169038(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 169016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 169017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213169, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_169039(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213169, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213169, 4)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213169, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_169040(context, evt)
	-- 判断是gadgetid 为 169016的移动平台，是否到达了321300020 的路线中的 40 点
	
	if 169016 ~= evt.param1 then
	  return false
	end
	
	if 321300020 ~= evt.param2 then
	  return false
	end
	
	if 40 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_169040(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 169016 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169016, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_169041(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213169, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213169, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_169042(context, evt)
	if 169016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_169042(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_169043(context, evt)
	-- 判断是gadgetid 为 169016的移动平台，是否到达了321300020 的路线中的 16 点
	
	if 169016 ~= evt.param1 then
	  return false
	end
	
	if 321300020 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_169043(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 169016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213169, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_169044(context, evt)
	if 169018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_169044(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_169046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_169046(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 169016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_169053(context, evt)
	if evt.param1 ~= 169053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_169053(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213169, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169054(context, evt)
	--判断死亡怪物的configid是否为 169004
	if evt.param1 ~= 169004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169054(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169055(context, evt)
	--判断死亡怪物的configid是否为 169005
	if evt.param1 ~= 169005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169055(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169056(context, evt)
	--判断死亡怪物的configid是否为 169006
	if evt.param1 ~= 169006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169056(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_169057(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadMonster"为3
	if ScriptLib.GetGroupVariableValue(context, "deadMonster") ~= 3 then
			return false
	end
	
	return true
end