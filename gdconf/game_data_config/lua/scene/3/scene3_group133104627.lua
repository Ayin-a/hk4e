-- 基础信息
local base_info = {
	group_id = 133104627
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
	{ config_id = 627002, gadget_id = 70210102, pos = { x = 254.272, y = 236.192, z = 533.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1001902, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 627003, gadget_id = 70360001, pos = { x = 249.590, y = 235.893, z = 539.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 627004, gadget_id = 70360040, pos = { x = 249.614, y = 235.896, z = 539.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 627001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 249.290, y = 237.568, z = 535.542 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1627001, name = "ENTER_REGION_627001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_627001", action = "action_EVENT_ENTER_REGION_627001" },
	{ config_id = 1627005, name = "GADGET_CREATE_627005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_627005", action = "action_EVENT_GADGET_CREATE_627005", trigger_count = 0 },
	{ config_id = 1627006, name = "SELECT_OPTION_627006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_627006", action = "action_EVENT_SELECT_OPTION_627006", trigger_count = 0 },
	{ config_id = 1627007, name = "GADGET_STATE_CHANGE_627007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_627007", action = "action_EVENT_GADGET_STATE_CHANGE_627007" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 627001 },
		triggers = { "ENTER_REGION_627001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 627002, 627003, 627004 },
		regions = { },
		triggers = { "GADGET_CREATE_627005", "SELECT_OPTION_627006", "GADGET_STATE_CHANGE_627007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 627002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_627007" },
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
function condition_EVENT_ENTER_REGION_627001(context, evt)
	if evt.param1 ~= 627001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_627001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104627_brushpoint") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_627005(context, evt)
	if 627003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_627005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104627, 627003, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_627006(context, evt)
	-- 判断是gadgetid 627003 option_id 188
	if 627003 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_627006(context, evt)
	-- 触发镜头注目，注目位置为坐标（61，210，744），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=61, y=210, z=744}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 31040701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104627, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_627007(context, evt)
	if 627002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_627007(context, evt)
	-- 调用提示id为 31040704 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040704) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end