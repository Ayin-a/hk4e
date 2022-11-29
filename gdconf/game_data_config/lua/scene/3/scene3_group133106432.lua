-- 基础信息
local base_info = {
	group_id = 133106432
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
	{ config_id = 432001, gadget_id = 70290003, pos = { x = -723.358, y = 276.854, z = 1547.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 432002, gadget_id = 70210101, pos = { x = -723.321, y = 276.848, z = 1547.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050175, drop_count = 1, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 432003, gadget_id = 70210101, pos = { x = -723.441, y = 276.631, z = 1547.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用璃月", persistent = true, area_id = 19 },
	{ config_id = 432008, gadget_id = 70210101, pos = { x = -795.582, y = 180.137, z = 1697.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 432009, gadget_id = 70210101, pos = { x = -794.881, y = 180.137, z = 1697.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 432010, gadget_id = 70210101, pos = { x = -794.799, y = 179.655, z = 1698.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 432011, gadget_id = 70210101, pos = { x = -795.130, y = 179.632, z = 1696.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1432007, name = "GADGET_STATE_CHANGE_432007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_432007", action = "action_EVENT_GADGET_STATE_CHANGE_432007" }
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
		gadgets = { 432001, 432002, 432003, 432008, 432009, 432010, 432011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_432007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_432007(context, evt)
	if 432002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_432007(context, evt)
	-- 调用提示id为 7106441 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7106441) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end