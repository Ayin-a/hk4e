-- 基础信息
local base_info = {
	group_id = 133304145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 26120101, pos = { x = -1819.922, y = 262.018, z = 2717.500 }, rot = { x = 0.000, y = 175.781, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 145002, monster_id = 20010101, pos = { x = -1818.802, y = 260.363, z = 2715.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 145004, monster_id = 20010101, pos = { x = -1822.850, y = 261.796, z = 2714.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 21 }
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
	{ config_id = 1145003, name = "ANY_MONSTER_DIE_145003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145003", action = "action_EVENT_ANY_MONSTER_DIE_145003" }
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
		monsters = { 145001, 145002, 145004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_145003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_145003(context, evt)
	if 145001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2303107") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end