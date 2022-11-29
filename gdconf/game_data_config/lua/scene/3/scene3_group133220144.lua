-- 基础信息
local base_info = {
	group_id = 133220144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144002, monster_id = 25010301, pos = { x = -3159.170, y = 200.313, z = -4378.011 }, rot = { x = 0.000, y = 55.894, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9007, area_id = 11 },
	{ config_id = 144003, monster_id = 25010601, pos = { x = -3152.949, y = 201.244, z = -4380.479 }, rot = { x = 0.000, y = 325.092, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9007, area_id = 11 },
	{ config_id = 144004, monster_id = 25070101, pos = { x = -3154.253, y = 200.476, z = -4374.571 }, rot = { x = 0.000, y = 196.869, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 11 },
	{ config_id = 144005, monster_id = 25030201, pos = { x = -3157.744, y = 200.615, z = -4380.891 }, rot = { x = 0.000, y = 36.877, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 144006, monster_id = 25020201, pos = { x = -3160.878, y = 200.511, z = -4382.044 }, rot = { x = 0.000, y = 69.814, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 144007, monster_id = 25020201, pos = { x = -3156.092, y = 201.306, z = -4385.450 }, rot = { x = 0.000, y = 25.647, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 144008, monster_id = 25030301, pos = { x = -3156.368, y = 200.858, z = -4381.716 }, rot = { x = 0.000, y = 32.521, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 144001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3151.856, y = 201.063, z = -4367.532 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1144001, name = "ENTER_REGION_144001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_144001", action = "action_EVENT_ENTER_REGION_144001" },
	{ config_id = 1144009, name = "ANY_MONSTER_DIE_144009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144009", action = "action_EVENT_ANY_MONSTER_DIE_144009" },
	{ config_id = 1144010, name = "ANY_MONSTER_DIE_144010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144010", action = "action_EVENT_ANY_MONSTER_DIE_144010" }
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
		monsters = { 144002, 144003, 144004 },
		gadgets = { },
		regions = { 144001 },
		triggers = { "ENTER_REGION_144001", "ANY_MONSTER_DIE_144009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 144005, 144006, 144007, 144008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_144001(context, evt)
	if evt.param1 ~= 144001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_144001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201503") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end