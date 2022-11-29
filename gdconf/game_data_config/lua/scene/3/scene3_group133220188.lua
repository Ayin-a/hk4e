-- 基础信息
local base_info = {
	group_id = 133220188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188002, monster_id = 25080101, pos = { x = -1855.716, y = 205.799, z = -4221.062 }, rot = { x = 0.000, y = 15.695, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 188003, monster_id = 25080301, pos = { x = -1847.464, y = 205.645, z = -4218.929 }, rot = { x = 358.588, y = 310.653, z = 358.788 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 188004, monster_id = 25080201, pos = { x = -1851.707, y = 205.380, z = -4222.226 }, rot = { x = 0.000, y = 0.000, z = 354.724 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 188005, monster_id = 25100201, pos = { x = -1851.578, y = 205.892, z = -4219.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, title_id = 10041, special_name_id = 10062, area_id = 11 },
	{ config_id = 188006, monster_id = 25010501, pos = { x = -1842.425, y = 209.229, z = -4222.897 }, rot = { x = 0.000, y = 288.454, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188007, monster_id = 25010301, pos = { x = -1862.027, y = 210.377, z = -4224.211 }, rot = { x = 0.000, y = 57.836, z = 0.000 }, level = 27, drop_id = 1000100, title_id = 10042, special_name_id = 10063, area_id = 11 },
	{ config_id = 188008, monster_id = 25030301, pos = { x = -1856.882, y = 202.656, z = -4236.595 }, rot = { x = 0.000, y = 0.000, z = 357.574 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188009, monster_id = 25030301, pos = { x = -1849.282, y = 202.841, z = -4236.882 }, rot = { x = 357.005, y = 339.520, z = 1.118 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188010, monster_id = 25070101, pos = { x = -1854.127, y = 202.120, z = -4239.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, title_id = 10043, special_name_id = 10064, area_id = 11 },
	{ config_id = 188011, monster_id = 25030201, pos = { x = -1844.120, y = 205.825, z = -4210.348 }, rot = { x = 0.000, y = 215.076, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188012, monster_id = 25010201, pos = { x = -1856.029, y = 206.242, z = -4218.057 }, rot = { x = 0.000, y = 117.980, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188013, monster_id = 25010201, pos = { x = -1848.916, y = 205.761, z = -4218.359 }, rot = { x = 0.000, y = 235.108, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188016, monster_id = 23010301, pos = { x = -1859.089, y = 206.468, z = -4205.828 }, rot = { x = 0.000, y = 150.935, z = 0.000 }, level = 27, drop_id = 1000100, title_id = 10045, special_name_id = 10066, area_id = 11 },
	{ config_id = 188017, monster_id = 23010601, pos = { x = -1841.408, y = 209.234, z = -4222.326 }, rot = { x = 0.000, y = 275.235, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188018, monster_id = 23010401, pos = { x = -1862.771, y = 210.446, z = -4224.226 }, rot = { x = 0.000, y = 39.303, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188019, monster_id = 23010201, pos = { x = -1860.459, y = 206.473, z = -4203.839 }, rot = { x = 0.000, y = 146.927, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188020, monster_id = 23010101, pos = { x = -1853.786, y = 202.348, z = -4237.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 188021, monster_id = 23010501, pos = { x = -1849.934, y = 205.968, z = -4218.607 }, rot = { x = 0.000, y = 210.414, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 188028, gadget_id = 70710221, pos = { x = -1848.551, y = 205.971, z = -4215.613 }, rot = { x = 0.000, y = 195.971, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	-- 播开车用
	{ config_id = 188030, shape = RegionShape.SPHERE, radius = 35, pos = { x = -1849.925, y = 206.094, z = -4219.862 }, area_id = 11 },
	-- 拉起跟怪物NPC对话
	{ config_id = 188031, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1849.925, y = 206.094, z = -4219.862 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 盗宝团开车
	{ config_id = 1188001, name = "TIMER_EVENT_188001", event = EventType.EVENT_TIMER_EVENT, source = "rounin", condition = "", action = "action_EVENT_TIMER_EVENT_188001" },
	-- 盗宝团开车
	{ config_id = 1188014, name = "ANY_MONSTER_DIE_188014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188014", action = "action_EVENT_ANY_MONSTER_DIE_188014" },
	-- 愚人众开车
	{ config_id = 1188015, name = "TIMER_EVENT_188015", event = EventType.EVENT_TIMER_EVENT, source = "thief", condition = "", action = "action_EVENT_TIMER_EVENT_188015" },
	-- 刷新新的盗宝团
	{ config_id = 1188022, name = "ANY_MONSTER_DIE_188022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188022", action = "action_EVENT_ANY_MONSTER_DIE_188022" },
	-- 第一波死亡刷新第二波
	{ config_id = 1188024, name = "ANY_MONSTER_DIE_188024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188024", action = "action_EVENT_ANY_MONSTER_DIE_188024" },
	-- 第三波死亡刷新第四波
	{ config_id = 1188026, name = "ANY_MONSTER_DIE_188026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188026", action = "action_EVENT_ANY_MONSTER_DIE_188026" },
	-- 第四波死亡任务完成
	{ config_id = 1188027, name = "ANY_MONSTER_DIE_188027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188027", action = "action_EVENT_ANY_MONSTER_DIE_188027" },
	-- 播开车用
	{ config_id = 1188030, name = "ENTER_REGION_188030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188030", action = "action_EVENT_ENTER_REGION_188030" },
	-- 拉起跟怪物NPC对话
	{ config_id = 1188031, name = "ENTER_REGION_188031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188031", action = "action_EVENT_ENTER_REGION_188031", trigger_count = 0 },
	-- 海乱鬼死了开车
	{ config_id = 1188032, name = "ANY_MONSTER_DIE_188032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188032", action = "action_EVENT_ANY_MONSTER_DIE_188032" }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 6,
	end_suite = 7,
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
		gadgets = { 188028 },
		regions = { 188030, 188031 },
		triggers = { "ENTER_REGION_188030", "ENTER_REGION_188031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 浪人同事分赃不均,
		monsters = { 188002, 188003, 188004, 188005 },
		gadgets = { 188028 },
		regions = { },
		triggers = { "TIMER_EVENT_188001", "ANY_MONSTER_DIE_188024", "ANY_MONSTER_DIE_188032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 盗宝团黄雀在后,
		monsters = { 188006, 188007, 188012, 188013 },
		gadgets = { 188028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188022" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 盗宝团2,
		monsters = { 188008, 188009, 188010, 188011 },
		gadgets = { 188028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188014", "TIMER_EVENT_188015", "ANY_MONSTER_DIE_188026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 愚人众打酱油路过,
		monsters = { 188016, 188017, 188018, 188019, 188020, 188021 },
		gadgets = { 188028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 188028 },
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
function action_EVENT_TIMER_EVENT_188001(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1852,y=205,z=-4222}
	if 0 ~= ScriptLib.ShowReminderRadius(context, -1074246794, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220188, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188014(context, evt)
	--判断死亡怪物的configid是否为 188010
	if evt.param1 ~= 188010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188014(context, evt)
	-- 调用提示id为 -1074246792 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246792) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_188015(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1852,y=205,z=-4222}
	if 0 ~= ScriptLib.ShowReminderRadius(context, -1074246791, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220188, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220188, 4)
	
	-- 触发镜头注目，注目位置为坐标（-1853.58，204.06，-4237.66），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1853.58, y=204.06, z=-4237.66}
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
function condition_EVENT_ANY_MONSTER_DIE_188024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188024(context, evt)
	-- 延迟5秒后,向groupId为：133220188的对象,请求一次调用,并将string参数："rounin" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220188, "rounin", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188026(context, evt)
	-- 延迟5秒后,向groupId为：133220188的对象,请求一次调用,并将string参数："thief" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220188, "thief", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201882") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 188028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 -1074246786 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246786) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188030(context, evt)
	if evt.param1 ~= 188030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188030(context, evt)
	-- 调用提示id为 7210930 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210930) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188031(context, evt)
	if evt.param1 ~= 188031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201881") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188032(context, evt)
	if 188005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188032(context, evt)
	-- 调用提示id为 -1074246795 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246795) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end