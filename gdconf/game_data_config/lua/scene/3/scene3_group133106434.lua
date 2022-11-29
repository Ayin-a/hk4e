-- 基础信息
local base_info = {
	group_id = 133106434
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 434005, monster_id = 25010201, pos = { x = -541.104, y = 184.339, z = 1750.563 }, rot = { x = 0.000, y = 290.155, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9004, area_id = 19 },
	{ config_id = 434006, monster_id = 28050102, pos = { x = -543.601, y = 185.149, z = 1751.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 },
	{ config_id = 434007, monster_id = 28050102, pos = { x = -542.339, y = 185.149, z = 1752.545 }, rot = { x = 0.000, y = 265.741, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 434002, gadget_id = 70210101, pos = { x = -542.967, y = 185.057, z = 1751.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050176, drop_count = 1, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 434003, gadget_id = 70210101, pos = { x = -543.169, y = 184.989, z = 1752.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用璃月", persistent = true, area_id = 19 },
	{ config_id = 434004, gadget_id = 70220025, pos = { x = -541.196, y = 184.391, z = 1750.532 }, rot = { x = 86.034, y = 289.127, z = 289.103 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1434001, name = "GADGET_STATE_CHANGE_434001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_434001", action = "action_EVENT_GADGET_STATE_CHANGE_434001" }
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
		monsters = { 434005, 434006, 434007 },
		gadgets = { 434002, 434003, 434004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_434001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_434001(context, evt)
	if 434002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_434001(context, evt)
	-- 调用提示id为 7106401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7106401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end