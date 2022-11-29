-- 基础信息
local base_info = {
	group_id = 133310079
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79005, monster_id = 25210401, pos = { x = -3009.759, y = 273.677, z = 4815.969 }, rot = { x = 0.000, y = 112.952, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9001, area_id = 28 },
	{ config_id = 79006, monster_id = 25210401, pos = { x = -3004.135, y = 273.378, z = 4819.333 }, rot = { x = 0.000, y = 166.512, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9001, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79003, gadget_id = 70211101, pos = { x = -3182.025, y = 260.837, z = 4763.167 }, rot = { x = 0.000, y = 340.209, z = 0.000 }, level = 26, chest_drop_id = 1050233, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 79001, shape = RegionShape.SPHERE, radius = 13, pos = { x = -3194.090, y = 256.536, z = 4808.390 }, area_id = 28 },
	{ config_id = 79008, shape = RegionShape.SPHERE, radius = 13, pos = { x = -3194.090, y = 256.536, z = 4808.390 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1079001, name = "ENTER_REGION_79001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_79001", action = "action_EVENT_ENTER_REGION_79001" },
	{ config_id = 1079002, name = "QUEST_START_79002", event = EventType.EVENT_QUEST_START, source = "7319001", condition = "", action = "action_EVENT_QUEST_START_79002", trigger_count = 0 },
	{ config_id = 1079004, name = "GADGET_STATE_CHANGE_79004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79004", action = "action_EVENT_GADGET_STATE_CHANGE_79004" },
	{ config_id = 1079007, name = "MONSTER_BATTLE_79007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_79007", action = "action_EVENT_MONSTER_BATTLE_79007" },
	{ config_id = 1079008, name = "ENTER_REGION_79008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_79008", action = "action_EVENT_ENTER_REGION_79008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest_accept", value = 0, no_refresh = true }
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
		gadgets = { 79003 },
		regions = { 79001, 79008 },
		triggers = { "ENTER_REGION_79001", "QUEST_START_79002", "GADGET_STATE_CHANGE_79004", "MONSTER_BATTLE_79007", "ENTER_REGION_79008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 79005, 79006 },
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
function condition_EVENT_ENTER_REGION_79001(context, evt)
	if evt.param1 ~= 79001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"quest_accept"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_79001(context, evt)
	-- 调用提示id为 7321601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7321601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_79002(context, evt)
	-- 将本组内变量名为 "quest_accept" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest_accept", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310079, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79004(context, evt)
	-- 判断变量"quest_accept"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 0 then
			return false
	end
	
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133310079, 79003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79004(context, evt)
	-- 调用提示id为 7321603 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7321603) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_79007(context, evt)
	-- 判断变量"quest_accept"为1
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_79007(context, evt)
	-- 将本组内变量名为 "queststart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "queststart", 1, 133310604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_79008(context, evt)
	if evt.param1 ~= 79008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"quest_accept"为1
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_79008(context, evt)
	-- 调用提示id为 7321605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7321605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end