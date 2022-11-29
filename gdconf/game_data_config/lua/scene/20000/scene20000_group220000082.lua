-- 基础信息
local base_info = {
	group_id = 220000082
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
	{ config_id = 596, gadget_id = 70900302, pos = { x = 126.684, y = -12.000, z = 594.305 }, rot = { x = 0.000, y = 91.082, z = 0.000 }, level = 1 },
	{ config_id = 597, gadget_id = 70310001, pos = { x = 118.759, y = -12.000, z = 604.868 }, rot = { x = 0.000, y = 54.328, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000161, name = "GADGET_STATE_CHANGE_161", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161", action = "action_EVENT_GADGET_STATE_CHANGE_161" }
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
		gadgets = { 596, 597 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_161" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161(context, evt)
	if 596 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_161(context, evt)
	-- 将configid为 597 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 597, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end