-- 基础信息
local base_info = {
	group_id = 133220259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 259001, monster_id = 25030301, pos = { x = -2970.832, y = 201.248, z = -4115.372 }, rot = { x = 0.000, y = 351.117, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 259002, monster_id = 25070101, pos = { x = -2967.553, y = 200.973, z = -4112.703 }, rot = { x = 0.000, y = 321.809, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 259003, monster_id = 25010501, pos = { x = -2966.824, y = 200.979, z = -4115.588 }, rot = { x = 0.000, y = 323.898, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 259004, monster_id = 25010301, pos = { x = -2968.535, y = 201.092, z = -4117.006 }, rot = { x = 0.000, y = 337.941, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 259005, gadget_id = 70300094, pos = { x = -2970.868, y = 201.393, z = -4118.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 259006, gadget_id = 70300094, pos = { x = -2970.806, y = 201.353, z = -4117.592 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 259007, gadget_id = 70300092, pos = { x = -2966.303, y = 201.271, z = -4117.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 259008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2968.353, y = 201.079, z = -4116.063 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1259008, name = "ENTER_REGION_259008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259008", action = "action_EVENT_ENTER_REGION_259008" },
	{ config_id = 1259009, name = "ANY_MONSTER_DIE_259009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_259009", action = "action_EVENT_ANY_MONSTER_DIE_259009" }
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
		monsters = { 259001, 259002, 259003, 259004 },
		gadgets = { 259005, 259006, 259007 },
		regions = { 259008 },
		triggers = { "ENTER_REGION_259008", "ANY_MONSTER_DIE_259009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_259008(context, evt)
	if evt.param1 ~= 259008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2203406") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_259009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_259009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2203407") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end