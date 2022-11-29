-- 基础信息
local base_info = {
	group_id = 133301460
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
	{ config_id = 460001, gadget_id = 70540044, pos = { x = -1127.346, y = 176.500, z = 2943.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 460002, gadget_id = 70500000, pos = { x = -1127.346, y = 176.500, z = 2943.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2048, owner = 460001, area_id = 21 },
	{ config_id = 460003, gadget_id = 70540044, pos = { x = -1116.335, y = 176.500, z = 2956.811 }, rot = { x = 0.000, y = 308.315, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 460004, gadget_id = 70500000, pos = { x = -1116.335, y = 176.500, z = 2956.811 }, rot = { x = 0.000, y = 308.312, z = 0.000 }, level = 27, point_type = 2048, owner = 460003, area_id = 23 },
	{ config_id = 460005, gadget_id = 70540044, pos = { x = -1135.858, y = 176.500, z = 2950.097 }, rot = { x = 0.000, y = 79.199, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 460006, gadget_id = 70500000, pos = { x = -1135.858, y = 176.500, z = 2950.097 }, rot = { x = 0.000, y = 79.199, z = 0.000 }, level = 27, point_type = 2048, owner = 460005, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1460007, name = "GATHER_460007", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_460007", action = "action_EVENT_GATHER_460007" },
	{ config_id = 1460008, name = "QUEST_FINISH_460008", event = EventType.EVENT_QUEST_FINISH, source = "7300207", condition = "", action = "action_EVENT_QUEST_FINISH_460008", trigger_count = 0 }
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
		triggers = { "GATHER_460007", "QUEST_FINISH_460008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 460001, 460002, 460003, 460004, 460005, 460006 },
		regions = { },
		triggers = { "GATHER_460007", "QUEST_FINISH_460008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_460007(context, evt)
	-- 判断变量"nofollow"为0
	if ScriptLib.GetGroupVariableValue(context, "nofollow") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_460007(context, evt)
	-- 调用提示id为 33010008 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_460008(context, evt)
	-- 将本组内变量名为 "nofollow" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "nofollow", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end