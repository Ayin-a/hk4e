-- 基础信息
local base_info = {
	group_id = 133313234
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 234001, monster_id = 35310101, pos = { x = -546.422, y = 113.056, z = 5832.044 }, rot = { x = 0.000, y = 119.698, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32, isPartner = true }
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
	{ config_id = 1234002, name = "SPECIFIC_MONSTER_HP_CHANGE_234002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "234001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_234002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_234002" }
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
		monsters = { 234001 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_234002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_234002(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_234002(context, evt)
	-- 调用提示id为 1000080024 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080024) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end