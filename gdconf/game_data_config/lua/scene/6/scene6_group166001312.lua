-- 基础信息
local base_info = {
	group_id = 166001312
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
	{ config_id = 312001, gadget_id = 70290219, pos = { x = 1040.313, y = 1089.069, z = 938.490 }, rot = { x = 0.000, y = 188.004, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 312002, gadget_id = 70290219, pos = { x = 1038.993, y = 1087.482, z = 941.829 }, rot = { x = 1.629, y = 251.262, z = 0.229 }, level = 36, area_id = 300 },
	{ config_id = 312003, gadget_id = 70211102, pos = { x = 1037.182, y = 1086.981, z = 940.958 }, rot = { x = 1.439, y = 276.991, z = 354.799 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1312004, name = "GADGET_STATE_CHANGE_312004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_312004", action = "action_EVENT_GADGET_STATE_CHANGE_312004" }
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
		gadgets = { 312001, 312002, 312003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_312004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_312004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001312, 312001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001312, 312002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_312004(context, evt)
	-- 将configid为 312003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end