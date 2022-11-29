-- 基础信息
local base_info = {
	group_id = 199002181
}

-- DEFS_MISCS
local shadowConfigIDList = {181002,181003,181004}
local questID = 7902417

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
	{ config_id = 181001, gadget_id = 70500033, pos = { x = 131.195, y = 120.955, z = -171.352 }, rot = { x = 0.000, y = 315.440, z = 0.000 }, level = 20, arguments = { 39 }, area_id = 401 },
	{ config_id = 181002, gadget_id = 70500050, pos = { x = 121.901, y = 120.594, z = -178.660 }, rot = { x = 0.000, y = 13.628, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 181003, gadget_id = 70500040, pos = { x = 123.917, y = 120.534, z = -178.774 }, rot = { x = 0.000, y = 314.397, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 181004, gadget_id = 70500046, pos = { x = 122.544, y = 120.513, z = -177.146 }, rot = { x = 0.000, y = 199.861, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 181005, shape = RegionShape.SPHERE, radius = 9, pos = { x = 125.719, y = 120.361, z = -174.285 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1181006, name = "QUEST_START_181006", event = EventType.EVENT_QUEST_START, source = "7902411", condition = "", action = "action_EVENT_QUEST_START_181006", trigger_count = 0 }
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
		gadgets = { 181001 },
		regions = { 181005 },
		triggers = { "QUEST_START_181006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 181002, 181003, 181004 },
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
function action_EVENT_QUEST_START_181006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002181, 2)
	
	return 0
end

require "V2_8/EchoConch_Quest"