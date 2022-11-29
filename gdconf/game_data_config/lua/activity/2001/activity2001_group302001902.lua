-- 基础信息
local base_info = {
	group_id = 302001902
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 902002, monster_id = 26010101, pos = { x = 1724.761, y = 204.169, z = 93.880 }, rot = { x = 0.000, y = 100.190, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 5 },
	{ config_id = 902003, monster_id = 26010101, pos = { x = 1732.325, y = 204.532, z = 88.868 }, rot = { x = 0.000, y = 174.030, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 902001, gadget_id = 70300093, pos = { x = 1722.938, y = 204.591, z = 87.161 }, rot = { x = 350.711, y = 210.933, z = 351.432 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1902005, name = "ANY_MONSTER_DIE_902005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_902005", action = "action_EVENT_ANY_MONSTER_DIE_902005", trigger_count = 0 }
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
		monsters = { 902002, 902003 },
		gadgets = { 902001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_902005" },
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
function condition_EVENT_ANY_MONSTER_DIE_902005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_902005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3020019021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end