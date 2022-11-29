-- 基础信息
local base_info = {
	group_id = 133220258
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 258001, monster_id = 25070101, pos = { x = -2507.471, y = 200.142, z = -4650.214 }, rot = { x = 0.000, y = 74.660, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 258002, monster_id = 25020201, pos = { x = -2509.481, y = 200.002, z = -4653.164 }, rot = { x = 0.000, y = 62.127, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 258003, monster_id = 25020201, pos = { x = -2509.902, y = 200.232, z = -4647.762 }, rot = { x = 0.000, y = 83.293, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 258007, monster_id = 25010701, pos = { x = -2496.833, y = 200.156, z = -4649.612 }, rot = { x = 0.000, y = 292.479, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 258008, monster_id = 25010601, pos = { x = -2494.077, y = 200.223, z = -4647.669 }, rot = { x = 0.000, y = 302.205, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 258009, monster_id = 25010601, pos = { x = -2496.409, y = 200.042, z = -4652.530 }, rot = { x = 0.000, y = 310.225, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 258004, gadget_id = 70300104, pos = { x = -2513.959, y = 200.155, z = -4650.947 }, rot = { x = 0.000, y = 5.990, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 258005, gadget_id = 70300094, pos = { x = -2514.663, y = 200.132, z = -4651.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 258006, gadget_id = 70300094, pos = { x = -2513.244, y = 200.117, z = -4651.631 }, rot = { x = 0.000, y = 177.045, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 258012, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2507.147, y = 200.186, z = -4646.262 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1258010, name = "ANY_MONSTER_DIE_258010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_258010", action = "action_EVENT_ANY_MONSTER_DIE_258010" },
	{ config_id = 1258011, name = "ANY_MONSTER_DIE_258011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_258011", action = "action_EVENT_ANY_MONSTER_DIE_258011" },
	{ config_id = 1258012, name = "ENTER_REGION_258012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_258012", action = "action_EVENT_ENTER_REGION_258012" }
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
		monsters = { 258001, 258002, 258003 },
		gadgets = { 258004, 258005, 258006 },
		regions = { 258012 },
		triggers = { "ANY_MONSTER_DIE_258010", "ENTER_REGION_258012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 258007, 258008, 258009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_258011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_258010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_258010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220258, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_258011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_258011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2203405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_258012(context, evt)
	if evt.param1 ~= 258012 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_258012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2203404") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end