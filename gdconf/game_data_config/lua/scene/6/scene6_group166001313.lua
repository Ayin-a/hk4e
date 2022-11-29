-- 基础信息
local base_info = {
	group_id = 166001313
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
	{ config_id = 313001, gadget_id = 70290219, pos = { x = 960.387, y = 1080.134, z = 837.658 }, rot = { x = 0.000, y = 17.065, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 313002, gadget_id = 70290219, pos = { x = 958.848, y = 1080.649, z = 837.263 }, rot = { x = 0.000, y = 100.836, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 313003, gadget_id = 70290219, pos = { x = 962.569, y = 1080.646, z = 833.265 }, rot = { x = 0.000, y = 24.359, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 313004, gadget_id = 70211002, pos = { x = 962.680, y = 1080.624, z = 835.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313005, name = "GADGET_STATE_CHANGE_313005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313005", action = "action_EVENT_GADGET_STATE_CHANGE_313005" }
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
		gadgets = { 313001, 313002, 313003, 313004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_313005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001313, 313001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001313, 313002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001313, 313003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	-- 将configid为 313004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end