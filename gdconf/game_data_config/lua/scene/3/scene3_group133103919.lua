-- 基础信息
local base_info = {
	group_id = 133103919
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 919002, monster_id = 22010201, pos = { x = 996.812, y = 270.097, z = 1081.909 }, rot = { x = 0.000, y = 91.318, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9013, area_id = 6 },
	{ config_id = 919003, monster_id = 22010301, pos = { x = 997.504, y = 270.198, z = 1079.446 }, rot = { x = 0.000, y = 51.317, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 6 },
	{ config_id = 919005, monster_id = 21010101, pos = { x = 1000.468, y = 270.198, z = 1079.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9016, area_id = 6 },
	{ config_id = 919006, monster_id = 21010201, pos = { x = 997.805, y = 270.386, z = 1083.618 }, rot = { x = 0.000, y = 144.697, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9011, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 919001, gadget_id = 70310007, pos = { x = 1000.119, y = 270.350, z = 1082.241 }, rot = { x = 0.000, y = 236.021, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 919007, gadget_id = 70220009, pos = { x = 999.069, y = 271.224, z = 1085.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1919004, name = "ANY_MONSTER_DIE_919004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_919004", action = "action_EVENT_ANY_MONSTER_DIE_919004", trigger_count = 0 }
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
		monsters = { 919002, 919003, 919005, 919006 },
		gadgets = { 919001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_919004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 919001, 919007 },
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
function condition_EVENT_ANY_MONSTER_DIE_919004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_919004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310391901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end