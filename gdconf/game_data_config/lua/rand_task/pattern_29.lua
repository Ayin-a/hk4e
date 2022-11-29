-- 基础信息
local base_info = {
	group_id = 139999029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 26090201, pos = { x = -0.034, y = 0.025, z = -2.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 },
	{ config_id = 29002, monster_id = 26090701, pos = { x = -1.492, y = 0.007, z = 2.278 }, rot = { x = 0.000, y = 142.900, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 },
	{ config_id = 29003, monster_id = 26090201, pos = { x = 2.546, y = 0.058, z = 1.694 }, rot = { x = 0.000, y = 150.336, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 3 },
	{ config_id = 29004, monster_id = 26090901, pos = { x = -2.057, y = -0.007, z = -1.484 }, rot = { x = 0.000, y = 323.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 },
	{ config_id = 29005, monster_id = 26090901, pos = { x = 2.547, y = 0.234, z = -1.589 }, rot = { x = 0.000, y = 229.359, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 },
	{ config_id = 29006, monster_id = 26090901, pos = { x = -0.012, y = -0.014, z = 2.729 }, rot = { x = 0.000, y = 100.885, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 },
	{ config_id = 29007, monster_id = 26090701, pos = { x = 3.350, y = 0.130, z = -0.149 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 },
	{ config_id = 29008, monster_id = 26090701, pos = { x = -1.279, y = -0.015, z = -2.201 }, rot = { x = 0.000, y = 291.531, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 },
	{ config_id = 29009, monster_id = 26090401, pos = { x = -1.464, y = -0.002, z = 3.091 }, rot = { x = 0.000, y = 65.997, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 103, area_id = 3 }
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
	{ config_id = 1029010, name = "ANY_MONSTER_DIE_29010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29010", action = "action_EVENT_ANY_MONSTER_DIE_29010" }
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
	rand_suite = true
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
		monsters = { 29001, 29002, 29003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 29004, 29005, 29006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 29007, 29008, 29009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29010(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 29, true)
	
	
	return 0
end