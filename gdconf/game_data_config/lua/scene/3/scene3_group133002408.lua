-- 基础信息
local base_info = {
	group_id = 133002408
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
	{ config_id = 408001, gadget_id = 70500000, pos = { x = 2035.421, y = 262.799, z = -361.506 }, rot = { x = 0.000, y = 25.100, z = 0.000 }, level = 1, point_type = 9133, area_id = 3 },
	{ config_id = 408002, gadget_id = 70500000, pos = { x = 2021.363, y = 258.094, z = -340.197 }, rot = { x = 0.000, y = 21.870, z = 0.000 }, level = 1, point_type = 9133, area_id = 3 },
	{ config_id = 408003, gadget_id = 70500000, pos = { x = 2021.303, y = 255.869, z = -322.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9133, area_id = 3 },
	{ config_id = 408005, gadget_id = 70500000, pos = { x = 2021.891, y = 258.144, z = -340.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9133, area_id = 3 },
	{ config_id = 408006, gadget_id = 70500000, pos = { x = 2017.096, y = 258.727, z = -375.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9133, area_id = 3 },
	{ config_id = 408007, gadget_id = 70500000, pos = { x = 2013.332, y = 259.284, z = -369.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9133, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1408004, name = "ANY_GADGET_DIE_408004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_408004", trigger_count = 0 }
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
		gadgets = { 408001, 408002, 408003, 408005, 408006, 408007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_408004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_408004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002408") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end