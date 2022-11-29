-- 基础信息
local base_info = {
	group_id = 144001188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 188002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 193.474, y = 216.801, z = 300.412 }, area_id = 102 },
	{ config_id = 188003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 214.128, y = 195.250, z = 163.356 }, area_id = 102 },
	{ config_id = 188004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 317.998, y = 199.133, z = 165.885 }, area_id = 102 },
	{ config_id = 188005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 221.688, y = 190.927, z = 436.621 }, area_id = 102 },
	{ config_id = 188006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 352.624, y = 185.081, z = 418.457 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1188001, name = "QUEST_START_188001", event = EventType.EVENT_QUEST_START, source = "7901403", condition = "", action = "action_EVENT_QUEST_START_188001", trigger_count = 0 },
	{ config_id = 1188002, name = "ENTER_REGION_188002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188002", action = "action_EVENT_ENTER_REGION_188002", trigger_count = 0 },
	{ config_id = 1188003, name = "ENTER_REGION_188003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188003", action = "action_EVENT_ENTER_REGION_188003", trigger_count = 0 },
	{ config_id = 1188004, name = "ENTER_REGION_188004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188004", action = "action_EVENT_ENTER_REGION_188004", trigger_count = 0 },
	{ config_id = 1188005, name = "ENTER_REGION_188005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188005", action = "action_EVENT_ENTER_REGION_188005", trigger_count = 0 },
	{ config_id = 1188006, name = "ENTER_REGION_188006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188006", action = "action_EVENT_ENTER_REGION_188006", trigger_count = 0 },
	{ config_id = 1188007, name = "VARIABLE_CHANGE_188007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_188007", action = "action_EVENT_VARIABLE_CHANGE_188007", trigger_count = 0 },
	{ config_id = 1188008, name = "VARIABLE_CHANGE_188008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_188008", action = "action_EVENT_VARIABLE_CHANGE_188008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "144001188", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { 188002, 188003, 188004, 188005, 188006 },
		triggers = { "QUEST_START_188001", "ENTER_REGION_188002", "ENTER_REGION_188003", "ENTER_REGION_188004", "ENTER_REGION_188005", "ENTER_REGION_188006", "VARIABLE_CHANGE_188007", "VARIABLE_CHANGE_188008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_QUEST_START_188001(context, evt)
	-- 调用提示id为 1110322 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110322) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188002(context, evt)
	if evt.param1 ~= 188002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188002(context, evt)
	-- 针对当前group内变量名为 "144001188" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "144001188", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188003(context, evt)
	if evt.param1 ~= 188003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188003(context, evt)
	-- 针对当前group内变量名为 "144001188" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "144001188", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188004(context, evt)
	if evt.param1 ~= 188004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188004(context, evt)
	-- 针对当前group内变量名为 "144001188" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "144001188", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188005(context, evt)
	if evt.param1 ~= 188005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188005(context, evt)
	-- 针对当前group内变量名为 "144001188" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "144001188", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188006(context, evt)
	if evt.param1 ~= 188006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188006(context, evt)
	-- 针对当前group内变量名为 "144001188" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "144001188", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_188007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"144001188"为1
	if ScriptLib.GetGroupVariableValue(context, "144001188") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_188007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "144001188") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_188008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"complete"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "complete", 144001004) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_188008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001188, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end