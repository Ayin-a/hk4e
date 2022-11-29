-- 基础信息
local base_info = {
	group_id = 166001578
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
	{ config_id = 578001, gadget_id = 70360001, pos = { x = 440.003, y = 191.443, z = 703.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 578002, gadget_id = 70500000, pos = { x = 440.259, y = 191.383, z = 704.308 }, rot = { x = 21.188, y = 1.334, z = 7.125 }, level = 36, point_type = 2044, area_id = 300 },
	{ config_id = 578003, gadget_id = 70500000, pos = { x = 439.631, y = 191.226, z = 704.245 }, rot = { x = 15.405, y = 290.231, z = 1.915 }, level = 36, point_type = 2044, area_id = 300 },
	{ config_id = 578004, gadget_id = 70290366, pos = { x = 440.182, y = 191.579, z = 703.921 }, rot = { x = 11.053, y = 324.010, z = -0.001 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 578006, gadget_id = 70211121, pos = { x = 443.087, y = 192.088, z = 703.231 }, rot = { x = 23.172, y = 331.948, z = 359.091 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1578005, name = "GADGET_CREATE_578005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_578005", action = "action_EVENT_GADGET_CREATE_578005" }
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
	suite = 3,
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
		gadgets = { 578001, 578004, 578006 },
		regions = { },
		triggers = { "GADGET_CREATE_578005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 578002, 578003, 578004, 578006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 578001 },
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
function condition_EVENT_GADGET_CREATE_578005(context, evt)
	if 578004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_578005(context, evt)
	-- 调用提示id为 60010331 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010331) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end