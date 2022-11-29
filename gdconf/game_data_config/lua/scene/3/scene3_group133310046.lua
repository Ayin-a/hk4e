-- 基础信息
local base_info = {
	group_id = 133310046
}

-- Trigger变量
local defs = {
	duration = 240,
	kill_sum = 9,
	group_id = 133310046,
	gadget_controller_id = 46004,
	look_duration = 2,
	point_camera = 46012,
	gadget_lookEntity = 46022,
	pos_x = -2056.151,
	pos_y = 197.418,
	pos_z = 5056.624,
	pos_follow_x = -2052.508,
	pos_follow_y = 205.0464,
	pos_follow_z = 5038.836
}

-- DEFS_MISCS
local CameraLookSetting = {

    blend_type = 0,

    blend_duration = 1.5,

    is_force_walk = false,

    is_allow_input = false,

    delay = 0,

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[46001] = { config_id = 46001, monster_id = 25210301, pos = { x = -2083.097, y = 175.982, z = 5027.995 }, rot = { x = 0.000, y = 250.457, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	[46010] = { config_id = 46010, monster_id = 25210401, pos = { x = -2088.035, y = 176.352, z = 5026.013 }, rot = { x = 0.000, y = 214.093, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	[46011] = { config_id = 46011, monster_id = 25210501, pos = { x = -2088.966, y = 176.509, z = 5029.422 }, rot = { x = 0.000, y = 205.335, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	[46014] = { config_id = 46014, monster_id = 25210202, pos = { x = -2051.888, y = 190.768, z = 5044.091 }, rot = { x = 0.000, y = 228.600, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 27 },
	[46015] = { config_id = 46015, monster_id = 25210201, pos = { x = -2052.023, y = 190.639, z = 5040.673 }, rot = { x = 0.000, y = 232.066, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 27 },
	[46016] = { config_id = 46016, monster_id = 25210203, pos = { x = -2049.128, y = 190.665, z = 5039.342 }, rot = { x = 0.000, y = 243.565, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 27 },
	[46020] = { config_id = 46020, monster_id = 25210503, pos = { x = -2060.174, y = 197.746, z = 5056.487 }, rot = { x = 0.000, y = 115.733, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	[46021] = { config_id = 46021, monster_id = 25310301, pos = { x = -2052.776, y = 197.860, z = 5059.729 }, rot = { x = 0.000, y = 197.080, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	[46025] = { config_id = 46025, monster_id = 25410101, pos = { x = -2063.378, y = 200.983, z = 5075.205 }, rot = { x = 0.000, y = 159.566, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[46002] = { config_id = 46002, gadget_id = 70330334, pos = { x = -2093.861, y = 176.723, z = 5021.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[46003] = { config_id = 46003, gadget_id = 70211021, pos = { x = -2060.732, y = 201.430, z = 5081.255 }, rot = { x = 0.000, y = 162.329, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	[46004] = { config_id = 46004, gadget_id = 70360001, pos = { x = -2093.870, y = 176.834, z = 5021.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[46018] = { config_id = 46018, gadget_id = 70220103, pos = { x = -2059.452, y = 202.864, z = 5126.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[46022] = { config_id = 46022, gadget_id = 70220103, pos = { x = -2054.774, y = 198.344, z = 5048.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1046005, name = "GROUP_LOAD_46005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_46005", action = "action_EVENT_GROUP_LOAD_46005", trigger_count = 0 },
	{ config_id = 1046006, name = "CHALLENGE_SUCCESS_46006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_46006", trigger_count = 0 },
	{ config_id = 1046007, name = "CHALLENGE_FAIL_46007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_46007", trigger_count = 0 },
	{ config_id = 1046008, name = "GADGET_CREATE_46008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46008", action = "action_EVENT_GADGET_CREATE_46008", trigger_count = 0 },
	{ config_id = 1046009, name = "SELECT_OPTION_46009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46009", action = "action_EVENT_SELECT_OPTION_46009", trigger_count = 0 },
	{ config_id = 1046013, name = "ANY_MONSTER_DIE_46013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46013", action = "action_EVENT_ANY_MONSTER_DIE_46013" },
	{ config_id = 1046019, name = "ANY_MONSTER_DIE_46019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46019", action = "action_EVENT_ANY_MONSTER_DIE_46019" },
	{ config_id = 1046027, name = "ANY_MONSTER_DIE_46027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46027", action = "action_EVENT_ANY_MONSTER_DIE_46027" },
	{ config_id = 1046028, name = "ANY_MONSTER_DIE_46028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46028", action = "action_EVENT_ANY_MONSTER_DIE_46028" }
}

-- 点位
points = {
	[46012] = { config_id = 46012, pos = { x = -2052.301, y = 197.540, z = 5036.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 },
	[46017] = { config_id = 46017, pos = { x = -2056.151, y = 197.418, z = 5056.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
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
		gadgets = { 46002, 46004 },
		regions = { },
		triggers = { "GROUP_LOAD_46005", "CHALLENGE_SUCCESS_46006", "CHALLENGE_FAIL_46007", "GADGET_CREATE_46008", "SELECT_OPTION_46009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 46001, 46010, 46011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 46014, 46015, 46016 },
		gadgets = { 46022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 46020, 46021 },
		gadgets = { 46022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 46025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_46005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_46005(context, evt)
	-- 将configid为 46002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为46004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_46006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 46002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为46003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为46018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_46007(context, evt)
	-- 将configid为 46002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为46004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 5)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46008(context, evt)
	if 46004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310046, 46004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_46009(context, evt)
	-- 判断是gadgetid 46004 option_id 177
	if 46004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 46002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310046, 3)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2065.061, y=192.4736, z=5038.861}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2065.061, y=192.4736, z=5038.861}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46019(context, evt)
	LF_PointLook(context)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310046, 4)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46027(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2059.898, y=202.4229, z=5066.739}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2059.898, y=202.4229, z=5066.739}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310046, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46028(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310046, 5)
	
	return 0
end

require "V3_0/CameraLook"