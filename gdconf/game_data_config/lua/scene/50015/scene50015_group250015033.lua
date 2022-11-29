-- 基础信息
local base_info = {
	group_id = 250015033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33002, monster_id = 21011201, pos = { x = -52.740, y = 0.500, z = -27.314 }, rot = { x = 0.000, y = 331.530, z = 0.000 }, level = 18, disableWander = true, pose_id = 9012 },
	{ config_id = 33004, monster_id = 21011201, pos = { x = -59.801, y = 0.965, z = -18.306 }, rot = { x = 0.000, y = 220.985, z = 0.000 }, level = 18, disableWander = true, pose_id = 9012 },
	{ config_id = 33005, monster_id = 20011301, pos = { x = -60.879, y = 0.959, z = -19.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 33007, monster_id = 20011301, pos = { x = -54.270, y = 0.960, z = -27.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 33008, monster_id = 21020301, pos = { x = -60.743, y = 0.500, z = -25.526 }, rot = { x = 0.000, y = 78.276, z = 0.000 }, level = 25 },
	{ config_id = 33009, monster_id = 21020301, pos = { x = -60.743, y = 0.500, z = -25.526 }, rot = { x = 0.000, y = 78.276, z = 0.000 }, level = 25 },
	{ config_id = 33027, monster_id = 21011201, pos = { x = -49.404, y = 0.500, z = -32.501 }, rot = { x = 0.000, y = 16.000, z = 0.000 }, level = 18, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33010, gadget_id = 70300077, pos = { x = -49.972, y = 0.500, z = -19.215 }, rot = { x = 0.000, y = 72.700, z = 0.000 }, level = 1 },
	{ config_id = 33011, gadget_id = 70300102, pos = { x = -54.264, y = 0.500, z = -27.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33012, gadget_id = 70300102, pos = { x = -60.768, y = 0.500, z = -19.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33013, gadget_id = 70300089, pos = { x = -65.327, y = 0.500, z = -29.898 }, rot = { x = 0.000, y = 99.900, z = 0.000 }, level = 1 },
	{ config_id = 33014, gadget_id = 70300089, pos = { x = -47.642, y = 0.500, z = -23.558 }, rot = { x = 0.000, y = 72.145, z = 0.000 }, level = 1 },
	{ config_id = 33015, gadget_id = 70300088, pos = { x = -60.783, y = 0.500, z = -33.750 }, rot = { x = 0.000, y = 281.251, z = 0.000 }, level = 1 },
	{ config_id = 33016, gadget_id = 70300088, pos = { x = -55.699, y = 0.500, z = -15.047 }, rot = { x = 0.000, y = 100.600, z = 0.000 }, level = 1 },
	{ config_id = 33017, gadget_id = 70300088, pos = { x = -66.470, y = 0.500, z = -23.918 }, rot = { x = 0.000, y = 12.163, z = 0.000 }, level = 1 },
	{ config_id = 33022, gadget_id = 70220005, pos = { x = -50.338, y = 0.500, z = -19.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33023, gadget_id = 70220005, pos = { x = -66.432, y = 0.500, z = -25.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033006, name = "ANY_MONSTER_DIE_33006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "33008", condition = "condition_EVENT_ANY_MONSTER_DIE_33006", action = "action_EVENT_ANY_MONSTER_DIE_33006" }
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
		-- description = suite_1,
		monsters = { 33002, 33004, 33005, 33007, 33008 },
		gadgets = { 33010, 33011, 33012, 33013, 33014, 33015, 33016, 33017, 33022, 33023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 33009, 33027 },
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
function condition_EVENT_ANY_MONSTER_DIE_33006(context, evt)
	-- 判断剩余怪物数量是否是3
	if ScriptLib.GetGroupMonsterCount(context) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015033, 2)
	
	return 0
end