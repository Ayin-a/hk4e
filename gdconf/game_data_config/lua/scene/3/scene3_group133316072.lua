-- 基础信息
local base_info = {
	group_id = 133316072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 23040102, pos = { x = 286.289, y = 255.652, z = 6545.832 }, rot = { x = 0.000, y = 63.497, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 72002, monster_id = 23010101, pos = { x = 282.728, y = 255.685, z = 6547.753 }, rot = { x = 0.000, y = 60.928, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 72003, monster_id = 23010101, pos = { x = 287.082, y = 254.921, z = 6541.643 }, rot = { x = 0.000, y = 47.724, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 }
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
	{ config_id = 1072004, name = "ANY_MONSTER_DIE_72004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72004", action = "action_EVENT_ANY_MONSTER_DIE_72004" }
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
		monsters = { 72001, 72002, 72003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328510") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end