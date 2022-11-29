-- 基础信息
local base_info = {
	group_id = 133002400
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 400002, monster_id = 21011201, pos = { x = 1969.481, y = 209.128, z = -844.302 }, rot = { x = 0.000, y = 130.094, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 400003, monster_id = 21011201, pos = { x = 1969.699, y = 209.205, z = -847.374 }, rot = { x = 0.000, y = 129.778, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 400004, monster_id = 21010201, pos = { x = 1966.750, y = 209.799, z = -848.477 }, rot = { x = 0.000, y = 117.843, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9016, area_id = 3 },
	{ config_id = 400005, monster_id = 21010501, pos = { x = 1964.333, y = 209.541, z = -847.001 }, rot = { x = 0.000, y = 100.847, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 400006, monster_id = 21011001, pos = { x = 1965.660, y = 208.847, z = -842.636 }, rot = { x = 0.000, y = 128.819, z = 0.000 }, level = 10, drop_id = 1000100, pose_id = 9013, area_id = 3 }
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
	{ config_id = 1400001, name = "ANY_MONSTER_DIE_400001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_400001", action = "action_EVENT_ANY_MONSTER_DIE_400001" }
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
	suite = 2,
	end_suite = 2,
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
		monsters = { 400002, 400003, 400004, 400005, 400006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_400001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_400001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002400) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_400001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002400") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end