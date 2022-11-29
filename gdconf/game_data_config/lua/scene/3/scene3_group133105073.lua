-- 基础信息
local base_info = {
	group_id = 133105073
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 73001, monster_id = 21020601, pos = { x = 1084.964, y = 346.116, z = -1077.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_id = 1000100, pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 73002, monster_id = 21010101, pos = { x = 1084.255, y = 345.944, z = -1071.543 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 3, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 73003, monster_id = 21010201, pos = { x = 1086.807, y = 345.471, z = -1072.227 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 3, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 73004, monster_id = 21010501, pos = { x = 1088.030, y = 345.363, z = -1074.323 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 3, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73005, gadget_id = 70310018, pos = { x = 1085.526, y = 345.779, z = -1074.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1073006, name = "ANY_MONSTER_DIE_73006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_73006", action = "action_EVENT_ANY_MONSTER_DIE_73006" }
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
		monsters = { 73001, 73002, 73003, 73004 },
		gadgets = { 73005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_73006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_73006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_73006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7080205") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end