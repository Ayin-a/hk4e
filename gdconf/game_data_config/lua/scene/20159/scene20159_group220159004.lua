-- 基础信息
local base_info = {
	group_id = 220159004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 26120101, pos = { x = 480.939, y = 148.591, z = 419.188 }, rot = { x = 0.000, y = 12.151, z = 0.000 }, level = 1, pose_id = 201 },
	{ config_id = 4002, monster_id = 26090401, pos = { x = 484.484, y = 145.026, z = 423.628 }, rot = { x = 0.000, y = 335.975, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4003, monster_id = 26090401, pos = { x = 489.777, y = 145.040, z = 424.230 }, rot = { x = 0.000, y = 316.540, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4004, monster_id = 26090401, pos = { x = 479.180, y = 144.970, z = 422.624 }, rot = { x = 0.000, y = 0.344, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4005, monster_id = 26120101, pos = { x = 490.689, y = 146.958, z = 419.741 }, rot = { x = 0.000, y = 341.599, z = 0.000 }, level = 1, pose_id = 201 }
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
	{ config_id = 1004009, name = "ANY_MONSTER_DIE_4009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4009", action = "action_EVENT_ANY_MONSTER_DIE_4009" }
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
		monsters = { 4001, 4002, 4003, 4004, 4005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220159005, 2)
	
	return 0
end