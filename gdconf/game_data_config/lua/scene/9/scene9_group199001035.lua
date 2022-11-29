-- 基础信息
local base_info = {
	group_id = 199001035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 20010601, pos = { x = 705.841, y = 120.132, z = 266.128 }, rot = { x = 0.000, y = 226.078, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 402 },
	{ config_id = 35002, monster_id = 20010601, pos = { x = 706.623, y = 120.135, z = 257.964 }, rot = { x = 0.000, y = 306.733, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 402 },
	{ config_id = 35004, monster_id = 20011001, pos = { x = 698.925, y = 120.000, z = 265.884 }, rot = { x = 0.000, y = 133.690, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 402 },
	{ config_id = 35005, monster_id = 20011001, pos = { x = 706.998, y = 120.000, z = 251.422 }, rot = { x = 0.000, y = 322.156, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 402 },
	{ config_id = 35006, monster_id = 20011101, pos = { x = 696.510, y = 120.000, z = 266.160 }, rot = { x = 0.000, y = 120.977, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 402 }
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
	{ config_id = 1035003, name = "ANY_MONSTER_DIE_35003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35003", action = "action_EVENT_ANY_MONSTER_DIE_35003", trigger_count = 0 },
	{ config_id = 1035007, name = "GROUP_LOAD_35007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_35007", action = "action_EVENT_GROUP_LOAD_35007", trigger_count = 0 }
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
		monsters = { 35001, 35002, 35004, 35005, 35006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35003", "GROUP_LOAD_35007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 199001035) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007012") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_35007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 199001035) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_35007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007012") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end