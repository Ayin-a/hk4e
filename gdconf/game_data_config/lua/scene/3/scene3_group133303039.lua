-- 基础信息
local base_info = {
	group_id = 133303039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39001, monster_id = 23020101, pos = { x = -1061.756, y = 208.129, z = 3905.583 }, rot = { x = 0.000, y = 183.158, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, title_id = 10113, special_name_id = 10146, area_id = 23 },
	{ config_id = 39003, monster_id = 23010601, pos = { x = -1068.668, y = 208.034, z = 3907.988 }, rot = { x = 0.000, y = 132.281, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 23 },
	{ config_id = 39004, monster_id = 23010401, pos = { x = -1055.819, y = 209.966, z = 3908.161 }, rot = { x = 0.000, y = 221.056, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 23 }
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
	{ config_id = 1039002, name = "ANY_MONSTER_DIE_39002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39002", action = "action_EVENT_ANY_MONSTER_DIE_39002" }
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
		monsters = { 39001, 39003, 39004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_39002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7304924_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end