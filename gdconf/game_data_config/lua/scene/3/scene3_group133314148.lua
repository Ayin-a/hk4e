-- 基础信息
local base_info = {
	group_id = 133314148
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
	{ config_id = 148001, gadget_id = 70330404, pos = { x = -949.924, y = -26.385, z = 4497.968 }, rot = { x = 17.021, y = 11.443, z = 7.715 }, level = 32, area_id = 32 },
	{ config_id = 148002, gadget_id = 70330436, pos = { x = -959.298, y = -24.499, z = 4515.876 }, rot = { x = 11.538, y = 347.245, z = 10.767 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148003, name = "GADGET_STATE_CHANGE_148003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148003", action = "action_EVENT_GADGET_STATE_CHANGE_148003" }
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
		gadgets = { 148001, 148002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_148003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148003(context, evt)
	-- 检测config_id为148001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 148001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148003(context, evt)
	-- 将configid为 148002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end