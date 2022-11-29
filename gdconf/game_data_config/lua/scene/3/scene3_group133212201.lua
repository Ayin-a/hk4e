-- 基础信息
local base_info = {
	group_id = 133212201
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
	{ config_id = 201005, npc_id = 20240, pos = { x = -4070.097, y = 257.845, z = -2305.852 }, rot = { x = 0.000, y = 165.078, z = 0.000 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 201001, gadget_id = 70330090, pos = { x = -4026.134, y = 254.638, z = -2273.680 }, rot = { x = 0.000, y = 12.317, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 201003, gadget_id = 70330064, pos = { x = -4019.578, y = 258.839, z = -2301.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 201006, gadget_id = 70310006, pos = { x = -4065.276, y = 257.845, z = -2296.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 201007, gadget_id = 70950115, pos = { x = -4062.184, y = 257.932, z = -2309.199 }, rot = { x = 0.000, y = 146.368, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 201008, gadget_id = 70950116, pos = { x = -4054.843, y = 257.967, z = -2305.365 }, rot = { x = 0.000, y = 158.104, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 201009, gadget_id = 70950117, pos = { x = -4069.533, y = 257.207, z = -2311.271 }, rot = { x = 271.365, y = 275.069, z = 151.598 }, level = 27, area_id = 13 },
	{ config_id = 201010, gadget_id = 70950118, pos = { x = -4054.672, y = 257.985, z = -2305.302 }, rot = { x = 3.078, y = 150.830, z = 356.069 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1201002, name = "GADGET_STATE_CHANGE_201002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201002", action = "action_EVENT_GADGET_STATE_CHANGE_201002", trigger_count = 0 }
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
		gadgets = { 201001, 201003, 201006, 201007, 201008, 201009, 201010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_201002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_201002(context, evt)
	if 201001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_201002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214020_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end