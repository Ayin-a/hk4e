-- 基础信息
local base_info = {
	group_id = 133304274
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
	{ config_id = 274001, gadget_id = 70211101, pos = { x = -1271.586, y = 236.859, z = 2709.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 274002, gadget_id = 70900050, pos = { x = -1267.081, y = 237.248, z = 2708.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 21 },
	{ config_id = 274003, gadget_id = 70900050, pos = { x = -1289.193, y = 234.450, z = 2711.544 }, rot = { x = 357.547, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 274004, gadget_id = 70900050, pos = { x = -1245.683, y = 224.043, z = 2702.647 }, rot = { x = 338.086, y = 1.495, z = 342.900 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 274007, gadget_id = 70230112, pos = { x = -1270.658, y = 241.591, z = 2711.659 }, rot = { x = 0.000, y = 116.092, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 274008, gadget_id = 70230112, pos = { x = -1264.077, y = 242.235, z = 2710.679 }, rot = { x = 332.629, y = 305.347, z = 158.200 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274005, name = "GADGET_STATE_CHANGE_274005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274005", action = "action_EVENT_GADGET_STATE_CHANGE_274005" },
	{ config_id = 1274006, name = "GADGET_STATE_CHANGE_274006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274006", action = "action_EVENT_GADGET_STATE_CHANGE_274006" },
	{ config_id = 1274009, name = "GADGET_STATE_CHANGE_274009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274009", action = "action_EVENT_GADGET_STATE_CHANGE_274009", trigger_count = 0 },
	{ config_id = 1274010, name = "GADGET_STATE_CHANGE_274010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274010", action = "action_EVENT_GADGET_STATE_CHANGE_274010", trigger_count = 0 }
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
		gadgets = { 274002, 274003, 274004, 274007, 274008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274005", "GADGET_STATE_CHANGE_274006", "GADGET_STATE_CHANGE_274009", "GADGET_STATE_CHANGE_274010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304274, 274003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304274, 274004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274005(context, evt)
	-- 将configid为 274002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304274, 274002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274006(context, evt)
	-- 创建id为274001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 274001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304274, 274003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274009(context, evt)
	-- 将configid为 274007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304274, 274004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274010(context, evt)
	-- 将configid为 274008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end