-- 基础信息
local base_info = {
	group_id = 133106494
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
	{ config_id = 494001, gadget_id = 70290198, pos = { x = -963.345, y = 235.621, z = 1761.802 }, rot = { x = 348.782, y = 262.960, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 494003, gadget_id = 70290191, pos = { x = -974.497, y = 236.362, z = 1761.033 }, rot = { x = 0.959, y = 359.988, z = 358.607 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 494004, gadget_id = 70211101, pos = { x = -963.671, y = 235.912, z = 1761.569 }, rot = { x = 358.731, y = 267.253, z = 2.580 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1494006, name = "ANY_GADGET_DIE_494006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_494006", action = "action_EVENT_ANY_GADGET_DIE_494006" }
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
		gadgets = { 494001, 494003, 494004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_494006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_494006(context, evt)
	if 494001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_494006(context, evt)
	-- 将configid为 494004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 494004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end