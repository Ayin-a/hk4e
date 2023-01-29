-- 基础信息
local base_info = {
	group_id = 133316102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102001, monster_id = 24010101, pos = { x = 464.114, y = 16.752, z = 6343.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 100, area_id = 30 },
	{ config_id = 102003, monster_id = 24010101, pos = { x = 481.318, y = 16.975, z = 6331.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 100, area_id = 30 },
	{ config_id = 102004, monster_id = 24010101, pos = { x = 452.259, y = 16.975, z = 6329.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 100, area_id = 30 }
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
	{ config_id = 1102002, name = "ANY_MONSTER_DIE_102002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102002", action = "action_EVENT_ANY_MONSTER_DIE_102002" }
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
		monsters = { 102001, 102003, 102004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325132") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end