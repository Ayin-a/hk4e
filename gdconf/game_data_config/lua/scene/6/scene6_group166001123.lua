-- 基础信息
local base_info = {
	group_id = 166001123
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 123001, monster_id = 22070201, pos = { x = 465.789, y = 438.582, z = 384.036 }, rot = { x = 0.000, y = 226.676, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 4159 }, pose_id = 101, area_id = 300 },
	{ config_id = 123002, monster_id = 22070201, pos = { x = 463.368, y = 438.054, z = 386.225 }, rot = { x = 0.000, y = 193.589, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 4159 }, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 123003, gadget_id = 70300087, pos = { x = 455.807, y = 438.154, z = 379.270 }, rot = { x = 4.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 123005, gadget_id = 70310003, pos = { x = 456.415, y = 436.983, z = 392.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 123006, gadget_id = 70220066, pos = { x = 457.604, y = 437.613, z = 389.913 }, rot = { x = 6.400, y = 325.919, z = 1.490 }, level = 1, area_id = 300 },
	{ config_id = 123008, gadget_id = 70220065, pos = { x = 460.162, y = 437.850, z = 388.964 }, rot = { x = 0.000, y = 55.634, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 123009, gadget_id = 70220065, pos = { x = 452.712, y = 436.981, z = 385.747 }, rot = { x = 0.000, y = 4.090, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 123012, gadget_id = 70220066, pos = { x = 458.804, y = 437.299, z = 392.558 }, rot = { x = 7.161, y = 356.917, z = 10.864 }, level = 1, area_id = 300 },
	{ config_id = 123018, gadget_id = 70300089, pos = { x = 420.930, y = 429.635, z = 378.700 }, rot = { x = 24.666, y = 334.390, z = 12.137 }, level = 1, area_id = 300 },
	{ config_id = 123019, gadget_id = 70300089, pos = { x = 477.354, y = 444.637, z = 393.549 }, rot = { x = 331.047, y = 54.088, z = 12.037 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1123004, name = "ANY_MONSTER_DIE_123004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_123004", action = "action_EVENT_ANY_MONSTER_DIE_123004" },
	{ config_id = 1123020, name = "QUEST_START_123020", event = EventType.EVENT_QUEST_START, source = "800502", condition = "", action = "action_EVENT_QUEST_START_123020", trigger_count = 0 }
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
		gadgets = { 123003, 123005, 123006, 123008, 123009, 123012, 123018, 123019 },
		regions = { },
		triggers = { "QUEST_START_123020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 123001, 123002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_123004" },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_123004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_123004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001123") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001123, 2)
	
	return 0
end