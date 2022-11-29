-- 基础信息
local base_info = {
	group_id = 133220171
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171001, monster_id = 25080201, pos = { x = -3950.300, y = 360.444, z = -2433.177 }, rot = { x = 0.000, y = 103.410, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 5109 }, isOneoff = true, pose_id = 1004, title_id = 10014, special_name_id = 10034, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 171009, gadget_id = 70310004, pos = { x = -3948.588, y = 359.983, z = -2423.964 }, rot = { x = 356.311, y = 0.245, z = 356.197 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 171010, gadget_id = 70300105, pos = { x = -3954.664, y = 361.196, z = -2430.104 }, rot = { x = 6.740, y = 48.518, z = 359.216 }, level = 27, area_id = 13 },
	{ config_id = 171011, gadget_id = 70220052, pos = { x = -3947.405, y = 362.296, z = -2443.915 }, rot = { x = 6.680, y = 331.414, z = 192.707 }, level = 27, area_id = 13 },
	{ config_id = 171012, gadget_id = 70220052, pos = { x = -3948.123, y = 359.607, z = -2426.941 }, rot = { x = 1.053, y = 197.567, z = 356.679 }, level = 27, area_id = 13 },
	{ config_id = 171013, gadget_id = 70220052, pos = { x = -3948.206, y = 359.615, z = -2426.321 }, rot = { x = 356.932, y = 61.705, z = 9.677 }, level = 27, area_id = 13 },
	{ config_id = 171014, gadget_id = 70211022, pos = { x = -3955.975, y = 361.661, z = -2435.423 }, rot = { x = 1.144, y = 81.355, z = 1.551 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 171015, gadget_id = 70220025, pos = { x = -3953.008, y = 362.617, z = -2439.063 }, rot = { x = 73.640, y = 295.611, z = 323.492 }, level = 27, area_id = 13 },
	{ config_id = 171016, gadget_id = 70310006, pos = { x = -3952.097, y = 361.812, z = -2441.588 }, rot = { x = 5.458, y = 225.239, z = 11.011 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 171017, gadget_id = 70220051, pos = { x = -3947.307, y = 359.320, z = -2426.832 }, rot = { x = 11.896, y = 302.058, z = 346.058 }, level = 27, area_id = 13 },
	{ config_id = 171018, gadget_id = 70220051, pos = { x = -3960.398, y = 362.387, z = -2436.392 }, rot = { x = 354.163, y = 17.824, z = 359.374 }, level = 27, area_id = 13 },
	{ config_id = 171019, gadget_id = 70220052, pos = { x = -3960.917, y = 362.441, z = -2435.767 }, rot = { x = 3.743, y = 345.348, z = 356.293 }, level = 27, area_id = 13 },
	{ config_id = 171020, gadget_id = 70220051, pos = { x = -3961.284, y = 362.498, z = -2436.349 }, rot = { x = 2.140, y = 59.096, z = 274.542 }, level = 27, area_id = 13 },
	{ config_id = 171021, gadget_id = 70220052, pos = { x = -3953.232, y = 363.760, z = -2431.308 }, rot = { x = 87.914, y = 123.317, z = 169.223 }, level = 27, area_id = 13 },
	{ config_id = 171022, gadget_id = 70710135, pos = { x = -3952.154, y = 361.984, z = -2440.701 }, rot = { x = 349.397, y = 1.614, z = 354.783 }, level = 27, area_id = 13 },
	{ config_id = 171023, gadget_id = 70710135, pos = { x = -3951.826, y = 361.933, z = -2440.778 }, rot = { x = 350.411, y = 4.141, z = 356.394 }, level = 27, area_id = 13 },
	{ config_id = 171024, gadget_id = 70220048, pos = { x = -3951.826, y = 360.142, z = -2425.082 }, rot = { x = 0.000, y = 349.491, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 171025, gadget_id = 70220048, pos = { x = -3953.952, y = 360.866, z = -2426.283 }, rot = { x = 0.000, y = 310.518, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	-- 进圈接到任务
	{ config_id = 171002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3952.081, y = 361.867, z = -2441.315 }, area_id = 13 }
}

-- 触发器
triggers = {
	-- 进圈接到任务
	{ config_id = 1171002, name = "ENTER_REGION_171002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_171002", action = "action_EVENT_ENTER_REGION_171002", trigger_count = 0, forbid_guest = false },
	-- 死亡后发送通知
	{ config_id = 1171003, name = "ANY_MONSTER_DIE_171003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_171003", action = "action_EVENT_ANY_MONSTER_DIE_171003", trigger_count = 0 },
	-- 完成后保底
	{ config_id = 1171004, name = "GROUP_LOAD_171004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_171004", action = "action_EVENT_GROUP_LOAD_171004", trigger_count = 0 },
	-- 100:reminder
	{ config_id = 1171005, name = "MONSTER_BATTLE_171005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_171005", action = "action_EVENT_MONSTER_BATTLE_171005", trigger_count = 0 },
	{ config_id = 1171006, name = "GROUP_LOAD_171006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_171006", action = "action_EVENT_GROUP_LOAD_171006", trigger_count = 0 },
	-- 0:reminder
	{ config_id = 1171007, name = "ANY_MONSTER_DIE_171007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_171007", action = "action_EVENT_ANY_MONSTER_DIE_171007" },
	-- END
	{ config_id = 1171008, name = "QUEST_START_171008", event = EventType.EVENT_QUEST_START, source = "7211014", condition = "", action = "action_EVENT_QUEST_START_171008", trigger_count = 0 }
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
		monsters = { 171001 },
		gadgets = { 171009, 171010, 171011, 171012, 171013, 171014, 171015, 171016, 171017, 171018, 171019, 171020, 171021, 171022, 171023, 171024, 171025 },
		regions = { 171002 },
		triggers = { "ENTER_REGION_171002", "ANY_MONSTER_DIE_171003", "GROUP_LOAD_171004", "MONSTER_BATTLE_171005", "GROUP_LOAD_171006", "ANY_MONSTER_DIE_171007", "QUEST_START_171008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 171009, 171010, 171011, 171012, 171013, 171014, 171015, 171016, 171017, 171018, 171019, 171020, 171021, 171022, 171023, 171024, 171025 },
		regions = { },
		triggers = { "GROUP_LOAD_171004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_171002(context, evt)
	if evt.param1 ~= 171002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_171002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_171003(context, evt)
	if 171001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211004") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 171014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_171004(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211004") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_171005(context, evt)
	if 171001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rua"为0
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_171005(context, evt)
	-- 调用提示id为 -1074247189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247189) then
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
function condition_EVENT_GROUP_LOAD_171006(context, evt)
	-- 判断变量"rua"为1
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171006(context, evt)
	-- 将本组内变量名为 "rua" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_171007(context, evt)
	if 171001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171007(context, evt)
	-- 调用提示id为 -1074247187 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 171014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_171008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220171, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end