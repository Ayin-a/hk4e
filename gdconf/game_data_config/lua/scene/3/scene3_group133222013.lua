-- 基础信息
local base_info = {
	group_id = 133222013
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
	{ config_id = 13001, gadget_id = 70310086, pos = { x = -4394.746, y = 199.527, z = -4210.921 }, rot = { x = 354.368, y = 56.500, z = 2.533 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 13002, gadget_id = 70310086, pos = { x = -4392.344, y = 199.686, z = -4214.547 }, rot = { x = 355.949, y = 56.929, z = 0.000 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 13003, gadget_id = 70310086, pos = { x = -4389.954, y = 199.891, z = -4218.332 }, rot = { x = 355.064, y = 56.929, z = 2.281 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 13004, gadget_id = 70310086, pos = { x = -4398.442, y = 199.120, z = -4213.163 }, rot = { x = 358.530, y = 56.929, z = 0.000 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 13005, gadget_id = 70310086, pos = { x = -4396.012, y = 199.273, z = -4216.902 }, rot = { x = 359.233, y = 56.929, z = 0.000 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 13006, gadget_id = 70310086, pos = { x = -4393.522, y = 199.505, z = -4220.667 }, rot = { x = 356.835, y = 56.929, z = 2.195 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 13007, gadget_id = 70310086, pos = { x = -4402.101, y = 198.896, z = -4215.554 }, rot = { x = 358.704, y = 56.950, z = 0.763 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 13008, gadget_id = 70310086, pos = { x = -4399.717, y = 198.994, z = -4219.275 }, rot = { x = 356.928, y = 56.832, z = 1.811 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 13009, gadget_id = 70310086, pos = { x = -4397.342, y = 199.106, z = -4223.048 }, rot = { x = 358.576, y = 56.827, z = 1.149 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 13010, gadget_id = 70310086, pos = { x = -4471.725, y = 199.405, z = -4016.473 }, rot = { x = 359.209, y = 27.495, z = 1.369 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 13011, gadget_id = 70310086, pos = { x = -4467.968, y = 199.288, z = -4018.482 }, rot = { x = 358.460, y = 27.499, z = 359.727 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 13012, gadget_id = 70310086, pos = { x = -4464.124, y = 199.491, z = -4020.566 }, rot = { x = 359.209, y = 27.495, z = 1.369 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 13013, gadget_id = 70310086, pos = { x = -4473.727, y = 199.168, z = -4020.119 }, rot = { x = 359.209, y = 27.495, z = 358.624 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 13014, gadget_id = 70310086, pos = { x = -4469.851, y = 199.188, z = -4022.126 }, rot = { x = 359.209, y = 27.495, z = 359.558 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 13015, gadget_id = 70310086, pos = { x = -4465.882, y = 199.178, z = -4024.124 }, rot = { x = 359.209, y = 27.495, z = 1.369 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 13016, gadget_id = 70310086, pos = { x = -4475.818, y = 199.017, z = -4024.131 }, rot = { x = 359.209, y = 27.495, z = 359.429 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 13017, gadget_id = 70310086, pos = { x = -4471.835, y = 199.091, z = -4026.178 }, rot = { x = 359.209, y = 27.495, z = 1.369 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 13018, gadget_id = 70310086, pos = { x = -4467.898, y = 199.032, z = -4028.136 }, rot = { x = 359.209, y = 27.495, z = 1.369 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 13020, gadget_id = 70211111, pos = { x = -4469.820, y = 200.687, z = -4022.070 }, rot = { x = 0.793, y = 207.261, z = 0.439 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013019, name = "GADGET_STATE_CHANGE_13019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13019", action = "action_EVENT_GADGET_STATE_CHANGE_13019" }
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
	end_suite = 2,
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
		gadgets = { 13001, 13002, 13003, 13004, 13005, 13006, 13007, 13008, 13009, 13010, 13011, 13012, 13013, 13014, 13015, 13016, 13017, 13018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13001, 13002, 13003, 13004, 13005, 13006, 13007, 13008, 13009, 13010, 13011, 13012, 13013, 13014, 13015, 13016, 13017, 13018, 13020 },
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
function condition_EVENT_GADGET_STATE_CHANGE_13019(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13010) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13011) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13013) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13014) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13015) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13016) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13017) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222013, 13018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13019(context, evt)
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133222266) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133222013, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 13001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13003 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13003, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13004 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13004, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13005 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13005, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13006 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13006, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13007 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13007, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13008 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13008, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13009 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13009, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13010 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13010, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13011 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13011, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13012 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13012, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13013 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13013, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13014 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13014, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13015 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13015, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13016 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13016, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13017 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13017, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13018 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13018, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end