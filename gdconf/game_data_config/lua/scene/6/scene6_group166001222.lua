-- 基础信息
local base_info = {
	group_id = 166001222
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
	{ config_id = 222001, gadget_id = 70290219, pos = { x = 818.527, y = 708.306, z = 281.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 222002, gadget_id = 70290219, pos = { x = 817.365, y = 709.012, z = 282.262 }, rot = { x = 9.302, y = 250.587, z = 10.346 }, level = 32, area_id = 300 },
	{ config_id = 222003, gadget_id = 70290219, pos = { x = 817.817, y = 707.583, z = 278.356 }, rot = { x = 0.000, y = 336.565, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 222004, gadget_id = 70211002, pos = { x = 816.700, y = 708.475, z = 280.660 }, rot = { x = 6.850, y = 229.469, z = 5.314 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1222005, name = "GADGET_STATE_CHANGE_222005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222005", action = "action_EVENT_GADGET_STATE_CHANGE_222005", trigger_count = 0 }
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
		gadgets = { 222001, 222002, 222003, 222004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_222005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001222, 222001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001222, 222002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001222, 222003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222005(context, evt)
	-- 将configid为 222004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end