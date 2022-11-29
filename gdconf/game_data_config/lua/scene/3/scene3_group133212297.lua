-- 基础信息
local base_info = {
	group_id = 133212297
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 25100101, pos = { x = -3529.232, y = 200.245, z = -2730.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1001, area_id = 13 },
	{ config_id = 297003, monster_id = 25080301, pos = { x = -3530.915, y = 200.245, z = -2724.947 }, rot = { x = 16.056, y = 154.947, z = 358.863 }, level = 27, drop_id = 1000100, pose_id = 1006, area_id = 13 },
	{ config_id = 297004, monster_id = 25080301, pos = { x = -3525.471, y = 200.245, z = -2726.636 }, rot = { x = 0.000, y = 215.158, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1006, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 297002, gadget_id = 70950121, pos = { x = -3529.461, y = 201.263, z = -2733.343 }, rot = { x = 277.321, y = 359.482, z = 2.631 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297005, name = "ANY_MONSTER_DIE_297005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297005", action = "action_EVENT_ANY_MONSTER_DIE_297005", trigger_count = 0 }
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
		gadgets = { 297002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 297001, 297003, 297004 },
		gadgets = { 297002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_297005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_297005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7219608_finish") then
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