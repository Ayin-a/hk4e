-- 基础信息
local base_info = {
	group_id = 144004107
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
	-- 144001142
	{ config_id = 107001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 198.278, y = 193.846, z = 365.692 }, area_id = 102 },
	-- 144001145
	{ config_id = 107002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 132.326, y = 124.544, z = 285.749 }, area_id = 102 },
	-- 144001147
	{ config_id = 107003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 154.108, y = 150.765, z = 459.658 }, area_id = 102 },
	-- 144001151
	{ config_id = 107004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 340.924, y = 119.624, z = 448.499 }, area_id = 102 },
	-- 144002068
	{ config_id = 107005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 412.615, y = 194.195, z = -631.162 }, area_id = 101 },
	-- 144002081
	{ config_id = 107006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 358.566, y = 120.039, z = -535.098 }, area_id = 101 },
	-- 144004054
	{ config_id = 107007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -64.476, y = 120.461, z = -811.461 }, area_id = 100 },
	-- 144004056
	{ config_id = 107008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -703.076, y = 121.465, z = -91.584 }, area_id = 103 },
	-- 144004081
	{ config_id = 107009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -789.356, y = 185.511, z = 20.969 }, area_id = 103 },
	-- 144004090
	{ config_id = 107010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -398.097, y = 124.504, z = -564.662 }, area_id = 100 },
	-- 144004091
	{ config_id = 107011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -496.221, y = 121.410, z = -738.705 }, area_id = 100 },
	-- 144002041
	{ config_id = 107012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 446.047, y = 120.104, z = -355.361 }, area_id = 101 },
	-- 144002078
	{ config_id = 107013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 458.388, y = 120.919, z = -721.806 }, area_id = 101 },
	-- 144002079
	{ config_id = 107014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 490.509, y = 132.130, z = -402.312 }, area_id = 101 },
	-- 144002080
	{ config_id = 107015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 543.792, y = 128.212, z = -574.169 }, area_id = 101 },
	-- 144003048
	{ config_id = 107016, shape = RegionShape.SPHERE, radius = 5, pos = { x = -690.940, y = 193.881, z = 41.050 }, area_id = 103 },
	-- 144002069
	{ config_id = 107017, shape = RegionShape.SPHERE, radius = 5, pos = { x = 369.700, y = 120.599, z = -623.767 }, area_id = 101 }
}

-- 触发器
triggers = {
	-- 144001142
	{ config_id = 1107001, name = "ENTER_REGION_107001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107001", action = "action_EVENT_ENTER_REGION_107001" },
	-- 144001145
	{ config_id = 1107002, name = "ENTER_REGION_107002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107002", action = "action_EVENT_ENTER_REGION_107002" },
	-- 144001147
	{ config_id = 1107003, name = "ENTER_REGION_107003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107003", action = "action_EVENT_ENTER_REGION_107003" },
	-- 144001151
	{ config_id = 1107004, name = "ENTER_REGION_107004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107004", action = "action_EVENT_ENTER_REGION_107004" },
	-- 144002068
	{ config_id = 1107005, name = "ENTER_REGION_107005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107005", action = "action_EVENT_ENTER_REGION_107005" },
	-- 144002081
	{ config_id = 1107006, name = "ENTER_REGION_107006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107006", action = "action_EVENT_ENTER_REGION_107006" },
	-- 144004054
	{ config_id = 1107007, name = "ENTER_REGION_107007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107007", action = "action_EVENT_ENTER_REGION_107007" },
	-- 144004056
	{ config_id = 1107008, name = "ENTER_REGION_107008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107008", action = "action_EVENT_ENTER_REGION_107008" },
	-- 144004081
	{ config_id = 1107009, name = "ENTER_REGION_107009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107009", action = "action_EVENT_ENTER_REGION_107009" },
	-- 144004090
	{ config_id = 1107010, name = "ENTER_REGION_107010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107010", action = "action_EVENT_ENTER_REGION_107010" },
	-- 144004091
	{ config_id = 1107011, name = "ENTER_REGION_107011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107011", action = "action_EVENT_ENTER_REGION_107011" },
	-- 144002041
	{ config_id = 1107012, name = "ENTER_REGION_107012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107012", action = "action_EVENT_ENTER_REGION_107012" },
	-- 144002078
	{ config_id = 1107013, name = "ENTER_REGION_107013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107013", action = "action_EVENT_ENTER_REGION_107013" },
	-- 144002079
	{ config_id = 1107014, name = "ENTER_REGION_107014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107014", action = "action_EVENT_ENTER_REGION_107014" },
	-- 144002080
	{ config_id = 1107015, name = "ENTER_REGION_107015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107015", action = "action_EVENT_ENTER_REGION_107015" },
	-- 144003048
	{ config_id = 1107016, name = "ENTER_REGION_107016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107016", action = "action_EVENT_ENTER_REGION_107016" },
	-- 144002069
	{ config_id = 1107017, name = "ENTER_REGION_107017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107017", action = "action_EVENT_ENTER_REGION_107017" }
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
		regions = { 107001, 107002, 107003, 107004, 107005, 107006, 107007, 107008, 107009, 107010, 107011, 107012, 107013, 107014, 107015, 107016, 107017 },
		triggers = { "ENTER_REGION_107001", "ENTER_REGION_107002", "ENTER_REGION_107003", "ENTER_REGION_107004", "ENTER_REGION_107005", "ENTER_REGION_107006", "ENTER_REGION_107007", "ENTER_REGION_107008", "ENTER_REGION_107009", "ENTER_REGION_107010", "ENTER_REGION_107011", "ENTER_REGION_107012", "ENTER_REGION_107013", "ENTER_REGION_107014", "ENTER_REGION_107015", "ENTER_REGION_107016", "ENTER_REGION_107017" },
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
function condition_EVENT_ENTER_REGION_107001(context, evt)
	if evt.param1 ~= 107001 then return false end
	
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
function action_EVENT_ENTER_REGION_107001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107002(context, evt)
	if evt.param1 ~= 107002 then return false end
	
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
function action_EVENT_ENTER_REGION_107002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107003(context, evt)
	if evt.param1 ~= 107003 then return false end
	
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
function action_EVENT_ENTER_REGION_107003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107004(context, evt)
	if evt.param1 ~= 107004 then return false end
	
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
function action_EVENT_ENTER_REGION_107004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107005(context, evt)
	if evt.param1 ~= 107005 then return false end
	
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
function action_EVENT_ENTER_REGION_107005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107006(context, evt)
	if evt.param1 ~= 107006 then return false end
	
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
function action_EVENT_ENTER_REGION_107006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107007(context, evt)
	if evt.param1 ~= 107007 then return false end
	
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
function action_EVENT_ENTER_REGION_107007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107008(context, evt)
	if evt.param1 ~= 107008 then return false end
	
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
function action_EVENT_ENTER_REGION_107008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107009(context, evt)
	if evt.param1 ~= 107009 then return false end
	
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
function action_EVENT_ENTER_REGION_107009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107010(context, evt)
	if evt.param1 ~= 107010 then return false end
	
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
function action_EVENT_ENTER_REGION_107010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107011(context, evt)
	if evt.param1 ~= 107011 then return false end
	
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
function action_EVENT_ENTER_REGION_107011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107012(context, evt)
	if evt.param1 ~= 107012 then return false end
	
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
function action_EVENT_ENTER_REGION_107012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107013(context, evt)
	if evt.param1 ~= 107013 then return false end
	
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
function action_EVENT_ENTER_REGION_107013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107014(context, evt)
	if evt.param1 ~= 107014 then return false end
	
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
function action_EVENT_ENTER_REGION_107014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107015(context, evt)
	if evt.param1 ~= 107015 then return false end
	
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
function action_EVENT_ENTER_REGION_107015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107016(context, evt)
	if evt.param1 ~= 107016 then return false end
	
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
function action_EVENT_ENTER_REGION_107016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107017(context, evt)
	if evt.param1 ~= 107017 then return false end
	
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
function action_EVENT_ENTER_REGION_107017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasTriggeredTutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggeredTutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end