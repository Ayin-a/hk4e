-- 基础信息
local base_info = {
	group_id = 133002281
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1022, monster_id = 20010801, pos = { x = 1682.321, y = 205.843, z = -408.018 }, rot = { x = 0.000, y = 97.510, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1024, monster_id = 20010801, pos = { x = 1688.199, y = 206.719, z = -399.696 }, rot = { x = 0.000, y = 165.675, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1025, monster_id = 20010801, pos = { x = 1679.540, y = 207.074, z = -402.342 }, rot = { x = 0.000, y = 114.421, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 381, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1686.049, y = 206.416, z = -404.321 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000374, name = "ANY_MONSTER_DIE_374", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_374", action = "action_EVENT_ANY_MONSTER_DIE_374" },
	{ config_id = 1000381, name = "ENTER_REGION_381", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_381", action = "action_EVENT_ENTER_REGION_381" }
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
		monsters = { 1022, 1024, 1025 },
		gadgets = { },
		regions = { 381 },
		triggers = { "ANY_MONSTER_DIE_374", "ENTER_REGION_381" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_374(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_374(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_381(context, evt)
	if evt.param1 ~= 381 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_381(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002281") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end