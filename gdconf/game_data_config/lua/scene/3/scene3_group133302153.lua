-- 基础信息
local base_info = {
	group_id = 133302153
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
}

-- 装置
gadgets = {
	{ config_id = 153001, gadget_id = 71700435, pos = { x = -279.390, y = 202.263, z = 2674.056 }, rot = { x = 353.710, y = 265.939, z = 359.553 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 24 },
	{ config_id = 153002, gadget_id = 71700435, pos = { x = -277.443, y = 201.794, z = 2673.925 }, rot = { x = 354.899, y = 280.636, z = 358.137 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 24 },
	{ config_id = 153003, gadget_id = 71700435, pos = { x = -279.390, y = 202.263, z = 2674.056 }, rot = { x = 353.710, y = 265.939, z = 359.553 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 24 },
	{ config_id = 153004, gadget_id = 71700398, pos = { x = -277.290, y = 202.093, z = 2673.310 }, rot = { x = 7.593, y = 172.638, z = 286.628 }, level = 1, area_id = 24 },
	{ config_id = 153005, gadget_id = 71700398, pos = { x = -279.000, y = 202.457, z = 2674.718 }, rot = { x = 3.385, y = 26.847, z = 252.072 }, level = 1, area_id = 24 },
	{ config_id = 153006, gadget_id = 71700398, pos = { x = -279.599, y = 202.538, z = 2673.789 }, rot = { x = 81.183, y = 358.421, z = 41.287 }, level = 1, area_id = 24 },
	{ config_id = 153007, gadget_id = 71700434, pos = { x = -279.390, y = 202.263, z = 2674.056 }, rot = { x = 353.710, y = 265.939, z = 359.553 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 24 },
	{ config_id = 153008, gadget_id = 71700435, pos = { x = -277.443, y = 201.794, z = 2673.925 }, rot = { x = 354.899, y = 280.636, z = 358.137 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 24 },
	{ config_id = 153010, gadget_id = 70220062, pos = { x = -279.305, y = 202.357, z = 2674.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 153011, gadget_id = 70220062, pos = { x = -277.323, y = 202.028, z = 2673.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 153012, gadget_id = 71700434, pos = { x = -277.443, y = 201.794, z = 2673.925 }, rot = { x = 354.899, y = 280.636, z = 358.137 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 24 },
	{ config_id = 153013, gadget_id = 70220063, pos = { x = -279.529, y = 202.443, z = 2673.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	-- 箱子上
	{ config_id = 153014, gadget_id = 71700399, pos = { x = -277.459, y = 203.352, z = 2673.923 }, rot = { x = 4.932, y = 105.339, z = 2.275 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1153009, name = "ANY_GADGET_DIE_153009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_153009", trigger_count = 0 }
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
		gadgets = { 153001, 153002, 153014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 153004, 153005, 153006, 153007, 153010, 153011, 153012, 153013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_153009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 153003, 153008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_153009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230300601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end