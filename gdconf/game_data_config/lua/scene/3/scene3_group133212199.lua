-- 基础信息
local base_info = {
	group_id = 133212199
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 199001, monster_id = 25100201, pos = { x = -3776.834, y = 200.137, z = -2070.418 }, rot = { x = 0.000, y = 276.351, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, pose_id = 1003, area_id = 13 },
	{ config_id = 199002, monster_id = 25080301, pos = { x = -3772.609, y = 199.277, z = -2073.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 199003, monster_id = 25080301, pos = { x = -3773.391, y = 200.137, z = -2068.551 }, rot = { x = 0.000, y = 249.864, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 }
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
	{ config_id = 1199004, name = "SPECIFIC_MONSTER_HP_CHANGE_199004", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "199001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_199004", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_199004" },
	{ config_id = 1199005, name = "ANY_MONSTER_DIE_199005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_199005", action = "action_EVENT_ANY_MONSTER_DIE_199005" }
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
		monsters = { 199001 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_199004", "ANY_MONSTER_DIE_199005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 199002, 199003 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_199004(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_199004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212199, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_199005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_199005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133212199") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end