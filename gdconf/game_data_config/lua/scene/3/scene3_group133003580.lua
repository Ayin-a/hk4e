-- 基础信息
local base_info = {
	group_id = 133003580
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 580011, monster_id = 20011201, pos = { x = 2249.184, y = 211.724, z = -1136.889 }, rot = { x = 17.749, y = 347.470, z = 352.937 }, level = 12, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 580013, monster_id = 21010601, pos = { x = 2248.107, y = 210.949, z = -1135.882 }, rot = { x = 0.000, y = 151.223, z = 0.000 }, level = 12, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 580028, monster_id = 21010201, pos = { x = 2251.959, y = 209.176, z = -1130.250 }, rot = { x = 0.000, y = 319.217, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 1 },
	{ config_id = 580029, monster_id = 21010601, pos = { x = 2232.386, y = 210.349, z = -1125.293 }, rot = { x = 0.000, y = 151.223, z = 0.000 }, level = 12, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 580001, gadget_id = 70300081, pos = { x = 2226.873, y = 208.418, z = -1120.701 }, rot = { x = 1.519, y = 268.760, z = 347.630 }, level = 2, area_id = 1 },
	{ config_id = 580002, gadget_id = 70300081, pos = { x = 2239.248, y = 208.860, z = -1125.099 }, rot = { x = 0.000, y = 295.145, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 580003, gadget_id = 70300081, pos = { x = 2251.604, y = 209.542, z = -1132.451 }, rot = { x = 0.000, y = 299.297, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 580004, gadget_id = 70300085, pos = { x = 2236.631, y = 209.978, z = -1130.244 }, rot = { x = 9.727, y = 359.654, z = 355.538 }, level = 2, area_id = 1 },
	{ config_id = 580005, gadget_id = 70300102, pos = { x = 2248.774, y = 210.970, z = -1137.471 }, rot = { x = 18.937, y = 359.403, z = 356.424 }, level = 2, area_id = 1 },
	{ config_id = 580006, gadget_id = 70220035, pos = { x = 2236.765, y = 210.389, z = -1129.969 }, rot = { x = 0.000, y = 32.198, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 580007, gadget_id = 70220035, pos = { x = 2251.767, y = 211.735, z = -1139.826 }, rot = { x = 0.000, y = 47.257, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 580008, gadget_id = 70300087, pos = { x = 2226.510, y = 208.956, z = -1123.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 580009, gadget_id = 70220035, pos = { x = 2224.671, y = 209.124, z = -1125.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 580010, gadget_id = 70300087, pos = { x = 2249.166, y = 211.291, z = -1137.051 }, rot = { x = 18.785, y = 359.455, z = 356.706 }, level = 2, area_id = 1 },
	{ config_id = 580012, gadget_id = 70220035, pos = { x = 2232.566, y = 210.043, z = -1129.089 }, rot = { x = 0.000, y = 55.427, z = 0.000 }, level = 2, persistent = true, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 580020, shape = RegionShape.SPHERE, radius = 22, pos = { x = 2237.232, y = 210.711, z = -1132.019 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1580014, name = "ANY_MONSTER_DIE_580014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_580014", action = "action_EVENT_ANY_MONSTER_DIE_580014" },
	{ config_id = 1580020, name = "ENTER_REGION_580020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_580020", action = "action_EVENT_ENTER_REGION_580020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadgetNum", value = 0, no_refresh = false },
	{ config_id = 2, name = "QQNum", value = 0, no_refresh = false }
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
		monsters = { 580011, 580013, 580028, 580029 },
		gadgets = { 580001, 580002, 580003, 580004, 580005, 580006, 580007, 580008, 580009, 580010, 580012 },
		regions = { 580020 },
		triggers = { "ANY_MONSTER_DIE_580014", "ENTER_REGION_580020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_580014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_580014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_580020(context, evt)
	if evt.param1 ~= 580020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_580020(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2237,y=210,z=-1132}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110150, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end