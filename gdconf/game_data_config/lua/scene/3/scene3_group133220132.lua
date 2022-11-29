-- 基础信息
local base_info = {
	group_id = 133220132
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
	{ config_id = 132001, gadget_id = 70300105, pos = { x = -2101.440, y = 162.125, z = -4504.949 }, rot = { x = 0.000, y = 268.906, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 132002, gadget_id = 70310009, pos = { x = -2100.472, y = 162.039, z = -4496.690 }, rot = { x = 358.442, y = 330.173, z = 356.433 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 132003, gadget_id = 70330092, pos = { x = -2102.183, y = 161.957, z = -4500.303 }, rot = { x = 6.011, y = 118.420, z = 0.661 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 132004, gadget_id = 70220051, pos = { x = -2104.963, y = 161.947, z = -4503.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 132005, gadget_id = 70220051, pos = { x = -2096.685, y = 162.207, z = -4505.215 }, rot = { x = 0.000, y = 12.379, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 132006, gadget_id = 70220052, pos = { x = -2096.407, y = 162.110, z = -4504.392 }, rot = { x = 0.000, y = 12.379, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 132007, gadget_id = 70220025, pos = { x = -2100.515, y = 162.055, z = -4505.093 }, rot = { x = 88.665, y = 180.000, z = 180.000 }, level = 27, area_id = 11 },
	{ config_id = 132008, gadget_id = 70220050, pos = { x = -2103.241, y = 161.987, z = -4507.356 }, rot = { x = 0.000, y = 98.505, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 132009, gadget_id = 70220052, pos = { x = -2104.666, y = 162.275, z = -4502.748 }, rot = { x = 0.000, y = 12.379, z = 2.972 }, level = 27, area_id = 11 },
	{ config_id = 132010, gadget_id = 70220025, pos = { x = -2102.066, y = 162.048, z = -4504.992 }, rot = { x = 88.665, y = 180.000, z = 180.000 }, level = 27, area_id = 11 },
	{ config_id = 132011, gadget_id = 70900393, pos = { x = -2094.961, y = 162.095, z = -4503.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 132012, gadget_id = 70900393, pos = { x = -2105.415, y = 162.746, z = -4501.228 }, rot = { x = 0.000, y = 0.000, z = 342.687 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 132014, gadget_id = 70210101, pos = { x = -2101.388, y = 162.360, z = -4500.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1132013, name = "USE_WIDGET_TOY_FOX_CAMERA_132013", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_132013", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_132013", trigger_count = 0 }
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
		gadgets = { 132001, 132002, 132003, 132004, 132005, 132006, 132007, 132008, 132009, 132010, 132011, 132012 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_132013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_132013(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==132003 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_132013(context, evt)
	-- 调用提示id为 7210015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为132014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 132014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end