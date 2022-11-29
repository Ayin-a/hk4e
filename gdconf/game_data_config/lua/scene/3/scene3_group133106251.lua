-- 基础信息
local base_info = {
	group_id = 133106251
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 251007, monster_id = 20011001, pos = { x = -174.694, y = 170.402, z = 1010.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 251008, monster_id = 20011001, pos = { x = -173.912, y = 170.402, z = 1008.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 251009, monster_id = 20011001, pos = { x = -170.292, y = 170.402, z = 1012.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 251010, monster_id = 20011001, pos = { x = -168.888, y = 170.402, z = 1007.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 251001, gadget_id = 70350004, pos = { x = -168.816, y = 168.821, z = 1003.592 }, rot = { x = 0.006, y = 359.344, z = 180.478 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 251002, gadget_id = 70350004, pos = { x = -174.450, y = 168.777, z = 1003.758 }, rot = { x = 359.990, y = 1.179, z = 180.478 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 251003, gadget_id = 70350004, pos = { x = -171.675, y = 170.159, z = 1007.740 }, rot = { x = 270.586, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 251005, gadget_id = 70211001, pos = { x = -158.949, y = 171.770, z = 888.734 }, rot = { x = 359.960, y = 310.788, z = 11.177 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 251006, gadget_id = 70211001, pos = { x = -188.553, y = 164.339, z = 981.241 }, rot = { x = 355.313, y = 151.862, z = 355.321 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 251011, gadget_id = 70310001, pos = { x = -169.965, y = 170.402, z = 1014.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 251012, gadget_id = 70310001, pos = { x = -173.281, y = 170.402, z = 1014.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1251004, name = "VARIABLE_CHANGE_251004", event = EventType.EVENT_VARIABLE_CHANGE, source = "finish", condition = "condition_EVENT_VARIABLE_CHANGE_251004", action = "action_EVENT_VARIABLE_CHANGE_251004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 251007, 251008, 251009, 251010 },
		gadgets = { 251001, 251002, 251003, 251005, 251006, 251011, 251012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_251004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_251004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_251004(context, evt)
	-- 将configid为 251001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 251002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 251003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end