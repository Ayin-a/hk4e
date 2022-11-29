-- 基础信息
local base_info = {
	group_id = 144004134
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
	-- 浪船锚点-低水位-遗迹岛
	{ config_id = 134001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 577.078, y = 121.508, z = -53.697 }, area_id = 102 },
	-- 浪船锚点-低水位-布丁岛
	{ config_id = 134002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -302.712, y = 119.403, z = -602.132 }, area_id = 100 },
	-- 浪船锚点-低水位-沉船岛
	{ config_id = 134003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 112.468, y = 119.751, z = -725.172 }, area_id = 101 },
	-- 浪船锚点-低水位-双双岛1
	{ config_id = 134004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 306.325, y = 118.997, z = -718.752 }, area_id = 101 },
	-- 浪船锚点-低水位-双双岛2
	{ config_id = 134005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 554.346, y = 120.845, z = -349.581 }, area_id = 101 },
	-- 浪船锚点-低水位-萨满堡垒
	{ config_id = 134006, shape = RegionShape.SPHERE, radius = 10, pos = { x = 637.814, y = 122.242, z = 200.119 }, area_id = 102 },
	-- 浪船锚点-低水位-破破岛1
	{ config_id = 134007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 362.019, y = 119.151, z = 316.954 }, area_id = 102 },
	-- 浪船锚点-低水位-破破岛2
	{ config_id = 134008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 110.581, y = 119.791, z = 392.705 }, area_id = 102 },
	-- 浪船锚点-低水位-可莉岛
	{ config_id = 134009, shape = RegionShape.SPHERE, radius = 10, pos = { x = -295.521, y = 119.851, z = 458.464 }, area_id = 103 },
	-- 浪船锚点-低水位-危危岛
	{ config_id = 134010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -653.920, y = 119.464, z = -68.140 }, area_id = 103 },
	-- 浪船锚点-低水位-魔偶剑鬼平台
	{ config_id = 134011, shape = RegionShape.SPHERE, radius = 10, pos = { x = 72.173, y = 119.153, z = -230.953 }, area_id = 101 }
}

-- 触发器
triggers = {
	-- 浪船锚点-低水位-遗迹岛
	{ config_id = 1134001, name = "ENTER_REGION_134001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134001", action = "action_EVENT_ENTER_REGION_134001" },
	-- 浪船锚点-低水位-布丁岛
	{ config_id = 1134002, name = "ENTER_REGION_134002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134002", action = "action_EVENT_ENTER_REGION_134002" },
	-- 浪船锚点-低水位-沉船岛
	{ config_id = 1134003, name = "ENTER_REGION_134003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134003", action = "action_EVENT_ENTER_REGION_134003" },
	-- 浪船锚点-低水位-双双岛1
	{ config_id = 1134004, name = "ENTER_REGION_134004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134004", action = "action_EVENT_ENTER_REGION_134004" },
	-- 浪船锚点-低水位-双双岛2
	{ config_id = 1134005, name = "ENTER_REGION_134005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134005", action = "action_EVENT_ENTER_REGION_134005" },
	-- 浪船锚点-低水位-萨满堡垒
	{ config_id = 1134006, name = "ENTER_REGION_134006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134006", action = "action_EVENT_ENTER_REGION_134006" },
	-- 浪船锚点-低水位-破破岛1
	{ config_id = 1134007, name = "ENTER_REGION_134007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134007", action = "action_EVENT_ENTER_REGION_134007" },
	-- 浪船锚点-低水位-破破岛2
	{ config_id = 1134008, name = "ENTER_REGION_134008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134008", action = "action_EVENT_ENTER_REGION_134008" },
	-- 浪船锚点-低水位-可莉岛
	{ config_id = 1134009, name = "ENTER_REGION_134009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134009", action = "action_EVENT_ENTER_REGION_134009" },
	-- 浪船锚点-低水位-危危岛
	{ config_id = 1134010, name = "ENTER_REGION_134010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134010", action = "action_EVENT_ENTER_REGION_134010" },
	-- 浪船锚点-低水位-魔偶剑鬼平台
	{ config_id = 1134011, name = "ENTER_REGION_134011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134011", action = "action_EVENT_ENTER_REGION_134011" }
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
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 134001, 134002, 134003, 134004, 134005, 134006, 134007, 134008, 134009, 134010, 134011 },
		triggers = { "ENTER_REGION_134001", "ENTER_REGION_134002", "ENTER_REGION_134003", "ENTER_REGION_134004", "ENTER_REGION_134005", "ENTER_REGION_134006", "ENTER_REGION_134007", "ENTER_REGION_134008", "ENTER_REGION_134009", "ENTER_REGION_134010", "ENTER_REGION_134011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_134001(context, evt)
	if evt.param1 ~= 134001 then return false end
	
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
function action_EVENT_ENTER_REGION_134001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134002(context, evt)
	if evt.param1 ~= 134002 then return false end
	
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
function action_EVENT_ENTER_REGION_134002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134003(context, evt)
	if evt.param1 ~= 134003 then return false end
	
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
function action_EVENT_ENTER_REGION_134003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134004(context, evt)
	if evt.param1 ~= 134004 then return false end
	
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
function action_EVENT_ENTER_REGION_134004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134005(context, evt)
	if evt.param1 ~= 134005 then return false end
	
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
function action_EVENT_ENTER_REGION_134005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134006(context, evt)
	if evt.param1 ~= 134006 then return false end
	
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
function action_EVENT_ENTER_REGION_134006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134007(context, evt)
	if evt.param1 ~= 134007 then return false end
	
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
function action_EVENT_ENTER_REGION_134007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134008(context, evt)
	if evt.param1 ~= 134008 then return false end
	
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
function action_EVENT_ENTER_REGION_134008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134009(context, evt)
	if evt.param1 ~= 134009 then return false end
	
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
function action_EVENT_ENTER_REGION_134009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134010(context, evt)
	if evt.param1 ~= 134010 then return false end
	
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
function action_EVENT_ENTER_REGION_134010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134011(context, evt)
	if evt.param1 ~= 134011 then return false end
	
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
function action_EVENT_ENTER_REGION_134011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish7901701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end