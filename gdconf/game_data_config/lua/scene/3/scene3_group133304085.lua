-- 基础信息
local base_info = {
	group_id = 133304085
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85001, monster_id = 26090201, pos = { x = -1871.359, y = 259.786, z = 2798.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 85002, monster_id = 26090201, pos = { x = -1876.203, y = 259.657, z = 2797.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 85003, monster_id = 26090201, pos = { x = -1875.609, y = 260.071, z = 2791.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 85004, monster_id = 26120201, pos = { x = -1874.377, y = 259.666, z = 2798.452 }, rot = { x = 0.000, y = 143.189, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 102, area_id = 21 },
	{ config_id = 85008, monster_id = 26090401, pos = { x = -1870.251, y = 259.819, z = 2795.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 21 },
	{ config_id = 85009, monster_id = 26090401, pos = { x = -1877.160, y = 259.732, z = 2796.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 21 },
	{ config_id = 85010, monster_id = 26090401, pos = { x = -1874.024, y = 259.962, z = 2792.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 102, area_id = 21 }
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
	{ config_id = 1085007, name = "ANY_MONSTER_DIE_85007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85007", action = "action_EVENT_ANY_MONSTER_DIE_85007" }
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
		monsters = { 85004, 85008, 85009, 85010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 85001, 85002, 85003 },
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
function condition_EVENT_ANY_MONSTER_DIE_85007(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133304085) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304085, 2)
	
	return 0
end