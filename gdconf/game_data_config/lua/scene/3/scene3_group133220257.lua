-- 基础信息
local base_info = {
	group_id = 133220257
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 257001, monster_id = 25010201, pos = { x = -3108.101, y = 200.208, z = -4624.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 257002, monster_id = 25010201, pos = { x = -3102.881, y = 201.119, z = -4625.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 257003, monster_id = 25030201, pos = { x = -3104.322, y = 200.756, z = -4622.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 257004, monster_id = 25070101, pos = { x = -3105.590, y = 201.066, z = -4627.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 257005, gadget_id = 70300105, pos = { x = -3114.591, y = 200.502, z = -4632.863 }, rot = { x = 0.000, y = 311.889, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 257006, gadget_id = 70300092, pos = { x = -3111.763, y = 200.610, z = -4632.261 }, rot = { x = 0.000, y = 268.802, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 257007, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3109.601, y = 201.164, z = -4629.636 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1257007, name = "ENTER_REGION_257007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_257007", action = "action_EVENT_ENTER_REGION_257007" },
	{ config_id = 1257008, name = "ANY_MONSTER_DIE_257008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_257008", action = "action_EVENT_ANY_MONSTER_DIE_257008" }
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
		monsters = { 257001, 257002, 257003, 257004 },
		gadgets = { 257005, 257006 },
		regions = { 257007 },
		triggers = { "ENTER_REGION_257007", "ANY_MONSTER_DIE_257008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_257007(context, evt)
	if evt.param1 ~= 257007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_257007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2203402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_257008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_257008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2203403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end