-- 基础信息
local base_info = {
	group_id = 133303321
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
	{ config_id = 321001, gadget_id = 70290544, pos = { x = -1761.954, y = 246.570, z = 3705.210 }, rot = { x = 0.000, y = 107.844, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 321002, gadget_id = 70211001, pos = { x = -1756.827, y = 241.143, z = 3701.488 }, rot = { x = 0.000, y = 339.429, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 321003, gadget_id = 70310199, pos = { x = -1773.032, y = 265.913, z = 3687.831 }, rot = { x = 2.874, y = 12.232, z = 13.057 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 321005, gadget_id = 70310201, pos = { x = -1766.776, y = 245.614, z = 3705.856 }, rot = { x = 0.000, y = 304.927, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 321006, gadget_id = 70220103, pos = { x = -1768.365, y = 269.412, z = 3699.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 321007, gadget_id = 70220103, pos = { x = -1767.946, y = 245.348, z = 3708.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 321008, gadget_id = 70220103, pos = { x = -1775.726, y = 264.018, z = 3694.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 保底
	{ config_id = 1321004, name = "GROUP_LOAD_321004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_321004", action = "action_EVENT_GROUP_LOAD_321004", trigger_count = 0 },
	{ config_id = 1321009, name = "GADGET_STATE_CHANGE_321009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_321009", action = "action_EVENT_GADGET_STATE_CHANGE_321009", trigger_count = 0 }
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
		gadgets = { 321001, 321002, 321003, 321005, 321006, 321007, 321008 },
		regions = { },
		triggers = { "GROUP_LOAD_321004", "GADGET_STATE_CHANGE_321009" },
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
function condition_EVENT_GROUP_LOAD_321004(context, evt)
	if 321005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_321004(context, evt)
	-- 将configid为 321001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_321009(context, evt)
	if 321005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_321009(context, evt)
	-- 将configid为 321001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end