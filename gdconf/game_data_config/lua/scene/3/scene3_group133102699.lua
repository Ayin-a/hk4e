-- 基础信息
local base_info = {
	group_id = 133102699
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 699002, monster_id = 24010201, pos = { x = 1499.954, y = 219.559, z = 581.132 }, rot = { x = 0.000, y = 46.397, z = 0.000 }, level = 18, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 5 }
}

-- NPC
npcs = {
	{ config_id = 699004, npc_id = 20047, pos = { x = 1496.814, y = 220.078, z = 579.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 699001, gadget_id = 70360028, pos = { x = 1496.744, y = 219.367, z = 579.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 699011, shape = RegionShape.SPHERE, radius = 22, pos = { x = 1496.803, y = 220.170, z = 579.337 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1699003, name = "ANY_MONSTER_DIE_699003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_699003", action = "action_EVENT_ANY_MONSTER_DIE_699003" },
	{ config_id = 1699005, name = "QUEST_START_699005", event = EventType.EVENT_QUEST_START, source = "2101903", condition = "", action = "action_EVENT_QUEST_START_699005" },
	{ config_id = 1699007, name = "QUEST_FINISH_699007", event = EventType.EVENT_QUEST_FINISH, source = "2101903", condition = "", action = "action_EVENT_QUEST_FINISH_699007" },
	{ config_id = 1699008, name = "GADGET_STATE_CHANGE_699008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_699008", action = "action_EVENT_GADGET_STATE_CHANGE_699008" },
	{ config_id = 1699009, name = "TIMER_EVENT_699009", event = EventType.EVENT_TIMER_EVENT, source = "start", condition = "", action = "action_EVENT_TIMER_EVENT_699009" },
	{ config_id = 1699010, name = "TIMER_EVENT_699010", event = EventType.EVENT_TIMER_EVENT, source = "finish", condition = "", action = "action_EVENT_TIMER_EVENT_699010" },
	{ config_id = 1699011, name = "ENTER_REGION_699011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_699011", action = "action_EVENT_ENTER_REGION_699011" }
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
		monsters = { 699002 },
		gadgets = { 699001 },
		regions = { 699011 },
		triggers = { "ENTER_REGION_699011" },
		npcs = { 699004 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_699003(context, evt)
	--判断死亡怪物的configid是否为 699002
	if evt.param1 ~= 699002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_699003(context, evt)
	-- 将configid为 699001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 699001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：133102699的对象,请求一次调用,并将string参数："start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102699, "start", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_699005(context, evt)
	-- 调用提示id为 31020603 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020603) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_699007(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 107)
	
	-- 创建id为699006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 699006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟15秒后,向groupId为：133102699的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102699, "finish", 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_699008(context, evt)
	if 699006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_699008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_699009(context, evt)
	-- 触发镜头注目，注目位置为坐标（1497，219，579），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1497, y=219, z=579}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 31020601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_699010(context, evt)
	-- 调用提示id为 31020606 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020606) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_699011(context, evt)
	if evt.param1 ~= 699011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_699011(context, evt)
	-- 触发镜头注目，注目位置为坐标（1500，219，581），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1500, y=219, z=581}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 31020801 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020801) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133102249) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end