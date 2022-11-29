-- 基础信息
local base_info = {
	group_id = 199001082
}

-- DEFS_MISCS
local shadowConfigIDList = {82002,82003}
local questID = 7902404

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
	{ config_id = 82001, gadget_id = 70500033, pos = { x = -727.389, y = 209.682, z = 33.651 }, rot = { x = 0.000, y = 143.563, z = 0.000 }, level = 20, arguments = { 37 }, area_id = 403 },
	{ config_id = 82002, gadget_id = 70500037, pos = { x = -721.954, y = 209.700, z = 34.833 }, rot = { x = 317.844, y = 169.776, z = 352.511 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 82003, gadget_id = 70500044, pos = { x = -720.802, y = 209.804, z = 34.989 }, rot = { x = 319.206, y = 160.002, z = 7.142 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 82007, gadget_id = 70290196, pos = { x = -720.185, y = 209.702, z = 34.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 82004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -724.236, y = 209.446, z = 34.811 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1082005, name = "QUEST_START_82005", event = EventType.EVENT_QUEST_START, source = "7903307", condition = "", action = "action_EVENT_QUEST_START_82005", trigger_count = 0 },
	{ config_id = 1082006, name = "QUEST_START_82006", event = EventType.EVENT_QUEST_START, source = "7902412", condition = "", action = "action_EVENT_QUEST_START_82006", trigger_count = 0 },
	{ config_id = 1082008, name = "GROUP_LOAD_82008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82008", action = "action_EVENT_GROUP_LOAD_82008", trigger_count = 0 }
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
		gadgets = { 82001 },
		regions = { 82004 },
		triggers = { "QUEST_START_82005", "QUEST_START_82006", "GROUP_LOAD_82008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 82002, 82003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 82007 },
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
function action_EVENT_QUEST_START_82005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001082, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_82006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001082, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_82008(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 199001082, 82001) then
	
	    return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82008(context, evt)
	ScriptLib.AddQuestProgress(context, "7902404")
	return 0
end

require "V2_8/EchoConch_Quest"