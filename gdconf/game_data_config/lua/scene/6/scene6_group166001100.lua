-- 基础信息
local base_info = {
	group_id = 166001100
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 100002, monster_id = 24010101, pos = { x = 72.853, y = 317.315, z = 340.517 }, rot = { x = 6.609, y = 353.215, z = 351.438 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 100001, gadget_id = 70350006, pos = { x = 73.408, y = 318.059, z = 338.609 }, rot = { x = 0.000, y = 186.026, z = 9.513 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 100004, gadget_id = 70310007, pos = { x = 72.853, y = 317.315, z = 340.517 }, rot = { x = 6.609, y = 353.215, z = 351.438 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100003, name = "ANY_MONSTER_DIE_100003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100003", action = "action_EVENT_ANY_MONSTER_DIE_100003" },
	{ config_id = 1100005, name = "GROUP_LOAD_100005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100005", action = "action_EVENT_GROUP_LOAD_100005", trigger_count = 0 },
	{ config_id = 1100006, name = "GROUP_LOAD_100006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100006", action = "action_EVENT_GROUP_LOAD_100006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "OPEN", value = 0, no_refresh = true }
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
		gadgets = { 100001, 100004 },
		regions = { },
		triggers = { "GROUP_LOAD_100005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 100002 },
		gadgets = { 100001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100003", "GROUP_LOAD_100005", "GROUP_LOAD_100006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	if 100002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	-- 将本组内变量名为 "OPEN" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OPEN", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 100001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001100") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（73.4，318，338.6），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=73.4, y=318, z=338.6}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 1 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 60010194 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010194) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100005(context, evt)
	-- 判断变量"OPEN"为0
	if ScriptLib.GetGroupVariableValue(context, "OPEN") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100005(context, evt)
	-- 将configid为 100001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100006(context, evt)
	-- 判断变量"OPEN"为1
	if ScriptLib.GetGroupVariableValue(context, "OPEN") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100006(context, evt)
	-- 将configid为 100001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end