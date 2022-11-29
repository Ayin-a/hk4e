-- 基础信息
local base_info = {
	group_id = 133304088
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 26120101, pos = { x = -1821.332, y = 261.503, z = 2714.898 }, rot = { x = 0.000, y = 46.747, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 88002, monster_id = 26090901, pos = { x = -1822.637, y = 261.460, z = 2717.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 88003, monster_id = 26090901, pos = { x = -1822.176, y = 261.067, z = 2719.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 88005, monster_id = 26090901, pos = { x = -1818.600, y = 259.873, z = 2719.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 88006, monster_id = 26090901, pos = { x = -1820.470, y = 261.139, z = 2715.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 88007, monster_id = 26090901, pos = { x = -1823.584, y = 261.388, z = 2718.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 88009, monster_id = 26120101, pos = { x = -1819.855, y = 262.054, z = 2718.285 }, rot = { x = 0.000, y = 79.524, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 21 }
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
	{ config_id = 1088004, name = "ANY_MONSTER_DIE_88004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88004", action = "action_EVENT_ANY_MONSTER_DIE_88004" },
	{ config_id = 1088008, name = "ANY_MONSTER_DIE_88008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88008", action = "action_EVENT_ANY_MONSTER_DIE_88008" },
	{ config_id = 1088010, name = "ANY_MONSTER_DIE_88010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88010", action = "action_EVENT_ANY_MONSTER_DIE_88010" }
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
		monsters = { 88001, 88002, 88003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 88005, 88006, 88007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 88009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88004(context, evt)
	if 88001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230360701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304088, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88010(context, evt)
	if 88009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230360701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end