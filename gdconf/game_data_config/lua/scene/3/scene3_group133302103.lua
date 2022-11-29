-- 基础信息
local base_info = {
	group_id = 133302103
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103001, monster_id = 20011001, pos = { x = -154.448, y = 200.391, z = 2616.386 }, rot = { x = 0.000, y = 279.833, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 103002, monster_id = 20011001, pos = { x = -160.377, y = 200.618, z = 2617.651 }, rot = { x = 0.000, y = 86.673, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 103003, monster_id = 20011001, pos = { x = -155.362, y = 200.674, z = 2614.134 }, rot = { x = 0.000, y = 317.524, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 103004, monster_id = 20011101, pos = { x = -157.133, y = 200.391, z = 2617.110 }, rot = { x = 0.000, y = 343.077, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 20 }
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
	{ config_id = 1103005, name = "ANY_MONSTER_DIE_103005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_103005", action = "action_EVENT_ANY_MONSTER_DIE_103005" }
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
		monsters = { 103001, 103002, 103003, 103004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_103005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_103005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_103005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "230130201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end