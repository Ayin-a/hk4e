-- 基础信息
local base_info = {
	group_id = 133106028
}

-- Trigger变量
local defs = {
	order = {28008,28007,28006,28009},
	region = 28013,
	region_Enter = 28013,
	region_Leave = 28020,
	challenge_id = 2002001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 24010101, pos = { x = -821.955, y = 155.350, z = 1140.509 }, rot = { x = 0.000, y = 334.556, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28006, gadget_id = 70800043, pos = { x = -811.349, y = 157.232, z = 1130.992 }, rot = { x = 0.000, y = 268.898, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 28007, gadget_id = 70800043, pos = { x = -823.524, y = 155.379, z = 1143.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 28008, gadget_id = 70800043, pos = { x = -833.325, y = 155.493, z = 1171.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 28009, gadget_id = 70800043, pos = { x = -859.128, y = 155.307, z = 1159.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 28010, gadget_id = 70211111, pos = { x = -811.349, y = 157.129, z = 1130.992 }, rot = { x = 0.000, y = 268.898, z = 0.000 }, level = 26, chest_drop_id = 21600003, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 28011, gadget_id = 70300114, pos = { x = -824.292, y = 155.322, z = 1143.141 }, rot = { x = 0.000, y = 281.491, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 28012, gadget_id = 70010006, pos = { x = -829.445, y = 155.200, z = 1118.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 28013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -839.025, y = 155.200, z = 1152.350 }, area_id = 8 },
	{ config_id = 28020, shape = RegionShape.SPHERE, radius = 70, pos = { x = -839.025, y = 155.200, z = 1152.350 }, area_id = 8 },
	{ config_id = 28022, shape = RegionShape.SPHERE, radius = 50, pos = { x = -839.025, y = 155.200, z = 1152.350 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1028014, name = "SELECT_OPTION_28014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_28014", action = "action_EVENT_SELECT_OPTION_28014", trigger_count = 0 },
	{ config_id = 1028015, name = "SELECT_OPTION_28015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_28015", action = "action_EVENT_SELECT_OPTION_28015", trigger_count = 0 },
	{ config_id = 1028016, name = "SELECT_OPTION_28016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_28016", action = "action_EVENT_SELECT_OPTION_28016", trigger_count = 0 },
	{ config_id = 1028017, name = "SELECT_OPTION_28017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_28017", action = "action_EVENT_SELECT_OPTION_28017", trigger_count = 0 },
	{ config_id = 1028018, name = "GADGET_STATE_CHANGE_28018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28018", action = "action_EVENT_GADGET_STATE_CHANGE_28018" },
	{ config_id = 1028019, name = "ANY_MONSTER_DIE_28019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28019", action = "action_EVENT_ANY_MONSTER_DIE_28019", trigger_count = 0 },
	{ config_id = 1028022, name = "ENTER_REGION_28022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28022", action = "action_EVENT_ENTER_REGION_28022" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 28002, monster_id = 21010301, pos = { x = -822.081, y = 155.200, z = 1147.181 }, rot = { x = 0.000, y = 113.455, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
		{ config_id = 28003, monster_id = 21010301, pos = { x = -825.877, y = 155.200, z = 1136.811 }, rot = { x = 0.000, y = 281.491, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
		{ config_id = 28004, monster_id = 21010601, pos = { x = -820.018, y = 155.200, z = 1138.932 }, rot = { x = 0.000, y = 229.166, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
		{ config_id = 28005, monster_id = 21010601, pos = { x = -828.597, y = 155.200, z = 1149.637 }, rot = { x = 0.000, y = 69.962, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 }
	},
	gadgets = {
		{ config_id = 28021, gadget_id = 70800054, pos = { x = -833.325, y = 155.493, z = 1171.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1, area_id = 8 }
	}
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
		gadgets = { 28012 },
		regions = { 28013, 28020, 28022 },
		triggers = { "SELECT_OPTION_28014", "SELECT_OPTION_28015", "SELECT_OPTION_28016", "SELECT_OPTION_28017", "ENTER_REGION_28022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_28018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 28001 },
		gadgets = { 28011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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
function condition_EVENT_SELECT_OPTION_28014(context, evt)
	-- 判断是gadgetid 28006 option_id 92
	if 28006 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_28014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106028, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_28015(context, evt)
	-- 判断是gadgetid 28007 option_id 92
	if 28007 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_28015(context, evt)
	-- 调用提示id为 600071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106028, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_28016(context, evt)
	-- 判断是gadgetid 28008 option_id 92
	if 28008 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_28016(context, evt)
	-- 调用提示id为 600072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 133106042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_28017(context, evt)
	-- 判断是gadgetid 28009 option_id 92
	if 28009 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_28017(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28018(context, evt)
	if 28010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28018(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106028, EntityType.GADGET, 28011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_28022(context, evt)
	if evt.param1 ~= 28022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28022(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,145,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_2/Ayesha"