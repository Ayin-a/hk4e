-- 基础信息
local base_info = {
	group_id = 133004354
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 354001, monster_id = 20010401, pos = { x = 2320.833, y = 205.898, z = -967.797 }, rot = { x = 0.000, y = 126.510, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 354002, monster_id = 20010301, pos = { x = 2323.669, y = 205.840, z = -967.069 }, rot = { x = 0.000, y = 201.381, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 354003, monster_id = 20010301, pos = { x = 2324.178, y = 204.910, z = -969.203 }, rot = { x = 0.000, y = 279.135, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 354004, monster_id = 20010301, pos = { x = 2321.309, y = 205.128, z = -970.837 }, rot = { x = 0.000, y = 18.844, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 }
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
	{ config_id = 1354005, name = "ANY_MONSTER_DIE_354005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_354005", action = "action_EVENT_ANY_MONSTER_DIE_354005" }
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
		monsters = { 354001, 354002, 354003, 354004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_354005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_354005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_354005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330043541") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end