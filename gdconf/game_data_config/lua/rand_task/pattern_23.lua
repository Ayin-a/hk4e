-- 基础信息
local base_info = {
	group_id = 139999023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23001, monster_id = 21010201, pos = { x = -1.931, y = 0.008, z = -0.267 }, rot = { x = 0.000, y = 71.258, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23002, monster_id = 21010201, pos = { x = 2.379, y = -0.063, z = -0.095 }, rot = { x = 0.000, y = 241.458, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23003, monster_id = 21010201, pos = { x = -0.138, y = -0.152, z = -1.989 }, rot = { x = 0.000, y = 4.210, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23005, monster_id = 21010101, pos = { x = -1.931, y = 0.008, z = -0.267 }, rot = { x = 0.000, y = 71.258, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23008, monster_id = 21010101, pos = { x = 2.379, y = -0.063, z = -0.095 }, rot = { x = 0.000, y = 241.458, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23009, monster_id = 21010101, pos = { x = -0.138, y = -0.152, z = -1.989 }, rot = { x = 0.000, y = 4.210, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23010, monster_id = 21010301, pos = { x = -1.931, y = 0.008, z = -0.267 }, rot = { x = 0.000, y = 71.258, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23011, monster_id = 21010301, pos = { x = 2.379, y = -0.063, z = -0.095 }, rot = { x = 0.000, y = 241.458, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 23012, monster_id = 21010301, pos = { x = -0.138, y = -0.152, z = -1.989 }, rot = { x = 0.000, y = 4.210, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 }
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
	{ config_id = 1023006, name = "ANY_MONSTER_DIE_23006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23006", action = "action_EVENT_ANY_MONSTER_DIE_23006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 23007, shape = RegionShape.SPHERE, radius = 50, pos = { x = 0.939, y = -0.085, z = -0.503 }, area_id = 3 }
	},
	triggers = {
		{ config_id = 1023007, name = "ENTER_REGION_23007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23007", action = "action_EVENT_ENTER_REGION_23007", forbid_guest = false }
	}
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
		monsters = { 23001, 23002, 23003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 23005, 23008, 23009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 23010, 23011, 23012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23006(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 23, true)
	
	
	return 0
end