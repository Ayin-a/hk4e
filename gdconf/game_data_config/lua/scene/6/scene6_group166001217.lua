-- 基础信息
local base_info = {
	group_id = 166001217
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217001, monster_id = 23010201, pos = { x = 709.016, y = 762.142, z = 417.293 }, rot = { x = 0.000, y = 113.740, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 },
	{ config_id = 217002, monster_id = 23010501, pos = { x = 713.988, y = 762.157, z = 418.876 }, rot = { x = 0.000, y = 150.094, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 },
	{ config_id = 217004, monster_id = 23010601, pos = { x = 723.273, y = 761.878, z = 424.849 }, rot = { x = 0.000, y = 125.030, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 },
	{ config_id = 217005, monster_id = 23010401, pos = { x = 713.988, y = 762.140, z = 422.631 }, rot = { x = 0.000, y = 135.086, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 }
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
	{ config_id = 1217003, name = "ANY_MONSTER_DIE_217003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217003", action = "action_EVENT_ANY_MONSTER_DIE_217003" }
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
		monsters = { 217001, 217002, 217004, 217005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_217003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001217") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end