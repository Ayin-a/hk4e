-- 基础信息
local base_info = {
	group_id = 220129022
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
	{ config_id = 22001, gadget_id = 70350004, pos = { x = 319.843, y = 200.868, z = 247.656 }, rot = { x = 0.000, y = 25.683, z = 1.946 }, level = 1 },
	{ config_id = 22002, gadget_id = 70350004, pos = { x = 319.808, y = 200.530, z = 46.769 }, rot = { x = 351.952, y = 19.717, z = 357.393 }, level = 1 },
	{ config_id = 22003, gadget_id = 70360170, pos = { x = 316.296, y = 201.984, z = 250.013 }, rot = { x = 83.646, y = 20.874, z = 357.170 }, level = 1 },
	{ config_id = 22004, gadget_id = 70360001, pos = { x = 316.268, y = 201.985, z = 250.025 }, rot = { x = 76.149, y = 86.904, z = 62.496 }, level = 1, worktop_config = { is_persistent = true, init_options = { 324 } } },
	{ config_id = 22006, gadget_id = 70220036, pos = { x = 319.397, y = 203.203, z = 46.628 }, rot = { x = 353.075, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 22007, gadget_id = 70710470, pos = { x = 318.557, y = 201.705, z = 41.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1022005, name = "SELECT_OPTION_22005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22005", action = "action_EVENT_SELECT_OPTION_22005" }
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
		gadgets = { 22001, 22002, 22003, 22004, 22007 },
		regions = { },
		triggers = { "SELECT_OPTION_22005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_22005(context, evt)
	-- 判断是gadgetid 22004 option_id 324
	if 22004 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_22005(context, evt)
	-- 删除指定group： 220129022 ；指定config：22004；物件身上指定option：324；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220129022, 22004, 324) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 22001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 22002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为22006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end