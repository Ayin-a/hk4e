-- 基础信息
local base_info = {
	group_id = 220135010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10003, monster_id = 25080101, pos = { x = 144.513, y = 95.703, z = -44.392 }, rot = { x = 0.000, y = 358.328, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 1, title_id = 10106, special_name_id = 10140 },
	{ config_id = 10004, monster_id = 25080201, pos = { x = 151.335, y = 95.987, z = -40.051 }, rot = { x = 0.000, y = 344.448, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 10005, monster_id = 25080201, pos = { x = 138.085, y = 95.987, z = -39.846 }, rot = { x = 0.000, y = 1.943, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 10009, monster_id = 25080301, pos = { x = 148.615, y = 95.983, z = -48.405 }, rot = { x = 0.000, y = 353.389, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 10010, monster_id = 25080301, pos = { x = 140.932, y = 95.987, z = -48.383 }, rot = { x = 0.000, y = 353.288, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10001, gadget_id = 70211012, pos = { x = 144.359, y = 95.434, z = -57.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true },
	{ config_id = 10006, gadget_id = 70290137, pos = { x = 145.205, y = 94.666, z = -23.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 10007, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 30.000 }, pos = { x = 143.492, y = 95.936, z = -43.786 } },
	{ config_id = 10013, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 30.000 }, pos = { x = 143.492, y = 95.936, z = -43.786 } }
}

-- 触发器
triggers = {
	{ config_id = 1010002, name = "ANY_MONSTER_DIE_10002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_10002", trigger_count = 0 },
	{ config_id = 1010007, name = "ENTER_REGION_10007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10007", action = "action_EVENT_ENTER_REGION_10007", trigger_count = 0 },
	{ config_id = 1010008, name = "GROUP_LOAD_10008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10008", trigger_count = 0 },
	{ config_id = 1010011, name = "QUEST_START_10011", event = EventType.EVENT_QUEST_START, source = "4006612", condition = "", action = "action_EVENT_QUEST_START_10011", trigger_count = 0 },
	{ config_id = 1010012, name = "DUNGEON_ALL_AVATAR_DIE_10012", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_10012", trigger_count = 0 },
	{ config_id = 1010013, name = "ENTER_REGION_10013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10013", action = "action_EVENT_ENTER_REGION_10013", trigger_count = 0 },
	{ config_id = 1010014, name = "DUNGEON_AVATAR_SLIP_DIE_10014", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_10014", trigger_count = 0 },
	-- 4006612 任务load保底
	{ config_id = 1010015, name = "GROUP_LOAD_10015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10015", action = "action_EVENT_GROUP_LOAD_10015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "voice", value = 0, no_refresh = false },
	{ config_id = 3, name = "door", value = 0, no_refresh = true },
	{ config_id = 4, name = "start", value = 0, no_refresh = true },
	{ config_id = 5, name = "test", value = 0, no_refresh = false }
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
		gadgets = { 10001, 10006 },
		regions = { 10007, 10013 },
		triggers = { "ENTER_REGION_10007", "GROUP_LOAD_10008", "QUEST_START_10011", "DUNGEON_ALL_AVATAR_DIE_10012", "ENTER_REGION_10013", "DUNGEON_AVATAR_SLIP_DIE_10014", "GROUP_LOAD_10015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10003, 10004, 10005, 10009, 10010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10002(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) == 0 then
		ScriptLib.SetGroupVariableValue(context, "temp", 1)
		
		ScriptLib.SetGroupVariableValue(context, "door", 1)
		
		ScriptLib.ChangeToTargetLevelTag(context, 37)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220135010, 10006, GadgetState.GearStart)
		
		ScriptLib.AddQuestProgress(context, "4006612")
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220135010, 10001, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10007(context, evt)
	if evt.param1 ~= 10007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	-- 判断变量"test"为0
	if ScriptLib.GetGroupVariableValue(context, "test") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10007(context, evt)
	-- 将本组内变量名为 "test" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "test", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 10006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220135010, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 37)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220135010, 10006, GadgetState.GearStart)
		
		ScriptLib.AddQuestProgress(context, "4006612")
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220135010, 10001, GadgetState.Default)
	else
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
		
		if ScriptLib.GetGroupVariableValue(context, "door") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,10006, GadgetState.GearStart)
		else
			ScriptLib.SetGadgetStateByConfigId(context,10006, GadgetState.Default)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_10011(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.AddQuestProgress(context, "4006612")
	else
		if ScriptLib.GetGroupVariableValue(context, "start") == 0 then
			ScriptLib.SetGroupVariableValue(context, "door", 1)
			
			ScriptLib.SetGroupVariableValue(context, "start", 1)
			
			ScriptLib.SetGadgetStateByConfigId(context,10006, GadgetState.GearStart)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_10012(context, evt)
	ScriptLib.SetGroupVariableValue(context, "test", 0)
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,10001, GadgetState.Default)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "door") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,10006, GadgetState.GearStart)
	else
		ScriptLib.SetGadgetStateByConfigId(context,10006, GadgetState.Default)
	end
	
	ScriptLib.RemoveExtraGroupSuite(context, 220135010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10013(context, evt)
	if evt.param1 ~= 10013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	-- 判断变量"voice"为0
	if ScriptLib.GetGroupVariableValue(context, "voice") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10013(context, evt)
	-- 将本组内变量名为 "voice" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "voice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 60010374 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010374) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_10014(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,10001, GadgetState.Default)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "door") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,10006, GadgetState.GearStart)
	else
		ScriptLib.SetGadgetStateByConfigId(context,10006, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10015(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006612") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end