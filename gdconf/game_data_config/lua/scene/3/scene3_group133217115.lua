-- 基础信息
local base_info = {
	group_id = 133217115
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115001, monster_id = 23010501, pos = { x = -4343.712, y = 200.278, z = -3999.806 }, rot = { x = 0.000, y = 304.439, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 115003, monster_id = 23010101, pos = { x = -4345.783, y = 200.356, z = -3997.177 }, rot = { x = 0.000, y = 296.820, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 115005, monster_id = 23010601, pos = { x = -4342.561, y = 200.195, z = -3995.928 }, rot = { x = 0.000, y = 297.071, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 }
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
	{ config_id = 1115002, name = "ANY_MONSTER_DIE_115002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_115002", action = "action_EVENT_ANY_MONSTER_DIE_115002" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 115004, monster_id = 23010201, pos = { x = -4344.735, y = 200.305, z = -4000.178 }, rot = { x = 0.000, y = 327.801, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 }
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
		monsters = { 115001, 115003, 115005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_115002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_115002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_115002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216223") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end