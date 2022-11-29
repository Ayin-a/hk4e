-- 基础信息
local base_info = {
	group_id = 133003514
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 514001, monster_id = 21020201, pos = { x = 2111.452, y = 231.226, z = -1570.534 }, rot = { x = 0.000, y = 254.508, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1, guest_ban_drop = 63 },
	{ config_id = 514003, monster_id = 21011001, pos = { x = 2087.510, y = 232.998, z = -1572.865 }, rot = { x = 0.000, y = 294.731, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 1 },
	{ config_id = 514004, monster_id = 21011001, pos = { x = 2097.784, y = 228.066, z = -1595.212 }, rot = { x = 0.000, y = 340.374, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 1 },
	{ config_id = 514005, monster_id = 21010601, pos = { x = 2092.423, y = 227.437, z = -1587.565 }, rot = { x = 3.833, y = 248.227, z = 357.766 }, level = 5, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 514006, monster_id = 21010601, pos = { x = 2089.750, y = 227.219, z = -1586.421 }, rot = { x = 0.000, y = 153.512, z = 0.000 }, level = 5, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 514011, monster_id = 21011001, pos = { x = 2103.657, y = 228.019, z = -1584.045 }, rot = { x = 0.000, y = 243.286, z = 0.000 }, level = 5, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 514013, monster_id = 21010701, pos = { x = 2111.404, y = 230.707, z = -1562.515 }, rot = { x = 0.000, y = 241.802, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 },
	{ config_id = 514014, monster_id = 21030301, pos = { x = 2087.320, y = 226.965, z = -1581.118 }, rot = { x = 0.000, y = 104.862, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 514002, gadget_id = 70300101, pos = { x = 2089.819, y = 227.285, z = -1588.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 514007, gadget_id = 70300086, pos = { x = 2087.355, y = 227.093, z = -1594.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 514008, gadget_id = 70220013, pos = { x = 2093.519, y = 227.896, z = -1594.300 }, rot = { x = 357.887, y = 327.405, z = 6.631 }, level = 5, area_id = 1 },
	{ config_id = 514009, gadget_id = 70310001, pos = { x = 2084.498, y = 226.958, z = -1588.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 514010, gadget_id = 70300108, pos = { x = 2105.579, y = 228.320, z = -1584.736 }, rot = { x = 0.000, y = 148.744, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 514016, gadget_id = 70300090, pos = { x = 2088.089, y = 226.894, z = -1573.514 }, rot = { x = 357.228, y = 199.013, z = 354.335 }, level = 5, area_id = 1 },
	{ config_id = 514018, gadget_id = 70220013, pos = { x = 2109.128, y = 228.665, z = -1588.067 }, rot = { x = 9.124, y = 305.253, z = 8.523 }, level = 5, area_id = 1 },
	{ config_id = 514019, gadget_id = 70310001, pos = { x = 2100.341, y = 228.170, z = -1595.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1514012, name = "ANY_MONSTER_DIE_514012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514012", action = "action_EVENT_ANY_MONSTER_DIE_514012" },
	{ config_id = 1514015, name = "ANY_MONSTER_DIE_514015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514015", action = "action_EVENT_ANY_MONSTER_DIE_514015" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 514003, 514004, 514005, 514006, 514011, 514014 },
		gadgets = { 514002, 514007, 514008, 514009, 514010, 514016, 514018, 514019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_514012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 514001, 514013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_514015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003514, 3)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2090, y=227, z=-1587}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514015(context, evt)
	if 514001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035141") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110118 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end