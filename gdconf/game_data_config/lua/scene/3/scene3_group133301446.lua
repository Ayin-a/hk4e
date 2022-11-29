-- 基础信息
local base_info = {
	group_id = 133301446
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
	{ config_id = 446002, gadget_id = 70540037, pos = { x = -1350.445, y = 178.459, z = 3127.352 }, rot = { x = 2.084, y = 76.959, z = 5.015 }, level = 30, area_id = 23 },
	{ config_id = 446003, gadget_id = 70500000, pos = { x = -1350.417, y = 178.792, z = 3126.894 }, rot = { x = 17.373, y = 76.125, z = 348.807 }, level = 30, point_type = 2049, owner = 446002, area_id = 23 },
	{ config_id = 446004, gadget_id = 70500000, pos = { x = -1349.948, y = 179.073, z = 3127.501 }, rot = { x = 349.330, y = 349.527, z = 342.307 }, level = 30, point_type = 2049, owner = 446002, area_id = 23 },
	{ config_id = 446005, gadget_id = 70540037, pos = { x = -1316.512, y = 178.400, z = 3106.755 }, rot = { x = 3.044, y = 276.275, z = 354.170 }, level = 30, area_id = 23 },
	{ config_id = 446006, gadget_id = 70500000, pos = { x = -1316.306, y = 178.743, z = 3107.157 }, rot = { x = 3.044, y = 276.276, z = 354.170 }, level = 30, point_type = 2049, owner = 446005, area_id = 23 },
	{ config_id = 446007, gadget_id = 70500000, pos = { x = -1316.873, y = 179.117, z = 3106.698 }, rot = { x = 354.179, y = 186.609, z = 356.938 }, level = 30, point_type = 2049, owner = 446005, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1446001, name = "GATHER_446001", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_446001", action = "action_EVENT_GATHER_446001" },
	{ config_id = 1446008, name = "QUEST_FINISH_446008", event = EventType.EVENT_QUEST_FINISH, source = "7300207", condition = "", action = "action_EVENT_QUEST_FINISH_446008", trigger_count = 0 }
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
		triggers = { "GATHER_446001", "QUEST_FINISH_446008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 446002, 446003, 446004, 446005, 446006, 446007 },
		regions = { },
		triggers = { "GATHER_446001", "QUEST_FINISH_446008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_446001(context, evt)
	-- 判断变量"nofollow"为0
	if ScriptLib.GetGroupVariableValue(context, "nofollow") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_446001(context, evt)
	-- 调用提示id为 33010012 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_446008(context, evt)
	-- 将本组内变量名为 "nofollow" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "nofollow", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end