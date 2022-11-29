-- 基础信息
local base_info = {
	group_id = 133002272
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 995, monster_id = 21010301, pos = { x = 1811.495, y = 234.819, z = -772.236 }, rot = { x = 0.000, y = 223.308, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 996, monster_id = 21010201, pos = { x = 1808.176, y = 235.212, z = -776.582 }, rot = { x = 0.000, y = 5.761, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 997, monster_id = 21020101, pos = { x = 1813.121, y = 235.594, z = -767.107 }, rot = { x = 0.000, y = 195.403, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 401, area_id = 3 },
	{ config_id = 998, monster_id = 21030101, pos = { x = 1799.124, y = 237.459, z = -775.782 }, rot = { x = 0.000, y = 82.011, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 3 },
	{ config_id = 999, monster_id = 21010901, pos = { x = 1810.655, y = 235.902, z = -766.466 }, rot = { x = 0.000, y = 176.451, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2282, gadget_id = 70300083, pos = { x = 1807.338, y = 235.380, z = -770.985 }, rot = { x = 359.863, y = 322.372, z = 357.182 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 353, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1807.538, y = 236.169, z = -771.502 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000353, name = "ENTER_REGION_353", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_353", action = "action_EVENT_ENTER_REGION_353" },
	{ config_id = 1000354, name = "ANY_MONSTER_DIE_354", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_354", trigger_count = 5 },
	{ config_id = 1000355, name = "ANY_GADGET_DIE_355", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_355", action = "action_EVENT_ANY_GADGET_DIE_355" }
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
		monsters = { 995, 996, 997, 998, 999 },
		gadgets = { 2282 },
		regions = { 353 },
		triggers = { "ENTER_REGION_353", "ANY_MONSTER_DIE_354", "ANY_GADGET_DIE_355" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_353(context, evt)
	if evt.param1 ~= 353 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_353(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_354(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_355(context, evt)
	if 2282 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_355(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300227203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end