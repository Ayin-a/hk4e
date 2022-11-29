-- 基础信息
local base_info = {
	group_id = 166001669
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
	{ config_id = 669001, gadget_id = 70211121, pos = { x = 332.965, y = 160.266, z = 739.744 }, rot = { x = 9.388, y = 217.913, z = 5.906 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 669002, gadget_id = 70290206, pos = { x = 333.009, y = 160.949, z = 739.719 }, rot = { x = 350.437, y = 36.159, z = 354.383 }, level = 36, persistent = true, interact_id = 89, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1669003, name = "GADGET_STATE_CHANGE_669003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_669003", action = "action_EVENT_GADGET_STATE_CHANGE_669003" }
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
		gadgets = { 669001, 669002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_669003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_669003(context, evt)
	if 669002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_669003(context, evt)
	-- 将configid为 669001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 669001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end