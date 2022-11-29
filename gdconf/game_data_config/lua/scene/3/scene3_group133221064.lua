-- 基础信息
local base_info = {
	group_id = 133221064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64001, monster_id = 25010201, pos = { x = -3295.630, y = 200.048, z = -4467.112 }, rot = { x = 0.000, y = 235.889, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 11 },
	{ config_id = 64002, monster_id = 25010401, pos = { x = -3296.769, y = 200.062, z = -4468.044 }, rot = { x = 0.000, y = 48.255, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 64003, monster_id = 25030201, pos = { x = -3302.087, y = 200.321, z = -4468.455 }, rot = { x = 0.000, y = 245.427, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 11 },
	{ config_id = 64006, monster_id = 25010201, pos = { x = -3300.957, y = 200.377, z = -4474.793 }, rot = { x = 0.000, y = 144.238, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 11 },
	{ config_id = 64007, monster_id = 25030201, pos = { x = -3303.799, y = 200.000, z = -4475.767 }, rot = { x = 0.000, y = 156.430, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 11 }
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
	{ config_id = 1064005, name = "ANY_MONSTER_DIE_64005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64005", action = "action_EVENT_ANY_MONSTER_DIE_64005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1064004, name = "ANY_MONSTER_DIE_64004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64004", action = "action_EVENT_ANY_MONSTER_DIE_64004" }
	}
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
		monsters = { 64001, 64002, 64003, 64006, 64007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_64005" },
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
function condition_EVENT_ANY_MONSTER_DIE_64005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_64005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1902811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end