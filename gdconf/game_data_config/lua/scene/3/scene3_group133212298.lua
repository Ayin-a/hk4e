-- 基础信息
local base_info = {
	group_id = 133212298
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 298001, monster_id = 25100101, pos = { x = -3462.609, y = 200.000, z = -2599.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1003, area_id = 13 },
	{ config_id = 298002, monster_id = 25080301, pos = { x = -3469.111, y = 200.000, z = -2597.230 }, rot = { x = 0.000, y = 163.666, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1003, area_id = 13 },
	{ config_id = 298003, monster_id = 25080301, pos = { x = -3464.430, y = 200.000, z = -2594.960 }, rot = { x = 16.056, y = 154.947, z = 358.863 }, level = 27, drop_id = 1000100, pose_id = 1003, area_id = 13 },
	{ config_id = 298004, monster_id = 25080301, pos = { x = -3459.444, y = 200.000, z = -2593.937 }, rot = { x = 0.000, y = 215.158, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1003, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 298006, gadget_id = 70950125, pos = { x = -3458.037, y = 200.459, z = -2599.346 }, rot = { x = 275.401, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1298005, name = "ANY_MONSTER_DIE_298005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_298005", action = "action_EVENT_ANY_MONSTER_DIE_298005", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 298006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 298001, 298002, 298003, 298004 },
		gadgets = { 298006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_298005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_298005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_298005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7219606_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7219614_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end