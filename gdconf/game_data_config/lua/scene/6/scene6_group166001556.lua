-- 基础信息
local base_info = {
	group_id = 166001556
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
	{ config_id = 556001, gadget_id = 70290219, pos = { x = 342.163, y = 177.548, z = 840.502 }, rot = { x = 2.931, y = 316.882, z = 4.382 }, level = 36, area_id = 300 },
	{ config_id = 556002, gadget_id = 70290219, pos = { x = 340.906, y = 176.899, z = 837.804 }, rot = { x = 4.230, y = 63.417, z = 354.806 }, level = 36, area_id = 300 },
	{ config_id = 556003, gadget_id = 70211002, pos = { x = 343.572, y = 177.528, z = 840.282 }, rot = { x = 14.097, y = 137.909, z = 349.489 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 556004, gadget_id = 70290219, pos = { x = 344.604, y = 178.196, z = 841.644 }, rot = { x = 22.702, y = 203.255, z = 11.157 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1556005, name = "GADGET_STATE_CHANGE_556005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_556005", action = "action_EVENT_GADGET_STATE_CHANGE_556005" }
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
		gadgets = { 556001, 556002, 556003, 556004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_556005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_556005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001556, 556001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001556, 556002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001556, 556002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_556005(context, evt)
	-- 将configid为 556003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end