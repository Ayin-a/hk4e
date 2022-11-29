-- 基础信息
local base_info = {
	group_id = 133107120
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120001, monster_id = 25010201, pos = { x = -392.475, y = 266.457, z = 594.585 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 },
	{ config_id = 120002, monster_id = 25010201, pos = { x = -391.679, y = 266.682, z = 592.926 }, rot = { x = 0.000, y = 322.600, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 },
	{ config_id = 120004, monster_id = 25020201, pos = { x = -390.079, y = 266.736, z = 595.794 }, rot = { x = 0.000, y = 165.820, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 7 },
	{ config_id = 120005, monster_id = 25020201, pos = { x = -401.396, y = 266.766, z = 596.238 }, rot = { x = 0.000, y = 142.785, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 120006, gadget_id = 70310004, pos = { x = -400.307, y = 266.677, z = 594.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1120003, name = "ANY_MONSTER_DIE_120003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_120003", action = "action_EVENT_ANY_MONSTER_DIE_120003" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 120001, 120002, 120004, 120005 },
		gadgets = { 120006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_120003" },
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
function condition_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107120") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end