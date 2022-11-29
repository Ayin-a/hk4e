-- 基础信息
local base_info = {
	group_id = 133106588
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
	{ config_id = 588001, gadget_id = 70290198, pos = { x = -203.322, y = 298.551, z = 1610.268 }, rot = { x = 337.789, y = 40.691, z = 0.001 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 588002, gadget_id = 70290190, pos = { x = -175.250, y = 301.890, z = 1596.285 }, rot = { x = 0.000, y = 345.123, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 588003, gadget_id = 70290191, pos = { x = -189.893, y = 300.578, z = 1595.594 }, rot = { x = 0.000, y = 307.312, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 588004, gadget_id = 70211101, pos = { x = -204.150, y = 300.100, z = 1609.804 }, rot = { x = 353.166, y = 266.441, z = 350.709 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 588005, gadget_id = 70330021, pos = { x = -177.557, y = 302.124, z = 1599.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 588007, gadget_id = 70290191, pos = { x = -188.985, y = 299.964, z = 1609.667 }, rot = { x = 0.000, y = 154.416, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 588008, gadget_id = 70290324, pos = { x = -172.119, y = 303.459, z = 1595.555 }, rot = { x = 3.239, y = 0.722, z = 25.116 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1588006, name = "ANY_GADGET_DIE_588006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_588006", action = "action_EVENT_ANY_GADGET_DIE_588006" }
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
		gadgets = { 588001, 588002, 588003, 588004, 588005, 588007, 588008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_588006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_588006(context, evt)
	if 588001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_588006(context, evt)
	-- 将configid为 588004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 588004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end