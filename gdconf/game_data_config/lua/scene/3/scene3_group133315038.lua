-- 基础信息
local base_info = {
	group_id = 133315038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 26090101, pos = { x = -530.329, y = 102.864, z = 2374.056 }, rot = { x = 0.000, y = 251.676, z = 0.000 }, level = 27, drop_tag = "蕈兽", isOneoff = true, pose_id = 102, area_id = 24 },
	{ config_id = 38002, monster_id = 26090101, pos = { x = -526.402, y = 103.108, z = 2370.242 }, rot = { x = 0.000, y = 291.026, z = 0.000 }, level = 27, drop_tag = "蕈兽", isOneoff = true, pose_id = 102, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 38005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -517.128, y = 99.470, z = 2382.470 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1038005, name = "ENTER_REGION_38005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_38005" },
	{ config_id = 1038006, name = "ANY_MONSTER_DIE_38006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38006", action = "action_EVENT_ANY_MONSTER_DIE_38006" }
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
	end_suite = 3,
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
		regions = { 38005 },
		triggers = { "ENTER_REGION_38005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 38001, 38002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_ENTER_REGION_38005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315038, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133315038) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315038, 3)
	
	return 0
end