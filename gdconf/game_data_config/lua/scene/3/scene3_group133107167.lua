-- 基础信息
local base_info = {
	group_id = 133107167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167006, monster_id = 21010301, pos = { x = -601.635, y = 267.037, z = 930.132 }, rot = { x = 0.000, y = 19.504, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 167007, monster_id = 21010301, pos = { x = -602.407, y = 266.869, z = 931.434 }, rot = { x = 0.000, y = 44.099, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 167008, monster_id = 21011201, pos = { x = -599.142, y = 267.457, z = 927.725 }, rot = { x = 0.000, y = 351.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 8 },
	{ config_id = 167009, monster_id = 21011201, pos = { x = -596.405, y = 267.171, z = 929.737 }, rot = { x = 0.000, y = 311.951, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167001, gadget_id = 70710295, pos = { x = -599.587, y = 269.636, z = 931.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 167002, gadget_id = 70360001, pos = { x = -599.587, y = 267.764, z = 931.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 167003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -587.501, y = 277.213, z = 931.235 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1167003, name = "ENTER_REGION_167003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_167003", action = "action_EVENT_ENTER_REGION_167003" }
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
		monsters = { 167006, 167007, 167008, 167009 },
		gadgets = { 167001, 167002 },
		regions = { 167003 },
		triggers = { "ENTER_REGION_167003" },
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
function condition_EVENT_ENTER_REGION_167003(context, evt)
	if evt.param1 ~= 167003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_167003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7182104") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-597.5344,y=267.02,z=931.2347}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110194, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end