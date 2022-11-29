-- 基础信息
local base_info = {
	group_id = 166001192
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
	{ config_id = 192001, gadget_id = 70360001, pos = { x = 58.701, y = 313.093, z = 373.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 192002, gadget_id = 70360001, pos = { x = 675.962, y = 419.625, z = 763.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192003, name = "GADGET_CREATE_192003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_192003", action = "action_EVENT_GADGET_CREATE_192003" }
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
		gadgets = { 192001, 192002 },
		regions = { },
		triggers = { "GADGET_CREATE_192003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_192003(context, evt)
	if 192002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_192003(context, evt)
	-- 调用提示id为 60010161 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010161) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end