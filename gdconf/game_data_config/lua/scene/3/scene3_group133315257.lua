-- 基础信息
local base_info = {
	group_id = 133315257
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 3.2蕈兽活动彩蛋——愚人众
	{ config_id = 257001, monster_id = 23020102, pos = { x = 138.755, y = 252.280, z = 2912.200 }, rot = { x = 0.000, y = 234.910, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, isElite = true, title_id = 10128, special_name_id = 10179, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257002, name = "ANY_MONSTER_DIE_257002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_257002", action = "action_EVENT_ANY_MONSTER_DIE_257002" },
	{ config_id = 1257004, name = "SPECIFIC_MONSTER_HP_CHANGE_257004", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "257001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_257004", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_257004" }
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
		monsters = { 257001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_257002", "SPECIFIC_MONSTER_HP_CHANGE_257004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_257002(context, evt)
	--判断死亡怪物的configid是否为 257001
	if evt.param1 ~= 257001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_257002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333152571") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_257004(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_257004(context, evt)
	-- 调用提示id为 400871 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400871) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end