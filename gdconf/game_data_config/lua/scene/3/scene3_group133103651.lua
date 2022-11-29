-- 基础信息
local base_info = {
	group_id = 133103651
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 651001, monster_id = 21011201, pos = { x = 626.205, y = 205.906, z = 1292.318 }, rot = { x = 0.000, y = 348.581, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 6 },
	{ config_id = 651002, monster_id = 21010201, pos = { x = 627.297, y = 206.246, z = 1295.318 }, rot = { x = 0.000, y = 196.279, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 6 },
	{ config_id = 651003, monster_id = 21010401, pos = { x = 622.745, y = 207.401, z = 1295.572 }, rot = { x = 0.000, y = 139.583, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 651004, monster_id = 21010401, pos = { x = 624.381, y = 207.280, z = 1296.217 }, rot = { x = 0.000, y = 167.040, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 651005, monster_id = 21010701, pos = { x = 624.571, y = 206.595, z = 1294.237 }, rot = { x = 0.000, y = 105.599, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 651006, shape = RegionShape.SPHERE, radius = 25, pos = { x = 626.431, y = 205.977, z = 1293.695 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1651006, name = "ENTER_REGION_651006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_651006", action = "action_EVENT_ENTER_REGION_651006" },
	{ config_id = 1651015, name = "ANY_MONSTER_DIE_651015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_651015", action = "action_EVENT_ANY_MONSTER_DIE_651015" }
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
		monsters = { 651001, 651002, 651003, 651004, 651005 },
		gadgets = { },
		regions = { 651006 },
		triggers = { "ENTER_REGION_651006", "ANY_MONSTER_DIE_651015" },
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
function condition_EVENT_ENTER_REGION_651006(context, evt)
	if evt.param1 ~= 651006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_651006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7182106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=626.4312,y=205.9766,z=1293.695}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110195, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_651015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_651015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7182107") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end