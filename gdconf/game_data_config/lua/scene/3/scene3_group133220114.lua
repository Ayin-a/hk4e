-- 基础信息
local base_info = {
	group_id = 133220114
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 114009, monster_id = 25080101, pos = { x = -2931.416, y = 207.472, z = -4161.328 }, rot = { x = 0.000, y = 171.674, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 5107 }, isOneoff = true, pose_id = 1006, title_id = 10014, special_name_id = 10030, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 114006, gadget_id = 70211022, pos = { x = -2931.598, y = 207.882, z = -4164.721 }, rot = { x = 0.000, y = 19.086, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 114002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2932.105, y = 207.810, z = -4163.164 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 再次load时，如果rua为1，则把rua设为0
	{ config_id = 1114001, name = "GROUP_LOAD_114001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_114001", action = "action_EVENT_GROUP_LOAD_114001", trigger_count = 0 },
	{ config_id = 1114002, name = "ENTER_REGION_114002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_114002", action = "action_EVENT_ENTER_REGION_114002", trigger_count = 0, forbid_guest = false },
	{ config_id = 1114003, name = "ANY_MONSTER_DIE_114003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_114003", action = "action_EVENT_ANY_MONSTER_DIE_114003", trigger_count = 0 },
	{ config_id = 1114004, name = "GROUP_LOAD_114004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_114004", action = "action_EVENT_GROUP_LOAD_114004", trigger_count = 0 },
	{ config_id = 1114005, name = "MONSTER_BATTLE_114005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_114005", action = "action_EVENT_MONSTER_BATTLE_114005", trigger_count = 0 },
	{ config_id = 1114007, name = "ANY_MONSTER_DIE_114007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_114007", action = "action_EVENT_ANY_MONSTER_DIE_114007" },
	{ config_id = 1114008, name = "QUEST_START_114008", event = EventType.EVENT_QUEST_START, source = "7211014", condition = "", action = "action_EVENT_QUEST_START_114008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = false },
	{ config_id = 2, name = "rua", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { 114009 },
		gadgets = { 114006 },
		regions = { 114002 },
		triggers = { "GROUP_LOAD_114001", "ENTER_REGION_114002", "ANY_MONSTER_DIE_114003", "GROUP_LOAD_114004", "MONSTER_BATTLE_114005", "ANY_MONSTER_DIE_114007", "QUEST_START_114008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 114006 },
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
function condition_EVENT_GROUP_LOAD_114001(context, evt)
	-- 判断变量"rua"为1
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_114001(context, evt)
	-- 将本组内变量名为 "rua" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_114002(context, evt)
	if evt.param1 ~= 114002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_114002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_114003(context, evt)
	if 114009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_114003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 114006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_114004(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_114004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_114005(context, evt)
	if 114009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rua"为0
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_114005(context, evt)
	-- 调用提示id为 -1074247195 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247195) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "rua" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_114007(context, evt)
	if 114009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_114007(context, evt)
	-- 调用提示id为 -1074247193 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_114008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220114, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end