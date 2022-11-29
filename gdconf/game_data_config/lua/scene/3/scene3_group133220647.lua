-- 基础信息
local base_info = {
	group_id = 133220647
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 647001, monster_id = 20010601, pos = { x = -2662.692, y = 200.320, z = -4619.021 }, rot = { x = 0.000, y = 320.160, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 647002, monster_id = 20010801, pos = { x = -2664.948, y = 200.300, z = -4620.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 647003, monster_id = 20010801, pos = { x = -2666.612, y = 200.283, z = -4618.264 }, rot = { x = 0.000, y = 10.229, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 647005, monster_id = 20011001, pos = { x = -2667.412, y = 200.258, z = -4615.490 }, rot = { x = 0.000, y = 49.205, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 647008, monster_id = 20011001, pos = { x = -2664.072, y = 200.334, z = -4616.719 }, rot = { x = 0.000, y = 29.735, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 647010, monster_id = 20011301, pos = { x = -2667.727, y = 200.255, z = -4617.296 }, rot = { x = 0.000, y = 45.912, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
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
	{ config_id = 1647004, name = "ANY_MONSTER_DIE_647004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_647004", action = "action_EVENT_ANY_MONSTER_DIE_647004" },
	{ config_id = 1647011, name = "ANY_MONSTER_DIE_647011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_647011", action = "action_EVENT_ANY_MONSTER_DIE_647011" }
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
	end_suite = 2,
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
		monsters = { 647005, 647008, 647010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_647011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 647001, 647002, 647003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_647004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_647004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_647004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220647") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_647011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_647011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220647, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end