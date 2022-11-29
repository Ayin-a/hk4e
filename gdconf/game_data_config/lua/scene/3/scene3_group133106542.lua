-- 基础信息
local base_info = {
	group_id = 133106542
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
	{ config_id = 542001, gadget_id = 70290198, pos = { x = -561.242, y = 172.893, z = 1808.160 }, rot = { x = 355.332, y = 321.073, z = 0.340 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 542004, gadget_id = 70211101, pos = { x = -561.193, y = 173.772, z = 1808.663 }, rot = { x = 0.141, y = 342.123, z = 358.936 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1542006, name = "ANY_GADGET_DIE_542006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_542006", action = "action_EVENT_ANY_GADGET_DIE_542006" }
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
		gadgets = { 542001, 542004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_542006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_542006(context, evt)
	if 542001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_542006(context, evt)
	-- 将configid为 542004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 542004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end