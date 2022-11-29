-- 基础信息
local base_info = {
	group_id = 133002903
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
	{ config_id = 903001, gadget_id = 70300079, pos = { x = 2019.394, y = 233.571, z = -659.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 903003, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2020.147, y = 233.436, z = -660.378 }, area_id = 3 },
	{ config_id = 903004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2020.272, y = 233.555, z = -659.608 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1903002, name = "ANY_GADGET_DIE_903002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_903002", action = "action_EVENT_ANY_GADGET_DIE_903002", trigger_count = 0 },
	{ config_id = 1903003, name = "ENTER_REGION_903003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_903003", action = "action_EVENT_ENTER_REGION_903003" },
	{ config_id = 1903004, name = "ENTER_REGION_903004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_903004", action = "action_EVENT_ENTER_REGION_903004" },
	{ config_id = 1903005, name = "GADGET_CREATE_903005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_903005", action = "action_EVENT_GADGET_CREATE_903005", trigger_count = 0 },
	{ config_id = 1903006, name = "QUEST_START_903006", event = EventType.EVENT_QUEST_START, source = "2051717", condition = "", action = "action_EVENT_QUEST_START_903006", trigger_count = 0 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 903001 },
		regions = { 903003, 903004 },
		triggers = { "ANY_GADGET_DIE_903002", "ENTER_REGION_903003", "ENTER_REGION_903004", "GADGET_CREATE_903005", "QUEST_START_903006" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_903002(context, evt)
	if 903001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_903002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300290301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110133 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110133) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_903003(context, evt)
	if evt.param1 ~= 903003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_903003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300290302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110110 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_903004(context, evt)
	if evt.param1 ~= 903004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_903004(context, evt)
	-- 调用提示id为 1110131 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110131) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_903005(context, evt)
	if 903001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_903005(context, evt)
	-- 将group 133002903 中config id为 903001 的物件血量设为 30 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 133002903, 903001, 30) then
			    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_hp_by_group")
	    return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_903006(context, evt)
	-- 将configid为 903001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 903001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end