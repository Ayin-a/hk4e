-- 基础信息
local base_info = {
	group_id = 166001458
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
	{ config_id = 458001, gadget_id = 70290219, pos = { x = 574.415, y = 392.087, z = 577.823 }, rot = { x = 28.281, y = 17.065, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 458002, gadget_id = 70290219, pos = { x = 572.588, y = 391.213, z = 576.577 }, rot = { x = 3.223, y = 145.238, z = 356.719 }, level = 36, area_id = 300 },
	{ config_id = 458003, gadget_id = 70290219, pos = { x = 585.296, y = 393.362, z = 573.640 }, rot = { x = 0.000, y = 232.033, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 458004, gadget_id = 70211002, pos = { x = 577.742, y = 392.086, z = 575.013 }, rot = { x = 12.118, y = 212.630, z = 5.138 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1458005, name = "GADGET_STATE_CHANGE_458005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_458005", action = "action_EVENT_GADGET_STATE_CHANGE_458005" }
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
		gadgets = { 458001, 458002, 458003, 458004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_458005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_458005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001458, 458001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001458, 458002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001458, 458003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_458005(context, evt)
	-- 将configid为 458004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end