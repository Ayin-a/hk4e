-- 基础信息
local base_info = {
	group_id = 133213102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102004, monster_id = 23010301, pos = { x = -3571.860, y = 210.430, z = -3155.891 }, rot = { x = 0.000, y = 289.296, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 12 },
	{ config_id = 102005, monster_id = 23010501, pos = { x = -3571.631, y = 210.565, z = -3150.555 }, rot = { x = 0.000, y = 149.513, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 12 },
	{ config_id = 102007, monster_id = 23010101, pos = { x = -3566.320, y = 210.580, z = -3150.631 }, rot = { x = 0.000, y = 187.260, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 102001, gadget_id = 70290103, pos = { x = -3577.789, y = 220.380, z = -3152.480 }, rot = { x = 0.000, y = 84.521, z = 0.000 }, level = 34, persistent = true, area_id = 12 },
	{ config_id = 102002, gadget_id = 70210102, pos = { x = -3575.524, y = 210.454, z = -3152.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 102006, shape = RegionShape.SPHERE, radius = 25, pos = { x = -3570.274, y = 210.392, z = -3154.842 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1102003, name = "GADGET_STATE_CHANGE_102003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102003", action = "action_EVENT_GADGET_STATE_CHANGE_102003" },
	{ config_id = 1102006, name = "ENTER_REGION_102006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_102006", action = "action_EVENT_ENTER_REGION_102006" },
	{ config_id = 1102008, name = "ANY_MONSTER_DIE_102008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102008", action = "action_EVENT_ANY_MONSTER_DIE_102008" },
	{ config_id = 1102009, name = "GADGET_STATE_CHANGE_102009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102009", action = "action_EVENT_GADGET_STATE_CHANGE_102009" },
	{ config_id = 1102010, name = "GADGET_CREATE_102010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_102010", action = "action_EVENT_GADGET_CREATE_102010", trigger_count = 0 }
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
	end_suite = 3,
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
		monsters = { 102004, 102005, 102007 },
		gadgets = { 102001 },
		regions = { 102006 },
		triggers = { "ENTER_REGION_102006", "ANY_MONSTER_DIE_102008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 102001, 102002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_102003" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 102001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_102003", "GADGET_STATE_CHANGE_102009", "GADGET_CREATE_102010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102003(context, evt)
	if 102002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211407_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213102, 4)
	
	-- 调用提示id为 1110285 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110285) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_102006(context, evt)
	if evt.param1 ~= 102006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_102006(context, evt)
	-- 调用提示id为 1110281 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110281) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213102) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213102, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102009(context, evt)
	if 102001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211413_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_102010(context, evt)
	if 102001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_102010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211413_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end