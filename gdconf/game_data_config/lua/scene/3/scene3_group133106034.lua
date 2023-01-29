-- 基础信息
local base_info = {
	group_id = 133106034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 21020201, pos = { x = -188.680, y = 301.772, z = 1710.546 }, rot = { x = 0.000, y = 201.377, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 34002, monster_id = 21020201, pos = { x = -183.250, y = 301.787, z = 1716.844 }, rot = { x = 0.000, y = 33.364, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 34003, monster_id = 21010501, pos = { x = -170.989, y = 306.985, z = 1711.583 }, rot = { x = 0.000, y = 259.036, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 34004, monster_id = 21010101, pos = { x = -171.462, y = 304.227, z = 1713.998 }, rot = { x = 0.000, y = 286.958, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34008, gadget_id = 70300083, pos = { x = -161.373, y = 304.233, z = 1728.989 }, rot = { x = 359.279, y = 59.603, z = 355.244 }, level = 1, area_id = 6 },
	{ config_id = 34009, gadget_id = 70300083, pos = { x = -183.624, y = 301.258, z = 1712.642 }, rot = { x = 353.582, y = 30.317, z = 0.377 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034007, name = "ANY_MONSTER_DIE_34007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34007", action = "action_EVENT_ANY_MONSTER_DIE_34007" }
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
		monsters = { 34001, 34002, 34003, 34004 },
		gadgets = { 34008, 34009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106034) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2103501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end