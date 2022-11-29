-- 基础信息
local base_info = {
	group_id = 240052009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 25310101, pos = { x = 855.737, y = 76.861, z = 436.864 }, rot = { x = 0.000, y = 342.259, z = 0.000 }, level = 1, disableWander = true, affix = { 6111 }, isElite = true, pose_id = 9003 },
	{ config_id = 9002, monster_id = 25310201, pos = { x = 854.600, y = 76.866, z = 439.495 }, rot = { x = 0.000, y = 158.891, z = 0.000 }, level = 1, disableWander = true, affix = { 6111 }, isElite = true, pose_id = 9003 },
	{ config_id = 9003, monster_id = 25310301, pos = { x = 852.513, y = 76.599, z = 437.190 }, rot = { x = 0.000, y = 72.660, z = 0.000 }, level = 1, disableWander = true, affix = { 6111 }, isElite = true, pose_id = 9001 },
	{ config_id = 9006, monster_id = 23050101, pos = { x = 859.086, y = 76.406, z = 439.210 }, rot = { x = 0.000, y = 252.854, z = 0.000 }, level = 1, disableWander = true, affix = { 6110 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9004, gadget_id = 70211021, pos = { x = 855.406, y = 76.868, z = 438.204 }, rot = { x = 0.000, y = 248.140, z = 0.000 }, level = 1, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009005, name = "ANY_MONSTER_DIE_9005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9005", action = "action_EVENT_ANY_MONSTER_DIE_9005" }
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
		triggers = { "ANY_MONSTER_DIE_9005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 9001, 9002, 9003, 9006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9004 },
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
function condition_EVENT_ANY_MONSTER_DIE_9005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052009, 3)
	
	return 0
end