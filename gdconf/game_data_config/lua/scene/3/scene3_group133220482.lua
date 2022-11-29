-- 基础信息
local base_info = {
	group_id = 133220482
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
	{ config_id = 482001, gadget_id = 70290095, pos = { x = -2337.231, y = 200.318, z = -4260.228 }, rot = { x = 0.000, y = 68.184, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 482002, gadget_id = 70330064, pos = { x = -2343.612, y = 200.318, z = -4264.997 }, rot = { x = 353.897, y = 126.466, z = 12.084 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 482004, gadget_id = 70330092, pos = { x = -2321.762, y = 200.473, z = -4258.610 }, rot = { x = 0.000, y = 289.133, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 482005, gadget_id = 70330064, pos = { x = -2319.465, y = 201.530, z = -4259.189 }, rot = { x = 353.897, y = 63.311, z = 12.084 }, level = 27, persistent = true, interact_id = 35, area_id = 11 },
	{ config_id = 482006, gadget_id = 70211111, pos = { x = -2341.855, y = 200.321, z = -4257.527 }, rot = { x = 0.369, y = 245.770, z = 0.049 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1482008, name = "USE_WIDGET_TOY_FOX_CAMERA_482008", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_482008", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_482008", trigger_count = 0 }
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
		gadgets = { 482001, 482002, 482004, 482006 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_482008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_482008(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==482004 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_482008(context, evt)
	-- 创建id为482005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 482005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 482004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end