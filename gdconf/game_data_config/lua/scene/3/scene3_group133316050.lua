-- 基础信息
local base_info = {
	group_id = 133316050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50001, monster_id = 23010301, pos = { x = 819.975, y = 336.146, z = 6503.824 }, rot = { x = 0.000, y = 300.549, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 50002, monster_id = 23010101, pos = { x = 818.286, y = 334.828, z = 6508.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 50003, monster_id = 23010201, pos = { x = 813.129, y = 335.218, z = 6503.380 }, rot = { x = 0.000, y = 298.048, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50005, gadget_id = 70710548, pos = { x = 844.718, y = 341.506, z = 6495.695 }, rot = { x = 1.773, y = 0.124, z = 8.005 }, level = 1, area_id = 30 },
	{ config_id = 50006, gadget_id = 70710548, pos = { x = 842.905, y = 341.333, z = 6493.549 }, rot = { x = 354.882, y = 59.554, z = 7.105 }, level = 1, area_id = 30 },
	{ config_id = 50007, gadget_id = 70710797, pos = { x = 844.291, y = 342.101, z = 6495.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 50008, gadget_id = 70360001, pos = { x = 844.347, y = 342.055, z = 6495.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 418 } }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1050004, name = "ANY_MONSTER_DIE_50004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50004", action = "action_EVENT_ANY_MONSTER_DIE_50004" },
	{ config_id = 1050009, name = "SELECT_OPTION_50009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_50009", action = "action_EVENT_SELECT_OPTION_50009" }
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
		monsters = { 50001, 50002, 50003 },
		gadgets = { 50005, 50006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_50004", "SELECT_OPTION_50009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 50007, 50008 },
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
function condition_EVENT_ANY_MONSTER_DIE_50004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316050, 2)
	
	-- 调用提示id为 321240016 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321240016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_50009(context, evt)
	-- 判断是gadgetid 50008 option_id 418
	if 50008 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_50009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328503") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end