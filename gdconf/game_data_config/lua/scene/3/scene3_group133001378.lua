-- 基础信息
local base_info = {
	group_id = 133001378
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 378001, monster_id = 21030401, pos = { x = 1600.245, y = 245.390, z = -1593.376 }, rot = { x = 0.000, y = 142.774, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378002, monster_id = 21020201, pos = { x = 1602.151, y = 245.427, z = -1591.203 }, rot = { x = 0.000, y = 158.459, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378003, monster_id = 21010901, pos = { x = 1599.461, y = 245.642, z = -1596.109 }, rot = { x = 0.000, y = 125.045, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378006, monster_id = 21011001, pos = { x = 1603.136, y = 245.467, z = -1593.115 }, rot = { x = 0.000, y = 162.312, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378007, monster_id = 21010701, pos = { x = 1602.552, y = 246.034, z = -1601.205 }, rot = { x = 0.000, y = 107.917, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378008, monster_id = 21010701, pos = { x = 1606.762, y = 245.825, z = -1596.520 }, rot = { x = 0.000, y = 167.038, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378009, monster_id = 21030201, pos = { x = 1596.542, y = 245.762, z = -1594.409 }, rot = { x = 0.000, y = 119.911, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378010, monster_id = 21010201, pos = { x = 1601.493, y = 245.853, z = -1599.635 }, rot = { x = 0.000, y = 109.845, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378011, monster_id = 21010601, pos = { x = 1604.295, y = 245.480, z = -1594.645 }, rot = { x = 0.000, y = 172.021, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 378012, monster_id = 21010601, pos = { x = 1598.425, y = 245.678, z = -1595.460 }, rot = { x = 0.000, y = 125.500, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 }
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
	{ config_id = 1378004, name = "ANY_MONSTER_DIE_378004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_378004", action = "action_EVENT_ANY_MONSTER_DIE_378004" },
	{ config_id = 1378005, name = "ANY_MONSTER_DIE_378005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_378005", action = "action_EVENT_ANY_MONSTER_DIE_378005" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 378001, 378003, 378006, 378007, 378008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_378004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 378002, 378009, 378010, 378011, 378012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_378005" },
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
function condition_EVENT_ANY_MONSTER_DIE_378004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"isfinished"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isfinished", 133001377) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_378004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300137801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133001377中， configid为377001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133001377, 377001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_378005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"isfinished"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isfinished", 133001377) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_378005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300137802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133001377中， configid为377001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133001377, 377001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300137801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end