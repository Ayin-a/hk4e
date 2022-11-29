-- 基础信息
local base_info = {
	group_id = 133004459
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
	{ config_id = 459001, gadget_id = 70290013, pos = { x = 1529.366, y = 257.782, z = 159.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 459002, gadget_id = 70500000, pos = { x = 1529.366, y = 257.782, z = 159.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9134, owner = 459001, area_id = 5 },
	{ config_id = 459003, gadget_id = 70500000, pos = { x = 1530.129, y = 258.331, z = 159.847 }, rot = { x = 80.732, y = 197.769, z = 283.477 }, level = 1, point_type = 9134, owner = 459001, area_id = 5 },
	{ config_id = 459005, gadget_id = 70500000, pos = { x = 1529.084, y = 257.655, z = 159.829 }, rot = { x = 343.642, y = 330.700, z = 341.572 }, level = 1, point_type = 9134, owner = 459001, area_id = 5 },
	{ config_id = 459006, gadget_id = 70290013, pos = { x = 1528.102, y = 257.703, z = 159.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 459007, gadget_id = 70500000, pos = { x = 1528.102, y = 257.703, z = 159.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9134, owner = 459006, area_id = 5 },
	{ config_id = 459008, gadget_id = 70500000, pos = { x = 1528.865, y = 258.252, z = 159.770 }, rot = { x = 80.732, y = 197.769, z = 283.477 }, level = 1, point_type = 9134, owner = 459006, area_id = 5 },
	{ config_id = 459009, gadget_id = 70500000, pos = { x = 1527.820, y = 257.576, z = 159.753 }, rot = { x = 343.642, y = 330.700, z = 341.572 }, level = 1, point_type = 9134, owner = 459006, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1459004, name = "ANY_GADGET_DIE_459004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_459004", trigger_count = 0 }
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
		gadgets = { 459001, 459002, 459003, 459005, 459006, 459007, 459008, 459009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_459004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_459004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004459") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end