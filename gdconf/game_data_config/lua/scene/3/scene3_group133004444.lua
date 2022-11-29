-- 基础信息
local base_info = {
	group_id = 133004444
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
	{ config_id = 444001, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2299.366, y = 213.990, z = -919.119 }, area_id = 1 },
	{ config_id = 444002, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2244.710, y = 215.990, z = -889.195 }, area_id = 1 },
	{ config_id = 444003, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2247.491, y = 213.990, z = -904.581 }, area_id = 1 },
	{ config_id = 444004, shape = RegionShape.SPHERE, radius = 4, pos = { x = 2186.729, y = 209.188, z = -1058.604 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1444001, name = "ENTER_REGION_444001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_444001", action = "action_EVENT_ENTER_REGION_444001" },
	{ config_id = 1444002, name = "ENTER_REGION_444002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_444002", action = "action_EVENT_ENTER_REGION_444002" },
	{ config_id = 1444003, name = "ENTER_REGION_444003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_444003", action = "action_EVENT_ENTER_REGION_444003" },
	{ config_id = 1444004, name = "ENTER_REGION_444004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_444004", action = "action_EVENT_ENTER_REGION_444004" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 酒馆,
		monsters = { },
		gadgets = { },
		regions = { 444001 },
		triggers = { "ENTER_REGION_444001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 猎鹿人,
		monsters = { },
		gadgets = { },
		regions = { 444002 },
		triggers = { "ENTER_REGION_444002" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 纪念品商店,
		monsters = { },
		gadgets = { },
		regions = { 444003 },
		triggers = { "ENTER_REGION_444003" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = BE出城,
		monsters = { },
		gadgets = { },
		regions = { 444004 },
		triggers = { "ENTER_REGION_444004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_444001(context, evt)
	if evt.param1 ~= 444001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_444001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044441") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_444002(context, evt)
	if evt.param1 ~= 444002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_444002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044442") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_444003(context, evt)
	if evt.param1 ~= 444003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_444003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044443") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_444004(context, evt)
	if evt.param1 ~= 444004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_444004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044444") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end