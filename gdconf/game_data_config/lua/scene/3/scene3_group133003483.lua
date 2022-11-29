-- 基础信息
local base_info = {
	group_id = 133003483
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1727, monster_id = 21020201, pos = { x = 2068.469, y = 208.041, z = -1037.686 }, rot = { x = 0.000, y = 351.830, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 3 },
	{ config_id = 1728, monster_id = 21010201, pos = { x = 2065.704, y = 206.929, z = -1030.988 }, rot = { x = 0.000, y = 40.215, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 1729, monster_id = 21010201, pos = { x = 2065.878, y = 207.115, z = -1025.978 }, rot = { x = 0.000, y = 154.063, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 1730, monster_id = 21010601, pos = { x = 2070.753, y = 207.001, z = -1025.124 }, rot = { x = 0.000, y = 236.462, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9011, area_id = 3 },
	{ config_id = 1731, monster_id = 21010501, pos = { x = 2066.286, y = 208.257, z = -1036.070 }, rot = { x = 0.000, y = 15.504, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4354, gadget_id = 70300083, pos = { x = 2071.617, y = 206.032, z = -1029.968 }, rot = { x = 356.569, y = 286.605, z = 0.000 }, level = 2, area_id = 3 },
	{ config_id = 4355, gadget_id = 70220013, pos = { x = 2065.140, y = 208.136, z = -1037.923 }, rot = { x = 0.000, y = 23.216, z = 0.000 }, level = 2, area_id = 3 },
	{ config_id = 4356, gadget_id = 70300093, pos = { x = 2069.098, y = 206.755, z = -1025.258 }, rot = { x = 0.000, y = 63.341, z = 0.000 }, level = 2, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 588, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2070.477, y = 206.227, z = -1029.964 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000588, name = "ENTER_REGION_588", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_588", action = "action_EVENT_ENTER_REGION_588" },
	{ config_id = 1000589, name = "ANY_MONSTER_DIE_589", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_589", trigger_count = 5 },
	{ config_id = 1000590, name = "ANY_GADGET_DIE_590", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_590", action = "action_EVENT_ANY_GADGET_DIE_590" }
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
		monsters = { 1727, 1728, 1729, 1730, 1731 },
		gadgets = { 4354, 4355, 4356 },
		regions = { 588 },
		triggers = { "ENTER_REGION_588", "ANY_MONSTER_DIE_589", "ANY_GADGET_DIE_590" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_588(context, evt)
	if evt.param1 ~= 588 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_588(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_589(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_590(context, evt)
	if 4354 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_590(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300348303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end