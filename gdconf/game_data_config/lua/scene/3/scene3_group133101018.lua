-- 基础信息
local base_info = {
	group_id = 133101018
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
	{ config_id = 18001, gadget_id = 70710594, pos = { x = 1143.959, y = 349.255, z = 1569.731 }, rot = { x = 0.000, y = 272.683, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 18002, gadget_id = 70710104, pos = { x = 1143.831, y = 350.077, z = 1571.609 }, rot = { x = 0.000, y = 185.345, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 18003, gadget_id = 70710101, pos = { x = 1143.945, y = 350.077, z = 1571.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 18006, gadget_id = 70710495, pos = { x = 1143.448, y = 350.077, z = 1571.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018005, name = "QUEST_FINISH_18005", event = EventType.EVENT_QUEST_FINISH, source = "4003617", condition = "", action = "action_EVENT_QUEST_FINISH_18005" }
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
		gadgets = { 18001 },
		regions = { },
		triggers = { "QUEST_FINISH_18005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 18002, 18003, 18006 },
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
function action_EVENT_QUEST_FINISH_18005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101018, 2)
	
	return 0
end