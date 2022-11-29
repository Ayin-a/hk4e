-- 基础信息
local base_info = {
	group_id = 220146007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 26090401, pos = { x = 252.300, y = 96.972, z = 685.926 }, rot = { x = 0.000, y = 354.642, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 7002, monster_id = 26090401, pos = { x = 253.689, y = 96.878, z = 701.822 }, rot = { x = 0.000, y = 204.872, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 7003, monster_id = 26090201, pos = { x = 247.536, y = 96.745, z = 702.381 }, rot = { x = 0.000, y = 135.900, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 7004, monster_id = 26090201, pos = { x = 244.915, y = 96.520, z = 686.780 }, rot = { x = 0.000, y = 47.632, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 7005, monster_id = 26090401, pos = { x = 258.209, y = 96.769, z = 692.206 }, rot = { x = 0.000, y = 281.067, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
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
	{ config_id = 1007006, name = "ANY_MONSTER_DIE_7006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7006", action = "action_EVENT_ANY_MONSTER_DIE_7006" }
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
		triggers = { "ANY_MONSTER_DIE_7006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002, 7003, 7004, 7005 },
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
function condition_EVENT_ANY_MONSTER_DIE_7006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220146003, 2)
	
	return 0
end