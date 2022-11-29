-- 基础信息
local base_info = {
	group_id = 201053003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 20011001, pos = { x = -142.778, y = 37.240, z = 84.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20011001, pos = { x = -132.674, y = 37.242, z = 86.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20011001, pos = { x = -139.702, y = 37.234, z = 80.020 }, rot = { x = 0.000, y = 139.798, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 20011001, pos = { x = -133.394, y = 37.259, z = 81.889 }, rot = { x = 0.000, y = 175.192, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 20011001, pos = { x = -140.025, y = 37.231, z = 87.754 }, rot = { x = 0.000, y = 143.057, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3008, gadget_id = 70300116, pos = { x = -140.874, y = 37.216, z = 77.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "ANY_MONSTER_DIE_3001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3001", action = "action_EVENT_ANY_MONSTER_DIE_3001", trigger_count = 0 },
	{ config_id = 1003007, name = "ANY_MONSTER_DIE_3007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3007", action = "action_EVENT_ANY_MONSTER_DIE_3007", trigger_count = 0 },
	{ config_id = 1003009, name = "TIMER_EVENT_3009", event = EventType.EVENT_TIMER_EVENT, source = "waitTillWaterRaise", condition = "", action = "action_EVENT_TIMER_EVENT_3009" }
}

-- 变量
variables = {
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
		monsters = { 3002, 3003, 3004, 3005, 3006 },
		gadgets = { 3008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3001", "TIMER_EVENT_3009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 原Suite1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201053003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3001(context, evt)
	-- 触发镜头注目，注目位置为坐标（-136，37，132），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-136, y=37, z=132}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 延迟3秒后,向groupId为：201053003的对象,请求一次调用,并将string参数："waitTillWaterRaise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201053003, "waitTillWaterRaise", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201053003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 针对当前group内变量名为 "icon3Appear" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "icon3Appear", 1, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组201053002中， configid为2006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201053002, 2006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201053002, 2006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-136，37，132），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-136, y=37, z=132}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "waterPath" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterPath", 3, 201053019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 10530104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10530104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3009(context, evt)
	-- 将本组内变量名为 "waterPath" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterPath", 3, 201053019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 10530104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10530104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end