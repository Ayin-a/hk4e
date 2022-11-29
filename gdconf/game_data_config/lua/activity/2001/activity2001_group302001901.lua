-- 基础信息
local base_info = {
	group_id = 302001901
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 901001, monster_id = 20011301, pos = { x = 1809.050, y = 234.572, z = -844.397 }, rot = { x = 0.000, y = 96.050, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 3 },
	{ config_id = 901002, monster_id = 20011301, pos = { x = 1808.228, y = 234.609, z = -836.790 }, rot = { x = 0.000, y = 164.900, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 3 },
	{ config_id = 901003, monster_id = 20010601, pos = { x = 1805.028, y = 234.308, z = -840.547 }, rot = { x = 0.000, y = 90.600, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 3 }
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
	{ config_id = 1901004, name = "ANY_MONSTER_DIE_901004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_901004", action = "action_EVENT_ANY_MONSTER_DIE_901004", trigger_count = 0 }
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
		monsters = { 901001, 901002, 901003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_901004" },
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
function condition_EVENT_ANY_MONSTER_DIE_901004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 302001901) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_901004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302001901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end