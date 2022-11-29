-- 基础信息
local base_info = {
	group_id = 133002942
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 942001, monster_id = 25010201, pos = { x = 1789.733, y = 246.647, z = -606.904 }, rot = { x = 0.000, y = 286.174, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9003, area_id = 3 },
	{ config_id = 942002, monster_id = 25010701, pos = { x = 1787.552, y = 246.807, z = -609.999 }, rot = { x = 0.000, y = 54.181, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9006, area_id = 3 },
	{ config_id = 942003, monster_id = 25010301, pos = { x = 1788.676, y = 246.754, z = -609.123 }, rot = { x = 0.000, y = 215.490, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9002, area_id = 3 }
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
	{ config_id = 1942004, name = "ANY_MONSTER_DIE_942004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_942004", action = "action_EVENT_ANY_MONSTER_DIE_942004", trigger_count = 0 }
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
		monsters = { 942001, 942002, 942003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_942004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_942004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_942004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141112") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end