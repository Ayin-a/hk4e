-- 基础信息
local base_info = {
	group_id = 133106505
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
	{ config_id = 505001, gadget_id = 70290199, pos = { x = -902.736, y = 190.784, z = 1772.403 }, rot = { x = 347.985, y = 72.613, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 505002, gadget_id = 70290190, pos = { x = -891.753, y = 191.297, z = 1781.488 }, rot = { x = 359.841, y = 38.313, z = 2.863 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 505004, gadget_id = 70211101, pos = { x = -902.549, y = 191.481, z = 1773.424 }, rot = { x = 0.748, y = 78.698, z = 354.590 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1505006, name = "ANY_GADGET_DIE_505006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_505006", action = "action_EVENT_ANY_GADGET_DIE_505006" }
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
		gadgets = { 505001, 505002, 505004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_505006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_505006(context, evt)
	if 505001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_505006(context, evt)
	-- 将configid为 505004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end