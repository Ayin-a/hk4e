-- 基础信息
local base_info = {
	group_id = 133003579
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 579001, monster_id = 21010201, pos = { x = 2405.238, y = 249.916, z = -1404.485 }, rot = { x = 0.000, y = 186.492, z = 0.000 }, level = 5, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 579007, monster_id = 21010201, pos = { x = 2404.225, y = 249.672, z = -1409.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 579019, monster_id = 21010201, pos = { x = 2402.270, y = 250.751, z = -1416.027 }, rot = { x = 359.348, y = 275.141, z = 359.941 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 579005, gadget_id = 70300086, pos = { x = 2415.496, y = 251.547, z = -1414.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 579006, gadget_id = 70300086, pos = { x = 2394.216, y = 252.815, z = -1417.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 579008, gadget_id = 70300107, pos = { x = 2412.846, y = 250.314, z = -1399.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, state = GadgetState.GearStart, persistent = true, area_id = 1 },
	{ config_id = 579009, gadget_id = 70300107, pos = { x = 2396.925, y = 249.687, z = -1400.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, state = GadgetState.GearStart, persistent = true, area_id = 1 },
	{ config_id = 579010, gadget_id = 70300107, pos = { x = 2404.540, y = 249.260, z = -1407.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, state = GadgetState.GearStart, persistent = true, area_id = 1 },
	{ config_id = 579011, gadget_id = 70220010, pos = { x = 2404.916, y = 249.656, z = -1397.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 579012, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2405.625, y = 250.414, z = -1413.212 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1579002, name = "ANY_MONSTER_DIE_579002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_579002", action = "action_EVENT_ANY_MONSTER_DIE_579002" },
	{ config_id = 1579012, name = "ENTER_REGION_579012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_579012", action = "action_EVENT_ENTER_REGION_579012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadgetNum", value = 0, no_refresh = false },
	{ config_id = 2, name = "mageNum", value = 0, no_refresh = false }
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
		monsters = { 579001, 579007, 579019 },
		gadgets = { 579005, 579006, 579008, 579009, 579010, 579011 },
		regions = { 579012 },
		triggers = { "ANY_MONSTER_DIE_579002", "ENTER_REGION_579012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_579002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_579002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035791") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_579012(context, evt)
	if evt.param1 ~= 579012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_579012(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2405,y=249,z=-1410}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110151, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end