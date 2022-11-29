-- 基础信息
local base_info = {
	group_id = 133002227
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1941,
	gadget_id_2 = 1965,
	gadget_id_3 = 1966
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
	{ config_id = 1941, gadget_id = 70300055, pos = { x = 1818.364, y = 219.395, z = -410.664 }, rot = { x = 0.000, y = 111.175, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1965, gadget_id = 70300055, pos = { x = 1815.438, y = 219.452, z = -415.531 }, rot = { x = 0.000, y = 130.382, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1966, gadget_id = 70300055, pos = { x = 1814.376, y = 219.928, z = -394.002 }, rot = { x = 0.000, y = 277.497, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1967, gadget_id = 70300063, pos = { x = 1814.367, y = 219.933, z = -394.014 }, rot = { x = 0.000, y = 277.047, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1968, gadget_id = 70300063, pos = { x = 1818.366, y = 219.427, z = -410.679 }, rot = { x = 0.000, y = 111.865, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1969, gadget_id = 70300063, pos = { x = 1815.440, y = 219.479, z = -415.532 }, rot = { x = 0.000, y = 131.106, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000276, name = "ANY_GADGET_DIE_276", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_276", action = "action_EVENT_ANY_GADGET_DIE_276", trigger_count = 0 }
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
		gadgets = { 1967, 1968, 1969 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1941, 1965, 1966 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_276" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_276(context, evt)
	if defs.gadget_id_1 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_2== evt.param1 then
		return true
	end
	
	if defs.gadget_id_3 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_276(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002227") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end