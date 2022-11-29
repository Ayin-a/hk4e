-- 基础信息
local base_info = {
	group_id = 133008101
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
	{ config_id = 101002, npc_id = 20191, pos = { x = 1373.329, y = 278.393, z = -1116.341 }, rot = { x = 9.295, y = 26.543, z = 5.319 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 101001, gadget_id = 70360098, pos = { x = 1373.124, y = 277.635, z = -1116.261 }, rot = { x = 359.779, y = 74.165, z = 354.906 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 101004, gadget_id = 70220055, pos = { x = 1384.559, y = 276.137, z = -1111.437 }, rot = { x = 1.709, y = 359.739, z = 342.645 }, level = 30, area_id = 10 },
	{ config_id = 101005, gadget_id = 70220055, pos = { x = 1396.275, y = 272.662, z = -1107.152 }, rot = { x = 347.666, y = 0.193, z = 358.210 }, level = 30, area_id = 10 },
	{ config_id = 101006, gadget_id = 70220055, pos = { x = 1399.569, y = 271.295, z = -1112.504 }, rot = { x = 357.406, y = 0.339, z = 345.123 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101003, name = "QUEST_FINISH_101003", event = EventType.EVENT_QUEST_FINISH, source = "7012408", condition = "", action = "action_EVENT_QUEST_FINISH_101003" },
	{ config_id = 1101007, name = "GADGET_STATE_CHANGE_101007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101007", action = "action_EVENT_GADGET_STATE_CHANGE_101007", trigger_count = 0 }
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
		gadgets = { 101001, 101004, 101005, 101006 },
		regions = { },
		triggers = { "QUEST_FINISH_101003", "GADGET_STATE_CHANGE_101007" },
		npcs = { 101002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_101003(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133008087中， configid为87008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008087, 87008, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	if 101001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"questStart"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questStart", 133008094) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	-- 调用提示id为 3008094 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 3008094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end