-- 基础信息
local base_info = {
	group_id = 199001085
}

-- DEFS_MISCS
local shadowConfigIDList = {85002,85003}
local questID = 7902405

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
	{ config_id = 85001, gadget_id = 70500033, pos = { x = 193.083, y = 76.051, z = 384.544 }, rot = { x = 0.000, y = 138.577, z = 0.000 }, level = 20, arguments = { 38 }, area_id = 402 },
	{ config_id = 85002, gadget_id = 70500039, pos = { x = 197.192, y = 75.134, z = 390.427 }, rot = { x = 0.000, y = 216.894, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 85003, gadget_id = 70500045, pos = { x = 195.761, y = 75.134, z = 389.468 }, rot = { x = 0.000, y = 48.685, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 85007, gadget_id = 70290196, pos = { x = 198.373, y = 75.134, z = 388.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 85004, shape = RegionShape.SPHERE, radius = 12, pos = { x = 198.328, y = 75.134, z = 390.386 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1085005, name = "QUEST_START_85005", event = EventType.EVENT_QUEST_START, source = "7902415", condition = "", action = "action_EVENT_QUEST_START_85005", trigger_count = 0 },
	{ config_id = 1085006, name = "QUEST_START_85006", event = EventType.EVENT_QUEST_START, source = "7903305", condition = "", action = "action_EVENT_QUEST_START_85006", trigger_count = 0 },
	{ config_id = 1085008, name = "GROUP_LOAD_85008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_85008", action = "action_EVENT_GROUP_LOAD_85008", trigger_count = 0 }
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
		gadgets = { 85001 },
		regions = { 85004 },
		triggers = { "QUEST_START_85005", "QUEST_START_85006", "GROUP_LOAD_85008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 85002, 85003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 85007 },
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
function action_EVENT_QUEST_START_85005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001085, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_85006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001085, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_85008(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 199001085, 85001) then
	
	    return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_85008(context, evt)
	ScriptLib.AddQuestProgress(context, "7902405")
	return 0
end

require "V2_8/EchoConch_Quest"