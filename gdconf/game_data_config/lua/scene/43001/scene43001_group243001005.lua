-- 基础信息
local base_info = {
	group_id = 243001005
}

-- Trigger变量
local defs = {
	group_1 = 243001005,
	gadget_switch = 5013,
	gadget_floor = 5016,
	challenge_father = 999
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
	{ config_id = 5004, gadget_id = 70360159, pos = { x = 32.272, y = 69.000, z = -45.694 }, rot = { x = 0.000, y = 86.380, z = 0.000 }, level = 1, mark_flag = 2 },
	{ config_id = 5010, gadget_id = 70900201, pos = { x = 31.932, y = 41.574, z = -45.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5013, gadget_id = 70360164, pos = { x = 32.272, y = 40.100, z = -45.694 }, rot = { x = 0.000, y = 31.000, z = 0.000 }, level = 1, mark_flag = 4 },
	{ config_id = 5016, gadget_id = 70350244, pos = { x = 31.800, y = 39.380, z = -54.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5017, gadget_id = 70360161, pos = { x = 18.500, y = 40.000, z = -2.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5018, gadget_id = 70360160, pos = { x = 74.600, y = 40.000, z = -71.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, gadget_id = 70360162, pos = { x = -36.300, y = 40.000, z = -28.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5020, gadget_id = 70900201, pos = { x = 32.364, y = -19.558, z = -51.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 16.867, y = 0.000, z = -62.055 } },
	{ config_id = 5007, shape = RegionShape.CUBIC, size = { x = 45.000, y = 1.000, z = 45.000 }, pos = { x = 29.468, y = 29.433, z = -54.303 } },
	-- 开启父挑战
	{ config_id = 5014, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 2.000 }, pos = { x = 17.218, y = 46.994, z = 15.193 } }
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "CHALLENGE_FAIL_5001", event = EventType.EVENT_CHALLENGE_FAIL, source = "999", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5001" },
	{ config_id = 1005002, name = "TIME_AXIS_PASS_5002", event = EventType.EVENT_TIME_AXIS_PASS, source = "randball", condition = "", action = "action_EVENT_TIME_AXIS_PASS_5002", trigger_count = 0 },
	{ config_id = 1005003, name = "VARIABLE_CHANGE_5003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5003", action = "action_EVENT_VARIABLE_CHANGE_5003", trigger_count = 0 },
	{ config_id = 1005005, name = "ENTER_REGION_5005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5005", action = "" },
	{ config_id = 1005006, name = "SELECT_OPTION_5006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5006", action = "action_EVENT_SELECT_OPTION_5006", trigger_count = 0 },
	{ config_id = 1005007, name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5007", action = "action_EVENT_ENTER_REGION_5007" },
	{ config_id = 1005008, name = "VARIABLE_CHANGE_5008", event = EventType.EVENT_VARIABLE_CHANGE, source = "AddTime", condition = "condition_EVENT_VARIABLE_CHANGE_5008", action = "action_EVENT_VARIABLE_CHANGE_5008", trigger_count = 0 },
	{ config_id = 1005009, name = "TIMER_EVENT_5009", event = EventType.EVENT_TIMER_EVENT, source = "floor", condition = "", action = "action_EVENT_TIMER_EVENT_5009" },
	{ config_id = 1005011, name = "GADGET_CREATE_5011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5011", action = "action_EVENT_GADGET_CREATE_5011" },
	{ config_id = 1005012, name = "SELECT_OPTION_5012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5012", action = "action_EVENT_SELECT_OPTION_5012", trigger_count = 0 },
	-- 开启父挑战
	{ config_id = 1005014, name = "ENTER_REGION_5014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5014", action = "action_EVENT_ENTER_REGION_5014" },
	{ config_id = 1005015, name = "CHALLENGE_FAIL_5015", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "condition_EVENT_CHALLENGE_FAIL_5015", action = "action_EVENT_CHALLENGE_FAIL_5015", trigger_count = 0 },
	{ config_id = 1005021, name = "VARIABLE_CHANGE_5021", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "", action = "action_EVENT_VARIABLE_CHANGE_5021", trigger_count = 0, tag = "901" },
	-- 符文激活1
	{ config_id = 1005022, name = "VARIABLE_CHANGE_5022", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_5022", action = "action_EVENT_VARIABLE_CHANGE_5022" },
	-- 符文激活2
	{ config_id = 1005023, name = "VARIABLE_CHANGE_5023", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_5023", action = "action_EVENT_VARIABLE_CHANGE_5023" },
	-- 符文激活3
	{ config_id = 1005024, name = "VARIABLE_CHANGE_5024", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_5024", action = "action_EVENT_VARIABLE_CHANGE_5024" },
	{ config_id = 1005025, name = "GADGET_STATE_CHANGE_5025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5025", action = "action_EVENT_GADGET_STATE_CHANGE_5025", tag = "902" },
	{ config_id = 1005026, name = "VARIABLE_CHANGE_5026", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "", action = "action_EVENT_VARIABLE_CHANGE_5026", tag = "903" }
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
		gadgets = { 5004, 5013, 5016, 5017, 5018, 5019 },
		regions = { 5005, 5014 },
		triggers = { "CHALLENGE_FAIL_5001", "TIME_AXIS_PASS_5002", "VARIABLE_CHANGE_5003", "ENTER_REGION_5005", "SELECT_OPTION_5006", "VARIABLE_CHANGE_5008", "TIMER_EVENT_5009", "GADGET_CREATE_5011", "SELECT_OPTION_5012", "ENTER_REGION_5014", "CHALLENGE_FAIL_5015", "VARIABLE_CHANGE_5021", "VARIABLE_CHANGE_5022", "VARIABLE_CHANGE_5023", "VARIABLE_CHANGE_5024", "GADGET_STATE_CHANGE_5025", "VARIABLE_CHANGE_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5013, 5016 },
		regions = { },
		triggers = { "SELECT_OPTION_5012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5001(context, evt)
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001017, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 挑战失败触发结算
	if 0 ~= ScriptLib.FailMistTrialDungeonChallenge(context, 999) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 结束挑战失败！！！！")
		return -1
	end
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5002(context, evt)
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243001002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	ScriptLib.PrintContextLog(context, "随机球已经刷新!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5003(context, evt)
	-- 删除指定group： 243001005 ；指定config：5013；物件身上指定option：30；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_switch, 58) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
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
	
	-- 创建id为5008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	--子挑战 打开地板
	ScriptLib.AttachChildChallenge(context, 999, 902, 230, {7,902,1,1},{},{success=1,fail=1})
	
	ScriptLib.PrintContextLog(context, "操作台子挑战挂载!!!!!!!!")
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5005(context, evt)
	if evt.param1 ~= 5005 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5006(context, evt)
	-- 判断是gadgetid 5013 option_id 30
	if defs.gadget_switch ~= evt.param1 then
		return false	
	end
	
	if 58 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5006(context, evt)
	-- 调用提示id为 31040202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 ~= 5007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5007(context, evt)
	--修改天气为地城前半段效果
	--ScriptLib.SetWeatherAreaState(context, 10017 ,1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"AddTime"为1
	if ScriptLib.GetGroupVariableValue(context, "AddTime") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5008(context, evt)
	--修改父挑战时间
		ScriptLib.ModifyFatherChallengeProperty(context, defs.challenge_father, FatherChallengeProperty.DURATION, 300)
		
		
	-- 变量"AddTime"赋值为0
	ScriptLib.SetGroupVariableValue(context, "AddTime", 0)
		
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 243001005, EntityType.GADGET, 5016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5011(context, evt)
	if defs.gadget_switch ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_switch, {58}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	 ScriptLib.PrintContextLog(context, "操作台选项!!!!!!!!")
	
	-- 创建标识为"randball"，时间节点为{30}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "randball", {30}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5012(context, evt)
	-- 判断是gadgetid 5013 option_id 7
	if defs.gadget_switch ~= evt.param1 then
		return false	
	end
	
	if 59 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5012(context, evt)
	-- 延迟2秒后,向groupId为：243001005的对象,请求一次调用,并将string参数："floor" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 243001005, "floor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（0，0，0），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=31.8, y=40.2, z=-53.6}
	  	local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
		end 
	
	
	-- 将configid为 5016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为5020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 243002005 ；指定config：5013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 243001005, 5013, 59) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	--子挑战 完成最终试练
	ScriptLib.AttachChildChallenge(context, 999, 903, 231, {3,903,1,1},{},{success=99999,fail=1})
	
	ScriptLib.PrintContextLog(context, "操作台子挑战挂载!!!!!!!!")
	
	-- 调用提示id为 43001011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001011) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5014(context, evt)
	if evt.param1 ~= 5014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5014(context, evt)
	ScriptLib.CreateFatherChallenge(context, 999, 228, 900, {success = 99999, fail = 99999, fail_on_wipe=true}) 
	
	ScriptLib.AttachChildChallenge(context, 999, 901, 229, {3,901,3,1},{},{success=0,fail=0})
	
	
	ScriptLib.StartFatherChallenge(context, 999)
	
	ScriptLib.StartGallery(context, 7007)
	
	-- 使灭队event失效
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "AvatarDie", 1, 243001014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_5015(context, evt)
	if evt.param1 == 228  then 
		return false 
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5015(context, evt)
		-- 调用提示id为 43001010 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001010) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5021(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.PrintContextLog(context, "符文计数改变了!!!!!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为1
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5022(context, evt)
	-- 调用提示id为 43001002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为2
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5023(context, evt)
	-- 调用提示id为 43001003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5024(context, evt)
	-- 调用提示id为 43001004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5025(context, evt)
	if 5016 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5025(context, evt)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5026(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.PrintContextLog(context, "中控室光翼展开!!!!!!!!")
	
	return 0
end

require "AttachChildChallenge"