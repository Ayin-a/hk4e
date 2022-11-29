-- 基础信息
local base_info = {
	group_id = 133302174
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 174001, monster_id = 21020703, pos = { x = -768.499, y = 132.000, z = 2535.591 }, rot = { x = 0.000, y = 98.340, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 24 },
	{ config_id = 174004, monster_id = 21010901, pos = { x = -768.916, y = 136.024, z = 2531.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 24 },
	{ config_id = 174005, monster_id = 21010901, pos = { x = -758.018, y = 136.061, z = 2520.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 24 },
	{ config_id = 174007, monster_id = 22010201, pos = { x = -761.428, y = 132.000, z = 2526.978 }, rot = { x = 0.000, y = 34.548, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 174002, gadget_id = 70300090, pos = { x = -758.438, y = 130.477, z = 2519.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 174003, gadget_id = 70300090, pos = { x = -769.101, y = 130.508, z = 2530.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1174006, name = "ANY_MONSTER_DIE_174006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_174006", action = "action_EVENT_ANY_MONSTER_DIE_174006", trigger_count = 0 }
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
		monsters = { 174001, 174004, 174005, 174007 },
		gadgets = { 174002, 174003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_174006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_174006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302174) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7380010") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end