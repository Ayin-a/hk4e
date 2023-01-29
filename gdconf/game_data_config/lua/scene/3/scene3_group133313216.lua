-- 基础信息
local base_info = {
	group_id = 133313216
}

-- DEFS_MISCS
--风扇
local fans =
{
    216001,
    216002
}
--沙堆
local sandpiles =
{
    216003,
    216004
}
--百叶窗
local shutters =
{

}
--百叶窗开关
local shutter_switches =
{

}

--移动点阵
local FanToPointArray =
{
}

--风扇与沙堆映射
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 203, pos = 1},
    [sandpiles[2]] = {fan = fans[2], dir_state = 204, pos = 1},
}

--百叶窗与开关映射
local SwitchToShutter =
{

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
	{ config_id = 216001, gadget_id = 70290697, pos = { x = -386.764, y = -73.578, z = 5526.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 216002, gadget_id = 70290697, pos = { x = -401.387, y = -73.578, z = 5526.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 216003, gadget_id = 70290702, pos = { x = -400.999, y = -74.108, z = 5531.291 }, rot = { x = 0.000, y = 107.341, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 216004, gadget_id = 70290703, pos = { x = -404.150, y = -73.756, z = 5517.188 }, rot = { x = 0.000, y = 104.349, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 沙堆A死亡
	{ config_id = 1216005, name = "GADGET_STATE_CHANGE_216005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_216005", action = "action_EVENT_GADGET_STATE_CHANGE_216005", trigger_count = 0 },
	-- 沙堆B死亡
	{ config_id = 1216006, name = "GADGET_STATE_CHANGE_216006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_216006", action = "action_EVENT_GADGET_STATE_CHANGE_216006", trigger_count = 0 },
	{ config_id = 1216007, name = "GROUP_LOAD_216007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_216007", action = "action_EVENT_GROUP_LOAD_216007", trigger_count = 0 }
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
		gadgets = { 216001, 216002, 216003, 216004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_216005", "GADGET_STATE_CHANGE_216006", "GROUP_LOAD_216007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_216005(context, evt)
	if 216003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216005(context, evt)
	-- 将configid为 216002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_216006(context, evt)
	if 216004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216006(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133313028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_216007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313216, 216004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_216007(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133313028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"