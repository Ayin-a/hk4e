-- 基础信息
local base_info = {
	group_id = 133105909
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 909005, monster_id = 21010201, pos = { x = 952.863, y = 341.587, z = -620.677 }, rot = { x = 0.000, y = 275.560, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 909006, monster_id = 21010201, pos = { x = 951.566, y = 341.459, z = -621.742 }, rot = { x = 0.000, y = 275.560, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 909007, monster_id = 21011401, pos = { x = 955.268, y = 341.742, z = -619.311 }, rot = { x = 0.000, y = 275.560, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 909008, monster_id = 21011401, pos = { x = 954.894, y = 341.411, z = -624.190 }, rot = { x = 0.000, y = 275.560, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 909001, gadget_id = 70360102, pos = { x = 955.248, y = 341.480, z = -621.917 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 909002, gadget_id = 70710238, pos = { x = 953.892, y = 341.566, z = -622.332 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 909004, shape = RegionShape.SPHERE, radius = 9, pos = { x = 952.733, y = 341.544, z = -622.367 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1909003, name = "ANY_GADGET_DIE_909003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_909003", action = "action_EVENT_ANY_GADGET_DIE_909003", trigger_count = 0 },
	{ config_id = 1909004, name = "ENTER_REGION_909004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_909004", action = "action_EVENT_ENTER_REGION_909004", trigger_count = 0 },
	{ config_id = 1909010, name = "ANY_MONSTER_DIE_909010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_909010", action = "action_EVENT_ANY_MONSTER_DIE_909010", trigger_count = 0 }
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
		gadgets = { 909001, 909002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_909003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 909004 },
		triggers = { "ENTER_REGION_909004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 909005, 909006, 909007, 909008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_909010" },
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
function condition_EVENT_ANY_GADGET_DIE_909003(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_909003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330291299") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133105909, EntityType.GADGET, 909002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_909004(context, evt)
	if evt.param1 ~= 909004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_909004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_909010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_909010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002918") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end