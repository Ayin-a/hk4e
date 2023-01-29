-- 基础信息
local base_info = {
	group_id = 247206001
}

-- DEFS_MISCS
local defs = {

--【三期新增】电梯所在房间的region id，用于保底玩家离开之后又飞速冲回来
    elevatorRegion = 1016,

--【三期新增】离开区域关电梯厅的门
    elevatorCloseRegion = 1030,

    keyDoor = {
        [1] = { challengeIdx = 233, center = 1007, left = 1008, right = 1009, },
        [2] = { challengeIdx = 233, center = 1010, left = 1011, right = 1012, },
        [3] = { challengeIdx = 233, center = 1013, left = 1014, right = 1015, }
    },

--【三期新增】电梯所在房间的三个门，123需要跟上面keyDoor的[1][2][3]对应起来
    elevatorDoor = {1004, 1005, 1006},

    --galleryID
    gallery_id = 31006,

    --galley限时秒数
    --迷城战线v2的限时用Gallery控制（excel表）此处用于保证FatherChallenge的时长不要小于Gallery
    time_limit = 300,

    --父挑战ChallengeId
    challenge_id = 228,

    --父挑战大RegionID,这个region用于地城中断线重连接续挑战
    region_id = 1017,

    --激活古代符文ChallengeId
    key_challenge = 229,
    --启动遗迹控制台ChallengeId
    worktop_challenge = 230,
    --最终挑战ChallengeId
    final_challenge = 231,

    --激活古代符文目标数量
    key_target = 3,

    --当前groupId
    group_1 = 247206001,

    --父机关接收器
    gadget_switch = 1003,

    --光桥地板
    gadget_floor = 1001,

    --父挑战识别ID
    challenge_father = 999,
    
    --随机球GroupID
    buff_group = 247206008,
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
	-- 电梯大门
	[1001] = { config_id = 1001, gadget_id = 70330416, pos = { x = 225.814, y = 164.522, z = 364.988 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1002] = { config_id = 1002, gadget_id = 70330365, pos = { x = 219.937, y = 163.452, z = 364.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	[1003] = { config_id = 1003, gadget_id = 70360393, pos = { x = 243.383, y = 162.090, z = 365.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2 },
	-- 电梯1号门
	[1004] = { config_id = 1004, gadget_id = 70330416, pos = { x = 243.324, y = 162.587, z = 349.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 电梯2号门
	[1005] = { config_id = 1005, gadget_id = 70330416, pos = { x = 265.712, y = 160.617, z = 365.018 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 电梯3号门
	[1006] = { config_id = 1006, gadget_id = 70330416, pos = { x = 243.301, y = 162.587, z = 380.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 1号房center门
	[1007] = { config_id = 1007, gadget_id = 70330466, pos = { x = 243.293, y = 160.596, z = 325.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 1号房left门
	[1008] = { config_id = 1008, gadget_id = 70330466, pos = { x = 216.666, y = 160.600, z = 292.269 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 1号房right门
	[1009] = { config_id = 1009, gadget_id = 70330466, pos = { x = 270.019, y = 160.599, z = 292.268 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 2号房center门
	[1010] = { config_id = 1010, gadget_id = 70330466, pos = { x = 296.666, y = 158.438, z = 365.011 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 2号房left门
	[1011] = { config_id = 1011, gadget_id = 70330466, pos = { x = 324.522, y = 158.437, z = 334.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 2号房right门
	[1012] = { config_id = 1012, gadget_id = 70330466, pos = { x = 324.520, y = 158.437, z = 394.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 3号房center门
	[1013] = { config_id = 1013, gadget_id = 70330466, pos = { x = 243.004, y = 160.487, z = 405.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 3号房left门
	[1014] = { config_id = 1014, gadget_id = 70330466, pos = { x = 272.196, y = 160.484, z = 441.812 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 3号房right门
	[1015] = { config_id = 1015, gadget_id = 70330466, pos = { x = 214.149, y = 160.367, z = 441.917 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1018] = { config_id = 1018, gadget_id = 70360394, pos = { x = 243.351, y = 157.392, z = 292.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1019] = { config_id = 1019, gadget_id = 70360395, pos = { x = 324.518, y = 154.832, z = 364.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1020] = { config_id = 1020, gadget_id = 70360396, pos = { x = 243.289, y = 162.282, z = 441.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1034] = { config_id = 1034, gadget_id = 70900201, pos = { x = 243.171, y = 163.564, z = 365.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 电梯厅开门保底
	[1016] = { config_id = 1016, shape = RegionShape.CUBIC, size = { x = 30.000, y = 25.000, z = 25.000 }, pos = { x = 244.483, y = 172.073, z = 365.132 } },
	-- 断线重连保底
	[1017] = { config_id = 1017, shape = RegionShape.CUBIC, size = { x = 350.000, y = 200.000, z = 350.000 }, pos = { x = 225.436, y = 192.461, z = 364.607 } },
	-- 电梯运行
	[1029] = { config_id = 1029, shape = RegionShape.CUBIC, size = { x = 8.000, y = 10.000, z = 8.000 }, pos = { x = 219.937, y = 164.932, z = 364.966 } },
	-- 电梯厅离开关门
	[1030] = { config_id = 1030, shape = RegionShape.CUBIC, size = { x = 50.000, y = 40.000, z = 45.000 }, pos = { x = 244.483, y = 172.073, z = 365.132 } }
}

-- 触发器
triggers = {
	-- 灭队占位
	{ config_id = 1001021, name = "DUNGEON_ALL_AVATAR_DIE_1021", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1021" },
	-- 随机刷buff球
	{ config_id = 1001022, name = "GADGET_CREATE_1022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1022", action = "action_EVENT_GADGET_CREATE_1022" },
	-- 结算停gallery
	{ config_id = 1001023, name = "DUNGEON_SETTLE_1023", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_1023" },
	-- 激活第1个符文提示
	{ config_id = 1001024, name = "VARIABLE_CHANGE_1024", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_1024", action = "action_EVENT_VARIABLE_CHANGE_1024" },
	-- 激活第2个符文提示
	{ config_id = 1001025, name = "VARIABLE_CHANGE_1025", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_1025", action = "action_EVENT_VARIABLE_CHANGE_1025" },
	-- 激活第3个符文提示
	{ config_id = 1001026, name = "VARIABLE_CHANGE_1026", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_1026", action = "action_EVENT_VARIABLE_CHANGE_1026" },
	-- 父机关挂option
	{ config_id = 1001027, name = "VARIABLE_CHANGE_1027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1027", action = "action_EVENT_VARIABLE_CHANGE_1027", trigger_count = 0 },
	-- 启动父机关
	{ config_id = 1001028, name = "SELECT_OPTION_1028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1028", action = "action_EVENT_SELECT_OPTION_1028" },
	-- 电梯运行
	{ config_id = 1001029, name = "ENTER_REGION_1029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1029", action = "action_EVENT_ENTER_REGION_1029" },
	-- 符文计数
	{ config_id = 1001031, name = "VARIABLE_CHANGE_1031", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "", action = "action_EVENT_VARIABLE_CHANGE_1031", trigger_count = 0, tag = "901" },
	-- BOSS房完成判断
	{ config_id = 1001032, name = "VARIABLE_CHANGE_1032", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_1032", action = "", tag = "903" },
	-- 电梯开门完成判断
	{ config_id = 1001033, name = "GADGET_STATE_CHANGE_1033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1033", action = "", tag = "902" }
}

-- 变量
variables = {
	{ config_id = 1, name = "runes", value = 0, no_refresh = false },
	{ config_id = 2, name = "AddTime", value = 0, no_refresh = false },
	{ config_id = 3, name = "success", value = 0, no_refresh = false }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1018, 1019, 1020 },
		regions = { 1016, 1017, 1030 },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_1021", "GADGET_CREATE_1022", "DUNGEON_SETTLE_1023", "VARIABLE_CHANGE_1024", "VARIABLE_CHANGE_1025", "VARIABLE_CHANGE_1026", "VARIABLE_CHANGE_1027", "SELECT_OPTION_1028", "VARIABLE_CHANGE_1031", "VARIABLE_CHANGE_1032", "GADGET_STATE_CHANGE_1033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 1029 },
		triggers = { "ENTER_REGION_1029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1034 },
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

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1021(context, evt)
	-- 挑战失败触发结算
	if 0 ~= ScriptLib.FailMistTrialDungeonChallenge(context, 999) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 结束挑战失败！！！！")
		return -1
	end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1022(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1022(context, evt)
	
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 247206008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_1023(context, evt)
	--判断胜利or失败
	if 1 ~= evt.param1 then
	
		ScriptLib.StopGallery(context, defs.gallery_id, true)
		ScriptLib.PrintContextLog(context, "gallery失败结算!!!!!!!!")
	
		
	
	else
	
		ScriptLib.StopGallery(context, defs.gallery_id, false)
		ScriptLib.PrintContextLog(context, "galllery胜利结算!!!!!!!!")
	
	
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为1
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1024(context, evt)
	-- 调用提示id为 47201001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 47201001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为2
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1025(context, evt)
	-- 调用提示id为 47201002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 47201002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1026(context, evt)
	-- 调用提示id为 47201003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 47201003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247206001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1027(context, evt)
	-- 将本组内变量名为 "runes" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "runes", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_switch, {59}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	--子挑战 启动父机关 打开电梯门
	ScriptLib.AttachChildChallenge(context, 999, 902, 230, {7,902,1,1},{},{success=1,fail=1})
	
	ScriptLib.PrintContextLog(context, "操作台子挑战挂载!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1028(context, evt)
	-- 判断是gadgetid 1003 option_id 59
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 59 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1028(context, evt)
	-- 将电梯门物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247206001, 2)
	
	
	-- 删除指引点
	    ScriptLib.RemoveExtraGroupSuite(context, 247206001, 3)
	
	-- 删除中控台group的地上操作台物件；物件身上指定option：59；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247206001, 1003, 59) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	--子挑战 完成最终试练
	ScriptLib.AttachChildChallenge(context, 999, 903, 231, {3,903,1,1},{},{success=99999,fail=1})
	
	ScriptLib.PrintContextLog(context, "操作台子挑战挂载!!!!!!!!")
	
	-- 调用提示id为 43001011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 47201004) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	--电梯开门镜头
	local pos = { x=225.815, y=165.119, z=364.989}
	local pos_follow = { x=244.54, y=166.77, z=364.989}
	
	if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos = true, is_abs_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false }) then
	    ScriptLib.PrintContextLog(context, "@@Lua_warning : active_cameralook_begin")
	    return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1029(context, evt)
	if evt.param1 ~= 1029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1029(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1002, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1031(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.PrintContextLog(context, "符文计数+1")
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 247206001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1033(context, evt)
	if 1001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

require "V3_3/MistTrialV3"