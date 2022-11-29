-- 基础信息
local base_info = {
	group_id = 133002938
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 938001, monster_id = 21010301, pos = { x = 2005.363, y = 250.389, z = -461.977 }, rot = { x = 0.000, y = 60.557, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 3 },
	{ config_id = 938002, monster_id = 21020201, pos = { x = 2009.963, y = 250.157, z = -465.349 }, rot = { x = 0.000, y = 349.215, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 3 },
	{ config_id = 938003, monster_id = 22010104, pos = { x = 2009.731, y = 250.936, z = -458.563 }, rot = { x = 0.000, y = 169.160, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 3 },
	{ config_id = 938004, monster_id = 21010301, pos = { x = 2014.053, y = 250.628, z = -461.601 }, rot = { x = 0.000, y = 256.479, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 938006, gadget_id = 70300107, pos = { x = 2009.634, y = 250.659, z = -461.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 938007, gadget_id = 70710244, pos = { x = 2009.736, y = 252.699, z = -461.756 }, rot = { x = 0.000, y = 48.808, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1938005, name = "ANY_MONSTER_DIE_938005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_938005", action = "action_EVENT_ANY_MONSTER_DIE_938005", trigger_count = 0 }
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
		monsters = { 938001, 938002, 938003, 938004 },
		gadgets = { 938006, 938007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_938005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_938005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_938005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002938") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end