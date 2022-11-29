-- 基础信息
local base_info = {
	group_id = 133212279
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
	{ config_id = 279001, gadget_id = 70350004, pos = { x = -3812.405, y = 247.904, z = -2340.634 }, rot = { x = 90.000, y = 157.712, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 279002, gadget_id = 70350004, pos = { x = -3807.182, y = 247.904, z = -2338.494 }, rot = { x = 90.000, y = 157.712, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 279003, gadget_id = 70900008, pos = { x = -3809.477, y = 239.765, z = -2335.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1279004, name = "GADGET_STATE_CHANGE_279004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_279004", action = "action_EVENT_GADGET_STATE_CHANGE_279004" }
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
		gadgets = { 279001, 279002, 279003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_279004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_279004(context, evt)
	if 279003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_279004(context, evt)
	-- 将configid为 279001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 279002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end