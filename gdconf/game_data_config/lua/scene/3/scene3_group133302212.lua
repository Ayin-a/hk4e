-- 基础信息
local base_info = {
	group_id = 133302212
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 212001, monster_id = 25310201, pos = { x = -804.441, y = 200.000, z = 2756.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 24 },
	{ config_id = 212002, monster_id = 25210302, pos = { x = -794.929, y = 200.408, z = 2755.903 }, rot = { x = 0.000, y = 243.519, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9504, area_id = 24 },
	{ config_id = 212003, monster_id = 25210101, pos = { x = -796.979, y = 200.206, z = 2754.677 }, rot = { x = 0.000, y = 61.735, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 24 }
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
	{ config_id = 1212004, name = "ANY_MONSTER_DIE_212004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_212004", action = "action_EVENT_ANY_MONSTER_DIE_212004", trigger_count = 0 }
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
		monsters = { 212001, 212002, 212003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_212004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_212004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_212004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133302212") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end