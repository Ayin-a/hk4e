-- 基础信息
local base_info = {
	group_id = 199001070
}

-- DEFS_MISCS
local shadowConfigIDList = {70002,70003,70004}

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
	{ config_id = 70001, gadget_id = 70500033, pos = { x = 131.195, y = 120.955, z = -171.352 }, rot = { x = 0.000, y = 315.440, z = 0.000 }, level = 20, arguments = { 39 }, area_id = 401 },
	{ config_id = 70002, gadget_id = 70500050, pos = { x = 121.901, y = 120.594, z = -178.660 }, rot = { x = 0.000, y = 13.628, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 70003, gadget_id = 70500040, pos = { x = 123.917, y = 120.534, z = -178.774 }, rot = { x = 0.000, y = 314.397, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 70004, gadget_id = 70500046, pos = { x = 122.544, y = 120.513, z = -177.146 }, rot = { x = 0.000, y = 199.861, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 70009, gadget_id = 70290196, pos = { x = 129.897, y = 120.192, z = -163.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 70005, shape = RegionShape.SPHERE, radius = 9, pos = { x = 125.719, y = 120.361, z = -174.285 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1070006, name = "GADGET_CREATE_70006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_70006", action = "action_EVENT_GADGET_CREATE_70006", trigger_count = 0 },
	{ config_id = 1070007, name = "QUEST_START_70007", event = EventType.EVENT_QUEST_START, source = "7902416", condition = "", action = "action_EVENT_QUEST_START_70007", trigger_count = 0 },
	{ config_id = 1070008, name = "QUEST_START_70008", event = EventType.EVENT_QUEST_START, source = "7902411", condition = "", action = "action_EVENT_QUEST_START_70008", trigger_count = 0 }
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
		gadgets = { 70001 },
		regions = { 70005 },
		triggers = { "GADGET_CREATE_70006", "QUEST_START_70007", "QUEST_START_70008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 70002, 70003, 70004 },
		regions = { },
		triggers = { "GADGET_CREATE_70006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 70001, 70009 },
		regions = { 70005 },
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
function condition_EVENT_GADGET_CREATE_70006(context, evt)
	if 70002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_70006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902417") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001070, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001070, 2)
	
	return 0
end

require "V2_8/EchoConch"