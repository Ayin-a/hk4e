-- 基础信息
local base_info = {
	group_id = 133008099
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
	{ config_id = 99002, npc_id = 20189, pos = { x = 845.015, y = 324.500, z = -655.623 }, rot = { x = 0.000, y = 341.402, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 99001, gadget_id = 70360098, pos = { x = 844.338, y = 324.941, z = -655.983 }, rot = { x = 2.578, y = 227.255, z = 358.836 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099003, name = "QUEST_FINISH_99003", event = EventType.EVENT_QUEST_FINISH, source = "7012406", condition = "", action = "action_EVENT_QUEST_FINISH_99003" },
	{ config_id = 1099004, name = "GADGET_STATE_CHANGE_99004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99004", action = "action_EVENT_GADGET_STATE_CHANGE_99004", trigger_count = 0 }
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
		gadgets = { 99001 },
		regions = { },
		triggers = { "QUEST_FINISH_99003", "GADGET_STATE_CHANGE_99004" },
		npcs = { 99002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_99003(context, evt)
	-- 将configid为 99001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133008087中， configid为87006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008087, 87006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99004(context, evt)
	if 99001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"questStart"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questStart", 133008094) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99004(context, evt)
	-- 调用提示id为 3008094 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 3008094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end