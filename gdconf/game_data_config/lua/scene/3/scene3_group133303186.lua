-- 基础信息
local base_info = {
	group_id = 133303186
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 186001, monster_id = 26090201, pos = { x = -1858.654, y = 370.620, z = 3607.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 23 },
	{ config_id = 186002, monster_id = 26090201, pos = { x = -1866.069, y = 371.932, z = 3607.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 23 },
	{ config_id = 186004, monster_id = 26120201, pos = { x = -1863.204, y = 370.430, z = 3612.772 }, rot = { x = 0.000, y = 187.494, z = 0.000 }, level = 1, drop_tag = "大蕈兽", isElite = true, pose_id = 102, area_id = 23 },
	{ config_id = 186005, monster_id = 26090401, pos = { x = -1859.319, y = 371.043, z = 3604.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 186006, monster_id = 26090401, pos = { x = -1864.360, y = 371.791, z = 3605.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 186007, monster_id = 26120101, pos = { x = -1861.298, y = 370.760, z = 3608.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", isElite = true, pose_id = 201, area_id = 23 }
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
	{ config_id = 1186003, name = "ANY_MONSTER_DIE_186003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_186003", action = "action_EVENT_ANY_MONSTER_DIE_186003" }
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
		monsters = { 186001, 186002, 186004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_186003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 186005, 186006, 186007 },
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
function condition_EVENT_ANY_MONSTER_DIE_186003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133303186) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_186003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303186, 2)
	
	return 0
end

require "V3_0/DeathFieldStandard"