-- 基础信息
local base_info = {
	group_id = 133303493
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
	{ config_id = 493001, gadget_id = 70211001, pos = { x = -1763.204, y = 306.513, z = 3751.222 }, rot = { x = 0.000, y = 268.843, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 493002, gadget_id = 70330219, pos = { x = -1763.640, y = 306.953, z = 3751.774 }, rot = { x = 0.000, y = 252.818, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 493004, gadget_id = 70310198, pos = { x = -1796.450, y = 307.146, z = 3730.981 }, rot = { x = 0.000, y = 71.420, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1493003, name = "ANY_GADGET_DIE_493003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_493003", action = "action_EVENT_ANY_GADGET_DIE_493003" }
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
		triggers = { "ANY_GADGET_DIE_493003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_493003(context, evt)
	if 493002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_493003(context, evt)
	-- 将configid为 493001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 493001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end