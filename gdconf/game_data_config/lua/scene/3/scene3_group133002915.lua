-- 基础信息
local base_info = {
	group_id = 133002915
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 915001, monster_id = 25030201, pos = { x = 917.398, y = 373.514, z = -696.093 }, rot = { x = 0.000, y = 61.900, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 4, climate_area_id = 1, area_id = 10 },
	{ config_id = 915002, monster_id = 25010201, pos = { x = 918.574, y = 372.853, z = -695.470 }, rot = { x = 0.000, y = 74.500, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9007, climate_area_id = 1, area_id = 10 },
	{ config_id = 915003, monster_id = 25010201, pos = { x = 919.451, y = 373.495, z = -697.346 }, rot = { x = 0.000, y = 42.400, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9007, climate_area_id = 1, area_id = 10 }
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
	{ config_id = 1915004, name = "ANY_MONSTER_DIE_915004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_915004", action = "action_EVENT_ANY_MONSTER_DIE_915004", trigger_count = 0 }
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
		monsters = { 915001, 915002, 915003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_915004" },
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
function condition_EVENT_ANY_MONSTER_DIE_915004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002915) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_915004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002915") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end