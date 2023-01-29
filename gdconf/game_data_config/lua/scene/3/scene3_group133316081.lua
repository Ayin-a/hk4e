-- 基础信息
local base_info = {
	group_id = 133316081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 24010101, pos = { x = 1103.462, y = 102.208, z = 6506.458 }, rot = { x = 0.000, y = 210.949, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 30 },
	{ config_id = 81002, monster_id = 24010101, pos = { x = 1091.563, y = 102.260, z = 6502.931 }, rot = { x = 0.000, y = 114.487, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 30 },
	{ config_id = 81003, monster_id = 24010101, pos = { x = 1111.282, y = 102.321, z = 6493.326 }, rot = { x = 0.000, y = 290.710, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 30 },
	{ config_id = 81004, monster_id = 24010101, pos = { x = 1099.421, y = 102.271, z = 6488.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 30 }
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
	{ config_id = 1081005, name = "ANY_MONSTER_DIE_81005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81005", action = "action_EVENT_ANY_MONSTER_DIE_81005" }
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
		monsters = { 81001, 81002, 81003, 81004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_81005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133316081) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81005(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7325615")
	
	return 0
end