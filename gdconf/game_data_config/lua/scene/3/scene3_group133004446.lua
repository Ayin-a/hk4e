-- 基础信息
local base_info = {
	group_id = 133004446
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 446001, monster_id = 20011401, pos = { x = 2302.334, y = 247.246, z = -422.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 },
	{ config_id = 446002, monster_id = 20011401, pos = { x = 2299.695, y = 247.259, z = -419.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 },
	{ config_id = 446003, monster_id = 20011401, pos = { x = 2300.960, y = 246.652, z = -430.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 },
	{ config_id = 446004, monster_id = 20011401, pos = { x = 2300.005, y = 245.953, z = -433.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 },
	{ config_id = 446005, monster_id = 20011501, pos = { x = 2301.164, y = 246.974, z = -427.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 446007, shape = RegionShape.SPHERE, radius = 35, pos = { x = 2297.676, y = 246.336, z = -425.506 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1446006, name = "QUEST_FINISH_446006", event = EventType.EVENT_QUEST_FINISH, source = "1906513", condition = "", action = "action_EVENT_QUEST_FINISH_446006" },
	{ config_id = 1446007, name = "ENTER_REGION_446007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_446007", action = "action_EVENT_ENTER_REGION_446007" },
	{ config_id = 1446021, name = "CHALLENGE_FAIL_446021", event = EventType.EVENT_CHALLENGE_FAIL, source = "111", condition = "", action = "action_EVENT_CHALLENGE_FAIL_446021" },
	{ config_id = 1446023, name = "CHALLENGE_SUCCESS_446023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "111", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_446023" }
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
		-- description = 第一环岩史莱姆,
		monsters = { },
		gadgets = { },
		regions = { 446007 },
		triggers = { "QUEST_FINISH_446006", "ENTER_REGION_446007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 446001, 446002, 446003, 446004, 446005 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_446021", "CHALLENGE_SUCCESS_446023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_QUEST_FINISH_446006(context, evt)
	-- 创建编号为111（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 111, 2, 80, 133004446, 5, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_446007(context, evt)
	if evt.param1 ~= 446007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_446007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004446, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044463") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_446021(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2301,y=247,z=-427}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021142, pos, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044461") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_446023(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2300,y=246,z=-428}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021141, pos, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044461") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end