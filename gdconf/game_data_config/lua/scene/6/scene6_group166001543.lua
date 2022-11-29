-- 基础信息
local base_info = {
	group_id = 166001543
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
	{ config_id = 543001, gadget_id = 70290219, pos = { x = 1006.067, y = 899.596, z = 768.946 }, rot = { x = 354.731, y = 81.466, z = 359.920 }, level = 36, area_id = 300 },
	{ config_id = 543002, gadget_id = 70290219, pos = { x = 1002.318, y = 899.450, z = 767.546 }, rot = { x = 0.896, y = 32.013, z = 353.365 }, level = 36, area_id = 300 },
	{ config_id = 543003, gadget_id = 70211002, pos = { x = 1003.507, y = 899.616, z = 769.184 }, rot = { x = 3.815, y = 321.973, z = 1.268 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 543005, gadget_id = 70290219, pos = { x = 1004.618, y = 899.395, z = 771.440 }, rot = { x = 47.785, y = 198.565, z = 16.584 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1543004, name = "GADGET_STATE_CHANGE_543004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_543004", action = "action_EVENT_GADGET_STATE_CHANGE_543004" }
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
		gadgets = { 543001, 543002, 543003, 543005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_543004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_543004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001543, 543001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001543, 543002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001543, 543005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_543004(context, evt)
	-- 将configid为 543003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 543003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end