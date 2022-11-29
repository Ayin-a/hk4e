-- 基础信息
local base_info = {
	group_id = 133004440
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
	{ config_id = 440001, gadget_id = 70500000, pos = { x = 2299.388, y = 211.838, z = -1151.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9120, area_id = 1 },
	{ config_id = 440003, gadget_id = 70500000, pos = { x = 2299.855, y = 211.676, z = -1151.468 }, rot = { x = 0.000, y = 112.700, z = 0.000 }, level = 1, point_type = 9120, area_id = 1 },
	{ config_id = 440004, gadget_id = 70500000, pos = { x = 2299.354, y = 211.762, z = -1151.421 }, rot = { x = 0.000, y = 154.100, z = 0.000 }, level = 1, point_type = 9120, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1440002, name = "ANY_GADGET_DIE_440002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_440002", trigger_count = 0 }
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
		gadgets = { 440001, 440003, 440004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_440002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_440002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end