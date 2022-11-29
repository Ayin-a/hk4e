-- 基础信息
local base_info = {
	group_id = 133105910
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
	{ config_id = 910001, gadget_id = 70710234, pos = { x = 945.093, y = 364.929, z = -689.083 }, rot = { x = 0.000, y = 175.520, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 910002, gadget_id = 70710234, pos = { x = 946.309, y = 366.153, z = -692.764 }, rot = { x = 0.000, y = 168.530, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 910003, gadget_id = 70710234, pos = { x = 947.025, y = 365.047, z = -697.048 }, rot = { x = 0.000, y = 177.900, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 910004, gadget_id = 70710234, pos = { x = 946.907, y = 365.375, z = -701.407 }, rot = { x = 0.000, y = 184.600, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 910005, gadget_id = 70710234, pos = { x = 945.546, y = 365.253, z = -700.841 }, rot = { x = 0.000, y = 200.700, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 910006, gadget_id = 70710234, pos = { x = 946.675, y = 365.148, z = -699.197 }, rot = { x = 0.000, y = 192.600, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 910011, gadget_id = 70360102, pos = { x = 946.359, y = 365.031, z = -689.903 }, rot = { x = 0.000, y = 100.300, z = 357.035 }, level = 1, area_id = 10 },
	{ config_id = 910012, gadget_id = 70710236, pos = { x = 945.234, y = 364.925, z = -690.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 910008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 945.895, y = 365.139, z = -703.668 }, area_id = 10 },
	{ config_id = 910010, shape = RegionShape.SPHERE, radius = 6, pos = { x = 943.286, y = 364.940, z = -688.594 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1910008, name = "ENTER_REGION_910008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_910008", action = "action_EVENT_ENTER_REGION_910008", trigger_count = 0 },
	{ config_id = 1910010, name = "ENTER_REGION_910010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_910010", action = "action_EVENT_ENTER_REGION_910010", trigger_count = 0 },
	{ config_id = 1910013, name = "ANY_GADGET_DIE_910013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_910013", action = "action_EVENT_ANY_GADGET_DIE_910013", trigger_count = 0 }
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
		gadgets = { 910001, 910002, 910003, 910004, 910005, 910006 },
		regions = { 910008, 910010 },
		triggers = { "ENTER_REGION_910008", "ENTER_REGION_910010" },
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
		-- description = ,
		monsters = { },
		gadgets = { 910011, 910012 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_910013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_910008(context, evt)
	if evt.param1 ~= 910008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_910008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_910010(context, evt)
	if evt.param1 ~= 910010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_910010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291299") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_910013(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_910013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133105910, EntityType.GADGET, 910012 ) then
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