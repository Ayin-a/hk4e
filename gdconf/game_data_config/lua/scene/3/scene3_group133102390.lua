-- 基础信息
local base_info = {
	group_id = 133102390
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 390011, monster_id = 21020101, pos = { x = 1208.199, y = 200.194, z = 143.349 }, rot = { x = 0.000, y = 348.985, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 390012, monster_id = 21010301, pos = { x = 1211.325, y = 200.000, z = 147.649 }, rot = { x = 0.000, y = 299.759, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 390014, monster_id = 21010301, pos = { x = 1207.589, y = 200.019, z = 151.415 }, rot = { x = 0.000, y = 189.625, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 390015, monster_id = 21010301, pos = { x = 1204.551, y = 200.017, z = 147.373 }, rot = { x = 0.000, y = 65.030, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 390016, monster_id = 21010901, pos = { x = 1211.767, y = 200.039, z = 142.785 }, rot = { x = 0.000, y = 337.847, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 390013, gadget_id = 70300099, pos = { x = 1208.043, y = 200.012, z = 148.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1390017, name = "ANY_MONSTER_DIE_390017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_390017", action = "action_EVENT_ANY_MONSTER_DIE_390017" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 390011, 390012, 390014, 390015, 390016 },
		gadgets = { 390013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_390017" },
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
function condition_EVENT_ANY_MONSTER_DIE_390017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_390017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310239001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end