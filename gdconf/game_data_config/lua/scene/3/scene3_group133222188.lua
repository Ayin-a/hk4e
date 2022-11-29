-- 基础信息
local base_info = {
	group_id = 133222188
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
	{ config_id = 188001, gadget_id = 70310086, pos = { x = -4675.999, y = 199.560, z = -4182.492 }, rot = { x = 0.000, y = 92.000, z = 353.431 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 188002, gadget_id = 70310086, pos = { x = -4676.120, y = 199.171, z = -4185.644 }, rot = { x = 0.000, y = 92.000, z = 353.431 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 188003, gadget_id = 70310086, pos = { x = -4676.225, y = 198.752, z = -4188.721 }, rot = { x = 0.000, y = 92.000, z = 353.431 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 188004, gadget_id = 70310086, pos = { x = -4604.817, y = 200.686, z = -4279.858 }, rot = { x = 2.075, y = 28.153, z = 11.587 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 188005, gadget_id = 70310086, pos = { x = -4654.650, y = 200.844, z = -4325.218 }, rot = { x = 350.358, y = 157.023, z = 2.043 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 188006, gadget_id = 70310086, pos = { x = -4657.442, y = 200.911, z = -4326.382 }, rot = { x = 350.631, y = 157.053, z = 0.776 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 188007, gadget_id = 70310086, pos = { x = -4606.230, y = 200.742, z = -4282.541 }, rot = { x = 0.725, y = 27.876, z = 12.345 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 188008, gadget_id = 70310086, pos = { x = -4655.831, y = 200.393, z = -4322.530 }, rot = { x = 349.267, y = 156.496, z = 1.841 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 188009, gadget_id = 70310086, pos = { x = -4658.615, y = 200.434, z = -4323.604 }, rot = { x = 352.318, y = 157.002, z = 0.728 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 188010, gadget_id = 70310086, pos = { x = -4756.453, y = 200.501, z = -4282.089 }, rot = { x = 352.511, y = 263.514, z = 359.049 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 188011, gadget_id = 70310086, pos = { x = -4756.923, y = 200.392, z = -4278.375 }, rot = { x = 352.511, y = 263.514, z = 358.536 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 188012, gadget_id = 70310086, pos = { x = -4757.396, y = 200.436, z = -4274.478 }, rot = { x = 351.738, y = 263.503, z = 0.803 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 188013, gadget_id = 70310086, pos = { x = -4753.083, y = 200.043, z = -4281.745 }, rot = { x = 352.511, y = 263.514, z = 359.466 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 188014, gadget_id = 70310086, pos = { x = -4753.490, y = 200.036, z = -4277.975 }, rot = { x = 352.511, y = 263.514, z = 357.928 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 188015, gadget_id = 70310086, pos = { x = -4753.925, y = 199.900, z = -4274.132 }, rot = { x = 352.511, y = 263.514, z = 359.767 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 188016, gadget_id = 70310086, pos = { x = -4749.323, y = 199.669, z = -4281.337 }, rot = { x = 354.807, y = 263.454, z = 359.304 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 188017, gadget_id = 70310086, pos = { x = -4749.880, y = 199.614, z = -4277.466 }, rot = { x = 353.730, y = 262.844, z = 359.063 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 188018, gadget_id = 70310086, pos = { x = -4750.384, y = 199.506, z = -4273.712 }, rot = { x = 352.511, y = 263.514, z = 358.507 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 188019, gadget_id = 70211111, pos = { x = -4753.340, y = 201.528, z = -4277.958 }, rot = { x = 7.495, y = 83.328, z = 2.048 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1188020, name = "GADGET_STATE_CHANGE_188020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_188020", action = "action_EVENT_GADGET_STATE_CHANGE_188020" }
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
		gadgets = { 188001, 188002, 188003, 188004, 188005, 188006, 188007, 188008, 188009, 188010, 188011, 188012, 188013, 188014, 188015, 188016, 188017, 188018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_188020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 188001, 188002, 188003, 188004, 188005, 188006, 188007, 188008, 188009, 188010, 188011, 188012, 188013, 188014, 188015, 188016, 188017, 188018, 188019 },
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
function condition_EVENT_GADGET_STATE_CHANGE_188020(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188010) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188011) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188012) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188014) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188015) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188016) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188017) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222188, 188018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_188020(context, evt)
	-- 改变指定group组133222038中， configid为38004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222038, 38004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133222266) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133222188, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 188010 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188010, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188011 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188011, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188012 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188012, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188013 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188013, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188014 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188014, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188015 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188015, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188016 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188016, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188017 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188017, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188018 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188018, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188003 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188003, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188004 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188004, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188005 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188005, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188006 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188006, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188007 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188007, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188008 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188008, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 188009 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188009, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end