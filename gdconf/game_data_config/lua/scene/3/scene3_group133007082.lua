-- 基础信息
local base_info = {
	group_id = 133007082
}

-- Trigger变量
local defs = {
	order = {82006,82007,82008,82009},
	region = 82013,
	region_Enter = 82013,
	region_Leave = 82020,
	challenge_id = 2002001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82001, monster_id = 21020201, pos = { x = 2861.081, y = 206.534, z = 7.898 }, rot = { x = 0.000, y = 73.821, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 82002, monster_id = 21010301, pos = { x = 2868.219, y = 206.294, z = 13.446 }, rot = { x = 0.000, y = 191.964, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 82003, monster_id = 21010301, pos = { x = 2864.424, y = 206.825, z = 3.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 82004, monster_id = 21010601, pos = { x = 2870.282, y = 206.825, z = 5.196 }, rot = { x = 0.000, y = 307.674, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 82005, monster_id = 21010601, pos = { x = 2861.704, y = 207.575, z = 15.902 }, rot = { x = 0.000, y = 148.471, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82006, gadget_id = 70800043, pos = { x = 2827.727, y = 206.825, z = 3.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 82007, gadget_id = 70800043, pos = { x = 2866.045, y = 206.295, z = 9.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 82008, gadget_id = 70800043, pos = { x = 2856.005, y = 207.398, z = -26.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 82009, gadget_id = 70800043, pos = { x = 2824.969, y = 208.375, z = -34.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 82010, gadget_id = 70211111, pos = { x = 2827.727, y = 206.825, z = 3.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, chest_drop_id = 21600003, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 82011, gadget_id = 70300114, pos = { x = 2866.009, y = 206.294, z = 9.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 82012, gadget_id = 70010006, pos = { x = 2866.343, y = 208.012, z = -35.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 82013, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2844.781, y = 207.200, z = -15.008 }, area_id = 4 },
	{ config_id = 82020, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2844.781, y = 207.200, z = -15.008 }, area_id = 4 },
	{ config_id = 82022, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2844.781, y = 207.200, z = -15.008 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1082014, name = "SELECT_OPTION_82014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82014", action = "action_EVENT_SELECT_OPTION_82014", trigger_count = 0 },
	{ config_id = 1082015, name = "SELECT_OPTION_82015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82015", action = "action_EVENT_SELECT_OPTION_82015", trigger_count = 0 },
	{ config_id = 1082016, name = "SELECT_OPTION_82016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82016", action = "action_EVENT_SELECT_OPTION_82016", trigger_count = 0 },
	{ config_id = 1082017, name = "SELECT_OPTION_82017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82017", action = "action_EVENT_SELECT_OPTION_82017", trigger_count = 0 },
	{ config_id = 1082018, name = "GADGET_STATE_CHANGE_82018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_82018", action = "action_EVENT_GADGET_STATE_CHANGE_82018" },
	{ config_id = 1082019, name = "ANY_MONSTER_DIE_82019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82019", action = "action_EVENT_ANY_MONSTER_DIE_82019", trigger_count = 0 },
	{ config_id = 1082022, name = "ENTER_REGION_82022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82022", action = "action_EVENT_ENTER_REGION_82022" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 82021, gadget_id = 70800054, pos = { x = 2856.005, y = 207.398, z = -26.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1, area_id = 4 }
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
		gadgets = { 82012 },
		regions = { 82013, 82020, 82022 },
		triggers = { "SELECT_OPTION_82014", "SELECT_OPTION_82015", "SELECT_OPTION_82016", "SELECT_OPTION_82017", "ENTER_REGION_82022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 82010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_82018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 82001, 82002, 82003, 82004, 82005 },
		gadgets = { 82011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82019" },
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
function condition_EVENT_SELECT_OPTION_82014(context, evt)
	-- 判断是gadgetid 82006 option_id 92
	if 82006 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_82014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007082, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_82015(context, evt)
	-- 判断是gadgetid 82007 option_id 92
	if 82007 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_82015(context, evt)
	-- 调用提示id为 600071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007082, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_82016(context, evt)
	-- 判断是gadgetid 82008 option_id 92
	if 82008 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_82016(context, evt)
	-- 调用提示id为 600072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 133007089) then
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
function condition_EVENT_SELECT_OPTION_82017(context, evt)
	-- 判断是gadgetid 82009 option_id 92
	if 82009 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_82017(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_82018(context, evt)
	if 82010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_82018(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133007082, EntityType.GADGET, 82011 ) then
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
function condition_EVENT_ENTER_REGION_82022(context, evt)
	if evt.param1 ~= 82022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82022(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,145,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_2/Ayesha"