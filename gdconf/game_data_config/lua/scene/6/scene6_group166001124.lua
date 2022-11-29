-- 基础信息
local base_info = {
	group_id = 166001124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124005, monster_id = 22070201, pos = { x = 455.674, y = 463.780, z = 464.348 }, rot = { x = 0.000, y = 160.519, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 4159 }, pose_id = 101, area_id = 300 },
	{ config_id = 124007, monster_id = 22070301, pos = { x = 458.462, y = 463.747, z = 466.854 }, rot = { x = 0.000, y = 184.487, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 4159 }, pose_id = 101, area_id = 300 }
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
	{ config_id = 1124004, name = "ANY_MONSTER_DIE_124004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124004", action = "action_EVENT_ANY_MONSTER_DIE_124004" }
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
		monsters = { 124005, 124007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_124004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_124004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001124") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end