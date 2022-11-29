-- 基础信息
local base_info = {
	group_id = 133213552
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 552001, monster_id = 25080201, pos = { x = -3953.820, y = 200.000, z = -2932.327 }, rot = { x = 0.000, y = 182.835, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 },
	{ config_id = 552002, monster_id = 25080201, pos = { x = -3956.342, y = 200.000, z = -2930.656 }, rot = { x = 0.000, y = 166.228, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 },
	{ config_id = 552003, monster_id = 25080101, pos = { x = -3937.529, y = 200.000, z = -2935.310 }, rot = { x = 0.000, y = 209.902, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 },
	{ config_id = 552004, monster_id = 25080101, pos = { x = -3964.874, y = 200.000, z = -2939.432 }, rot = { x = 0.000, y = 116.897, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 }
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
	{ config_id = 1552005, name = "ANY_MONSTER_DIE_552005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_552005", action = "action_EVENT_ANY_MONSTER_DIE_552005" }
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
		monsters = { 552001, 552002, 552003, 552004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_552005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_552005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_552005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332135521") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end