-- 基础信息
local base_info = {
	group_id = 133106484
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
	{ config_id = 484001, gadget_id = 70290198, pos = { x = -556.025, y = 223.603, z = 1949.347 }, rot = { x = 358.181, y = 147.955, z = 354.991 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 484002, gadget_id = 70290190, pos = { x = -524.679, y = 217.843, z = 1924.346 }, rot = { x = 11.492, y = 138.530, z = 349.224 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 484003, gadget_id = 70290191, pos = { x = -540.242, y = 218.244, z = 1926.371 }, rot = { x = 12.744, y = 141.007, z = 349.011 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 484004, gadget_id = 70211101, pos = { x = -555.810, y = 224.718, z = 1949.589 }, rot = { x = 348.801, y = 139.537, z = 350.434 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 484005, gadget_id = 70330021, pos = { x = -532.796, y = 221.365, z = 1936.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 484007, gadget_id = 70290191, pos = { x = -542.994, y = 222.324, z = 1940.179 }, rot = { x = 344.159, y = 359.921, z = 0.571 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1484006, name = "ANY_GADGET_DIE_484006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_484006", action = "action_EVENT_ANY_GADGET_DIE_484006" }
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
		gadgets = { 484001, 484002, 484003, 484004, 484005, 484007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_484006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_484006(context, evt)
	if 484001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_484006(context, evt)
	-- 将configid为 484004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end