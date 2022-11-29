-- 基础信息
local base_info = {
	group_id = 133102167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 25010201, pos = { x = 1746.506, y = 234.116, z = 672.478 }, rot = { x = 0.000, y = 138.043, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 5 },
	{ config_id = 167002, monster_id = 25070101, pos = { x = 1748.353, y = 234.028, z = 672.317 }, rot = { x = 0.000, y = 167.875, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 5 },
	{ config_id = 167003, monster_id = 25010301, pos = { x = 1751.040, y = 233.481, z = 674.086 }, rot = { x = 0.000, y = 188.173, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 5 }
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
	{ config_id = 1167004, name = "ANY_MONSTER_DIE_167004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167004", action = "action_EVENT_ANY_MONSTER_DIE_167004" }
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
		monsters = { 167001, 167002, 167003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4001408") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end