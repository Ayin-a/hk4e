-- 基础信息
local base_info = {
	group_id = 133004314
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314001, monster_id = 25070101, pos = { x = 2569.583, y = 255.226, z = -386.689 }, rot = { x = 0.000, y = 258.107, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 4, guest_ban_drop = 63 },
	{ config_id = 314002, monster_id = 25020201, pos = { x = 2538.846, y = 252.143, z = -387.833 }, rot = { x = 0.000, y = 190.968, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 2, area_id = 4 },
	{ config_id = 314003, monster_id = 25010301, pos = { x = 2552.392, y = 254.532, z = -398.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 4, area_id = 4 },
	{ config_id = 314004, monster_id = 25010501, pos = { x = 2538.439, y = 252.327, z = -393.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9006, area_id = 4 },
	{ config_id = 314005, monster_id = 25010201, pos = { x = 2544.071, y = 253.334, z = -397.916 }, rot = { x = 0.000, y = 183.934, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9003, area_id = 4 },
	{ config_id = 314006, monster_id = 25030201, pos = { x = 2542.040, y = 253.250, z = -401.887 }, rot = { x = 0.000, y = 44.338, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9009, area_id = 4 },
	{ config_id = 314007, monster_id = 25030201, pos = { x = 2568.487, y = 256.245, z = -389.813 }, rot = { x = 0.000, y = 266.065, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 314010, gadget_id = 70300104, pos = { x = 2534.978, y = 252.478, z = -408.464 }, rot = { x = 4.277, y = 348.104, z = 7.839 }, level = 20, area_id = 4 },
	{ config_id = 314011, gadget_id = 70310009, pos = { x = 2544.419, y = 253.322, z = -399.725 }, rot = { x = 3.442, y = 0.249, z = 8.265 }, level = 20, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1314008, name = "ANY_MONSTER_DIE_314008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_314008", action = "action_EVENT_ANY_MONSTER_DIE_314008" },
	{ config_id = 1314009, name = "ANY_MONSTER_DIE_314009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_314009", action = "action_EVENT_ANY_MONSTER_DIE_314009" }
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
		monsters = { 314002, 314003, 314004, 314005, 314006 },
		gadgets = { 314010, 314011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_314008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 314001, 314007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_314009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_314008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_314008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004314, 3)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2544, y=253, z=-391}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_314009(context, evt)
	--判断死亡怪物的configid是否为 314001
	if evt.param1 ~= 314001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_314009(context, evt)
	-- 调用提示id为 1110118 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330043141") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end