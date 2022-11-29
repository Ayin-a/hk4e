-- 基础信息
local base_info = {
	group_id = 133001567
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 567004, monster_id = 20011501, pos = { x = 1752.021, y = 237.882, z = -1101.722 }, rot = { x = 0.000, y = -0.006, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 },
	{ config_id = 567008, monster_id = 20011401, pos = { x = 1755.232, y = 237.745, z = -1101.673 }, rot = { x = 0.000, y = -0.006, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 },
	{ config_id = 567009, monster_id = 20011401, pos = { x = 1751.218, y = 238.963, z = -1098.330 }, rot = { x = 0.000, y = -0.006, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 567001, gadget_id = 70710292, pos = { x = 1749.625, y = 237.195, z = -1103.766 }, rot = { x = 349.047, y = 292.460, z = 22.757 }, level = 1, drop_id = 1050120, drop_count = 1, area_id = 3 },
	{ config_id = 567002, gadget_id = 70710292, pos = { x = 1748.970, y = 239.339, z = -1098.304 }, rot = { x = 0.000, y = -0.006, z = 0.000 }, level = 1, drop_id = 1050120, drop_count = 1, area_id = 3 },
	{ config_id = 567003, gadget_id = 70710292, pos = { x = 1756.058, y = 237.385, z = -1103.237 }, rot = { x = 0.000, y = 289.914, z = 0.000 }, level = 1, drop_id = 1050120, drop_count = 1, area_id = 3 },
	{ config_id = 567005, gadget_id = 70710292, pos = { x = 1749.625, y = 237.195, z = -1103.766 }, rot = { x = 349.047, y = 292.460, z = 22.757 }, level = 1, drop_id = 1050120, drop_count = 1, area_id = 3 },
	{ config_id = 567006, gadget_id = 70710292, pos = { x = 1748.970, y = 239.339, z = -1098.304 }, rot = { x = 0.000, y = -0.006, z = 0.000 }, level = 1, drop_id = 1050120, drop_count = 1, area_id = 3 },
	{ config_id = 567007, gadget_id = 70710292, pos = { x = 1756.058, y = 237.385, z = -1103.237 }, rot = { x = 0.000, y = 289.914, z = 0.000 }, level = 1, drop_id = 1050120, drop_count = 1, area_id = 3 },
	{ config_id = 567017, gadget_id = 70300118, pos = { x = 1749.527, y = 238.082, z = -1103.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3, is_enable_interact = false },
	{ config_id = 567018, gadget_id = 70300118, pos = { x = 1749.022, y = 240.393, z = -1098.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3, is_enable_interact = false },
	{ config_id = 567019, gadget_id = 70300118, pos = { x = 1755.913, y = 238.003, z = -1103.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3, is_enable_interact = false }
}

-- 区域
regions = {
	{ config_id = 567011, shape = RegionShape.SPHERE, radius = 24, pos = { x = 1753.823, y = 237.930, z = -1100.639 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1567010, name = "ANY_MONSTER_DIE_567010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_567010", action = "action_EVENT_ANY_MONSTER_DIE_567010" },
	{ config_id = 1567011, name = "ENTER_REGION_567011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567011", action = "action_EVENT_ENTER_REGION_567011", trigger_count = 0 },
	{ config_id = 1567012, name = "VARIABLE_CHANGE_567012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_567012", action = "action_EVENT_VARIABLE_CHANGE_567012" },
	{ config_id = 1567013, name = "QUEST_START_567013", event = EventType.EVENT_QUEST_START, source = "1906602", condition = "", action = "action_EVENT_QUEST_START_567013" },
	{ config_id = 1567014, name = "ANY_GADGET_DIE_567014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567014", action = "action_EVENT_ANY_GADGET_DIE_567014" },
	{ config_id = 1567015, name = "ANY_GADGET_DIE_567015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567015", action = "action_EVENT_ANY_GADGET_DIE_567015" },
	{ config_id = 1567016, name = "ANY_GADGET_DIE_567016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567016", action = "action_EVENT_ANY_GADGET_DIE_567016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "mine1", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 567001, 567002, 567003, 567017, 567018, 567019 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_567012", "QUEST_START_567013", "ANY_GADGET_DIE_567014", "ANY_GADGET_DIE_567015", "ANY_GADGET_DIE_567016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 567004, 567008, 567009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_567010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 567005, 567006, 567007 },
		regions = { 567011 },
		triggers = { "ENTER_REGION_567011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_567010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_567010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015673") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567011(context, evt)
	if evt.param1 ~= 567011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001567, 1)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015674") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001567, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_567012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mine1"为3
	if ScriptLib.GetGroupVariableValue(context, "mine1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_567012(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1724,y=233,z=-1132}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021120, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_567013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001567, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567014(context, evt)
	if 567003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567014(context, evt)
	-- 针对当前group内变量名为 "mine1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mine1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015672") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001567, EntityType.GADGET, 567019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567015(context, evt)
	if 567002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567015(context, evt)
	-- 针对当前group内变量名为 "mine1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mine1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015672") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001567, EntityType.GADGET, 567018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567016(context, evt)
	if 567001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567016(context, evt)
	-- 针对当前group内变量名为 "mine1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mine1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015672") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001567, EntityType.GADGET, 567017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end