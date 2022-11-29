-- 基础信息
local base_info = {
	group_id = 250015025
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25001, monster_id = 21010101, pos = { x = -127.824, y = 5.738, z = 32.952 }, rot = { x = 0.000, y = 280.180, z = 0.000 }, level = 25, pose_id = 9002 },
	{ config_id = 25002, monster_id = 21010101, pos = { x = -129.244, y = 5.738, z = 32.761 }, rot = { x = 0.000, y = 256.890, z = 0.000 }, level = 25, pose_id = 9002 },
	{ config_id = 25003, monster_id = 23020101, pos = { x = -122.977, y = 5.738, z = 22.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25004, monster_id = 21011201, pos = { x = -125.566, y = 5.738, z = 19.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25005, monster_id = 21011201, pos = { x = -119.462, y = 5.738, z = 21.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25006, monster_id = 21010101, pos = { x = -112.446, y = 5.738, z = 24.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, pose_id = 9002 },
	{ config_id = 25007, monster_id = 21011201, pos = { x = -126.659, y = 5.738, z = 25.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25008, monster_id = 21010901, pos = { x = -114.692, y = 5.738, z = 12.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25009, monster_id = 21010901, pos = { x = -128.975, y = 5.738, z = 31.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25010, monster_id = 21010901, pos = { x = -130.403, y = 5.738, z = 13.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25011, monster_id = 21010901, pos = { x = -115.184, y = 5.738, z = 31.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25049, monster_id = 21010101, pos = { x = -112.274, y = 5.738, z = 26.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 25028, gadget_id = 70220019, pos = { x = -113.182, y = 5.738, z = 12.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25029, gadget_id = 70220019, pos = { x = -113.029, y = 5.738, z = 32.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25030, gadget_id = 70220019, pos = { x = -134.493, y = 5.738, z = 21.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25031, gadget_id = 70220008, pos = { x = -114.880, y = 5.738, z = 14.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25036, gadget_id = 70300093, pos = { x = -134.259, y = 5.738, z = 18.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25038, gadget_id = 70300105, pos = { x = -131.713, y = 5.738, z = 28.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25039, gadget_id = 70310006, pos = { x = -127.495, y = 5.738, z = 26.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25046, gadget_id = 70220005, pos = { x = -114.011, y = 5.738, z = 26.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1025012, name = "ANY_MONSTER_DIE_25012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25012", action = "action_EVENT_ANY_MONSTER_DIE_25012" },
	{ config_id = 1025047, name = "ANY_MONSTER_DIE_25047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25047", action = "action_EVENT_ANY_MONSTER_DIE_25047" }
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
		monsters = { 25001, 25002, 25006, 25049 },
		gadgets = { 25028, 25029, 25030, 25031, 25036, 25038, 25039, 25046 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25047" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 25004, 25005, 25007, 25008, 25009, 25010, 25011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 25003 },
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
function condition_EVENT_ANY_MONSTER_DIE_25012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015025, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25047(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015025, 2)
	
	return 0
end