-- 基础信息
local base_info = {
	group_id = 133304442
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 442001, monster_id = 21020201, pos = { x = -1217.290, y = 344.271, z = 2458.090 }, rot = { x = 0.000, y = 45.345, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 21 },
	{ config_id = 442002, monster_id = 21010201, pos = { x = -1214.057, y = 344.233, z = 2455.087 }, rot = { x = 0.000, y = 249.908, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 21 },
	{ config_id = 442005, monster_id = 21030301, pos = { x = -1217.396, y = 344.285, z = 2448.205 }, rot = { x = 0.000, y = 331.207, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 442006, monster_id = 21010201, pos = { x = -1219.922, y = 344.362, z = 2447.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 21 }
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
	{ config_id = 1442003, name = "ANY_MONSTER_DIE_442003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_442003", action = "action_EVENT_ANY_MONSTER_DIE_442003" }
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
		monsters = { 442001, 442002, 442005, 442006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_442003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_442003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_442003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333044421") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end