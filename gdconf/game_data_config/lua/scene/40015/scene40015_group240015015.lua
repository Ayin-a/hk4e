-- 基础信息
local base_info = {
	group_id = 240015015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 25010401, pos = { x = 2.680, y = 69.504, z = 70.697 }, rot = { x = 0.000, y = 329.326, z = 0.000 }, level = 1 },
	{ config_id = 15002, monster_id = 25030201, pos = { x = 3.870, y = 69.504, z = 81.570 }, rot = { x = 0.000, y = 299.178, z = 0.000 }, level = 1 },
	{ config_id = 15003, monster_id = 25010601, pos = { x = -9.131, y = 69.504, z = 76.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15004, monster_id = 25010401, pos = { x = 6.127, y = 69.434, z = 75.359 }, rot = { x = 0.000, y = 303.055, z = 0.000 }, level = 1 },
	{ config_id = 15005, monster_id = 25010601, pos = { x = -4.770, y = 69.433, z = 70.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015011, name = "ANY_MONSTER_DIE_15011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15011", action = "action_EVENT_ANY_MONSTER_DIE_15011" }
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
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 15001, 15002, 15003, 15004, 15005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_ANY_MONSTER_DIE_15011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240015008, 2)
	
	return 0
end