-- 基础信息
local base_info = {
	group_id = 133303185
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 185001, monster_id = 26120101, pos = { x = -1459.748, y = 275.799, z = 3591.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 102, area_id = 23 },
	{ config_id = 185005, monster_id = 26090101, pos = { x = -1464.064, y = 276.375, z = 3591.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 23 },
	{ config_id = 185006, monster_id = 26090101, pos = { x = -1458.903, y = 275.459, z = 3588.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 23 },
	{ config_id = 185007, monster_id = 26090101, pos = { x = -1459.261, y = 276.434, z = 3594.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 23 },
	{ config_id = 185008, monster_id = 26090401, pos = { x = -1455.947, y = 276.232, z = 3592.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 185009, monster_id = 26090401, pos = { x = -1461.151, y = 276.612, z = 3594.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 185010, monster_id = 26090401, pos = { x = -1461.992, y = 275.707, z = 3589.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
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
	{ config_id = 1185002, name = "ANY_MONSTER_DIE_185002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_185002", action = "action_EVENT_ANY_MONSTER_DIE_185002" }
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
		monsters = { 185001, 185005, 185006, 185007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_185002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 185008, 185009, 185010 },
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
function condition_EVENT_ANY_MONSTER_DIE_185002(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133303185) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_185002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303185, 2)
	
	return 0
end