-- 基础信息
local base_info = {
	group_id = 111101281
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
	{ config_id = 281001, gadget_id = 70310001, pos = { x = 2309.951, y = 275.475, z = -1638.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 281002, gadget_id = 70310001, pos = { x = 2308.594, y = 275.436, z = -1642.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 281003, gadget_id = 70310001, pos = { x = 2313.970, y = 275.483, z = -1638.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 281004, gadget_id = 70310001, pos = { x = 2315.071, y = 275.428, z = -1642.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 281005, gadget_id = 70310001, pos = { x = 2311.904, y = 275.433, z = -1645.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 初始状态为红圈锁定
	{ config_id = 281006, gadget_id = 70211002, pos = { x = 2311.863, y = 275.432, z = -1642.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 所有高脚火盆都点燃后解锁宝箱
	{ config_id = 1281007, name = "GADGET_STATE_CHANGE_281007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281007", action = "action_EVENT_GADGET_STATE_CHANGE_281007" },
	-- 宝箱打开后解锁D区域元素方碑282003
	{ config_id = 1281008, name = "GADGET_STATE_CHANGE_281008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281008", action = "action_EVENT_GADGET_STATE_CHANGE_281008" }
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
		gadgets = { 281001, 281002, 281003, 281004, 281005, 281006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_281007", "GADGET_STATE_CHANGE_281008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101281, 281001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101281, 281002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101281, 281003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101281, 281004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101281, 281005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281007(context, evt)
	-- 将configid为 281006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281008(context, evt)
	-- 检测config_id为281006的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 281006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281008(context, evt)
	-- 改变指定group组111101282中， configid为282003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101282, 282003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end