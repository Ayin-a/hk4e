-- 基础信息
local base_info = {
	group_id = 133001006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6004, monster_id = 21010301, pos = { x = 1434.950, y = 239.135, z = -1432.683 }, rot = { x = 0.000, y = 180.830, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 2 },
	{ config_id = 6006, monster_id = 21010101, pos = { x = 1429.854, y = 238.397, z = -1443.809 }, rot = { x = 0.000, y = 327.600, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 6007, monster_id = 21010901, pos = { x = 1446.826, y = 257.115, z = -1445.275 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 6008, monster_id = 21010901, pos = { x = 1430.855, y = 241.713, z = -1429.425 }, rot = { x = 0.000, y = 150.900, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6002, gadget_id = 70300091, pos = { x = 1438.032, y = 239.275, z = -1443.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "ANY_GADGET_DIE_6003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_6003", trigger_count = 0 },
	{ config_id = 1006020, name = "MONSTER_BATTLE_6020", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_6020", trigger_count = 0 }
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
		monsters = { 6004, 6006, 6007, 6008 },
		gadgets = { 6002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_6003", "MONSTER_BATTLE_6020" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_6020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end