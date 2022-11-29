-- 基础信息
local base_info = {
	group_id = 133217211
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
	{ config_id = 211001, gadget_id = 70310086, pos = { x = -4230.192, y = 208.636, z = -4245.720 }, rot = { x = 349.436, y = 19.019, z = 352.993 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 211002, gadget_id = 70310086, pos = { x = -4227.319, y = 208.230, z = -4246.607 }, rot = { x = 349.278, y = 18.935, z = 352.946 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 211003, gadget_id = 70310086, pos = { x = -4231.153, y = 208.064, z = -4248.612 }, rot = { x = 348.688, y = 18.901, z = 352.898 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 211004, gadget_id = 70310086, pos = { x = -4228.259, y = 207.680, z = -4249.522 }, rot = { x = 348.782, y = 18.864, z = 353.321 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 211005, gadget_id = 70310086, pos = { x = -4221.939, y = 204.079, z = -4287.002 }, rot = { x = 3.277, y = 80.796, z = 0.163 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 211006, gadget_id = 70310086, pos = { x = -4221.471, y = 204.075, z = -4290.000 }, rot = { x = 3.738, y = 81.040, z = 359.943 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 211007, gadget_id = 70310086, pos = { x = -4224.922, y = 204.247, z = -4287.500 }, rot = { x = 3.446, y = 80.939, z = 0.434 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 211008, gadget_id = 70310086, pos = { x = -4224.456, y = 204.262, z = -4290.473 }, rot = { x = 3.737, y = 80.912, z = 359.879 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 211019, gadget_id = 70211101, pos = { x = -4229.129, y = 209.612, z = -4247.904 }, rot = { x = 8.592, y = 198.412, z = 4.300 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1211020, name = "GADGET_STATE_CHANGE_211020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_211020", action = "action_EVENT_GADGET_STATE_CHANGE_211020", trigger_count = 0 }
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
		gadgets = { 211001, 211002, 211003, 211004, 211005, 211006, 211007, 211008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_211020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 211001, 211002, 211003, 211004, 211005, 211006, 211007, 211008, 211019 },
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
function condition_EVENT_GADGET_STATE_CHANGE_211020(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217211, 211001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217211, 211002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217211, 211003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217211, 211004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_211020(context, evt)
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133222266) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217211, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 211001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211003 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211003, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211004 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211004, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211005 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211005, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211006 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211006, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211007 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211007, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end