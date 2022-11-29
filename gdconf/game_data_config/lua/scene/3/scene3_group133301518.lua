-- 基础信息
local base_info = {
	group_id = 133301518
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 518001, gadget_id = 70500000, pos = { x = -1156.811, y = 183.884, z = 2961.131 }, rot = { x = 1.778, y = 70.181, z = 348.908 }, level = 30, point_type = 2045, area_id = 21 },
	{ config_id = 518002, gadget_id = 70500000, pos = { x = -1074.674, y = 181.484, z = 2930.738 }, rot = { x = 356.176, y = 250.049, z = 357.013 }, level = 30, point_type = 2045, area_id = 23 },
	{ config_id = 518003, gadget_id = 70500000, pos = { x = -1073.499, y = 180.574, z = 2927.244 }, rot = { x = 3.109, y = 285.506, z = 348.941 }, level = 30, point_type = 2045, area_id = 23 },
	{ config_id = 518004, gadget_id = 70500000, pos = { x = -1082.226, y = 180.516, z = 2923.265 }, rot = { x = 352.300, y = 3.547, z = 347.667 }, level = 30, point_type = 2045, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1518005, name = "GATHER_518005", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_518005", action = "action_EVENT_GATHER_518005" },
	{ config_id = 1518006, name = "QUEST_FINISH_518006", event = EventType.EVENT_QUEST_FINISH, source = "7300207", condition = "", action = "action_EVENT_QUEST_FINISH_518006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "nofollow", value = 0, no_refresh = true }
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
		triggers = { "GATHER_518005", "QUEST_FINISH_518006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 518001, 518002, 518003, 518004 },
		regions = { },
		triggers = { "GATHER_518005", "QUEST_FINISH_518006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_518005(context, evt)
	-- 判断变量"nofollow"为0
	if ScriptLib.GetGroupVariableValue(context, "nofollow") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_518005(context, evt)
	-- 调用提示id为 33010010 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_518006(context, evt)
	-- 将本组内变量名为 "nofollow" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "nofollow", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end