-- 基础信息
local base_info = {
	group_id = 133220169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169001, monster_id = 25100201, pos = { x = -3879.111, y = 218.085, z = -3028.093 }, rot = { x = 0.000, y = 328.632, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, affix = { 5110 }, isOneoff = true, pose_id = 1003, title_id = 10015, special_name_id = 10032, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169010, gadget_id = 70300105, pos = { x = -3873.640, y = 218.022, z = -3029.661 }, rot = { x = 0.000, y = 222.701, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 169011, gadget_id = 70310006, pos = { x = -3874.278, y = 217.889, z = -3024.696 }, rot = { x = 0.000, y = 34.210, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 169012, gadget_id = 70220015, pos = { x = -3874.231, y = 217.980, z = -3030.464 }, rot = { x = 272.079, y = 255.716, z = 251.725 }, level = 27, area_id = 12 },
	{ config_id = 169013, gadget_id = 70220015, pos = { x = -3874.292, y = 218.799, z = -3030.480 }, rot = { x = 272.077, y = 255.715, z = 240.232 }, level = 27, area_id = 12 },
	{ config_id = 169014, gadget_id = 70220051, pos = { x = -3878.417, y = 218.104, z = -3031.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 169015, gadget_id = 70220051, pos = { x = -3878.037, y = 218.279, z = -3032.060 }, rot = { x = 284.681, y = 315.495, z = 281.524 }, level = 27, area_id = 12 },
	{ config_id = 169016, gadget_id = 70220050, pos = { x = -3869.964, y = 217.665, z = -3024.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 169017, gadget_id = 70220052, pos = { x = -3870.915, y = 217.699, z = -3024.387 }, rot = { x = 0.000, y = 114.057, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 169018, gadget_id = 70220052, pos = { x = -3870.150, y = 217.614, z = -3023.724 }, rot = { x = 0.000, y = 243.590, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 169019, gadget_id = 70211022, pos = { x = -3873.199, y = 217.955, z = -3028.016 }, rot = { x = 0.000, y = 286.747, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	-- 进圈接到任务
	{ config_id = 169002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3879.143, y = 218.091, z = -3029.255 }, area_id = 12 }
}

-- 触发器
triggers = {
	-- 进圈接到任务
	{ config_id = 1169002, name = "ENTER_REGION_169002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169002", action = "action_EVENT_ENTER_REGION_169002", trigger_count = 0, forbid_guest = false },
	-- 死亡后发送通知
	{ config_id = 1169003, name = "ANY_MONSTER_DIE_169003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169003", action = "action_EVENT_ANY_MONSTER_DIE_169003", trigger_count = 0 },
	-- 完成后保底
	{ config_id = 1169004, name = "GROUP_LOAD_169004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_169004", action = "action_EVENT_GROUP_LOAD_169004", trigger_count = 0 },
	-- 100:reminder
	{ config_id = 1169005, name = "MONSTER_BATTLE_169005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_169005", action = "action_EVENT_MONSTER_BATTLE_169005", trigger_count = 0 },
	-- 0:reminder
	{ config_id = 1169007, name = "ANY_MONSTER_DIE_169007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169007", action = "action_EVENT_ANY_MONSTER_DIE_169007", trigger_count = 0 },
	-- END
	{ config_id = 1169008, name = "QUEST_START_169008", event = EventType.EVENT_QUEST_START, source = "7211014", condition = "", action = "action_EVENT_QUEST_START_169008", trigger_count = 0 },
	-- 再次加载后把rua置成0
	{ config_id = 1169009, name = "GROUP_LOAD_169009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_169009", action = "action_EVENT_GROUP_LOAD_169009", trigger_count = 0 },
	-- 死亡后宝箱打开
	{ config_id = 1169020, name = "ANY_MONSTER_DIE_169020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169020", action = "action_EVENT_ANY_MONSTER_DIE_169020", trigger_count = 0 }
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
		monsters = { 169001 },
		gadgets = { 169010, 169011, 169012, 169013, 169014, 169015, 169016, 169017, 169018, 169019 },
		regions = { 169002 },
		triggers = { "ENTER_REGION_169002", "ANY_MONSTER_DIE_169003", "GROUP_LOAD_169004", "MONSTER_BATTLE_169005", "ANY_MONSTER_DIE_169007", "QUEST_START_169008", "GROUP_LOAD_169009", "ANY_MONSTER_DIE_169020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 169010, 169011, 169012, 169013, 169014, 169015, 169016, 169017, 169018, 169019 },
		regions = { },
		triggers = { "GROUP_LOAD_169004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_169002(context, evt)
	if evt.param1 ~= 169002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_169002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169003(context, evt)
	if 169001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_169004(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_169004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_169005(context, evt)
	if 169001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rua"为0
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_169005(context, evt)
	-- 调用提示id为 -1074247186 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247186) then
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
function condition_EVENT_ANY_MONSTER_DIE_169007(context, evt)
	if 169001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169007(context, evt)
	-- 调用提示id为 -1074247184 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_169008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220169, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_169009(context, evt)
	-- 判断变量"rua"为1
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_169009(context, evt)
	-- 将本组内变量名为 "rua" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169020(context, evt)
	if 169001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169020(context, evt)
	-- 将configid为 169019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end