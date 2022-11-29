-- 基础信息
local base_info = {
	group_id = 133220420
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
	{ config_id = 420001, gadget_id = 70330092, pos = { x = -2778.735, y = 206.205, z = -4176.948 }, rot = { x = 10.278, y = 183.669, z = 358.506 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 420007, gadget_id = 70210101, pos = { x = -2778.424, y = 206.793, z = -4177.556 }, rot = { x = 359.772, y = 11.172, z = 357.969 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1420008, name = "USE_WIDGET_TOY_FOX_CAMERA_420008", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_420008", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_420008", trigger_count = 0 }
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
		gadgets = { 420001 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_420008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 420007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_420008(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==420001 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_420008(context, evt)
	-- 创建id为420007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 420007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 420001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end