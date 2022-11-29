-- 基础信息
local base_info = {
	group_id = 166001021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 22010101, pos = { x = 835.986, y = 987.896, z = 730.805 }, rot = { x = 0.000, y = 116.222, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 300 },
	{ config_id = 21002, monster_id = 22010301, pos = { x = 837.126, y = 988.854, z = 725.937 }, rot = { x = 0.000, y = 87.910, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 300 }
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
	{ config_id = 1021003, name = "ANY_MONSTER_DIE_21003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21003", action = "action_EVENT_ANY_MONSTER_DIE_21003" }
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
		monsters = { 21001, 21002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end