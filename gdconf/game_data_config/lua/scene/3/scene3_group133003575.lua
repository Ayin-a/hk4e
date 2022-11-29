-- 基础信息
local base_info = {
	group_id = 133003575
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 575001, monster_id = 21010601, pos = { x = 2185.779, y = 254.766, z = -1687.482 }, rot = { x = 0.000, y = 275.236, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 575002, monster_id = 21010601, pos = { x = 2197.106, y = 254.200, z = -1683.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 575003, monster_id = 21010201, pos = { x = 2194.055, y = 255.155, z = -1688.501 }, rot = { x = 352.699, y = 262.145, z = 356.278 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 575004, gadget_id = 70300083, pos = { x = 2193.868, y = 253.797, z = -1680.989 }, rot = { x = 0.000, y = 339.465, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 575005, gadget_id = 70300083, pos = { x = 2187.003, y = 254.103, z = -1683.290 }, rot = { x = 0.000, y = 339.465, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 575006, gadget_id = 70300100, pos = { x = 2184.367, y = 254.654, z = -1687.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 575007, gadget_id = 70300100, pos = { x = 2196.973, y = 253.965, z = -1682.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 575009, shape = RegionShape.SPHERE, radius = 18.9, pos = { x = 2191.237, y = 251.973, z = -1675.731 }, area_id = 1 },
	{ config_id = 575010, shape = RegionShape.SPHERE, radius = 18.9, pos = { x = 2191.237, y = 251.973, z = -1675.731 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1575008, name = "ANY_MONSTER_DIE_575008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_575008", action = "action_EVENT_ANY_MONSTER_DIE_575008" },
	{ config_id = 1575009, name = "ENTER_REGION_575009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_575009", action = "" },
	{ config_id = 1575010, name = "ENTER_REGION_575010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_575010", action = "action_EVENT_ENTER_REGION_575010" }
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
		monsters = { 575001, 575002, 575003 },
		gadgets = { 575004, 575005, 575006, 575007 },
		regions = { 575009 },
		triggers = { "ANY_MONSTER_DIE_575008", "ENTER_REGION_575009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 575010 },
		triggers = { "ENTER_REGION_575010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_575008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_575008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035751") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_575009(context, evt)
	if evt.param1 ~= 575009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_575010(context, evt)
	if evt.param1 ~= 575010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_575010(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2189,y=249,z=-1656}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110148, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035752") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end