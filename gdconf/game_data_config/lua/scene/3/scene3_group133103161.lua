-- 基础信息
local base_info = {
	group_id = 133103161
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 20010201, pos = { x = 680.688, y = 231.955, z = 1707.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", disableWander = true, pose_id = 201, area_id = 6 },
	{ config_id = 161002, monster_id = 20010101, pos = { x = 673.795, y = 231.748, z = 1707.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 6 },
	{ config_id = 161003, monster_id = 20010101, pos = { x = 688.108, y = 233.585, z = 1707.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 6 },
	{ config_id = 161004, monster_id = 20010101, pos = { x = 677.268, y = 231.633, z = 1713.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 6 },
	{ config_id = 161005, monster_id = 20010101, pos = { x = 683.717, y = 232.530, z = 1713.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 6 },
	{ config_id = 161006, monster_id = 20010101, pos = { x = 677.016, y = 231.857, z = 1701.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 6 },
	{ config_id = 161007, monster_id = 20010101, pos = { x = 684.140, y = 232.773, z = 1701.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161009, gadget_id = 70211011, pos = { x = 680.593, y = 231.942, z = 1705.963 }, rot = { x = 1.813, y = 359.835, z = 7.996 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161008, name = "ANY_MONSTER_DIE_161008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_161008", action = "action_EVENT_ANY_MONSTER_DIE_161008" },
	{ config_id = 1161010, name = "MONSTER_BATTLE_161010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_161010", action = "action_EVENT_MONSTER_BATTLE_161010" }
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
		monsters = { 161001, 161002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_161008", "MONSTER_BATTLE_161010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 161009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 161003, 161004, 161005, 161006, 161007 },
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
function condition_EVENT_ANY_MONSTER_DIE_161008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_161008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103161, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_161010(context, evt)
	if 161001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_161010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103161, 3)
	
	return 0
end