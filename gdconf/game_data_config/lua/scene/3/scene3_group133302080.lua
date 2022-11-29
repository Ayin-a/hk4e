-- 基础信息
local base_info = {
	group_id = 133302080
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
	{ config_id = 80001, gadget_id = 70710325, pos = { x = -318.448, y = 248.539, z = 2822.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80002, gadget_id = 70710325, pos = { x = -320.150, y = 248.539, z = 2818.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80003, gadget_id = 70710325, pos = { x = -309.941, y = 248.539, z = 2821.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80004, gadget_id = 70710325, pos = { x = -317.858, y = 248.539, z = 2829.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80005, gadget_id = 70710325, pos = { x = -315.972, y = 248.539, z = 2821.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80007, gadget_id = 70710325, pos = { x = -316.694, y = 248.539, z = 2833.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80008, gadget_id = 70710325, pos = { x = -309.428, y = 248.539, z = 2825.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80009, gadget_id = 70710325, pos = { x = -314.926, y = 248.539, z = 2825.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80010, gadget_id = 70710325, pos = { x = -318.357, y = 248.539, z = 2820.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 80011, gadget_id = 70710325, pos = { x = -317.066, y = 248.539, z = 2817.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080006, name = "ANY_GADGET_DIE_80006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_80006", trigger_count = 0 }
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
	rand_suite = true
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
		gadgets = { 80001, 80002, 80003, 80004, 80005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_80006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 80007, 80008, 80009, 80010, 80011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_80006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end