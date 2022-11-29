-- 基础信息
local base_info = {
	group_id = 133303332
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
	{ config_id = 332001, gadget_id = 70900050, pos = { x = -1723.299, y = 225.917, z = 3498.727 }, rot = { x = 351.770, y = 154.752, z = 180.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 332002, gadget_id = 70330246, pos = { x = -1712.910, y = 214.028, z = 3489.047 }, rot = { x = 0.000, y = 324.891, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1332003, name = "GADGET_STATE_CHANGE_332003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_332003", action = "action_EVENT_GADGET_STATE_CHANGE_332003" }
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
		gadgets = { 332001, 332002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_332003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_332003(context, evt)
	if 332001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_332003(context, evt)
	-- 将configid为 332002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end