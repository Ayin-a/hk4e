-- 基础信息
local base_info = {
	group_id = 133217221
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
	{ config_id = 221001, gadget_id = 70310086, pos = { x = -4285.892, y = 199.517, z = -3744.659 }, rot = { x = 0.000, y = 34.967, z = 3.410 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 221002, gadget_id = 70310086, pos = { x = -4283.414, y = 199.633, z = -3746.396 }, rot = { x = 0.000, y = 34.967, z = 3.410 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 221003, gadget_id = 70310086, pos = { x = -4287.663, y = 199.394, z = -3747.222 }, rot = { x = 0.000, y = 34.967, z = 3.104 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 221004, gadget_id = 70310086, pos = { x = -4285.169, y = 199.610, z = -3748.963 }, rot = { x = 0.000, y = 34.967, z = 3.410 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 221005, gadget_id = 70310086, pos = { x = -4268.919, y = 201.786, z = -3755.865 }, rot = { x = 6.493, y = 27.715, z = 351.322 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 221006, gadget_id = 70310086, pos = { x = -4266.285, y = 201.330, z = -3757.366 }, rot = { x = 8.033, y = 27.771, z = 351.959 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 221007, gadget_id = 70310086, pos = { x = -4270.345, y = 202.163, z = -3758.622 }, rot = { x = 7.442, y = 27.739, z = 352.637 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 14 },
	{ config_id = 221008, gadget_id = 70310086, pos = { x = -4267.711, y = 201.706, z = -3760.102 }, rot = { x = 7.536, y = 27.702, z = 353.048 }, level = 30, state = GadgetState.Action02, persistent = true, area_id = 14 },
	{ config_id = 221009, gadget_id = 70211101, pos = { x = -4285.569, y = 201.071, z = -3746.788 }, rot = { x = 5.349, y = 305.298, z = 0.296 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221010, name = "GADGET_STATE_CHANGE_221010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221010", action = "action_EVENT_GADGET_STATE_CHANGE_221010" }
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
		gadgets = { 221001, 221002, 221003, 221004, 221005, 221006, 221007, 221008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_221010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 221001, 221002, 221003, 221004, 221005, 221006, 221007, 221008, 221009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_221010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217221, 221001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217221, 221002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217221, 221003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217221, 221004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221010(context, evt)
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133222266) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217221, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 221001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221003 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221003, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221004 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221004, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221005 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221005, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221006 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221006, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221007 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221007, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221008 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221008, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end