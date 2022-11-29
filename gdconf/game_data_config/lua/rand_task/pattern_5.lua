-- 基础信息
local base_info = {
	group_id = 139999005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28, monster_id = 21010101, pos = { x = 1.973, y = 0.041, z = -1.128 }, rot = { x = 0.000, y = 301.274, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 3 },
	{ config_id = 29, monster_id = 21010101, pos = { x = -1.728, y = 0.083, z = 1.769 }, rot = { x = 0.000, y = 154.352, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 3 },
	{ config_id = 30, monster_id = 21010101, pos = { x = 1.685, y = 0.014, z = 1.983 }, rot = { x = 0.000, y = 214.134, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 3 },
	{ config_id = 31, monster_id = 21010701, pos = { x = -2.613, y = 0.253, z = -2.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 32, monster_id = 21020201, pos = { x = -2.984, y = 0.338, z = -2.721 }, rot = { x = 0.000, y = 36.797, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 3 },
	{ config_id = 5001, monster_id = 21020101, pos = { x = -0.674, y = 0.368, z = -3.397 }, rot = { x = 0.000, y = 4.667, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1007 }, pose_id = 401, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6, gadget_id = 70300101, pos = { x = -1.717, y = -0.851, z = 0.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 5002, gadget_id = 70300118, pos = { x = -1.717, y = 0.299, z = 0.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 25, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1.438, y = 1.497, z = -1.291 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000010, name = "ANY_GADGET_DIE_10", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10", action = "action_EVENT_ANY_GADGET_DIE_10" },
	{ config_id = 1000011, name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11" },
	{ config_id = 1000025, name = "ENTER_REGION_25", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25", action = "action_EVENT_ENTER_REGION_25", forbid_guest = false },
	{ config_id = 1005003, name = "VARIABLE_CHANGE_5003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5003", action = "action_EVENT_VARIABLE_CHANGE_5003", trigger_count = 0 },
	{ config_id = 1005004, name = "VARIABLE_CHANGE_5004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5004", action = "action_EVENT_VARIABLE_CHANGE_5004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdone", value = 0, no_refresh = false },
	{ config_id = 2, name = "gadgetdone", value = 0, no_refresh = false }
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
	rand_suite = true
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
		monsters = { 28, 29, 30, 31 },
		gadgets = { 6 },
		regions = { 25 },
		triggers = { "ANY_GADGET_DIE_10", "ANY_MONSTER_DIE_11", "ENTER_REGION_25", "VARIABLE_CHANGE_5003", "VARIABLE_CHANGE_5004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 28, 29, 30, 32 },
		gadgets = { 6 },
		regions = { 25 },
		triggers = { "ANY_GADGET_DIE_10", "ANY_MONSTER_DIE_11", "ENTER_REGION_25", "VARIABLE_CHANGE_5003", "VARIABLE_CHANGE_5004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 28, 29, 30, 5001 },
		gadgets = { 6 },
		regions = { 25 },
		triggers = { "ANY_GADGET_DIE_10", "ANY_MONSTER_DIE_11", "ENTER_REGION_25", "VARIABLE_CHANGE_5003", "VARIABLE_CHANGE_5004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10(context, evt)
	
	
	
	-- 将本组内变量名为 "monsterdone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadgetdone", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "monsterdone") + ScriptLib.GetGroupVariableValue(context, "gadgetdone") == 2 then
	
	-- 设置随机任务选项
	
	    ScriptLib.FinishRandTask(context, 5, true)
	
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
	
	
	
	-- 将本组内变量名为 "monsterdone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdone", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "monsterdone") + ScriptLib.GetGroupVariableValue(context, "gadgetdone") == 2 then
	
	-- 设置随机任务选项
	
	    ScriptLib.FinishRandTask(context, 5, true)
	
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25(context, evt)
	if evt.param1 ~= 25 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25(context, evt)
	-- 调用提示id为 1110016 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monsterdone"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdone") ~= 1 then
			return false
	end
	
	-- 判断变量"gadgetdone"为0
	if ScriptLib.GetGroupVariableValue(context, "gadgetdone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5003(context, evt)
	-- 创建id为5002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gadgetdone"为1
	if ScriptLib.GetGroupVariableValue(context, "gadgetdone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end