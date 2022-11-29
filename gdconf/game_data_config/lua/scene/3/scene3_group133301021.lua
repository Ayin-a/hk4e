-- 基础信息
local base_info = {
	group_id = 133301021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 26090901, pos = { x = -838.730, y = 196.364, z = 2658.869 }, rot = { x = 0.000, y = 348.083, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 24 },
	{ config_id = 21002, monster_id = 26090901, pos = { x = -841.177, y = 196.325, z = 2660.495 }, rot = { x = 0.000, y = 72.880, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 21003, monster_id = 26090901, pos = { x = -839.986, y = 196.453, z = 2662.257 }, rot = { x = 0.000, y = 107.119, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 21004, monster_id = 26090901, pos = { x = -838.730, y = 196.364, z = 2658.869 }, rot = { x = 0.000, y = 348.083, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 24 },
	{ config_id = 21007, monster_id = 26090901, pos = { x = -839.986, y = 196.453, z = 2662.257 }, rot = { x = 0.000, y = 107.119, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 24 },
	{ config_id = 21008, monster_id = 26090901, pos = { x = -841.177, y = 196.325, z = 2660.495 }, rot = { x = 0.000, y = 72.880, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 21009, monster_id = 26090901, pos = { x = -838.730, y = 196.364, z = 2658.869 }, rot = { x = 0.000, y = 348.083, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 24 },
	{ config_id = 21010, monster_id = 26090901, pos = { x = -841.177, y = 196.325, z = 2660.495 }, rot = { x = 0.000, y = 72.880, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 21011, monster_id = 26090901, pos = { x = -839.986, y = 196.453, z = 2662.257 }, rot = { x = 0.000, y = 107.119, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21006, gadget_id = 70360001, pos = { x = -850.989, y = 196.387, z = 2658.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021005, name = "ANY_MONSTER_DIE_21005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21005", action = "action_EVENT_ANY_MONSTER_DIE_21005", trigger_count = 0 },
	-- 遇怪入战保底1
	{ config_id = 1021012, name = "MONSTER_BATTLE_21012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_21012", action = "action_EVENT_MONSTER_BATTLE_21012", trigger_count = 0 },
	-- 遇怪入战保底2
	{ config_id = 1021013, name = "MONSTER_BATTLE_21013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_21013", action = "action_EVENT_MONSTER_BATTLE_21013", trigger_count = 0 },
	-- 遇怪入战保底3
	{ config_id = 1021014, name = "MONSTER_BATTLE_21014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_21014", action = "action_EVENT_MONSTER_BATTLE_21014", trigger_count = 0 }
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
	suite = 4,
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
		monsters = { 21004, 21007, 21008 },
		gadgets = { 21006 },
		regions = { },
		triggers = { "MONSTER_BATTLE_21012", "MONSTER_BATTLE_21013", "MONSTER_BATTLE_21014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 21001, 21002, 21003 },
		gadgets = { 21006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21005", "MONSTER_BATTLE_21012", "MONSTER_BATTLE_21013", "MONSTER_BATTLE_21014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 21009, 21010, 21011 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_21012", "MONSTER_BATTLE_21013", "MONSTER_BATTLE_21014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21005(context, evt)
	-- 将configid为 21006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_21012(context, evt)
	if 21009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_21012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_21013(context, evt)
	if 21010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_21013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_21014(context, evt)
	if 21011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_21014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end