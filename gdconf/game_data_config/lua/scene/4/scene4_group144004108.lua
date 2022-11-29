-- 基础信息
local base_info = {
	group_id = 144004108
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
	-- 144001170-YKY
	{ config_id = 108001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 180.212, y = 128.798, z = 347.770 }, area_id = 102 },
	-- 144001171-YKY
	{ config_id = 108002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 238.118, y = 132.507, z = 320.493 }, area_id = 102 },
	-- 144001172-YKY
	{ config_id = 108003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 250.030, y = 119.947, z = 145.939 }, area_id = 102 },
	-- 144001176-YKY
	{ config_id = 108004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 344.944, y = 120.466, z = 139.181 }, area_id = 102 },
	-- 144001177-YKY
	{ config_id = 108005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 174.429, y = 121.134, z = 263.818 }, area_id = 102 },
	-- 144001178-YKY
	{ config_id = 108006, shape = RegionShape.SPHERE, radius = 10, pos = { x = 161.883, y = 121.129, z = 486.252 }, area_id = 102 },
	-- 144002005-LYX
	{ config_id = 108007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 510.138, y = 121.461, z = -53.069 }, area_id = 102 },
	-- 144002042-LCX
	{ config_id = 108008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 392.242, y = 184.816, z = -628.290 }, area_id = 101 },
	-- 144002089-LCX
	{ config_id = 108009, shape = RegionShape.SPHERE, radius = 10, pos = { x = 620.921, y = 132.175, z = -444.854 }, area_id = 101 },
	-- 144002090-LCX
	{ config_id = 108010, shape = RegionShape.SPHERE, radius = 10, pos = { x = 495.913, y = 128.130, z = -455.821 }, area_id = 101 },
	-- 144003053-LCX
	{ config_id = 108011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -524.524, y = 115.987, z = 998.700 }, area_id = 103 },
	-- 144004009-LCX
	{ config_id = 108012, shape = RegionShape.SPHERE, radius = 10, pos = { x = -719.953, y = 123.903, z = -253.525 }, area_id = 103 },
	-- 144004026-LCX
	{ config_id = 108013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -757.199, y = 198.030, z = 29.634 }, area_id = 103 },
	-- 144004061-LCX
	{ config_id = 108014, shape = RegionShape.SPHERE, radius = 10, pos = { x = -703.392, y = 190.730, z = -47.297 }, area_id = 103 },
	-- 144004103-LCX
	{ config_id = 108015, shape = RegionShape.SPHERE, radius = 10, pos = { x = -703.392, y = 190.730, z = -47.297 }, area_id = 103 },
	-- 144004133-LYX
	{ config_id = 108016, shape = RegionShape.SPHERE, radius = 10, pos = { x = -315.877, y = 120.201, z = -721.768 }, area_id = 100 },
	-- 144002101-LYX
	{ config_id = 108017, shape = RegionShape.SPHERE, radius = 10, pos = { x = 87.896, y = 119.667, z = -728.716 }, area_id = 101 }
}

-- 触发器
triggers = {
	-- 144001170-YKY
	{ config_id = 1108001, name = "ENTER_REGION_108001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108001", action = "action_EVENT_ENTER_REGION_108001" },
	-- 144001171-YKY
	{ config_id = 1108002, name = "ENTER_REGION_108002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108002", action = "action_EVENT_ENTER_REGION_108002" },
	-- 144001172-YKY
	{ config_id = 1108003, name = "ENTER_REGION_108003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108003", action = "action_EVENT_ENTER_REGION_108003" },
	-- 144001176-YKY
	{ config_id = 1108004, name = "ENTER_REGION_108004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108004", action = "action_EVENT_ENTER_REGION_108004" },
	-- 144001177-YKY
	{ config_id = 1108005, name = "ENTER_REGION_108005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108005", action = "action_EVENT_ENTER_REGION_108005" },
	-- 144001178-YKY
	{ config_id = 1108006, name = "ENTER_REGION_108006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108006", action = "action_EVENT_ENTER_REGION_108006" },
	-- 144002005-LYX
	{ config_id = 1108007, name = "ENTER_REGION_108007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108007", action = "action_EVENT_ENTER_REGION_108007" },
	-- 144002042-LCX
	{ config_id = 1108008, name = "ENTER_REGION_108008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108008", action = "action_EVENT_ENTER_REGION_108008" },
	-- 144002089-LCX
	{ config_id = 1108009, name = "ENTER_REGION_108009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108009", action = "action_EVENT_ENTER_REGION_108009" },
	-- 144002090-LCX
	{ config_id = 1108010, name = "ENTER_REGION_108010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108010", action = "action_EVENT_ENTER_REGION_108010" },
	-- 144003053-LCX
	{ config_id = 1108011, name = "ENTER_REGION_108011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108011", action = "action_EVENT_ENTER_REGION_108011" },
	-- 144004009-LCX
	{ config_id = 1108012, name = "ENTER_REGION_108012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108012", action = "action_EVENT_ENTER_REGION_108012" },
	-- 144004026-LCX
	{ config_id = 1108013, name = "ENTER_REGION_108013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108013", action = "action_EVENT_ENTER_REGION_108013" },
	-- 144004061-LCX
	{ config_id = 1108014, name = "ENTER_REGION_108014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108014", action = "action_EVENT_ENTER_REGION_108014" },
	-- 144004103-LCX
	{ config_id = 1108015, name = "ENTER_REGION_108015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108015", action = "action_EVENT_ENTER_REGION_108015" },
	-- 144004133-LYX
	{ config_id = 1108016, name = "ENTER_REGION_108016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108016", action = "action_EVENT_ENTER_REGION_108016" },
	-- 144002101-LYX
	{ config_id = 1108017, name = "ENTER_REGION_108017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108017", action = "action_EVENT_ENTER_REGION_108017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasTriggeredTutorial", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { },
		regions = { 108001, 108002, 108003, 108004, 108005, 108006, 108007, 108008, 108009, 108010, 108011, 108012, 108013, 108014, 108015, 108016, 108017 },
		triggers = { "ENTER_REGION_108001", "ENTER_REGION_108002", "ENTER_REGION_108003", "ENTER_REGION_108004", "ENTER_REGION_108005", "ENTER_REGION_108006", "ENTER_REGION_108007", "ENTER_REGION_108008", "ENTER_REGION_108009", "ENTER_REGION_108010", "ENTER_REGION_108011", "ENTER_REGION_108012", "ENTER_REGION_108013", "ENTER_REGION_108014", "ENTER_REGION_108015", "ENTER_REGION_108016", "ENTER_REGION_108017" },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_108001(context, evt)
	if evt.param1 ~= 108001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108002(context, evt)
	if evt.param1 ~= 108002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108003(context, evt)
	if evt.param1 ~= 108003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108004(context, evt)
	if evt.param1 ~= 108004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108005(context, evt)
	if evt.param1 ~= 108005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108006(context, evt)
	if evt.param1 ~= 108006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108007(context, evt)
	if evt.param1 ~= 108007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108008(context, evt)
	if evt.param1 ~= 108008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108009(context, evt)
	if evt.param1 ~= 108009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108010(context, evt)
	if evt.param1 ~= 108010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108011(context, evt)
	if evt.param1 ~= 108011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108012(context, evt)
	if evt.param1 ~= 108012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108013(context, evt)
	if evt.param1 ~= 108013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108014(context, evt)
	if evt.param1 ~= 108014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108015(context, evt)
	if evt.param1 ~= 108015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108016(context, evt)
	if evt.param1 ~= 108016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108017(context, evt)
	if evt.param1 ~= 108017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggeredTutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggeredTutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004108, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end