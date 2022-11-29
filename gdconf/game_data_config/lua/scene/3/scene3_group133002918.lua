-- 基础信息
local base_info = {
	group_id = 133002918
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 918004, monster_id = 21010201, pos = { x = 954.922, y = 341.421, z = -624.438 }, rot = { x = 0.000, y = 288.800, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 918005, monster_id = 21010201, pos = { x = 954.507, y = 341.733, z = -619.578 }, rot = { x = 0.000, y = 244.080, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 918006, monster_id = 21011401, pos = { x = 952.450, y = 341.552, z = -621.208 }, rot = { x = 0.000, y = 259.400, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 918007, monster_id = 21011401, pos = { x = 951.506, y = 341.459, z = -621.994 }, rot = { x = 0.000, y = 285.800, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 918001, gadget_id = 70360102, pos = { x = 955.154, y = 341.526, z = -621.863 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 918002, gadget_id = 70710238, pos = { x = 953.799, y = 341.552, z = -622.608 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 918009, shape = RegionShape.SPHERE, radius = 9, pos = { x = 952.733, y = 341.544, z = -622.367 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1918003, name = "ANY_GADGET_DIE_918003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_918003", action = "action_EVENT_ANY_GADGET_DIE_918003", trigger_count = 0 },
	{ config_id = 1918008, name = "ANY_MONSTER_DIE_918008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_918008", action = "action_EVENT_ANY_MONSTER_DIE_918008", trigger_count = 0 },
	{ config_id = 1918009, name = "ENTER_REGION_918009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_918009", action = "action_EVENT_ENTER_REGION_918009", trigger_count = 0 }
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
		-- description = 正常回收_雪堆存在且可以被交互,
		monsters = { },
		gadgets = { 918001, 918002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_918003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 正常回收_雪堆被收回,
		monsters = { },
		gadgets = { },
		regions = { 918009 },
		triggers = { "ENTER_REGION_918009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = 异常事件_一群qq人跳舞,
		monsters = { 918004, 918005, 918006, 918007 },
		gadgets = { },
		regions = { 918009 },
		triggers = { "ANY_MONSTER_DIE_918008", "ENTER_REGION_918009" },
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
function condition_EVENT_ANY_GADGET_DIE_918003(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_918003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330291299") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133002918, EntityType.GADGET, 918002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_918008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002918) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_918008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002918") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_918009(context, evt)
	if evt.param1 ~= 918009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_918009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end