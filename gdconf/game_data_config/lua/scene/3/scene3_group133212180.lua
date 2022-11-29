-- 基础信息
local base_info = {
	group_id = 133212180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 180001, monster_id = 25100101, pos = { x = -3557.116, y = 200.372, z = -2624.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1001, area_id = 13 },
	{ config_id = 180002, monster_id = 25080301, pos = { x = -3563.480, y = 200.372, z = -2620.682 }, rot = { x = 0.000, y = 163.666, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1006, area_id = 13 },
	{ config_id = 180003, monster_id = 25080301, pos = { x = -3558.799, y = 200.372, z = -2618.412 }, rot = { x = 16.056, y = 154.947, z = 358.863 }, level = 27, drop_id = 1000100, pose_id = 1006, area_id = 13 },
	{ config_id = 180004, monster_id = 25080301, pos = { x = -3553.813, y = 200.372, z = -2617.389 }, rot = { x = 0.000, y = 215.158, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1006, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 180005, gadget_id = 70950122, pos = { x = -3554.324, y = 200.776, z = -2620.618 }, rot = { x = 285.819, y = 180.000, z = 180.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1180007, name = "ANY_MONSTER_DIE_180007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_180007", action = "action_EVENT_ANY_MONSTER_DIE_180007", trigger_count = 0 }
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
		gadgets = { 180005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 180001, 180002, 180003, 180004 },
		gadgets = { 180005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_180007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_180007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_180007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7219607_finish") then
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