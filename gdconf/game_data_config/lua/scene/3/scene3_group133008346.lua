-- 基础信息
local base_info = {
	group_id = 133008346
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
	{ config_id = 346001, gadget_id = 70211111, pos = { x = 934.785, y = 391.022, z = -856.852 }, rot = { x = 0.000, y = 0.000, z = 331.689 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 346003, gadget_id = 70220055, pos = { x = 933.525, y = 391.054, z = -859.577 }, rot = { x = 342.988, y = 356.338, z = 352.886 }, level = 30, area_id = 10 },
	{ config_id = 346004, gadget_id = 70220055, pos = { x = 937.229, y = 391.100, z = -855.635 }, rot = { x = 350.857, y = 359.643, z = 348.958 }, level = 30, area_id = 10 },
	{ config_id = 346005, gadget_id = 70220055, pos = { x = 938.248, y = 390.382, z = -857.619 }, rot = { x = 347.648, y = 356.227, z = 351.789 }, level = 30, area_id = 10 },
	{ config_id = 346006, gadget_id = 70220055, pos = { x = 932.693, y = 391.711, z = -857.164 }, rot = { x = 349.482, y = 0.800, z = 353.484 }, level = 30, area_id = 10 },
	{ config_id = 346007, gadget_id = 70220055, pos = { x = 934.369, y = 391.795, z = -854.800 }, rot = { x = 350.875, y = 1.185, z = 352.582 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1346002, name = "GADGET_STATE_CHANGE_346002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_346002", action = "action_EVENT_GADGET_STATE_CHANGE_346002" }
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
		gadgets = { 346001, 346003, 346004, 346005, 346006, 346007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_346002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346002(context, evt)
	if 346001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346002(context, evt)
	-- 将configid为 346003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 346004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 346005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 346006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 346007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end