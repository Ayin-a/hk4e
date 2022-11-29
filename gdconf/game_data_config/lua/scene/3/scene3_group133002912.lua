-- 基础信息
local base_info = {
	group_id = 133002912
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
	{ config_id = 912002, gadget_id = 70360102, pos = { x = 946.359, y = 365.031, z = -689.903 }, rot = { x = 0.000, y = 100.300, z = 357.035 }, level = 1, area_id = 10 },
	{ config_id = 912003, gadget_id = 70710236, pos = { x = 945.234, y = 364.925, z = -690.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 912014, gadget_id = 70710234, pos = { x = 944.569, y = 364.915, z = -688.383 }, rot = { x = 0.000, y = 281.100, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 912015, gadget_id = 70710234, pos = { x = 945.409, y = 364.933, z = -689.145 }, rot = { x = 0.000, y = 261.500, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 912016, gadget_id = 70710234, pos = { x = 941.419, y = 365.005, z = -690.002 }, rot = { x = 0.000, y = 250.400, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 912017, gadget_id = 70710234, pos = { x = 930.262, y = 367.579, z = -691.001 }, rot = { x = 0.000, y = 248.400, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 912018, gadget_id = 70710234, pos = { x = 928.918, y = 367.950, z = -690.784 }, rot = { x = 0.000, y = 277.900, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 912019, gadget_id = 70710234, pos = { x = 923.696, y = 369.996, z = -692.192 }, rot = { x = 0.000, y = 258.200, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 912010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 938.865, y = 365.402, z = -690.540 }, area_id = 10 },
	{ config_id = 912021, shape = RegionShape.SPHERE, radius = 6.1, pos = { x = 926.799, y = 370.490, z = -694.215 }, area_id = 10 },
	{ config_id = 912022, shape = RegionShape.SPHERE, radius = 13.3, pos = { x = 915.626, y = 375.183, z = -698.115 }, area_id = 10 },
	{ config_id = 912023, shape = RegionShape.SPHERE, radius = 8, pos = { x = 946.106, y = 367.640, z = -689.967 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1912004, name = "ANY_GADGET_DIE_912004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_912004", action = "action_EVENT_ANY_GADGET_DIE_912004", trigger_count = 0 },
	{ config_id = 1912010, name = "ENTER_REGION_912010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_912010", action = "action_EVENT_ENTER_REGION_912010", trigger_count = 0 },
	{ config_id = 1912021, name = "ENTER_REGION_912021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_912021", action = "action_EVENT_ENTER_REGION_912021", trigger_count = 0 },
	{ config_id = 1912022, name = "ENTER_REGION_912022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_912022", action = "action_EVENT_ENTER_REGION_912022", trigger_count = 0 },
	{ config_id = 1912023, name = "ENTER_REGION_912023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_912023", action = "action_EVENT_ENTER_REGION_912023", trigger_count = 0 }
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
	suite = 5,
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
		gadgets = { 912014, 912015, 912016, 912017, 912018, 912019 },
		regions = { 912010, 912021, 912022, 912023 },
		triggers = { "ENTER_REGION_912010", "ENTER_REGION_912021", "ENTER_REGION_912022", "ENTER_REGION_912023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 正常回收_雪堆可交互,
		monsters = { },
		gadgets = { 912002, 912003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_912004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = 正常回收_交互后雪堆和点消失,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_GADGET_DIE_912004(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_912004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133002912, EntityType.GADGET, 912003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330291299") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_912010(context, evt)
	if evt.param1 ~= 912010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_912010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_912021(context, evt)
	if evt.param1 ~= 912021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_912021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_912022(context, evt)
	if evt.param1 ~= 912022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_912022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291204") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_912023(context, evt)
	if evt.param1 ~= 912023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_912023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291299") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end