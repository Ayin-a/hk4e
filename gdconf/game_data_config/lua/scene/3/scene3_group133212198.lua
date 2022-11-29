-- 基础信息
local base_info = {
	group_id = 133212198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 24010101, pos = { x = -3699.586, y = 239.881, z = -2429.447 }, rot = { x = 0.000, y = 296.397, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, pose_id = 101, area_id = 13 },
	{ config_id = 198003, monster_id = 24020101, pos = { x = -3707.414, y = 239.609, z = -2436.708 }, rot = { x = 0.000, y = 1.936, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006 }, pose_id = 100, area_id = 13 }
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
	{ config_id = 1198004, name = "MONSTER_BATTLE_198004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_198004", action = "action_EVENT_MONSTER_BATTLE_198004" },
	{ config_id = 1198005, name = "ANY_MONSTER_DIE_198005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198005", action = "action_EVENT_ANY_MONSTER_DIE_198005" }
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
		monsters = { 198001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_198004", "ANY_MONSTER_DIE_198005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 198003 },
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
function condition_EVENT_MONSTER_BATTLE_198004(context, evt)
	if 198001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_198004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212198, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133212198") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end