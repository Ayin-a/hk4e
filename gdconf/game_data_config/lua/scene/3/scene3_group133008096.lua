-- 基础信息
local base_info = {
	group_id = 133008096
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
	{ config_id = 96002, npc_id = 20186, pos = { x = 1150.680, y = 271.939, z = -527.669 }, rot = { x = 0.000, y = 337.718, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 96001, gadget_id = 70360098, pos = { x = 1150.535, y = 270.627, z = -527.607 }, rot = { x = 0.000, y = 159.485, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096003, name = "QUEST_FINISH_96003", event = EventType.EVENT_QUEST_FINISH, source = "7012403", condition = "", action = "action_EVENT_QUEST_FINISH_96003" },
	{ config_id = 1096004, name = "GADGET_STATE_CHANGE_96004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96004", action = "action_EVENT_GADGET_STATE_CHANGE_96004", trigger_count = 0 }
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
		gadgets = { 96001 },
		regions = { },
		triggers = { "QUEST_FINISH_96003", "GADGET_STATE_CHANGE_96004" },
		npcs = { 96002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_96003(context, evt)
	-- 将configid为 96001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133008087中， configid为87003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008087, 87003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96004(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"questStart"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questStart", 133008094) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96004(context, evt)
	-- 调用提示id为 3008094 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 3008094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end