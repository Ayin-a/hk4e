-- 基础信息
local base_info = {
	group_id = 133302012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21010101, pos = { x = 48.244, y = 234.691, z = 2451.285 }, rot = { x = 0.000, y = 146.774, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 20 },
	{ config_id = 12002, monster_id = 21010101, pos = { x = 44.862, y = 235.055, z = 2450.517 }, rot = { x = 0.000, y = 156.926, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 20 },
	{ config_id = 12003, monster_id = 21010101, pos = { x = 45.892, y = 234.611, z = 2453.396 }, rot = { x = 0.000, y = 164.655, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 20 }
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
	{ config_id = 1012004, name = "ANY_MONSTER_DIE_12004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12004", action = "action_EVENT_ANY_MONSTER_DIE_12004", trigger_count = 0 }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 12001, 12002, 12003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7300706") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end