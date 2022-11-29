-- 基础信息
local base_info = {
	group_id = 133002287
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1034, monster_id = 20010501, pos = { x = 1820.980, y = 236.297, z = -835.113 }, rot = { x = 0.000, y = 121.205, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1036, monster_id = 20010501, pos = { x = 1827.253, y = 235.171, z = -840.743 }, rot = { x = 0.000, y = 121.205, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1037, monster_id = 20010501, pos = { x = 1829.914, y = 236.156, z = -835.075 }, rot = { x = 0.000, y = 244.640, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1038, monster_id = 20010501, pos = { x = 1822.675, y = 235.421, z = -838.737 }, rot = { x = 0.000, y = 186.964, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 391, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1826.041, y = 235.486, z = -837.743 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000391, name = "ENTER_REGION_391", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_391", action = "action_EVENT_ENTER_REGION_391" },
	{ config_id = 1000392, name = "ANY_MONSTER_DIE_392", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_392", action = "action_EVENT_ANY_MONSTER_DIE_392" }
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
		-- description = suite_2,
		monsters = { 1034, 1036, 1037, 1038 },
		gadgets = { },
		regions = { 391 },
		triggers = { "ENTER_REGION_391", "ANY_MONSTER_DIE_392" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_391(context, evt)
	if evt.param1 ~= 391 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_391(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_392(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_392(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end