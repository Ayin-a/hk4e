-- 基础信息
local base_info = {
	group_id = 133212299
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 299001, monster_id = 25100101, pos = { x = -3595.027, y = 200.595, z = -2621.896 }, rot = { x = 0.000, y = 120.087, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1002, area_id = 13 },
	{ config_id = 299002, monster_id = 25080301, pos = { x = -3597.953, y = 200.019, z = -2625.795 }, rot = { x = 0.000, y = 62.157, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1004, area_id = 13 },
	{ config_id = 299003, monster_id = 25080301, pos = { x = -3598.358, y = 200.073, z = -2622.055 }, rot = { x = 355.409, y = 89.658, z = 358.904 }, level = 27, drop_id = 1000100, pose_id = 1004, area_id = 13 },
	{ config_id = 299004, monster_id = 25080301, pos = { x = -3597.219, y = 200.032, z = -2618.246 }, rot = { x = 0.000, y = 149.467, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1004, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 299006, gadget_id = 70950123, pos = { x = -3592.550, y = 203.958, z = -2621.332 }, rot = { x = 11.794, y = 250.692, z = 351.543 }, level = 27, area_id = 13 },
	{ config_id = 299007, gadget_id = 70950124, pos = { x = -3593.010, y = 206.880, z = -2618.358 }, rot = { x = 316.660, y = 176.626, z = 332.598 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1299005, name = "ANY_MONSTER_DIE_299005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_299005", action = "action_EVENT_ANY_MONSTER_DIE_299005", trigger_count = 0 }
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
		gadgets = { 299006, 299007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 299001, 299002, 299003, 299004 },
		gadgets = { 299006, 299007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_299005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_299005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_299005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7219612_finish") then
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