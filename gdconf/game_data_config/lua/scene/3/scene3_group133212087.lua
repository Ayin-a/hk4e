-- 基础信息
local base_info = {
	group_id = 133212087
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87002, monster_id = 25080301, pos = { x = -4004.213, y = 200.475, z = -2577.220 }, rot = { x = 0.000, y = 94.329, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1001, area_id = 13 },
	{ config_id = 87003, monster_id = 25080201, pos = { x = -3998.596, y = 200.307, z = -2577.771 }, rot = { x = 0.000, y = 278.992, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 87004, monster_id = 25080201, pos = { x = -3999.632, y = 200.182, z = -2582.847 }, rot = { x = 0.000, y = 300.498, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 87001, gadget_id = 70310006, pos = { x = -4001.263, y = 200.225, z = -2580.914 }, rot = { x = 1.788, y = 359.958, z = 357.316 }, level = 27, area_id = 13 },
	{ config_id = 87006, gadget_id = 70220048, pos = { x = -4008.371, y = 200.698, z = -2573.650 }, rot = { x = 354.654, y = 359.833, z = 3.577 }, level = 27, area_id = 13 },
	{ config_id = 87007, gadget_id = 70220052, pos = { x = -4003.269, y = 200.140, z = -2582.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 87008, gadget_id = 70900393, pos = { x = -4004.393, y = 200.577, z = -2575.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1087005, name = "MONSTER_BATTLE_87005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_87005", action = "action_EVENT_MONSTER_BATTLE_87005" }
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
		monsters = { 87002 },
		gadgets = { 87001, 87006, 87007, 87008 },
		regions = { },
		triggers = { "MONSTER_BATTLE_87005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 87003, 87004 },
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
function condition_EVENT_MONSTER_BATTLE_87005(context, evt)
	if 87002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_87005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212087, 2)
	
	return 0
end