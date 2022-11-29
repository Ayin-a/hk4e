-- 基础信息
local base_info = {
	group_id = 133105048
}

-- Trigger变量
local defs = {
	order = {48006,48008,48007,48009},
	region = 48013,
	region_Enter = 48013,
	region_Leave = 48020,
	challenge_id = 2002001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 24010101, pos = { x = 441.978, y = 201.515, z = -62.955 }, rot = { x = 0.000, y = 330.408, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48006, gadget_id = 70800043, pos = { x = 400.824, y = 202.397, z = -47.162 }, rot = { x = 0.000, y = 184.713, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 48007, gadget_id = 70800043, pos = { x = 439.571, y = 202.040, z = -57.480 }, rot = { x = 0.000, y = 86.720, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 48008, gadget_id = 70800043, pos = { x = 414.670, y = 201.054, z = -72.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 48009, gadget_id = 70800043, pos = { x = 391.304, y = 201.425, z = -71.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 48010, gadget_id = 70211111, pos = { x = 400.825, y = 202.230, z = -47.162 }, rot = { x = 0.000, y = 184.713, z = 0.000 }, level = 16, chest_drop_id = 21600003, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 48011, gadget_id = 70300114, pos = { x = 439.571, y = 202.040, z = -57.480 }, rot = { x = 0.000, y = 86.720, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 48012, gadget_id = 70010006, pos = { x = 410.228, y = 201.044, z = -69.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 48013, shape = RegionShape.SPHERE, radius = 50, pos = { x = 409.446, y = 201.089, z = -68.767 }, area_id = 9 },
	{ config_id = 48020, shape = RegionShape.SPHERE, radius = 70, pos = { x = 409.446, y = 201.089, z = -68.767 }, area_id = 9 },
	{ config_id = 48022, shape = RegionShape.SPHERE, radius = 50, pos = { x = 409.446, y = 201.089, z = -68.767 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1048014, name = "SELECT_OPTION_48014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48014", action = "action_EVENT_SELECT_OPTION_48014", trigger_count = 0 },
	{ config_id = 1048015, name = "SELECT_OPTION_48015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48015", action = "action_EVENT_SELECT_OPTION_48015", trigger_count = 0 },
	{ config_id = 1048016, name = "SELECT_OPTION_48016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48016", action = "action_EVENT_SELECT_OPTION_48016", trigger_count = 0 },
	{ config_id = 1048017, name = "SELECT_OPTION_48017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48017", action = "action_EVENT_SELECT_OPTION_48017", trigger_count = 0 },
	{ config_id = 1048018, name = "GADGET_STATE_CHANGE_48018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48018", action = "action_EVENT_GADGET_STATE_CHANGE_48018" },
	{ config_id = 1048019, name = "ANY_MONSTER_DIE_48019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48019", action = "action_EVENT_ANY_MONSTER_DIE_48019", trigger_count = 0 },
	{ config_id = 1048022, name = "ENTER_REGION_48022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48022", action = "action_EVENT_ENTER_REGION_48022" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 48002, monster_id = 21010301, pos = { x = 488.234, y = 191.048, z = 23.547 }, rot = { x = 0.000, y = 35.641, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
		{ config_id = 48003, monster_id = 21010301, pos = { x = 484.442, y = 192.837, z = 13.175 }, rot = { x = 0.000, y = 203.677, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
		{ config_id = 48004, monster_id = 21010601, pos = { x = 490.297, y = 192.837, z = 15.298 }, rot = { x = 0.000, y = 151.352, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
		{ config_id = 48005, monster_id = 21010601, pos = { x = 481.723, y = 191.048, z = 26.004 }, rot = { x = 0.000, y = 352.148, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 }
	},
	gadgets = {
		{ config_id = 48021, gadget_id = 70800054, pos = { x = 414.670, y = 201.054, z = -72.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1, area_id = 9 }
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
		gadgets = { 48012 },
		regions = { 48013, 48020, 48022 },
		triggers = { "SELECT_OPTION_48014", "SELECT_OPTION_48015", "SELECT_OPTION_48016", "SELECT_OPTION_48017", "ENTER_REGION_48022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 48010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_48018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 48001 },
		gadgets = { 48011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48019" },
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
function condition_EVENT_SELECT_OPTION_48014(context, evt)
	-- 判断是gadgetid 48006 option_id 92
	if 48006 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105048, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_48015(context, evt)
	-- 判断是gadgetid 48007 option_id 92
	if 48007 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48015(context, evt)
	-- 调用提示id为 600071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105048, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_48016(context, evt)
	-- 判断是gadgetid 48008 option_id 92
	if 48008 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48016(context, evt)
	-- 调用提示id为 600072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 133105059) then
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
function condition_EVENT_SELECT_OPTION_48017(context, evt)
	-- 判断是gadgetid 48009 option_id 92
	if 48009 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48017(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_48018(context, evt)
	if 48010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48018(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133105048, EntityType.GADGET, 48011 ) then
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
function condition_EVENT_ENTER_REGION_48022(context, evt)
	if evt.param1 ~= 48022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48022(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,145,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_2/Ayesha"