-- 基础信息
local base_info = {
	group_id = 133302111
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
	{ config_id = 111001, gadget_id = 70710846, pos = { x = -411.990, y = 239.831, z = 2813.457 }, rot = { x = 0.000, y = 6.944, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111002, gadget_id = 70710846, pos = { x = -406.647, y = 239.831, z = 2818.492 }, rot = { x = 0.000, y = 91.619, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111003, gadget_id = 70710847, pos = { x = -411.990, y = 240.576, z = 2813.457 }, rot = { x = 0.000, y = 336.138, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111004, gadget_id = 70710847, pos = { x = -406.647, y = 240.600, z = 2818.492 }, rot = { x = 0.000, y = 244.004, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111005, gadget_id = 70710849, pos = { x = -412.304, y = 245.347, z = 2810.536 }, rot = { x = 0.000, y = 104.686, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111006, gadget_id = 70710850, pos = { x = -403.873, y = 245.347, z = 2818.572 }, rot = { x = 0.000, y = 175.495, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111008, gadget_id = 70710831, pos = { x = -411.528, y = 242.454, z = 2826.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111009, gadget_id = 70710831, pos = { x = -414.382, y = 245.200, z = 2823.754 }, rot = { x = 0.000, y = 329.305, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111010, gadget_id = 70710831, pos = { x = -416.920, y = 245.200, z = 2821.400 }, rot = { x = 0.000, y = 316.997, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 111011, gadget_id = 70710831, pos = { x = -419.535, y = 242.454, z = 2818.905 }, rot = { x = 0.000, y = 322.159, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111007, name = "QUEST_START_111007", event = EventType.EVENT_QUEST_START, source = "1300807", condition = "", action = "action_EVENT_QUEST_START_111007", trigger_count = 0 }
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
		gadgets = { 111001, 111002, 111003, 111004, 111005, 111006, 111008, 111009, 111010, 111011 },
		regions = { },
		triggers = { "QUEST_START_111007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 111001, 111002, 111003, 111004 },
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
function action_EVENT_QUEST_START_111007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302111, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end