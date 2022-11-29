-- 基础信息
local base_info = {
	group_id = 133108909
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 909001, monster_id = 25010201, pos = { x = -126.470, y = 200.706, z = -174.755 }, rot = { x = 0.000, y = 246.439, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 909002, monster_id = 25010601, pos = { x = -129.588, y = 200.770, z = -177.850 }, rot = { x = 0.000, y = 338.724, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 909003, monster_id = 25020201, pos = { x = -131.705, y = 201.123, z = -173.564 }, rot = { x = 0.000, y = 137.419, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 }
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
	{ config_id = 1909004, name = "ANY_MONSTER_DIE_909004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_909004", action = "action_EVENT_ANY_MONSTER_DIE_909004", trigger_count = 0 }
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
	suite = 2,
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
		monsters = { 909001, 909002, 909003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_909004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_909004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_909004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200208") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end