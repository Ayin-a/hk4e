-- 基础信息
local base_info = {
	group_id = 133220195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 25010701, pos = { x = -2998.963, y = 207.070, z = -4256.370 }, rot = { x = 0.000, y = 225.264, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9002, area_id = 11 },
	{ config_id = 195002, monster_id = 25010701, pos = { x = -3004.886, y = 207.433, z = -4261.719 }, rot = { x = 0.000, y = 37.893, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9002, area_id = 11 },
	{ config_id = 195004, monster_id = 25010201, pos = { x = -3003.258, y = 207.781, z = -4257.976 }, rot = { x = 0.000, y = 152.002, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 195003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3004.771, y = 207.792, z = -4259.781 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1195003, name = "ENTER_REGION_195003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_195003", action = "action_EVENT_ENTER_REGION_195003", trigger_count = 0 },
	{ config_id = 1195008, name = "ANY_MONSTER_DIE_195008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_195008", action = "action_EVENT_ANY_MONSTER_DIE_195008", trigger_count = 0 }
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
		monsters = { 195001, 195002, 195004 },
		gadgets = { },
		regions = { 195003 },
		triggers = { "ENTER_REGION_195003", "ANY_MONSTER_DIE_195008" },
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
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_195003(context, evt)
	if evt.param1 ~= 195003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_195003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322019501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_195008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133220195) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_195008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322019502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end