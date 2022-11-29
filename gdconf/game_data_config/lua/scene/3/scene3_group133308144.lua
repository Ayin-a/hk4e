-- 基础信息
local base_info = {
	group_id = 133308144
}

-- DEFS_MISCS
local engineerLaserConfigID = 144005
local turnOption = 435
local correctState = 0

local markList = {144001}

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
	{ config_id = 144002, gadget_id = 70330430, pos = { x = -2571.333, y = 180.722, z = 5448.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 144005, gadget_id = 70330311, pos = { x = -2591.627, y = 180.692, z = 5456.815 }, rot = { x = 0.000, y = 266.468, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 144006, gadget_id = 70330281, pos = { x = -2602.114, y = 180.692, z = 5456.167 }, rot = { x = 0.000, y = 266.468, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 144007, gadget_id = 70330225, pos = { x = -2601.049, y = 180.728, z = 5446.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 144008, gadget_id = 70330416, pos = { x = -2601.223, y = 177.689, z = 5441.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1144003, name = "GADGET_STATE_CHANGE_144003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144003", action = "action_EVENT_GADGET_STATE_CHANGE_144003" },
	{ config_id = 1144009, name = "GADGET_STATE_CHANGE_144009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144009", action = "action_EVENT_GADGET_STATE_CHANGE_144009", trigger_count = 0 },
	{ config_id = 1144010, name = "GADGET_STATE_CHANGE_144010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144010", action = "action_EVENT_GADGET_STATE_CHANGE_144010", trigger_count = 0 }
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
		gadgets = { 144002, 144005, 144006, 144007, 144008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_144003", "GADGET_STATE_CHANGE_144009", "GADGET_STATE_CHANGE_144010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144003(context, evt)
	-- 检测config_id为144005的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 144005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308144, 144006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144009(context, evt)
	-- 改变指定group组133308144中， configid为144008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308144, 144008, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144010(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308144, 144006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144010(context, evt)
	-- 改变指定group组133308144中， configid为144008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308144, 144008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_1/Transparent_Mark"
require "V3_1/Engineer_Laser"