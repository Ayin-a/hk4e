-- 基础信息
local base_info = {
	group_id = 133210118
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
	{ config_id = 118001, gadget_id = 70220005, pos = { x = -4062.358, y = 200.389, z = -645.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 118002, gadget_id = 70220005, pos = { x = -4062.692, y = 200.452, z = -646.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 118003, gadget_id = 70220005, pos = { x = -4063.136, y = 200.269, z = -645.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 118004, gadget_id = 70220005, pos = { x = -4068.802, y = 200.845, z = -683.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 118005, gadget_id = 70220005, pos = { x = -4069.271, y = 200.726, z = -683.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 118006, gadget_id = 70220005, pos = { x = -4069.550, y = 200.862, z = -683.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 118007, gadget_id = 70220005, pos = { x = -4073.208, y = 201.633, z = -672.550 }, rot = { x = 0.000, y = 228.505, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 118008, gadget_id = 70220005, pos = { x = -4072.982, y = 201.746, z = -671.906 }, rot = { x = 0.000, y = 228.505, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118009, name = "ANY_GADGET_DIE_118009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_118009" }
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
		gadgets = { 118001, 118002, 118003, 118004, 118005, 118006, 118007, 118008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_118009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_118009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202191") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end