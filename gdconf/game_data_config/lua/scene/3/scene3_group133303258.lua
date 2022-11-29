-- 基础信息
local base_info = {
	group_id = 133303258
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 258001, monster_id = 24030201, pos = { x = -1081.118, y = 170.882, z = 3734.102 }, rot = { x = 0.000, y = 312.908, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 111, area_id = 23 },
	{ config_id = 258002, monster_id = 24030201, pos = { x = -1071.606, y = 170.967, z = 3733.600 }, rot = { x = 0.000, y = 243.519, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 }
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
	{ config_id = 1258003, name = "ANY_MONSTER_DIE_258003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_258003", action = "action_EVENT_ANY_MONSTER_DIE_258003", trigger_count = 0 }
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
		monsters = { 258001, 258002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_258003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_258003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_258003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133303258") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end