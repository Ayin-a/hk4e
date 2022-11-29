-- 基础信息
local base_info = {
	group_id = 166001017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17003, monster_id = 26040102, pos = { x = 927.463, y = 1093.708, z = 955.462 }, rot = { x = 0.000, y = 123.758, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
	{ config_id = 17007, npc_id = 20539, pos = { x = 924.739, y = 1093.974, z = 943.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 17001, gadget_id = 70360089, pos = { x = 924.659, y = 1093.891, z = 943.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 17002, gadget_id = 70290017, pos = { x = 924.696, y = 1093.856, z = 943.381 }, rot = { x = 279.549, y = 210.092, z = 171.685 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 17004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 931.559, y = 1093.234, z = 946.570 }, area_id = 300 },
	{ config_id = 17008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 923.524, y = 1095.392, z = 962.040 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1017004, name = "ENTER_REGION_17004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17004", action = "action_EVENT_ENTER_REGION_17004" },
	{ config_id = 1017005, name = "QUEST_FINISH_17005", event = EventType.EVENT_QUEST_FINISH, source = "7103706", condition = "", action = "action_EVENT_QUEST_FINISH_17005" },
	{ config_id = 1017006, name = "MONSTER_BATTLE_17006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_17006", action = "action_EVENT_MONSTER_BATTLE_17006" },
	{ config_id = 1017008, name = "ENTER_REGION_17008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17008", action = "action_EVENT_ENTER_REGION_17008" }
}

-- 变量
variables = {
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
		monsters = { 17003 },
		gadgets = { 17001, 17002 },
		regions = { 17004, 17008 },
		triggers = { "ENTER_REGION_17004", "QUEST_FINISH_17005", "MONSTER_BATTLE_17006", "ENTER_REGION_17008" },
		npcs = { 17007 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_17004(context, evt)
	if evt.param1 ~= 17004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17004(context, evt)
	-- 调用提示id为 60010102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_17005(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "done", 1, 166001184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_17006(context, evt)
	if 17003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_17006(context, evt)
	-- 调用提示id为 60010103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17008(context, evt)
	if evt.param1 ~= 17008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17008(context, evt)
	-- 调用提示id为 60010106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end