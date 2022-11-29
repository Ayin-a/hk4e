-- 基础信息
local base_info = {
	group_id = 133001605
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605001, monster_id = 25030201, pos = { x = 1125.645, y = 302.034, z = -1530.396 }, rot = { x = 0.000, y = 44.271, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9003, area_id = 2 },
	{ config_id = 605002, monster_id = 25070101, pos = { x = 1124.858, y = 302.576, z = -1523.201 }, rot = { x = 0.000, y = 174.846, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 605003, monster_id = 25010401, pos = { x = 1130.682, y = 301.501, z = -1538.326 }, rot = { x = 0.579, y = 345.618, z = 2.256 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 605004, monster_id = 25010601, pos = { x = 1133.005, y = 301.268, z = -1538.585 }, rot = { x = 0.000, y = 322.635, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 605005, monster_id = 25030201, pos = { x = 1130.875, y = 301.499, z = -1536.095 }, rot = { x = 0.000, y = 326.707, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 605006, monster_id = 25010201, pos = { x = 1128.688, y = 301.852, z = -1523.473 }, rot = { x = 0.000, y = 155.917, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 605007, monster_id = 25010301, pos = { x = 1135.816, y = 300.620, z = -1530.103 }, rot = { x = 0.000, y = 10.939, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9006, area_id = 2 },
	{ config_id = 605010, monster_id = 25010201, pos = { x = 1135.614, y = 300.597, z = -1528.185 }, rot = { x = 0.000, y = 191.169, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9009, area_id = 2 },
	{ config_id = 605012, monster_id = 25010201, pos = { x = 1133.908, y = 300.854, z = -1526.218 }, rot = { x = 0.000, y = 247.154, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 605013, monster_id = 25030201, pos = { x = 1122.066, y = 302.314, z = -1531.553 }, rot = { x = 0.000, y = 73.279, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 605014, monster_id = 25070101, pos = { x = 1120.487, y = 302.579, z = -1529.866 }, rot = { x = 0.000, y = 85.161, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 605015, monster_id = 25010701, pos = { x = 1130.774, y = 301.397, z = -1526.075 }, rot = { x = 0.000, y = 244.614, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 }
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
	{ config_id = 1605008, name = "ANY_MONSTER_DIE_605008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_605008", action = "action_EVENT_ANY_MONSTER_DIE_605008" },
	{ config_id = 1605009, name = "ANY_MONSTER_DIE_605009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_605009", action = "action_EVENT_ANY_MONSTER_DIE_605009" },
	{ config_id = 1605011, name = "ANY_MONSTER_DIE_605011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_605011", action = "action_EVENT_ANY_MONSTER_DIE_605011" }
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
		monsters = { 605001, 605002, 605007, 605010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_605008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 605003, 605004, 605005, 605006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_605011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 605012, 605013, 605014, 605015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_605009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_605008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_605008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001605, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_605009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_605009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_605011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_605011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001605, 3)
	
	return 0
end