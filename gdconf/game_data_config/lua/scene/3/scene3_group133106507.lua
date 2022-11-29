-- 基础信息
local base_info = {
	group_id = 133106507
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
	{ config_id = 507001, gadget_id = 70290199, pos = { x = -744.092, y = 254.631, z = 2074.624 }, rot = { x = 10.001, y = 185.405, z = 12.131 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 507002, gadget_id = 70290190, pos = { x = -738.689, y = 253.029, z = 2061.802 }, rot = { x = 348.116, y = 1.448, z = 350.093 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 507003, gadget_id = 70290191, pos = { x = -753.419, y = 255.581, z = 2063.120 }, rot = { x = 11.269, y = 146.280, z = 2.617 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 507004, gadget_id = 70211101, pos = { x = -744.872, y = 254.909, z = 2075.236 }, rot = { x = 6.010, y = 201.159, z = 15.111 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 507005, gadget_id = 70330021, pos = { x = -758.372, y = 258.588, z = 2076.776 }, rot = { x = 349.869, y = 1.107, z = 347.562 }, level = 36, area_id = 19 },
	{ config_id = 507007, gadget_id = 70290190, pos = { x = -748.056, y = 253.217, z = 2053.189 }, rot = { x = 8.281, y = 175.207, z = 9.753 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1507006, name = "ANY_GADGET_DIE_507006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_507006", action = "action_EVENT_ANY_GADGET_DIE_507006" }
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
		gadgets = { 507001, 507002, 507003, 507004, 507005, 507007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_507006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_507006(context, evt)
	if 507001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_507006(context, evt)
	-- 将configid为 507004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 507004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end