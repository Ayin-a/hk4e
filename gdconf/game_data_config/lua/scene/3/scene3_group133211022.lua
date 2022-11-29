-- 基础信息
local base_info = {
	group_id = 133211022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 25080101, pos = { x = -3974.701, y = 200.211, z = -1079.896 }, rot = { x = 0.000, y = 209.331, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 },
	{ config_id = 22002, monster_id = 25010201, pos = { x = -3972.380, y = 200.295, z = -1091.435 }, rot = { x = 0.000, y = 276.575, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 17 },
	{ config_id = 22003, monster_id = 25010201, pos = { x = -3973.045, y = 200.243, z = -1092.526 }, rot = { x = 0.000, y = 299.716, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 17 },
	{ config_id = 22004, monster_id = 25080101, pos = { x = -3974.233, y = 200.196, z = -1082.493 }, rot = { x = 0.000, y = 286.513, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 },
	{ config_id = 22007, monster_id = 25080201, pos = { x = -3974.102, y = 200.205, z = -1090.688 }, rot = { x = 0.000, y = 116.373, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 },
	{ config_id = 22008, monster_id = 25080201, pos = { x = -3976.166, y = 200.169, z = -1081.376 }, rot = { x = 0.000, y = 77.458, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 22005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3971.875, y = 200.235, z = -1085.091 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1022005, name = "ENTER_REGION_22005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22005", action = "action_EVENT_ENTER_REGION_22005", trigger_count = 0 },
	{ config_id = 1022006, name = "ANY_MONSTER_DIE_22006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22006", action = "action_EVENT_ANY_MONSTER_DIE_22006", trigger_count = 0 }
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
		monsters = { 22001, 22002, 22003, 22004, 22007, 22008 },
		gadgets = { },
		regions = { 22005 },
		triggers = { "ENTER_REGION_22005", "ANY_MONSTER_DIE_22006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_22005(context, evt)
	if evt.param1 ~= 22005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13321102201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13321102202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end