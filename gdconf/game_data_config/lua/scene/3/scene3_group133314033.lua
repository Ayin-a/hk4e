-- 基础信息
local base_info = {
	group_id = 133314033
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 33008,
    [2] = 33003
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 33001
}

local lights = 
{
    [1] = 33009,
    [2] = 33010,
    [3] = 33011,
    [4] = 33013
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],lights[2],lights[3],lights[4],I_connectors[2]}
}

local L_connections = 
{

}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{
    [1] = 33005
}

local connector_to_worktop = 
{
    [I_connectors[2]] = worktops[1]
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
	{ config_id = 33001, gadget_id = 70290459, pos = { x = -919.313, y = -158.108, z = 4920.941 }, rot = { x = 0.000, y = 89.262, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 33002, gadget_id = 70330264, pos = { x = -898.826, y = -152.431, z = 4922.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.ExcitedState, persistent = true, area_id = 32 },
	{ config_id = 33003, gadget_id = 70290453, pos = { x = -908.085, y = -159.460, z = 4943.046 }, rot = { x = 90.000, y = 90.021, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 33004, gadget_id = 70330264, pos = { x = -898.935, y = -152.610, z = 4936.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.ExcitedState, persistent = true, area_id = 32 },
	{ config_id = 33005, gadget_id = 70290610, pos = { x = -912.037, y = -158.108, z = 4938.899 }, rot = { x = 0.493, y = 180.622, z = 359.885 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 33006, gadget_id = 70330430, pos = { x = -916.585, y = -158.011, z = 4939.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 33008, gadget_id = 70290461, pos = { x = -853.242, y = -146.006, z = 4959.062 }, rot = { x = 1.025, y = 180.000, z = 180.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 33009, gadget_id = 70290461, pos = { x = -861.120, y = -152.922, z = 4940.495 }, rot = { x = 1.025, y = 180.000, z = 180.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 33010, gadget_id = 70290461, pos = { x = -884.710, y = -157.939, z = 4938.156 }, rot = { x = 271.039, y = 155.234, z = 115.188 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 33011, gadget_id = 70290461, pos = { x = -889.793, y = -158.187, z = 4943.513 }, rot = { x = 271.031, y = 155.133, z = 204.639 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 33013, gadget_id = 70290461, pos = { x = -901.743, y = -158.159, z = 4943.521 }, rot = { x = 271.026, y = 155.133, z = 205.397 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033007, name = "ANY_GADGET_DIE_33007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_33007", action = "action_EVENT_ANY_GADGET_DIE_33007" },
	-- 解锁透明墙
	{ config_id = 1033012, name = "GADGET_STATE_CHANGE_33012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33012", action = "action_EVENT_GADGET_STATE_CHANGE_33012", trigger_count = 0 }
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
		gadgets = { 33001, 33002, 33003, 33004, 33005, 33006, 33008, 33009, 33010, 33011, 33013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_33007", "GADGET_STATE_CHANGE_33012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_33007(context, evt)
	if 33006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_33007(context, evt)
	-- 将configid为 33005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33012(context, evt)
	if 33001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33012(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 33004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/SandPipe"