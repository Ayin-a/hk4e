-- 基础信息
local base_info = {
	group_id = 133004271
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
	{ config_id = 271001, gadget_id = 70220001, pos = { x = 2365.946, y = 260.032, z = -709.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271002, gadget_id = 70220001, pos = { x = 2374.965, y = 259.998, z = -701.952 }, rot = { x = 0.000, y = 339.628, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271004, gadget_id = 70220001, pos = { x = 2329.659, y = 260.032, z = -691.211 }, rot = { x = 0.000, y = 125.838, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271005, gadget_id = 70220001, pos = { x = 2329.124, y = 259.998, z = -688.290 }, rot = { x = 0.000, y = 25.135, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271006, gadget_id = 70220001, pos = { x = 2369.023, y = 259.998, z = -707.491 }, rot = { x = 0.000, y = 46.192, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271007, gadget_id = 70220001, pos = { x = 2366.670, y = 259.998, z = -706.992 }, rot = { x = 0.000, y = 63.223, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271008, gadget_id = 70220001, pos = { x = 2327.230, y = 259.998, z = -682.953 }, rot = { x = 0.000, y = 290.913, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271010, gadget_id = 70220001, pos = { x = 2324.533, y = 260.032, z = -682.014 }, rot = { x = 0.000, y = 3.417, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 271011, gadget_id = 70220001, pos = { x = 2374.581, y = 260.032, z = -708.936 }, rot = { x = 0.000, y = 93.260, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1271012, name = "ANY_GADGET_DIE_271012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_271012", trigger_count = 0 }
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
		-- description = suite_2,
		monsters = { },
		gadgets = { 271001, 271002, 271004, 271005, 271006, 271007, 271008, 271010, 271011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_271012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_271012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330042711") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end