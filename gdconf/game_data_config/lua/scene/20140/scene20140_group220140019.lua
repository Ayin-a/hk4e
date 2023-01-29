-- 基础信息
local base_info = {
	group_id = 220140019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19003, monster_id = 25050301, pos = { x = 35.685, y = 87.130, z = 564.388 }, rot = { x = 0.000, y = 183.055, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 19004, monster_id = 25050301, pos = { x = 41.647, y = 87.130, z = 563.990 }, rot = { x = 0.000, y = 196.572, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 19005, monster_id = 25050401, pos = { x = 33.984, y = 87.130, z = 557.394 }, rot = { x = 0.000, y = 183.547, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 19006, monster_id = 25050401, pos = { x = 40.313, y = 87.130, z = 557.074 }, rot = { x = 0.000, y = 197.097, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 19009, monster_id = 25080401, pos = { x = 29.513, y = 87.170, z = 570.502 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 19010, monster_id = 25080401, pos = { x = 48.460, y = 87.170, z = 567.808 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 19011, monster_id = 25050301, pos = { x = 43.652, y = 87.130, z = 571.497 }, rot = { x = 0.000, y = 195.061, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 19013, monster_id = 25050301, pos = { x = 35.276, y = 87.130, z = 572.781 }, rot = { x = 0.000, y = 195.061, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 19015, monster_id = 25050401, pos = { x = 39.826, y = 87.130, z = 574.706 }, rot = { x = 0.000, y = 188.518, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19007, gadget_id = 70360001, pos = { x = 49.053, y = 87.130, z = 556.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19016, gadget_id = 70950011, pos = { x = 22.506, y = 87.300, z = 588.652 }, rot = { x = 0.000, y = 7.057, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 19017, gadget_id = 70950011, pos = { x = 40.617, y = 87.300, z = 586.410 }, rot = { x = 0.000, y = 7.057, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 19018, gadget_id = 70950011, pos = { x = 59.494, y = 87.300, z = 584.073 }, rot = { x = 0.000, y = 7.057, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 19021, gadget_id = 70211011, pos = { x = 43.061, y = 85.400, z = 598.128 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 19012, shape = RegionShape.CUBIC, size = { x = 30.000, y = 15.000, z = 15.000 }, pos = { x = 46.727, y = 85.609, z = 599.157 } },
	{ config_id = 19014, shape = RegionShape.CUBIC, size = { x = 8.000, y = 15.000, z = 8.000 }, pos = { x = 120.806, y = 85.769, z = 750.476 } }
}

-- 触发器
triggers = {
	{ config_id = 1019001, name = "QUEST_START_19001", event = EventType.EVENT_QUEST_START, source = "4006709", condition = "condition_EVENT_QUEST_START_19001", action = "action_EVENT_QUEST_START_19001", trigger_count = 0 },
	{ config_id = 1019002, name = "GROUP_LOAD_19002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_19002", action = "action_EVENT_GROUP_LOAD_19002", trigger_count = 0 },
	{ config_id = 1019008, name = "ANY_MONSTER_DIE_19008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19008", action = "action_EVENT_ANY_MONSTER_DIE_19008", trigger_count = 0 },
	{ config_id = 1019012, name = "ENTER_REGION_19012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19012", action = "action_EVENT_ENTER_REGION_19012", trigger_count = 0 },
	{ config_id = 1019014, name = "ENTER_REGION_19014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19014", action = "action_EVENT_ENTER_REGION_19014", trigger_count = 0 },
	{ config_id = 1019019, name = "GROUP_LOAD_19019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_19019", trigger_count = 0 },
	{ config_id = 1019020, name = "ANY_MONSTER_DIE_19020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19020", action = "action_EVENT_ANY_MONSTER_DIE_19020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster", value = 0, no_refresh = true }
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
		gadgets = { 19007, 19021 },
		regions = { 19012, 19014 },
		triggers = { "QUEST_START_19001", "GROUP_LOAD_19002", "ENTER_REGION_19012", "ENTER_REGION_19014", "GROUP_LOAD_19019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 19003, 19004, 19005, 19006 },
		gadgets = { 19016, 19017, 19018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 19009, 19010, 19011, 19013, 19015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_19001(context, evt)
	-- 判断变量"monster"为3
	if ScriptLib.GetGroupVariableValue(context, "monster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_19001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006709") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_19002(context, evt)
	-- 判断变量"monster"为3
	if ScriptLib.GetGroupVariableValue(context, "monster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006709") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster"为1
	if ScriptLib.GetGroupVariableValue(context, "monster") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19008(context, evt)
	-- 将本组内变量名为 "monster" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140019, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19012(context, evt)
	if evt.param1 ~= 19012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19012(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 8)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19014(context, evt)
	if evt.param1 ~= 19014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19014(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 10)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19019(context, evt)
	if ScriptLib.CheckSceneTag(context, 20140,1070 ) then
		if ScriptLib.GetGroupVariableValue(context, "monster") == 1 or ScriptLib.GetGroupVariableValue(context, "monster") == 2 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
			
			ScriptLib.SetGroupVariableValue(context, "monster", 1)
			
			ScriptLib.AddExtraGroupSuite(context, 0, 2)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19020(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 8
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "plat", 8, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "monster" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006709") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220140019, 2)
	
	return 0
end