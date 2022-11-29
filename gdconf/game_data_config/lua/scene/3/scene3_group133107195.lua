-- 基础信息
local base_info = {
	group_id = 133107195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 25010201, pos = { x = -862.659, y = 192.149, z = 785.903 }, rot = { x = 0.000, y = 279.947, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 8 },
	{ config_id = 195002, monster_id = 25010201, pos = { x = -863.859, y = 192.510, z = 783.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 195005, monster_id = 25010301, pos = { x = -866.869, y = 192.987, z = 781.991 }, rot = { x = 0.000, y = 28.827, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 8 },
	{ config_id = 195006, monster_id = 25030201, pos = { x = -866.259, y = 192.289, z = 786.184 }, rot = { x = 0.000, y = 272.380, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 195007, monster_id = 25020201, pos = { x = -865.835, y = 192.694, z = 783.246 }, rot = { x = 0.000, y = 207.878, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195004, gadget_id = 70300104, pos = { x = -861.822, y = 192.157, z = 785.501 }, rot = { x = 359.866, y = 107.694, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1195003, name = "ANY_MONSTER_DIE_195003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_195003", action = "action_EVENT_ANY_MONSTER_DIE_195003", trigger_count = 0 }
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
		monsters = { 195001, 195002, 195005, 195006, 195007 },
		gadgets = { 195004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_195003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_195003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_195003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "QWPA_Clear") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end