-- 基础信息
local base_info = {
	group_id = 133106907
}

-- Trigger变量
local defs = {
	gadget_1 = 907011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 907001, monster_id = 21011201, pos = { x = -659.866, y = 206.453, z = 1223.430 }, rot = { x = 0.000, y = 249.261, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 907004, monster_id = 21011001, pos = { x = -657.539, y = 206.159, z = 1221.737 }, rot = { x = 0.000, y = 246.661, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 907005, monster_id = 21020301, pos = { x = -653.570, y = 207.827, z = 1233.137 }, rot = { x = 0.000, y = 216.559, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 8 },
	{ config_id = 907006, monster_id = 21011001, pos = { x = -653.544, y = 208.563, z = 1240.983 }, rot = { x = 0.000, y = 17.021, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 907007, monster_id = 21030101, pos = { x = -656.250, y = 207.154, z = 1228.561 }, rot = { x = 0.000, y = 36.205, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 8 },
	{ config_id = 907008, monster_id = 21011201, pos = { x = -647.567, y = 208.814, z = 1238.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 907002, gadget_id = 70300075, pos = { x = -656.801, y = 206.578, z = 1225.829 }, rot = { x = 4.307, y = 115.684, z = 0.854 }, level = 32, area_id = 8 },
	{ config_id = 907003, gadget_id = 70300075, pos = { x = -650.793, y = 208.223, z = 1236.387 }, rot = { x = 0.839, y = 292.448, z = 357.662 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 907011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -654.293, y = 207.490, z = 1230.760 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1907009, name = "ANY_MONSTER_DIE_907009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_907009", action = "action_EVENT_ANY_MONSTER_DIE_907009", trigger_count = 0 },
	{ config_id = 1907010, name = "ANY_GADGET_DIE_907010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_907010", action = "action_EVENT_ANY_GADGET_DIE_907010", trigger_count = 0 },
	{ config_id = 1907011, name = "ENTER_REGION_907011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_907011", action = "", trigger_count = 0 }
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
		-- description = ,
		monsters = { 907001, 907004, 907005, 907006, 907007, 907008 },
		gadgets = { 907002, 907003 },
		regions = { 907011 },
		triggers = { "ANY_MONSTER_DIE_907009", "ANY_GADGET_DIE_907010", "ENTER_REGION_907011" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_907009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106907}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_907009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331069071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_907010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106907}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_907010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331069071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_907011(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7082302) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end