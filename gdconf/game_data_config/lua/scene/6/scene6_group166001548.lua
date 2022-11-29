-- 基础信息
local base_info = {
	group_id = 166001548
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
	{ config_id = 548001, gadget_id = 70290219, pos = { x = 988.465, y = 945.781, z = 531.590 }, rot = { x = 358.371, y = 8.557, z = 357.439 }, level = 36, area_id = 300 },
	{ config_id = 548002, gadget_id = 70290219, pos = { x = 982.726, y = 945.913, z = 541.099 }, rot = { x = 1.886, y = 101.105, z = 0.238 }, level = 36, area_id = 300 },
	{ config_id = 548003, gadget_id = 70211112, pos = { x = 985.132, y = 945.937, z = 541.658 }, rot = { x = 3.957, y = 197.766, z = 357.744 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 548004, gadget_id = 70290219, pos = { x = 990.487, y = 945.848, z = 536.652 }, rot = { x = 358.030, y = 100.964, z = 359.220 }, level = 36, area_id = 300 },
	{ config_id = 548006, gadget_id = 70290347, pos = { x = 986.541, y = 945.865, z = 535.247 }, rot = { x = 0.000, y = 327.715, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 548007, gadget_id = 70220048, pos = { x = 986.806, y = 945.952, z = 535.417 }, rot = { x = 0.000, y = 9.028, z = 0.000 }, level = 36, isOneoff = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1548005, name = "GADGET_STATE_CHANGE_548005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548005", action = "action_EVENT_GADGET_STATE_CHANGE_548005" },
	{ config_id = 1548008, name = "ANY_GADGET_DIE_548008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_548008", action = "action_EVENT_ANY_GADGET_DIE_548008" }
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
		gadgets = { 548001, 548002, 548003, 548004, 548007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_548005", "ANY_GADGET_DIE_548008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001548, 548001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001548, 548002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001548, 548004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_548005(context, evt)
	-- 将configid为 548003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_548008(context, evt)
	if 548007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_548008(context, evt)
	-- 创建id为548006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 548006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end