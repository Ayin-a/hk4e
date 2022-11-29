-- 基础信息
local base_info = {
	group_id = 199003101
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
	{ config_id = 101001, gadget_id = 70310011, pos = { x = -677.407, y = 144.274, z = -155.057 }, rot = { x = 359.293, y = 194.010, z = 184.873 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 101002, gadget_id = 70310011, pos = { x = -678.925, y = 144.428, z = -152.297 }, rot = { x = 359.293, y = 194.010, z = 184.873 }, level = 20, area_id = 403 },
	{ config_id = 101003, gadget_id = 70310011, pos = { x = -680.868, y = 135.193, z = -153.269 }, rot = { x = 343.026, y = 120.278, z = 86.558 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 101004, gadget_id = 70310011, pos = { x = -684.632, y = 135.193, z = -152.143 }, rot = { x = 10.787, y = 347.248, z = 30.921 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101005, name = "GADGET_STATE_CHANGE_101005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101005", action = "action_EVENT_GADGET_STATE_CHANGE_101005", trigger_count = 0 },
	{ config_id = 1101006, name = "GADGET_STATE_CHANGE_101006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101006", action = "action_EVENT_GADGET_STATE_CHANGE_101006", trigger_count = 0 }
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
		gadgets = { 101001, 101002, 101003, 101004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101005", "GADGET_STATE_CHANGE_101006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101005(context, evt)
	if 101002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101005(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1111376 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111376) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
	if 101004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
	-- 将configid为 101004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1111376 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111376) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end