-- 基础信息
local base_info = {
	group_id = 133314004
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 4008
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 4003
}

local lights = 
{
    [1] = 4005,
    [2] = 4006,
    [3] = 4007,
    [4] = 4012,
    [5] = 4010
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],lights[2],lights[3],lights[4],lights[5]}
}

local L_connections = 
{

}

local base_interval = 2

local special_interval = 
{
   {upstream = I_connectors[1], downstream = lights[1], interval = 3}
}

local worktops = 
{
   [1] = 4001
}

local connector_to_worktop = 
{
    [I_connectors[1]] = worktops[1]
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70290610, pos = { x = -953.014, y = -44.441, z = 4968.190 }, rot = { x = 0.000, y = 93.284, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 4003, gadget_id = 70330416, pos = { x = -882.100, y = -32.603, z = 5047.765 }, rot = { x = 0.000, y = 25.540, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	{ config_id = 4005, gadget_id = 70290627, pos = { x = -919.696, y = -39.158, z = 4964.936 }, rot = { x = 0.000, y = 270.629, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 4006, gadget_id = 70290627, pos = { x = -896.987, y = -26.477, z = 5009.829 }, rot = { x = 0.000, y = 269.233, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 4007, gadget_id = 70290627, pos = { x = -896.451, y = -14.476, z = 5009.133 }, rot = { x = 0.027, y = 271.744, z = 269.741 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 4008, gadget_id = 70290626, pos = { x = -925.215, y = -5.463, z = 4959.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 4010, gadget_id = 70290627, pos = { x = -803.072, y = -69.209, z = 5042.675 }, rot = { x = 1.034, y = 234.223, z = 90.095 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 4012, gadget_id = 70290461, pos = { x = -820.245, y = -44.125, z = 5092.164 }, rot = { x = 271.722, y = 161.530, z = 137.845 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 通知机关可用
	{ config_id = 1004002, name = "QUEST_START_4002", event = EventType.EVENT_QUEST_START, source = "7318611", condition = "", action = "action_EVENT_QUEST_START_4002", trigger_count = 0 },
	-- 任务保底恢复操作台状态
	{ config_id = 1004004, name = "GROUP_LOAD_4004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4004", action = "action_EVENT_GROUP_LOAD_4004" },
	-- 玩法完成保底恢复门的状态并通知仙灵可动
	{ config_id = 1004009, name = "GROUP_LOAD_4009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4009", action = "action_EVENT_GROUP_LOAD_4009", trigger_count = 0 },
	-- 开门通知仙灵可动
	{ config_id = 1004011, name = "GADGET_STATE_CHANGE_4011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4011", action = "action_EVENT_GADGET_STATE_CHANGE_4011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 4001, 4003, 4005, 4006, 4007, 4008, 4010, 4012 },
		regions = { },
		triggers = { "QUEST_START_4002", "GROUP_LOAD_4004", "GROUP_LOAD_4009", "GADGET_STATE_CHANGE_4011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_4002(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4004(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7316811)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4004(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4009(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4009(context, evt)
	-- 将本组内变量名为 "door_open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door_open", 1, 133314044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 4003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4011(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4011(context, evt)
	-- 将本组内变量名为 "door_open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door_open", 1, 133314044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_4/SandPipe"