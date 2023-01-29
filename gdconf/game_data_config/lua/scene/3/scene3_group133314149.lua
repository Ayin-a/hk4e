-- 基础信息
local base_info = {
	group_id = 133314149
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
	{ config_id = 149001, gadget_id = 70330404, pos = { x = -685.934, y = -70.540, z = 4446.351 }, rot = { x = 0.547, y = 357.816, z = 2.192 }, level = 32, area_id = 32 },
	{ config_id = 149002, gadget_id = 70330436, pos = { x = -696.284, y = -66.251, z = 4456.280 }, rot = { x = 359.766, y = 312.195, z = 357.182 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149003, name = "GADGET_STATE_CHANGE_149003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149003", action = "action_EVENT_GADGET_STATE_CHANGE_149003" }
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
		gadgets = { 149001, 149002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_149003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149003(context, evt)
	-- 检测config_id为149001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 149001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149003(context, evt)
	-- 将configid为 149002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end