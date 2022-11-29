-- 基础信息
local base_info = {
	group_id = 133106500
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
	{ config_id = 500001, gadget_id = 70290404, pos = { x = -578.142, y = 180.171, z = 1952.700 }, rot = { x = 355.972, y = 217.775, z = 0.256 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 500004, gadget_id = 70211121, pos = { x = -577.938, y = 180.548, z = 1952.695 }, rot = { x = 5.379, y = 222.238, z = 357.405 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1500006, name = "ANY_GADGET_DIE_500006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_500006", action = "action_EVENT_ANY_GADGET_DIE_500006" }
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
		gadgets = { 500001, 500004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_500006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_500006(context, evt)
	if 500001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_500006(context, evt)
	-- 将configid为 500004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end