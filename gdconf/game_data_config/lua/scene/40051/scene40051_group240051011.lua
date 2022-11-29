-- 基础信息
local base_info = {
	group_id = 240051011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 24030201, pos = { x = 492.281, y = 145.199, z = 418.684 }, rot = { x = 0.000, y = 284.075, z = 0.000 }, level = 1, disableWander = true, isElite = true, pose_id = 102 },
	{ config_id = 11002, monster_id = 24030101, pos = { x = 477.580, y = 145.064, z = 413.590 }, rot = { x = 0.000, y = 26.014, z = 0.000 }, level = 1, disableWander = true, isElite = true, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11003, gadget_id = 70211121, pos = { x = 484.631, y = 145.169, z = 420.974 }, rot = { x = 0.000, y = 340.502, z = 0.000 }, level = 1, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011004, name = "ANY_MONSTER_DIE_11004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11004", action = "action_EVENT_ANY_MONSTER_DIE_11004" }
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
		monsters = { 11001, 11002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11003 },
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
function condition_EVENT_ANY_MONSTER_DIE_11004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051011, 2)
	
	return 0
end