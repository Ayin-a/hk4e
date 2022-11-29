-- 基础信息
local base_info = {
	group_id = 133304193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 26090701, pos = { x = -1171.657, y = 277.892, z = 2821.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 193002, monster_id = 26090801, pos = { x = -1162.146, y = 278.300, z = 2820.694 }, rot = { x = 0.000, y = 243.519, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 193003, monster_id = 26090201, pos = { x = -1167.345, y = 278.440, z = 2818.182 }, rot = { x = 0.000, y = 61.735, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 193004, monster_id = 26090801, pos = { x = -1163.010, y = 280.135, z = 2810.963 }, rot = { x = 0.000, y = 61.735, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 193005, monster_id = 26090701, pos = { x = -1168.172, y = 280.237, z = 2811.571 }, rot = { x = 0.000, y = 30.778, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 193006, monster_id = 26090801, pos = { x = -1168.001, y = 278.880, z = 2816.820 }, rot = { x = 0.000, y = 274.297, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 193007, monster_id = 26090201, pos = { x = -1158.373, y = 276.366, z = 2821.581 }, rot = { x = 0.000, y = 92.513, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 193008, monster_id = 26090801, pos = { x = -1162.308, y = 278.492, z = 2816.934 }, rot = { x = 0.000, y = 92.513, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 }
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
	{ config_id = 1193009, name = "ANY_MONSTER_DIE_193009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_193009", action = "action_EVENT_ANY_MONSTER_DIE_193009" },
	{ config_id = 1193010, name = "ANY_MONSTER_DIE_193010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_193010", action = "action_EVENT_ANY_MONSTER_DIE_193010", trigger_count = 0 }
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
		monsters = { 193001, 193002, 193003, 193004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_193009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 193005, 193006, 193007, 193008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_193010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_193009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_193009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304193, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_193010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_193010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133304193") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end