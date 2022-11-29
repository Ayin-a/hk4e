-- 基础信息
local base_info = {
	group_id = 133106538
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
	{ config_id = 538001, gadget_id = 70290198, pos = { x = -632.533, y = 151.710, z = 1729.433 }, rot = { x = 349.725, y = 64.969, z = 0.001 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 538003, gadget_id = 70290191, pos = { x = -621.693, y = 156.348, z = 1737.426 }, rot = { x = 352.595, y = 57.799, z = 7.847 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 538004, gadget_id = 70211111, pos = { x = -633.531, y = 151.785, z = 1728.787 }, rot = { x = 353.322, y = 77.092, z = 358.790 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1538006, name = "ANY_GADGET_DIE_538006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_538006", action = "action_EVENT_ANY_GADGET_DIE_538006" }
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
		gadgets = { 538001, 538003, 538004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_538006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_538006(context, evt)
	if 538001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_538006(context, evt)
	-- 将configid为 538004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 538004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end