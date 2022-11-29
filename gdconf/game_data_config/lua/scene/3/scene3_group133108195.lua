-- 基础信息
local base_info = {
	group_id = 133108195
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
	{ config_id = 195001, gadget_id = 70220066, pos = { x = -82.307, y = 203.112, z = -692.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 195002, gadget_id = 70710578, pos = { x = -137.811, y = 199.430, z = -642.084 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 195005, gadget_id = 70710549, pos = { x = -110.625, y = 200.392, z = -636.828 }, rot = { x = 0.000, y = 0.000, z = 12.770 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1195003, name = "QUEST_START_195003", event = EventType.EVENT_QUEST_START, source = "1905212", condition = "", action = "action_EVENT_QUEST_START_195003", trigger_count = 0 },
	{ config_id = 1195004, name = "QUEST_FINISH_195004", event = EventType.EVENT_QUEST_FINISH, source = "1905212", condition = "", action = "action_EVENT_QUEST_FINISH_195004", trigger_count = 0 }
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
		gadgets = { 195001 },
		regions = { },
		triggers = { "QUEST_START_195003", "QUEST_FINISH_195004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 195002, 195005 },
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
function action_EVENT_QUEST_START_195003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108195, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_195004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108195, 2)
	
	return 0
end