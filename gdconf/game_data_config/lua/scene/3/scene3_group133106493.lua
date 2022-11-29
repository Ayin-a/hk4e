-- 基础信息
local base_info = {
	group_id = 133106493
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
	{ config_id = 493001, gadget_id = 70290199, pos = { x = -1007.847, y = 242.515, z = 1756.882 }, rot = { x = 346.033, y = 101.203, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 493002, gadget_id = 70290190, pos = { x = -995.842, y = 238.909, z = 1755.195 }, rot = { x = 353.075, y = 0.683, z = 343.502 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 493004, gadget_id = 70211101, pos = { x = -1008.331, y = 243.475, z = 1756.751 }, rot = { x = 18.835, y = 107.723, z = 0.574 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1493006, name = "ANY_GADGET_DIE_493006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_493006", action = "action_EVENT_ANY_GADGET_DIE_493006" }
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
		gadgets = { 493001, 493002, 493004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_493006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_493006(context, evt)
	if 493001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_493006(context, evt)
	-- 将configid为 493004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 493004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end