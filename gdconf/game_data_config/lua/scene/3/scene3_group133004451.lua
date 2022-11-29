-- 基础信息
local base_info = {
	group_id = 133004451
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 451006, monster_id = 20010101, pos = { x = 2340.383, y = 261.908, z = -402.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1105 }, pose_id = 201, area_id = 3 },
	{ config_id = 451007, monster_id = 20010101, pos = { x = 2346.211, y = 263.726, z = -408.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1105 }, pose_id = 201, area_id = 3 },
	{ config_id = 451008, monster_id = 20010101, pos = { x = 2340.481, y = 261.951, z = -412.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1105 }, pose_id = 201, area_id = 3 },
	{ config_id = 451009, monster_id = 20010101, pos = { x = 2350.841, y = 264.988, z = -412.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1105 }, pose_id = 201, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 451011, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2345.149, y = 263.384, z = -408.546 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1451011, name = "ENTER_REGION_451011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_451011", action = "action_EVENT_ENTER_REGION_451011" },
	{ config_id = 1451016, name = "CHALLENGE_SUCCESS_451016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_451016" },
	{ config_id = 1451017, name = "CHALLENGE_FAIL_451017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_451017" }
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
		-- description = 草史莱姆挑战,
		monsters = { },
		gadgets = { },
		regions = { 451011 },
		triggers = { "ENTER_REGION_451011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 451006, 451007, 451008, 451009 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_451016", "CHALLENGE_FAIL_451017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_451011(context, evt)
	if evt.param1 ~= 451011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_451011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004451, 3)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 2, 25, 133004451, 4, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 调用提示id为 31021152 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31021152) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044513") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_451016(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2345,y=263,z=-409}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021143, pos, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044512") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_451017(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2344,y=263,z=-409}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021143, pos, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044511") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end