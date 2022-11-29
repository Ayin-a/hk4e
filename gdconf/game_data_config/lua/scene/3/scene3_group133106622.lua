-- 基础信息
local base_info = {
	group_id = 133106622
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
	{ config_id = 622001, gadget_id = 70290199, pos = { x = -960.325, y = 249.777, z = 1615.445 }, rot = { x = 12.179, y = 48.073, z = 13.998 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 622002, gadget_id = 70290190, pos = { x = -951.364, y = 243.209, z = 1622.993 }, rot = { x = 32.578, y = 13.383, z = 355.458 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 622003, gadget_id = 70290190, pos = { x = -952.192, y = 241.800, z = 1625.574 }, rot = { x = 331.768, y = 236.346, z = 332.862 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 622004, gadget_id = 70211101, pos = { x = -960.096, y = 250.512, z = 1615.259 }, rot = { x = 29.965, y = 53.870, z = 16.210 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1622006, name = "ANY_GADGET_DIE_622006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_622006", action = "action_EVENT_ANY_GADGET_DIE_622006" }
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
		gadgets = { 622001, 622002, 622003, 622004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_622006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_622006(context, evt)
	if 622001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_622006(context, evt)
	-- 将configid为 622004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 622004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end