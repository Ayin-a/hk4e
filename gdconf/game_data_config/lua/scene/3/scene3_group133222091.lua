-- 基础信息
local base_info = {
	group_id = 133222091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 25100101, pos = { x = -4537.391, y = 200.723, z = -4467.966 }, rot = { x = 0.542, y = 227.725, z = 1.926 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1002, climate_area_id = 10, area_id = 14 },
	{ config_id = 91003, monster_id = 25080201, pos = { x = -4544.106, y = 200.367, z = -4466.571 }, rot = { x = 0.000, y = 136.408, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1006, climate_area_id = 10, area_id = 14 },
	{ config_id = 91004, monster_id = 25080301, pos = { x = -4541.552, y = 200.917, z = -4475.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1003, climate_area_id = 10, area_id = 14 }
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
	{ config_id = 1091002, name = "ANY_MONSTER_DIE_91002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91002", action = "action_EVENT_ANY_MONSTER_DIE_91002" }
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
		monsters = { 91001, 91003, 91004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215603") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end