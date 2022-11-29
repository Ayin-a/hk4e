-- 基础信息
local base_info = {
	group_id = 133220654
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
	{ config_id = 654001, gadget_id = 70210101, pos = { x = -2831.710, y = 177.398, z = -4066.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 654002, gadget_id = 70330092, pos = { x = -2831.315, y = 177.011, z = -4066.046 }, rot = { x = 0.000, y = 227.104, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1654003, name = "USE_WIDGET_TOY_FOX_CAMERA_654003", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_654003", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_654003", trigger_count = 0 }
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
		gadgets = { 654002 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_654003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_654003(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==654002 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_654003(context, evt)
	-- 调用提示id为 7210001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为654001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 654001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end