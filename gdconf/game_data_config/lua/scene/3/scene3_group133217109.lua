-- 基础信息
local base_info = {
	group_id = 133217109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 25010201, pos = { x = -4379.904, y = 203.764, z = -3978.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 109003, monster_id = 25010501, pos = { x = -4382.349, y = 203.628, z = -3971.938 }, rot = { x = 0.000, y = 18.931, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 109004, monster_id = 25010301, pos = { x = -4386.797, y = 203.619, z = -3970.331 }, rot = { x = 0.000, y = 190.981, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 109005, monster_id = 25060101, pos = { x = -4384.511, y = 203.294, z = -3974.738 }, rot = { x = 0.000, y = 166.491, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 14 },
	{ config_id = 109006, monster_id = 25030201, pos = { x = -4390.189, y = 203.914, z = -3978.010 }, rot = { x = 0.000, y = 286.260, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 14 }
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
	{ config_id = 1109002, name = "ANY_MONSTER_DIE_109002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109002", action = "action_EVENT_ANY_MONSTER_DIE_109002" }
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
		monsters = { 109001, 109003, 109004, 109005, 109006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_109002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133217109) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215508") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end