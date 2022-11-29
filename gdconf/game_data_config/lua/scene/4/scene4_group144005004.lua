-- 基础信息
local base_info = {
	group_id = 144005004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 4001, npc_id = 2003058, pos = { x = 1449.176, y = 135.055, z = -728.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 101 }
}

-- 装置
gadgets = {
	{ config_id = 4002, gadget_id = 70211121, pos = { x = 1452.297, y = 134.607, z = -730.881 }, rot = { x = 0.000, y = 267.104, z = 0.000 }, level = 26, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 4003, gadget_id = 70211121, pos = { x = 1451.937, y = 134.815, z = -732.751 }, rot = { x = 0.000, y = 295.965, z = 0.000 }, level = 26, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 4005, gadget_id = 70211121, pos = { x = 1450.881, y = 135.074, z = -734.671 }, rot = { x = 0.000, y = 323.265, z = 0.000 }, level = 26, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 4006, gadget_id = 70211001, pos = { x = 1456.545, y = 121.660, z = -737.093 }, rot = { x = 1.040, y = 122.798, z = 338.481 }, level = 26, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 4007, gadget_id = 70211001, pos = { x = 1448.888, y = 139.405, z = -714.597 }, rot = { x = 326.847, y = 159.437, z = 320.833 }, level = 26, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 4008, gadget_id = 70290011, pos = { x = 1468.572, y = 129.123, z = -709.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 4009, gadget_id = 70500000, pos = { x = 1468.572, y = 129.123, z = -709.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3009, owner = 4008, area_id = 101 },
	{ config_id = 4010, gadget_id = 50010007, pos = { x = 1468.790, y = 129.743, z = -708.643 }, rot = { x = 73.163, y = 270.704, z = 21.578 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	{ config_id = 4004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1441.188, y = 129.689, z = -715.507 }, area_id = 101 },
	{ config_id = 4011, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1441.188, y = 129.689, z = -715.507 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1004004, name = "ENTER_REGION_4004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4004", action = "action_EVENT_ENTER_REGION_4004", trigger_count = 0 },
	{ config_id = 1004011, name = "ENTER_REGION_4011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4011", action = "action_EVENT_ENTER_REGION_4011" }
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
		gadgets = { 4002, 4003, 4005, 4006, 4007, 4008, 4009, 4010 },
		regions = { 4004, 4011 },
		triggers = { "ENTER_REGION_4004", "ENTER_REGION_4011" },
		npcs = { 4001 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4004(context, evt)
	if evt.param1 ~= 4004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900503finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4011(context, evt)
	if evt.param1 ~= 4011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4011(context, evt)
	-- 调用提示id为 1110272 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end