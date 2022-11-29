-- 基础信息
local base_info = {
	group_id = 133308004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 24040201, pos = { x = -2261.838, y = 63.372, z = 4492.307 }, rot = { x = 0.000, y = 182.525, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5245, 5246 }, pose_id = 1, area_id = 26 },
	{ config_id = 4003, monster_id = 24040201, pos = { x = -2254.699, y = 63.495, z = 4486.453 }, rot = { x = 0.000, y = 237.178, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5245, 5246 }, pose_id = 1, area_id = 26 },
	{ config_id = 4007, monster_id = 35310301, pos = { x = -2256.549, y = 63.576, z = 4481.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26, isPartner = true },
	{ config_id = 4008, monster_id = 35310101, pos = { x = -2264.810, y = 63.372, z = 4487.208 }, rot = { x = 0.000, y = 26.722, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 26, isPartner = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4004, gadget_id = 70211012, pos = { x = -2256.205, y = 63.372, z = 4494.282 }, rot = { x = 0.000, y = 225.941, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "ANY_MONSTER_DIE_4002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4002", action = "action_EVENT_ANY_MONSTER_DIE_4002" },
	{ config_id = 1004005, name = "GROUP_LOAD_4005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4005", action = "action_EVENT_GROUP_LOAD_4005", trigger_count = 0 },
	{ config_id = 1004006, name = "MONSTER_BATTLE_4006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_4006" },
	{ config_id = 1004009, name = "ANY_MONSTER_DIE_4009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4009", action = "action_EVENT_ANY_MONSTER_DIE_4009" },
	{ config_id = 1004010, name = "VARIABLE_CHANGE_4010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4010", action = "action_EVENT_VARIABLE_CHANGE_4010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish2", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		monsters = { 4001, 4003 },
		gadgets = { 4004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4002", "GROUP_LOAD_4005", "MONSTER_BATTLE_4006", "ANY_MONSTER_DIE_4009", "VARIABLE_CHANGE_4010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4007, 4008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4001, 4003 },
		gadgets = { 4004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4002", "GROUP_LOAD_4005", "ANY_MONSTER_DIE_4009", "VARIABLE_CHANGE_4010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	--判断死亡怪物的configid是否为 4001
	if evt.param1 ~= 4001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4005(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	-- 判断变量"finish2"为1
	if ScriptLib.GetGroupVariableValue(context, "finish2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305228") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_4006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4009(context, evt)
	--判断死亡怪物的configid是否为 4003
	if evt.param1 ~= 4003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4009(context, evt)
	-- 将本组内变量名为 "finish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	-- 判断变量"finish2"为1
	if ScriptLib.GetGroupVariableValue(context, "finish2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305228") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308004, 2)
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end