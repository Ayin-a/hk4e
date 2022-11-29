-- 基础信息
local base_info = {
	group_id = 133001088
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
	{ config_id = 1715, gadget_id = 70800004, pos = { x = 1374.300, y = 235.540, z = -1569.100 }, rot = { x = 0.000, y = 71.930, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 1775, gadget_id = 70800008, pos = { x = 1374.300, y = 235.140, z = -1569.100 }, rot = { x = 0.000, y = 169.074, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 1776, gadget_id = 70800009, pos = { x = 1374.300, y = 234.980, z = -1569.100 }, rot = { x = 0.000, y = 55.499, z = 0.000 }, level = 15, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 438, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1574.870, y = 248.856, z = -1620.645 }, area_id = 2 },
	{ config_id = 439, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1269.628, y = 259.065, z = -1690.530 }, area_id = 2 },
	{ config_id = 440, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1239.927, y = 255.248, z = -1469.177 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1000387, name = "ANY_GADGET_DIE_387", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_387", action = "action_EVENT_ANY_GADGET_DIE_387" },
	{ config_id = 1000388, name = "ANY_GADGET_DIE_388", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_388", action = "action_EVENT_ANY_GADGET_DIE_388" },
	{ config_id = 1000389, name = "ANY_GADGET_DIE_389", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_389", action = "action_EVENT_ANY_GADGET_DIE_389" },
	{ config_id = 1000390, name = "VARIABLE_CHANGE_390", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_390", action = "action_EVENT_VARIABLE_CHANGE_390" },
	{ config_id = 1000391, name = "TIMER_EVENT_391", event = EventType.EVENT_TIMER_EVENT, source = "questfinish", condition = "", action = "action_EVENT_TIMER_EVENT_391", trigger_count = 0 },
	{ config_id = 1000438, name = "ENTER_REGION_438", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_438", action = "action_EVENT_ENTER_REGION_438" },
	{ config_id = 1000439, name = "ENTER_REGION_439", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_439", action = "action_EVENT_ENTER_REGION_439" },
	{ config_id = 1000440, name = "ENTER_REGION_440", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_440", action = "action_EVENT_ENTER_REGION_440" },
	{ config_id = 1088001, name = "GROUP_LOAD_88001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_88001", action = "action_EVENT_GROUP_LOAD_88001", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false },
	{ config_id = 2, name = "JZbegin", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 1715, 1775, 1776 },
		regions = { 438, 439, 440 },
		triggers = { "ANY_GADGET_DIE_387", "ANY_GADGET_DIE_388", "ANY_GADGET_DIE_389", "VARIABLE_CHANGE_390", "TIMER_EVENT_391", "ENTER_REGION_438", "ENTER_REGION_439", "ENTER_REGION_440", "GROUP_LOAD_88001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_387(context, evt)
	if 1715 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_387(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300108801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_388(context, evt)
	if 1775 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_388(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300108801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_389(context, evt)
	if 1776 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_389(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300108801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390(context, evt)
	-- 延迟5秒后,向groupId为：133001088的对象,请求一次调用,并将string参数："questfinish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001088, "questfinish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1.4秒后,向groupId为：133001109的对象,请求一次调用,并将string参数："chest" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001109, "chest", 1.4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_391(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "jianzhong") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_438(context, evt)
	if evt.param1 ~= 438 then return false end
	
	-- 判断变量"JZbegin"为0
	if ScriptLib.GetGroupVariableValue(context, "JZbegin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_438(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "JZ") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "JZbegin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "JZbegin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_439(context, evt)
	if evt.param1 ~= 439 then return false end
	
	-- 判断变量"JZbegin"为0
	if ScriptLib.GetGroupVariableValue(context, "JZbegin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_439(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "JZ") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "JZbegin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "JZbegin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_440(context, evt)
	if evt.param1 ~= 440 then return false end
	
	-- 判断变量"JZbegin"为0
	if ScriptLib.GetGroupVariableValue(context, "JZbegin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_440(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "JZ") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "JZbegin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "JZbegin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_88001(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001088}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_88001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "jianzhong") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end