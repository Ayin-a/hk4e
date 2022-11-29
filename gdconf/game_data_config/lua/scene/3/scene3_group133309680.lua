-- 基础信息
local base_info = {
	group_id = 133309680
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 680002,
	gadget_receiver_2 = 680003
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
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
	{ config_id = 680001, gadget_id = 70330308, pos = { x = -2359.164, y = 130.797, z = 5593.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 接收装置#1
	{ config_id = 680002, gadget_id = 70330281, pos = { x = -2365.105, y = 131.622, z = 5593.442 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 接收装置#2激活-开启大门
	{ config_id = 1680006, name = "GADGET_STATE_CHANGE_680006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680006", action = "action_EVENT_GADGET_STATE_CHANGE_680006", trigger_count = 0 },
	-- 接收装置#2取消激活-关闭大门
	{ config_id = 1680007, name = "GADGET_STATE_CHANGE_680007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680007", action = "action_EVENT_GADGET_STATE_CHANGE_680007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 680001, 680002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_680006", "GADGET_STATE_CHANGE_680007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680006(context, evt)
	if 680002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680006(context, evt)
	-- 将configid为 680001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 680001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680007(context, evt)
	if 680002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680007(context, evt)
	-- 将configid为 680001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 680001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end