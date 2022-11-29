-- 基础信息
local base_info = {
	group_id = 133106623
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
	{ config_id = 623001, gadget_id = 70290192, pos = { x = -1026.701, y = 278.648, z = 1692.024 }, rot = { x = 356.507, y = 82.635, z = 16.107 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 623002, gadget_id = 70290190, pos = { x = -1026.256, y = 277.979, z = 1695.811 }, rot = { x = 344.405, y = 273.647, z = 339.030 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 623003, gadget_id = 70290190, pos = { x = -1012.482, y = 277.597, z = 1693.084 }, rot = { x = 350.080, y = 271.603, z = 345.630 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 623004, gadget_id = 70211101, pos = { x = -1027.068, y = 278.851, z = 1693.056 }, rot = { x = 10.751, y = 73.488, z = 16.356 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 623005, gadget_id = 70290190, pos = { x = -1025.869, y = 280.055, z = 1687.771 }, rot = { x = 15.101, y = 83.256, z = 7.225 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1623006, name = "ANY_GADGET_DIE_623006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_623006", action = "action_EVENT_ANY_GADGET_DIE_623006" }
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
		gadgets = { 623001, 623002, 623003, 623004, 623005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_623006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_623006(context, evt)
	if 623001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_623006(context, evt)
	-- 将configid为 623004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 623004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end