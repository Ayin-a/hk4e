-- 基础信息
local base_info = {
	group_id = 133003578
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 578001, monster_id = 21010601, pos = { x = 2322.554, y = 231.362, z = -1210.124 }, rot = { x = 0.000, y = 179.864, z = 0.000 }, level = 5, drop_id = 1000100, pose_id = 9011, area_id = 1 },
	{ config_id = 578002, monster_id = 21010601, pos = { x = 2310.861, y = 231.412, z = -1225.089 }, rot = { x = 0.000, y = 179.864, z = 0.000 }, level = 5, drop_id = 1000100, pose_id = 9011, area_id = 1 },
	{ config_id = 578014, monster_id = 21010301, pos = { x = 2305.596, y = 230.633, z = -1218.754 }, rot = { x = 0.000, y = 292.988, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 1 },
	{ config_id = 578021, monster_id = 21010301, pos = { x = 2322.637, y = 231.565, z = -1219.237 }, rot = { x = 0.000, y = 170.687, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 578006, gadget_id = 70300101, pos = { x = 2323.141, y = 231.516, z = -1212.990 }, rot = { x = 0.000, y = 6.271, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 578007, gadget_id = 70300101, pos = { x = 2311.062, y = 231.512, z = -1228.508 }, rot = { x = 0.000, y = 14.175, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 578008, gadget_id = 70300081, pos = { x = 2326.983, y = 232.273, z = -1221.311 }, rot = { x = 0.419, y = 5.720, z = 8.921 }, level = 5, area_id = 1 },
	{ config_id = 578009, gadget_id = 70300081, pos = { x = 2309.743, y = 230.154, z = -1209.414 }, rot = { x = 1.542, y = 259.081, z = 356.821 }, level = 5, area_id = 1 },
	{ config_id = 578010, gadget_id = 70300081, pos = { x = 2303.248, y = 231.882, z = -1226.640 }, rot = { x = 359.443, y = 150.285, z = 4.433 }, level = 5, area_id = 1 },
	{ config_id = 578011, gadget_id = 70300100, pos = { x = 2310.132, y = 230.641, z = -1214.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 578012, gadget_id = 70300100, pos = { x = 2307.203, y = 231.623, z = -1223.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 578013, gadget_id = 70300100, pos = { x = 2322.078, y = 231.658, z = -1220.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 578019, shape = RegionShape.SPHERE, radius = 18, pos = { x = 2313.371, y = 230.642, z = -1220.465 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1578003, name = "ANY_MONSTER_DIE_578003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_578003", action = "action_EVENT_ANY_MONSTER_DIE_578003" },
	{ config_id = 1578019, name = "ENTER_REGION_578019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_578019", action = "action_EVENT_ENTER_REGION_578019" }
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
		monsters = { 578001, 578002, 578014, 578021 },
		gadgets = { 578006, 578007, 578008, 578009, 578010, 578011, 578012, 578013 },
		regions = { 578019 },
		triggers = { "ANY_MONSTER_DIE_578003", "ENTER_REGION_578019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_578003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_578003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035781") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_578019(context, evt)
	if evt.param1 ~= 578019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_578019(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2310,y=230,z=-1220}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110149, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end