-- 基础信息
local base_info = {
	group_id = 133304099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 26090201, pos = { x = -1350.540, y = 177.288, z = 3169.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 99002, monster_id = 26090201, pos = { x = -1345.152, y = 177.807, z = 3177.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 99003, monster_id = 26120101, pos = { x = -1345.721, y = 177.282, z = 3171.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 },
	{ config_id = 99004, monster_id = 26090801, pos = { x = -1346.844, y = 177.247, z = 3168.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 99005, monster_id = 26090801, pos = { x = -1343.154, y = 178.028, z = 3174.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 99008, monster_id = 26090701, pos = { x = -1343.137, y = 177.860, z = 3173.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 99009, monster_id = 26090701, pos = { x = -1350.984, y = 177.229, z = 3175.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
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
	{ config_id = 1099007, name = "ANY_MONSTER_DIE_99007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99007", action = "action_EVENT_ANY_MONSTER_DIE_99007" }
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
		monsters = { 99001, 99002, 99003, 99009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 99004, 99005, 99008 },
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
function condition_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133304099) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304099, 2)
	
	return 0
end