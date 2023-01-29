-- 基础信息
local base_info = {
	group_id = 220135009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 25080401, pos = { x = 30.740, y = 107.800, z = -27.295 }, rot = { x = 0.000, y = 77.292, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 1, title_id = 10105, special_name_id = 10140 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9002, gadget_id = 70211012, pos = { x = 22.830, y = 107.687, z = -26.891 }, rot = { x = 0.100, y = 86.723, z = 1.765 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true },
	{ config_id = 9006, gadget_id = 70290137, pos = { x = 54.570, y = 106.883, z = -26.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 9007, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 40.000 }, pos = { x = 34.928, y = 110.635, z = -27.402 } },
	{ config_id = 9010, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 40.000 }, pos = { x = 34.928, y = 110.635, z = -27.402 } }
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "ANY_MONSTER_DIE_9003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_9003", trigger_count = 0 },
	{ config_id = 1009004, name = "DUNGEON_ALL_AVATAR_DIE_9004", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_9004", trigger_count = 0 },
	{ config_id = 1009005, name = "DUNGEON_AVATAR_SLIP_DIE_9005", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_9005", trigger_count = 0 },
	{ config_id = 1009007, name = "ENTER_REGION_9007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9007", action = "action_EVENT_ENTER_REGION_9007", trigger_count = 0 },
	{ config_id = 1009008, name = "GROUP_LOAD_9008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9008", trigger_count = 0 },
	{ config_id = 1009009, name = "QUEST_START_9009", event = EventType.EVENT_QUEST_START, source = "4006607", condition = "", action = "action_EVENT_QUEST_START_9009", trigger_count = 0 },
	{ config_id = 1009010, name = "ENTER_REGION_9010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9010", action = "action_EVENT_ENTER_REGION_9010", trigger_count = 0 },
	-- 4006607 任务长时间断线保底
	{ config_id = 1009011, name = "GROUP_LOAD_9011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9011", action = "action_EVENT_GROUP_LOAD_9011", trigger_count = 0 }
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
		gadgets = { 9002, 9006 },
		regions = { 9007, 9010 },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_9004", "DUNGEON_AVATAR_SLIP_DIE_9005", "ENTER_REGION_9007", "GROUP_LOAD_9008", "QUEST_START_9009", "ENTER_REGION_9010", "GROUP_LOAD_9011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 9001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9003(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 0 and ScriptLib.GetGroupMonsterCount(context) == 0 then
		ScriptLib.SetGroupVariableValue(context, "temp", 1)
		
		ScriptLib.SetGroupVariableValue(context, "door", 1)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "option", 1, 220135002)
		
		ScriptLib.ChangeToTargetLevelTag(context, 35)
		
		ScriptLib.AddQuestProgress(context, "4006607")
		
		ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,9002, GadgetState.Default)
		
		ScriptLib.SetWorktopOptionsByGroupId(context, 220135002, 2005, {7})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220135002, config_id=2011, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_9004(context, evt)
	ScriptLib.SetGroupVariableValue(context, "test", 0)
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,9002, GadgetState.Default)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "door") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.GearStart)
	else
		ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.Default)
	end
	
	ScriptLib.RemoveExtraGroupSuite(context, 220135009, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_9005(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,9002, GadgetState.Default)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "door") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.GearStart)
	else
		ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9007(context, evt)
	if evt.param1 ~= 9007 then return false end
	
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
function action_EVENT_ENTER_REGION_9007(context, evt)
	-- 将本组内变量名为 "test" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "test", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220135009, 2)
	
	-- 将configid为 9006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,9002, GadgetState.Default)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 and ScriptLib.GetGroupVariableValueByGroup(context, "temp", 220135010) == 0 then
		ScriptLib.SetGroupVariableValueByGroup(context, "option", 1, 220135002)
		
		ScriptLib.ChangeToTargetLevelTag(context, 35)
		
		ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,9002, GadgetState.Default)
		
		ScriptLib.SetWorktopOptionsByGroupId(context, 220135002, 2005, {7})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220135002, config_id=2011, entity_type=EntityType.GADGET})
	else
		if ScriptLib.GetGroupVariableValueByGroup(context, "temp", 220135010) == 0 and ScriptLib.GetGroupVariableValueByGroup(context, "temp", 220135009) == 0 then
			ScriptLib.RemoveExtraGroupSuite(context, 220135009, 2)
			
			ScriptLib.SetGroupVariableValue(context, "test", 0)
			
			ScriptLib.SetGroupVariableValue(context, "voice", 0)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "door") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.GearStart)
		else
			ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.Default)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.AddQuestProgress(context, "4006607")
	else
		if ScriptLib.GetGroupVariableValue(context, "start") == 0 then
			ScriptLib.SetGroupVariableValue(context, "door", 1)
			
			ScriptLib.SetGroupVariableValue(context, "start", 1)
			
			ScriptLib.SetGadgetStateByConfigId(context,9006, GadgetState.GearStart)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9010(context, evt)
	if evt.param1 ~= 9010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	-- 判断变量"voice"为0
	if ScriptLib.GetGroupVariableValue(context, "voice") ~= 0 then
			return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9010(context, evt)
	-- 将本组内变量名为 "voice" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "voice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 60010372 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010372) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_9011(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006607") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end