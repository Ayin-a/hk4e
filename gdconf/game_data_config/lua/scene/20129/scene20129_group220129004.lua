-- 基础信息
local base_info = {
	group_id = 220129004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 25010201, pos = { x = 328.566, y = 200.129, z = 496.020 }, rot = { x = 0.000, y = 268.603, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4003, monster_id = 25070101, pos = { x = 328.210, y = 200.130, z = 493.580 }, rot = { x = 0.000, y = 251.122, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4004, monster_id = 25010201, pos = { x = 328.698, y = 200.013, z = 490.530 }, rot = { x = 0.000, y = 226.308, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4005, monster_id = 25010701, pos = { x = 332.148, y = 200.138, z = 493.505 }, rot = { x = 0.000, y = 261.467, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4006, monster_id = 25010701, pos = { x = 331.936, y = 199.981, z = 496.956 }, rot = { x = 0.000, y = 303.537, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4007, monster_id = 25010201, pos = { x = 331.714, y = 200.028, z = 491.170 }, rot = { x = 0.000, y = 212.017, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4009, gadget_id = 70800195, pos = { x = 328.934, y = 199.981, z = 496.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "ANY_MONSTER_DIE_4002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4002", action = "action_EVENT_ANY_MONSTER_DIE_4002" },
	{ config_id = 1004010, name = "ANY_MONSTER_DIE_4010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4010", action = "action_EVENT_ANY_MONSTER_DIE_4010" }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4003, 4004 },
		gadgets = { 4009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4005, 4006, 4007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220129004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "103008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end