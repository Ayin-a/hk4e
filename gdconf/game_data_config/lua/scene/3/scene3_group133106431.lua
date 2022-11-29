-- 基础信息
local base_info = {
	group_id = 133106431
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
	{ config_id = 431002, gadget_id = 70500000, pos = { x = -862.639, y = 252.151, z = 1872.285 }, rot = { x = 2.810, y = 330.789, z = 157.662 }, level = 36, point_type = 9297, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1431001, name = "GATHER_431001", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_431001" }
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
		gadgets = { 431002 },
		regions = { },
		triggers = { "GATHER_431001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_431001(context, evt)
	-- 调用提示id为 7106462 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7106462) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end