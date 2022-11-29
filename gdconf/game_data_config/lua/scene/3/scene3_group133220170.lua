-- 基础信息
local base_info = {
	group_id = 133220170
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 170009, monster_id = 25080301, pos = { x = -3749.024, y = 200.240, z = -1643.653 }, rot = { x = 357.527, y = 343.524, z = 359.526 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 5108 }, isOneoff = true, pose_id = 1, title_id = 10014, special_name_id = 10033, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 170010, gadget_id = 70310004, pos = { x = -3752.370, y = 200.439, z = -1659.144 }, rot = { x = 3.755, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 170011, gadget_id = 70300104, pos = { x = -3755.805, y = 200.713, z = -1664.085 }, rot = { x = 359.935, y = 247.735, z = 359.216 }, level = 27, area_id = 13 },
	{ config_id = 170012, gadget_id = 70220025, pos = { x = -3758.380, y = 200.618, z = -1665.217 }, rot = { x = 86.867, y = 107.186, z = 107.210 }, level = 27, area_id = 13 },
	{ config_id = 170013, gadget_id = 70220025, pos = { x = -3756.755, y = 200.687, z = -1664.473 }, rot = { x = 86.128, y = 131.403, z = 95.963 }, level = 27, area_id = 13 },
	{ config_id = 170014, gadget_id = 70220052, pos = { x = -3754.363, y = 200.912, z = -1667.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 170015, gadget_id = 70220052, pos = { x = -3755.600, y = 201.119, z = -1667.784 }, rot = { x = 0.000, y = 105.423, z = 212.109 }, level = 27, area_id = 13 },
	{ config_id = 170016, gadget_id = 70220050, pos = { x = -3760.369, y = 200.397, z = -1663.798 }, rot = { x = 0.000, y = 183.526, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 170017, gadget_id = 70211022, pos = { x = -3758.137, y = 200.460, z = -1662.517 }, rot = { x = 0.000, y = 33.014, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
	-- 进圈接到任务
	{ config_id = 170002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3754.691, y = 200.651, z = -1662.566 }, area_id = 13 }
}

-- 触发器
triggers = {
	-- 再次加载后如果rua为1，则设置成0
	{ config_id = 1170001, name = "GROUP_LOAD_170001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_170001", action = "action_EVENT_GROUP_LOAD_170001", trigger_count = 0 },
	-- 进圈接到任务
	{ config_id = 1170002, name = "ENTER_REGION_170002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_170002", action = "action_EVENT_ENTER_REGION_170002", trigger_count = 0, forbid_guest = false },
	-- 死亡后发送通知
	{ config_id = 1170003, name = "ANY_MONSTER_DIE_170003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_170003", action = "action_EVENT_ANY_MONSTER_DIE_170003", trigger_count = 0 },
	-- 完成后保底
	{ config_id = 1170004, name = "GROUP_LOAD_170004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_170004", action = "action_EVENT_GROUP_LOAD_170004", trigger_count = 0 },
	-- 100:reminder
	{ config_id = 1170005, name = "MONSTER_BATTLE_170005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_170005", action = "action_EVENT_MONSTER_BATTLE_170005", trigger_count = 0 },
	-- 0:reminder
	{ config_id = 1170007, name = "ANY_MONSTER_DIE_170007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_170007", action = "action_EVENT_ANY_MONSTER_DIE_170007", trigger_count = 0 },
	-- END
	{ config_id = 1170008, name = "QUEST_START_170008", event = EventType.EVENT_QUEST_START, source = "7211014", condition = "", action = "action_EVENT_QUEST_START_170008", trigger_count = 0 },
	-- 死亡后可以开启宝箱
	{ config_id = 1170018, name = "ANY_MONSTER_DIE_170018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_170018", action = "action_EVENT_ANY_MONSTER_DIE_170018", trigger_count = 0 }
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
		monsters = { 170009 },
		gadgets = { 170010, 170011, 170012, 170013, 170014, 170015, 170016, 170017 },
		regions = { 170002 },
		triggers = { "GROUP_LOAD_170001", "ENTER_REGION_170002", "ANY_MONSTER_DIE_170003", "GROUP_LOAD_170004", "MONSTER_BATTLE_170005", "ANY_MONSTER_DIE_170007", "QUEST_START_170008", "ANY_MONSTER_DIE_170018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 170010, 170011, 170012, 170013, 170014, 170015, 170016, 170017 },
		regions = { },
		triggers = { "GROUP_LOAD_170004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_170001(context, evt)
	-- 判断变量"rua"为1
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_170001(context, evt)
	-- 将本组内变量名为 "rua" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_170002(context, evt)
	if evt.param1 ~= 170002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_170002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_170003(context, evt)
	if 170009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_170003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211003") then
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
function condition_EVENT_GROUP_LOAD_170004(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_170004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_170005(context, evt)
	if 170009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rua"为0
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_170005(context, evt)
	-- 调用提示id为 -1074247192 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247192) then
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
function condition_EVENT_ANY_MONSTER_DIE_170007(context, evt)
	if 170009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_170007(context, evt)
	-- 调用提示id为 -1074247190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_170008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220170, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_170018(context, evt)
	if 170009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_170018(context, evt)
	-- 将configid为 170017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end