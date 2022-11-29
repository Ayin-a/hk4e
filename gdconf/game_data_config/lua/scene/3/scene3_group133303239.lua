-- 基础信息
local base_info = {
	group_id = 133303239
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 239001, monster_id = 21020101, pos = { x = -1923.492, y = 366.534, z = 3779.623 }, rot = { x = 0.000, y = 195.370, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 239002, monster_id = 21030201, pos = { x = -1928.318, y = 368.227, z = 3772.736 }, rot = { x = 0.000, y = 60.368, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 239003, monster_id = 21030101, pos = { x = -1919.574, y = 367.550, z = 3773.778 }, rot = { x = 0.000, y = 325.657, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 239004, monster_id = 28060614, pos = { x = -1934.879, y = 369.269, z = 3770.491 }, rot = { x = 0.000, y = 74.681, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 23 },
	{ config_id = 239005, monster_id = 21010701, pos = { x = -1923.062, y = 370.274, z = 3766.341 }, rot = { x = 0.000, y = 356.196, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 23 },
	{ config_id = 239006, monster_id = 21010701, pos = { x = -1929.050, y = 370.927, z = 3766.268 }, rot = { x = 0.000, y = 356.196, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 23 }
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
	{ config_id = 1239007, name = "MONSTER_BATTLE_239007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_239007" },
	{ config_id = 1239008, name = "ANY_MONSTER_DIE_239008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_239008", action = "action_EVENT_ANY_MONSTER_DIE_239008", trigger_count = 0 }
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
		monsters = { 239001, 239002, 239003, 239004 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_239007", "ANY_MONSTER_DIE_239008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 239005, 239006 },
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_239007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303239, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_239008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_239008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133303239") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end