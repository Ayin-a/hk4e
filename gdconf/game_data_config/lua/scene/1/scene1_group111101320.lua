-- 基础信息
local base_info = {
	group_id = 111101320
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
	{ config_id = 320001, gadget_id = 70310001, pos = { x = 2308.040, y = 284.316, z = -1705.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 320002, gadget_id = 70310001, pos = { x = 2316.344, y = 284.243, z = -1708.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 320003, gadget_id = 70310001, pos = { x = 2314.501, y = 284.188, z = -1700.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 320004, gadget_id = 70310001, pos = { x = 2311.284, y = 285.700, z = -1710.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 320005, gadget_id = 70310001, pos = { x = 2320.250, y = 284.210, z = -1704.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 320007, gadget_id = 70211002, pos = { x = 2315.813, y = 284.244, z = -1704.204 }, rot = { x = 0.000, y = 60.851, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1320006, name = "GADGET_STATE_CHANGE_320006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_320006", action = "action_EVENT_GADGET_STATE_CHANGE_320006" },
	{ config_id = 1320008, name = "GADGET_STATE_CHANGE_320008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_320008", action = "action_EVENT_GADGET_STATE_CHANGE_320008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Fired", value = 0, no_refresh = true }
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
		gadgets = { 320001, 320002, 320003, 320004, 320005, 320007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_320006", "GADGET_STATE_CHANGE_320008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_320006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101320, 320001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101320, 320002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101320, 320003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101320, 320004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101320, 320005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_320006(context, evt)
	-- 将configid为 320007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_320008(context, evt)
	if 320007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_320008(context, evt)
	-- 改变指定group组111101321中， configid为321003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101321, 321003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end