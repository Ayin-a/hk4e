-- 基础信息
local base_info = {
	group_id = 133210216
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 216001, monster_id = 25080301, pos = { x = -3905.950, y = 200.238, z = -1157.639 }, rot = { x = 0.000, y = 109.790, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 1003, area_id = 17 },
	{ config_id = 216003, monster_id = 25080301, pos = { x = -3904.004, y = 200.116, z = -1160.318 }, rot = { x = 0.000, y = 334.830, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 1004, area_id = 17 },
	{ config_id = 216004, monster_id = 25080301, pos = { x = -3903.162, y = 200.200, z = -1157.951 }, rot = { x = 0.000, y = 239.190, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 1003, area_id = 17 },
	{ config_id = 216005, monster_id = 25100201, pos = { x = -3922.802, y = 200.786, z = -1154.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 29, drop_id = 1000100, pose_id = 1, area_id = 17 },
	{ config_id = 216009, monster_id = 25100101, pos = { x = -3917.281, y = 200.389, z = -1154.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 29, drop_id = 1000100, pose_id = 1, area_id = 17 }
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
	{ config_id = 1216002, name = "ANY_MONSTER_DIE_216002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_216002", action = "action_EVENT_ANY_MONSTER_DIE_216002" },
	{ config_id = 1216008, name = "ANY_MONSTER_DIE_216008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_216008", action = "action_EVENT_ANY_MONSTER_DIE_216008" }
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
	suite = 3,
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
		monsters = { 216001, 216003, 216004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_216008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 216005, 216009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_216002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_216002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_216002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133210216") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_216008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_216008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210216, 2)
	
	return 0
end