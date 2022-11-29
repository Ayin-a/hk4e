-- 基础信息
local base_info = {
	group_id = 133212576
}

-- Trigger变量
local defs = {
	order = {576006,576007,576008,576009},
	region = 576013,
	region_Enter = 576013,
	region_Leave = 576020,
	challenge_id = 2002001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 576001, monster_id = 21020701, pos = { x = -3837.037, y = 200.438, z = -2944.566 }, rot = { x = 0.000, y = 73.821, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 576002, monster_id = 21011001, pos = { x = -3829.895, y = 200.122, z = -2939.012 }, rot = { x = 0.000, y = 191.964, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 576003, monster_id = 21011001, pos = { x = -3833.703, y = 200.968, z = -2949.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 576004, monster_id = 21010201, pos = { x = -3827.834, y = 200.481, z = -2947.264 }, rot = { x = 0.000, y = 307.674, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 576005, monster_id = 21010201, pos = { x = -3836.413, y = 200.075, z = -2936.546 }, rot = { x = 0.000, y = 148.471, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 576006, gadget_id = 70800043, pos = { x = -3853.369, y = 204.852, z = -2970.445 }, rot = { x = 0.000, y = 228.978, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 576007, gadget_id = 70800043, pos = { x = -3832.070, y = 200.356, z = -2943.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 576008, gadget_id = 70800043, pos = { x = -3861.317, y = 200.144, z = -2928.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 576009, gadget_id = 70800043, pos = { x = -3869.395, y = 200.426, z = -2932.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 576010, gadget_id = 70211111, pos = { x = -3853.376, y = 204.773, z = -2970.448 }, rot = { x = 0.000, y = 228.978, z = 0.000 }, level = 26, chest_drop_id = 21600003, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 576011, gadget_id = 70300114, pos = { x = -3832.105, y = 200.358, z = -2943.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 576012, gadget_id = 70010006, pos = { x = -3870.187, y = 200.621, z = -2934.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 576013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3864.597, y = 201.276, z = -2940.021 }, area_id = 12 },
	{ config_id = 576020, shape = RegionShape.SPHERE, radius = 70, pos = { x = -3864.597, y = 201.276, z = -2940.021 }, area_id = 12 },
	{ config_id = 576022, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3864.597, y = 201.276, z = -2940.021 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1576014, name = "SELECT_OPTION_576014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_576014", action = "action_EVENT_SELECT_OPTION_576014", trigger_count = 0 },
	{ config_id = 1576015, name = "SELECT_OPTION_576015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_576015", action = "action_EVENT_SELECT_OPTION_576015", trigger_count = 0 },
	{ config_id = 1576016, name = "SELECT_OPTION_576016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_576016", action = "action_EVENT_SELECT_OPTION_576016", trigger_count = 0 },
	{ config_id = 1576017, name = "SELECT_OPTION_576017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_576017", action = "action_EVENT_SELECT_OPTION_576017", trigger_count = 0 },
	{ config_id = 1576018, name = "GADGET_STATE_CHANGE_576018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_576018", action = "action_EVENT_GADGET_STATE_CHANGE_576018" },
	{ config_id = 1576019, name = "ANY_MONSTER_DIE_576019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_576019", action = "action_EVENT_ANY_MONSTER_DIE_576019", trigger_count = 0 },
	{ config_id = 1576022, name = "ENTER_REGION_576022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_576022", action = "action_EVENT_ENTER_REGION_576022" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 576021, gadget_id = 70800054, pos = { x = -3861.317, y = 200.144, z = -2928.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01, area_id = 12 }
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
		gadgets = { 576012 },
		regions = { 576013, 576020, 576022 },
		triggers = { "SELECT_OPTION_576014", "SELECT_OPTION_576015", "SELECT_OPTION_576016", "SELECT_OPTION_576017", "ENTER_REGION_576022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 576010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_576018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 576001, 576002, 576003, 576004, 576005 },
		gadgets = { 576011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_576019" },
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
function condition_EVENT_SELECT_OPTION_576014(context, evt)
	-- 判断是gadgetid 576006 option_id 92
	if 576006 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_576014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212576, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_576015(context, evt)
	-- 判断是gadgetid 576007 option_id 92
	if 576007 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_576015(context, evt)
	-- 调用提示id为 600071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212576, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_576016(context, evt)
	-- 判断是gadgetid 576008 option_id 92
	if 576008 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_576016(context, evt)
	-- 调用提示id为 600072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 133212601) then
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
function condition_EVENT_SELECT_OPTION_576017(context, evt)
	-- 判断是gadgetid 576009 option_id 92
	if 576009 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_576017(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_576018(context, evt)
	if 576010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_576018(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_576019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_576019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133212576, EntityType.GADGET, 576011 ) then
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
function condition_EVENT_ENTER_REGION_576022(context, evt)
	if evt.param1 ~= 576022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_576022(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,145,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_2/Ayesha"