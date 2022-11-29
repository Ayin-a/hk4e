-- 基础信息
local base_info = {
	group_id = 133106428
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
	{ config_id = 428001, gadget_id = 70210101, pos = { x = -357.965, y = 318.800, z = 1406.973 }, rot = { x = 0.000, y = 17.654, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 428002, gadget_id = 70210101, pos = { x = -345.340, y = 319.227, z = 1399.997 }, rot = { x = 0.000, y = 17.654, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 428003, gadget_id = 70211121, pos = { x = -364.833, y = 317.884, z = 1420.545 }, rot = { x = 0.000, y = 112.199, z = 0.000 }, level = 26, chest_drop_id = 1050177, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1428004, name = "GADGET_STATE_CHANGE_428004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_428004", action = "action_EVENT_GADGET_STATE_CHANGE_428004" }
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
	end_suite = 2,
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
		monsters = { },
		gadgets = { 428001, 428002, 428003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_428004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_428004(context, evt)
	if 428003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_428004(context, evt)
	-- 调用提示id为 7106451 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7106451) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end