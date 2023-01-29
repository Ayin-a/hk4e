-- 基础信息
local base_info = {
	group_id = 133304577
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 577001, monster_id = 28060612, pos = { x = -1384.573, y = 223.263, z = 3010.162 }, rot = { x = 0.000, y = 243.106, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 21 },
	{ config_id = 577003, monster_id = 25210502, pos = { x = -1383.357, y = 223.572, z = 3014.341 }, rot = { x = 0.000, y = 165.652, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 577004, monster_id = 25210402, pos = { x = -1383.039, y = 223.238, z = 3012.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 577005, monster_id = 25210302, pos = { x = -1385.530, y = 223.453, z = 3011.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 577006, monster_id = 25210203, pos = { x = -1385.566, y = 223.786, z = 3013.385 }, rot = { x = 0.000, y = 178.376, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 }
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
	{ config_id = 1577002, name = "ANY_MONSTER_DIE_577002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_577002", action = "action_EVENT_ANY_MONSTER_DIE_577002", trigger_count = 0 }
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
		monsters = { 577001, 577003, 577004, 577005, 577006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_577002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_577002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_577002(context, evt)
	ScriptLib.AddQuestProgress(context, "Q130240401")
	
	return 0
end