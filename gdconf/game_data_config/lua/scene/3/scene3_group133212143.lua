-- 基础信息
local base_info = {
	group_id = 133212143
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
	{ config_id = 143002, npc_id = 20237, pos = { x = -3695.585, y = 201.125, z = -1759.620 }, rot = { x = 0.581, y = 169.296, z = 359.047 }, area_id = 13 },
	{ config_id = 143003, npc_id = 20258, pos = { x = -3695.585, y = 201.125, z = -1759.620 }, rot = { x = 0.581, y = 169.296, z = 359.047 }, area_id = 13 },
	{ config_id = 143004, npc_id = 20259, pos = { x = -3695.585, y = 201.125, z = -1759.620 }, rot = { x = 0.581, y = 169.296, z = 359.047 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 143001, gadget_id = 70290122, pos = { x = -3695.713, y = 199.304, z = -1759.215 }, rot = { x = 0.321, y = 154.604, z = 358.931 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 13 },
	{ config_id = 143008, gadget_id = 70950114, pos = { x = -3672.863, y = 200.725, z = -1754.999 }, rot = { x = 276.524, y = 339.875, z = 285.007 }, level = 27, area_id = 13 },
	{ config_id = 143009, gadget_id = 70290135, pos = { x = -3698.607, y = 200.000, z = -1754.450 }, rot = { x = 0.000, y = 345.821, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 143010, gadget_id = 70290135, pos = { x = -3700.766, y = 200.000, z = -1745.904 }, rot = { x = 0.000, y = 345.821, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143005, name = "QUEST_START_143005", event = EventType.EVENT_QUEST_START, source = "7213202", condition = "", action = "action_EVENT_QUEST_START_143005" },
	{ config_id = 1143006, name = "QUEST_FINISH_143006", event = EventType.EVENT_QUEST_FINISH, source = "7213206", condition = "", action = "action_EVENT_QUEST_FINISH_143006", trigger_count = 0 },
	{ config_id = 1143007, name = "QUEST_FINISH_143007", event = EventType.EVENT_QUEST_FINISH, source = "7212905", condition = "", action = "action_EVENT_QUEST_FINISH_143007", trigger_count = 0 },
	{ config_id = 1143011, name = "QUEST_FINISH_143011", event = EventType.EVENT_QUEST_FINISH, source = "7213204", condition = "", action = "action_EVENT_QUEST_FINISH_143011", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 143001, 143008, 143009, 143010 },
		regions = { },
		triggers = { "QUEST_START_143005", "QUEST_FINISH_143006", "QUEST_FINISH_143007", "QUEST_FINISH_143011" },
		npcs = { 143002, 143003, 143004 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_143005(context, evt)
	-- 调用提示id为 321234011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321234011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_143006(context, evt)
	-- 调用提示id为 321234041 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321234041) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 143001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_143007(context, evt)
	-- 将configid为 143001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_143011(context, evt)
	-- 将configid为 143001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end