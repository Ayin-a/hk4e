-- 基础信息
local base_info = {
	group_id = 133106437
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437010, monster_id = 28050221, pos = { x = -878.931, y = 184.275, z = 1645.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1050181, pose_id = 921, area_id = 19, guest_ban_drop = 63 },
	{ config_id = 437011, monster_id = 28050222, pos = { x = -884.606, y = 182.724, z = 1656.779 }, rot = { x = 0.000, y = 192.878, z = 0.000 }, level = 36, drop_id = 1050182, pose_id = 921, area_id = 19, guest_ban_drop = 63 },
	{ config_id = 437012, monster_id = 28050223, pos = { x = -883.961, y = 184.857, z = 1642.806 }, rot = { x = 0.000, y = 223.538, z = 0.000 }, level = 36, drop_id = 1050180, pose_id = 921, area_id = 19, guest_ban_drop = 63 },
	{ config_id = 437013, monster_id = 28050221, pos = { x = -878.931, y = 184.275, z = 1645.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 102, area_id = 19 },
	{ config_id = 437015, monster_id = 28050221, pos = { x = -882.720, y = 182.694, z = 1655.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 102, area_id = 19 },
	{ config_id = 437016, monster_id = 28050221, pos = { x = -877.475, y = 182.196, z = 1661.332 }, rot = { x = 0.000, y = 245.353, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 102, area_id = 19 },
	{ config_id = 437017, monster_id = 28050221, pos = { x = -873.481, y = 183.841, z = 1646.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 102, area_id = 19 }
}

-- NPC
npcs = {
	{ config_id = 437014, npc_id = 20220, pos = { x = -894.612, y = 183.491, z = 1655.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 }
}

-- 装置
gadgets = {
	{ config_id = 437002, gadget_id = 70290028, pos = { x = -879.058, y = 184.115, z = 1645.378 }, rot = { x = 9.863, y = 359.829, z = 358.012 }, level = 36, area_id = 19 },
	{ config_id = 437003, gadget_id = 70290028, pos = { x = -868.955, y = 183.816, z = 1644.666 }, rot = { x = 12.594, y = 359.978, z = 357.209 }, level = 36, area_id = 19 },
	{ config_id = 437004, gadget_id = 70290028, pos = { x = -884.071, y = 184.694, z = 1642.776 }, rot = { x = 9.509, y = 359.762, z = 358.352 }, level = 36, area_id = 19 },
	{ config_id = 437005, gadget_id = 70290028, pos = { x = -884.637, y = 182.502, z = 1656.826 }, rot = { x = 5.846, y = 359.901, z = 358.534 }, level = 36, area_id = 19 },
	{ config_id = 437006, gadget_id = 70290028, pos = { x = -874.591, y = 182.414, z = 1663.100 }, rot = { x = 5.298, y = 359.247, z = 7.464 }, level = 36, area_id = 19 },
	{ config_id = 437008, gadget_id = 70360001, pos = { x = -889.106, y = 188.271, z = 1641.951 }, rot = { x = 3.818, y = 359.934, z = 3.485 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 437027, gadget_id = 70360040, pos = { x = -894.973, y = 183.463, z = 1655.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 437028, gadget_id = 70300203, pos = { x = -889.081, y = 187.826, z = 1641.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 437018, shape = RegionShape.SPHERE, radius = 15, pos = { x = -890.215, y = 184.334, z = 1648.071 }, area_id = 19 },
	{ config_id = 437019, shape = RegionShape.SPHERE, radius = 15, pos = { x = -890.215, y = 184.334, z = 1648.071 }, area_id = 19 },
	{ config_id = 437020, shape = RegionShape.SPHERE, radius = 15, pos = { x = -890.215, y = 184.334, z = 1648.071 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1437001, name = "GADGET_CREATE_437001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_437001", action = "action_EVENT_GADGET_CREATE_437001", trigger_count = 0 },
	{ config_id = 1437007, name = "SELECT_OPTION_437007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_437007", trigger_count = 0 },
	{ config_id = 1437009, name = "TIMER_EVENT_437009", event = EventType.EVENT_TIMER_EVENT, source = "cooldown", condition = "", action = "action_EVENT_TIMER_EVENT_437009", trigger_count = 0 },
	{ config_id = 1437018, name = "ENTER_REGION_437018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_437018", action = "action_EVENT_ENTER_REGION_437018" },
	{ config_id = 1437019, name = "ENTER_REGION_437019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_437019", action = "action_EVENT_ENTER_REGION_437019" },
	{ config_id = 1437020, name = "ENTER_REGION_437020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_437020", action = "action_EVENT_ENTER_REGION_437020" },
	-- 接到了塔列辛的任务
	{ config_id = 1437021, name = "ANY_MONSTER_DIE_437021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437021", action = "action_EVENT_ANY_MONSTER_DIE_437021", trigger_count = 0 },
	-- 没接到塔列辛的任务
	{ config_id = 1437022, name = "ANY_MONSTER_DIE_437022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437022", action = "action_EVENT_ANY_MONSTER_DIE_437022", trigger_count = 0 },
	-- 当玩家阅读了盗宝鼬训练手册后创建吹口哨的按钮
	{ config_id = 1437023, name = "QUEST_FINISH_437023", event = EventType.EVENT_QUEST_FINISH, source = "7106605", condition = "", action = "action_EVENT_QUEST_FINISH_437023" },
	-- 杀掉大黄金盗宝鼬后，取消timer，移除吹口哨操作台
	{ config_id = 1437024, name = "ANY_MONSTER_DIE_437024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437024", action = "action_EVENT_ANY_MONSTER_DIE_437024", trigger_count = 0 },
	{ config_id = 1437025, name = "ANY_MONSTER_DIE_437025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437025", action = "action_EVENT_ANY_MONSTER_DIE_437025", trigger_count = 0 },
	{ config_id = 1437026, name = "ANY_MONSTER_DIE_437026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437026", action = "action_EVENT_ANY_MONSTER_DIE_437026", trigger_count = 0 },
	-- 口哨音效也在这
	{ config_id = 1437029, name = "SELECT_OPTION_437029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_437029", action = "action_EVENT_SELECT_OPTION_437029", trigger_count = 0 },
	-- 当玩家阅读了盗宝鼬训练手册后注视
	{ config_id = 1437030, name = "TIMER_EVENT_437030", event = EventType.EVENT_TIMER_EVENT, source = "cameralook", condition = "", action = "action_EVENT_TIMER_EVENT_437030" }
}

-- 变量
variables = {
	{ config_id = 1, name = "xinshou", value = 0, no_refresh = true },
	{ config_id = 2, name = "cangjin", value = 0, no_refresh = true },
	{ config_id = 3, name = "dahuangjin", value = 0, no_refresh = true }
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
		monsters = { 437013, 437015, 437016, 437017 },
		gadgets = { 437002, 437003, 437004, 437005, 437006, 437027 },
		regions = { },
		triggers = { "GADGET_CREATE_437001", "SELECT_OPTION_437007", "TIMER_EVENT_437009", "QUEST_FINISH_437023", "SELECT_OPTION_437029", "TIMER_EVENT_437030" },
		npcs = { 437014 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 437012 },
		gadgets = { },
		regions = { 437018 },
		triggers = { "ENTER_REGION_437018", "ANY_MONSTER_DIE_437021", "ANY_MONSTER_DIE_437022", "ANY_MONSTER_DIE_437024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 437011 },
		gadgets = { },
		regions = { 437019 },
		triggers = { "ENTER_REGION_437019", "ANY_MONSTER_DIE_437025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 437010 },
		gadgets = { },
		regions = { 437020 },
		triggers = { "ENTER_REGION_437020", "ANY_MONSTER_DIE_437026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 437008, 437028 },
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
function condition_EVENT_GADGET_CREATE_437001(context, evt)
	if 437008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_437001(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106437, 437008, {750}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_437007(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 133106437, 437008, 750)
	ScriptLib.CreateGroupTimerEvent(context, 133106437, "cooldown", 5)
	
	local _curTime = ScriptLib.GetGameHour(context)
	if _curTime >= 0 and _curTime <2 and ScriptLib.GetGroupVariableValue(context, "dahuangjin") <1 then
	        --创高级盗宝鼬
	        ScriptLib.AddExtraGroupSuite(context,133106437,2)                
	elseif _curTime >= 2 and _curTime <12 and ScriptLib.GetGroupVariableValue(context, "cangjin") <4 then
	        --创中级盗宝鼬
	        ScriptLib.AddExtraGroupSuite(context,133106437,3)
	elseif _curTime >= 12 and _curTime <24 and ScriptLib.GetGroupVariableValue(context, "xinshou") <8 then
	        --创低级盗宝鼬
	        ScriptLib.AddExtraGroupSuite(context,133106437,4)
	end
	return 0 
end

-- 触发操作
function action_EVENT_TIMER_EVENT_437009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106437, 437008, {750}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_437018(context, evt)
	if evt.param1 ~= 437018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_437018(context, evt)
	-- 调用提示id为 310643731 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310643731) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-883.9609, y=184.8571, z=1642.806}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-883.9609, y=184.8571, z=1642.806}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_437019(context, evt)
	if evt.param1 ~= 437019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_437019(context, evt)
	-- 调用提示id为 310643721 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310643721) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-884.6059, y=182.7242, z=1656.779}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-884.6059, y=182.7242, z=1656.779}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_437020(context, evt)
	if evt.param1 ~= 437020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_437020(context, evt)
	-- 调用提示id为 310643711 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310643711) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-878.9308, y=184.2747, z=1645.634}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-878.9308, y=184.2747, z=1645.634}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437021(context, evt)
	if 437012 ~= evt.param1 then
		return false
	end
	
	if evt.param2 ~= 0 then
	    return false
	 end
	
	if ScriptLib.GetHostQuestState(context,7106601) == 3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437021(context, evt)
	-- 调用提示id为 310643741 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310643741) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437022(context, evt)
	if 437012 ~= evt.param1 then
		return false
	end
	
	if evt.param2 ~= 0 then
	    return false
	 end
	
	if ScriptLib.GetHostQuestState(context,7106601) ~= 3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437022(context, evt)
	-- 调用提示id为 310643751 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310643751) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_437023(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106437, 5)
	
	-- 调用提示id为 310643701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310643701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟2秒后,向groupId为：133106437的对象,请求一次调用,并将string参数："cameralook" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133106437, "cameralook", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437024(context, evt)
	--判断死亡怪物的configid是否为 437012
	if evt.param1 ~= 437012 then
	    return false
	 end
	  
	
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437024(context, evt)
	-- 针对当前group内变量名为 "dahuangjin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "dahuangjin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106437, EntityType.GADGET, 437008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106437, EntityType.GADGET, 437028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133106437, "cooldown") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437025(context, evt)
	--判断死亡怪物的configid是否为 437011
	if evt.param1 ~= 437011 then
	    return false
	 end
	  
	
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437025(context, evt)
	-- 针对当前group内变量名为 "cangjin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "cangjin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437026(context, evt)
	--判断死亡怪物的configid是否为 437010
	if evt.param1 ~= 437010 then
	    return false
	 end
	  
	
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437026(context, evt)
	-- 针对当前group内变量名为 "xinshou" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "xinshou", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_437029(context, evt)
	-- 判断是gadgetid 437008 option_id 750
	if 437008 ~= evt.param1 then
		return false	
	end
	
	if 750 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_437029(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-889, y=188, z=1642}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Audio_lua_quest_WQ_cengYanJuYuan_whistle", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_437030(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-889, y=188, z=1641.7}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-889, y=188, z=1641.7}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end