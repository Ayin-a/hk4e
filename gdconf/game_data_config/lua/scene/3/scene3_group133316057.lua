-- 基础信息
local base_info = {
	group_id = 133316057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57001, monster_id = 23010501, pos = { x = 422.891, y = 278.726, z = 6749.728 }, rot = { x = 0.000, y = 42.080, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 57002, monster_id = 23010401, pos = { x = 427.933, y = 278.419, z = 6747.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 57003, monster_id = 23010601, pos = { x = 422.209, y = 281.011, z = 6755.634 }, rot = { x = 0.000, y = 67.840, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57005, gadget_id = 70710548, pos = { x = 422.515, y = 278.319, z = 6742.210 }, rot = { x = 1.779, y = 70.906, z = 355.672 }, level = 1, area_id = 30 },
	{ config_id = 57006, gadget_id = 70710548, pos = { x = 419.414, y = 278.377, z = 6743.251 }, rot = { x = 1.229, y = 157.796, z = 0.333 }, level = 1, area_id = 30 },
	{ config_id = 57007, gadget_id = 70710797, pos = { x = 422.479, y = 278.332, z = 6742.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 57008, gadget_id = 70360001, pos = { x = 422.819, y = 278.828, z = 6742.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 418 } }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1057004, name = "ANY_MONSTER_DIE_57004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57004", action = "action_EVENT_ANY_MONSTER_DIE_57004" },
	{ config_id = 1057009, name = "SELECT_OPTION_57009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_57009", action = "action_EVENT_SELECT_OPTION_57009" }
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
		monsters = { 57001, 57002, 57003 },
		gadgets = { 57005, 57006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57004", "SELECT_OPTION_57009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 57007, 57008 },
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
function condition_EVENT_ANY_MONSTER_DIE_57004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316057, 2)
	
	-- 调用提示id为 321240016 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321240016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_57009(context, evt)
	-- 判断是gadgetid 57008 option_id 418
	if 57008 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_57009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328506") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end