-- 基础信息
local base_info = {
	group_id = 133308142
}

-- DEFS_MISCS
local engineerLaserConfigID = 142001
local turnOption = 435
local correctState = 202

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
	{ config_id = 142001, gadget_id = 70330311, pos = { x = -2031.978, y = 160.082, z = 5565.537 }, rot = { x = 0.000, y = 119.612, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 142002, gadget_id = 70330225, pos = { x = -2041.221, y = 161.676, z = 5550.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 142003, gadget_id = 70330281, pos = { x = -2032.081, y = 160.082, z = 5580.667 }, rot = { x = 0.000, y = 359.612, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 142004, gadget_id = 70330416, pos = { x = -2021.208, y = 160.818, z = 5585.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 142005, gadget_id = 70330315, pos = { x = -2032.352, y = 160.082, z = 5556.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142006, name = "GADGET_STATE_CHANGE_142006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142006", action = "action_EVENT_GADGET_STATE_CHANGE_142006", trigger_count = 0 },
	{ config_id = 1142007, name = "GADGET_STATE_CHANGE_142007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142007", action = "action_EVENT_GADGET_STATE_CHANGE_142007", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1142008, name = "GADGET_STATE_CHANGE_142008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142008", action = "action_EVENT_GADGET_STATE_CHANGE_142008" },
	-- 运营埋点
	{ config_id = 1142009, name = "GADGET_STATE_CHANGE_142009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142009", action = "action_EVENT_GADGET_STATE_CHANGE_142009" }
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
		gadgets = { 142001, 142002, 142003, 142004, 142005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_142006", "GADGET_STATE_CHANGE_142007", "GADGET_STATE_CHANGE_142008", "GADGET_STATE_CHANGE_142009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308142, 142003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142006(context, evt)
	-- 将configid为 142004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142007(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308142, 142003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142007(context, evt)
	-- 将configid为 142004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142008(context, evt)
	-- 检测config_id为142001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 142001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142009(context, evt)
	-- 检测config_id为142005的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 142005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Laser"