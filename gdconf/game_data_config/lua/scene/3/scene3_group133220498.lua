-- 基础信息
local base_info = {
	group_id = 133220498
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
	{ config_id = 498001, gadget_id = 70330064, pos = { x = -2098.265, y = 200.285, z = -4627.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, interact_id = 35, area_id = 11 },
	{ config_id = 498002, gadget_id = 70330092, pos = { x = -2095.765, y = 202.632, z = -4624.021 }, rot = { x = 341.357, y = 174.246, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1498003, name = "USE_WIDGET_TOY_FOX_CAMERA_498003", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_498003", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_498003", trigger_count = 0 }
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
		gadgets = { 498002 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_498003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_498003(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==498002 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_498003(context, evt)
	-- 创建id为498001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 498001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 498002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 498002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end