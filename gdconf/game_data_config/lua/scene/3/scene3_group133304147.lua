-- 基础信息
local base_info = {
	group_id = 133304147
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147001, monster_id = 20011001, pos = { x = -1181.603, y = 200.000, z = 2681.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 147002, monster_id = 20011001, pos = { x = -1183.787, y = 200.000, z = 2679.800 }, rot = { x = 0.000, y = 21.427, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 147003, monster_id = 20011001, pos = { x = -1184.778, y = 200.000, z = 2683.099 }, rot = { x = 0.000, y = 65.250, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 147005, monster_id = 20011001, pos = { x = -1187.023, y = 200.000, z = 2683.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 }
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
	{ config_id = 1147004, name = "ANY_MONSTER_DIE_147004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_147004", action = "action_EVENT_ANY_MONSTER_DIE_147004" }
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
		monsters = { 147001, 147002, 147003, 147005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_147004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_147004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_147004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310408") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end