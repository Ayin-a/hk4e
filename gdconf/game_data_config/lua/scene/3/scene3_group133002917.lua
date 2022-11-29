-- 基础信息
local base_info = {
	group_id = 133002917
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
	{ config_id = 917001, gadget_id = 70710239, pos = { x = 1163.805, y = 387.524, z = -1010.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 917002, gadget_id = 70360102, pos = { x = 1163.783, y = 387.393, z = -1010.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 917004, shape = RegionShape.CUBIC, size = { x = 14.000, y = 7.200, z = 1.500 }, pos = { x = 1175.059, y = 407.199, z = -1020.787 }, area_id = 10 },
	{ config_id = 917005, shape = RegionShape.CUBIC, size = { x = 14.000, y = 7.200, z = 1.500 }, pos = { x = 1175.059, y = 407.147, z = -1025.335 }, area_id = 10 },
	{ config_id = 917006, shape = RegionShape.CUBIC, size = { x = 1.500, y = 7.200, z = 10.000 }, pos = { x = 1177.449, y = 407.005, z = -1022.212 }, area_id = 10 },
	{ config_id = 917007, shape = RegionShape.CUBIC, size = { x = 1.500, y = 7.200, z = 10.000 }, pos = { x = 1172.759, y = 407.215, z = -1022.830 }, area_id = 10 },
	{ config_id = 917008, shape = RegionShape.CUBIC, size = { x = 30.900, y = 21.300, z = 22.300 }, pos = { x = 1169.191, y = 395.774, z = -1018.842 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1917003, name = "ANY_GADGET_DIE_917003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_917003", action = "action_EVENT_ANY_GADGET_DIE_917003", trigger_count = 0 },
	{ config_id = 1917004, name = "ENTER_REGION_917004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_917004", action = "action_EVENT_ENTER_REGION_917004", trigger_count = 0 },
	{ config_id = 1917005, name = "ENTER_REGION_917005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_917005", action = "action_EVENT_ENTER_REGION_917005", trigger_count = 0 },
	{ config_id = 1917006, name = "ENTER_REGION_917006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_917006", action = "action_EVENT_ENTER_REGION_917006", trigger_count = 0 },
	{ config_id = 1917007, name = "ENTER_REGION_917007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_917007", action = "action_EVENT_ENTER_REGION_917007", trigger_count = 0 },
	{ config_id = 1917008, name = "ENTER_REGION_917008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_917008", action = "action_EVENT_ENTER_REGION_917008", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 917001 },
		regions = { 917004, 917005, 917006, 917007, 917008 },
		triggers = { "ENTER_REGION_917004", "ENTER_REGION_917005", "ENTER_REGION_917006", "ENTER_REGION_917007", "ENTER_REGION_917008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 917002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_917003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_917003(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133002917}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_917003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_917004(context, evt)
	if evt.param1 ~= 917004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_917004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_917005(context, evt)
	if evt.param1 ~= 917005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_917005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_917006(context, evt)
	if evt.param1 ~= 917006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_917006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_917007(context, evt)
	if evt.param1 ~= 917007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_917007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_917008(context, evt)
	if evt.param1 ~= 917008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_917008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end