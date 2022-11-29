-- 基础信息
local base_info = {
	group_id = 133220251
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 251001, monster_id = 25080201, pos = { x = -2480.322, y = 200.571, z = -4082.025 }, rot = { x = 0.000, y = 350.349, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 251002, monster_id = 25080301, pos = { x = -2471.122, y = 200.171, z = -4082.819 }, rot = { x = 0.000, y = 267.360, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 251004, monster_id = 25080201, pos = { x = -2485.882, y = 200.118, z = -4087.259 }, rot = { x = 0.000, y = 45.467, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 251005, monster_id = 25080101, pos = { x = -2478.690, y = 199.997, z = -4092.064 }, rot = { x = 0.000, y = 1.874, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 251007, monster_id = 25080301, pos = { x = -2473.267, y = 200.189, z = -4084.438 }, rot = { x = 0.000, y = 267.360, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 251009, monster_id = 25080301, pos = { x = -2482.009, y = 200.000, z = -4090.437 }, rot = { x = 0.000, y = 2.734, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 251012, monster_id = 25080301, pos = { x = -2485.866, y = 200.183, z = -4083.768 }, rot = { x = 0.000, y = 43.635, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 251010, gadget_id = 70310006, pos = { x = -2478.783, y = 200.528, z = -4086.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1251006, name = "MONSTER_BATTLE_251006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_251006", action = "action_EVENT_MONSTER_BATTLE_251006" },
	{ config_id = 1251011, name = "ANY_MONSTER_DIE_251011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_251011", action = "action_EVENT_ANY_MONSTER_DIE_251011" },
	{ config_id = 1251013, name = "ANY_MONSTER_DIE_251013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_251013", action = "action_EVENT_ANY_MONSTER_DIE_251013" }
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
		monsters = { 251001 },
		gadgets = { 251010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_251006", "ANY_MONSTER_DIE_251011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 251007, 251009, 251012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_251013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 251002, 251004, 251005 },
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
function condition_EVENT_MONSTER_BATTLE_251006(context, evt)
	if 251001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_251006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220251, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_251011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_251011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220251, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_251013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_251013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220251") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end