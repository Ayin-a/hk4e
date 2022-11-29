-- 基础信息
local base_info = {
	group_id = 220000060
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
	{ config_id = 328, gadget_id = 70900238, pos = { x = 5.896, y = 1.300, z = 380.584 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 329, gadget_id = 70900238, pos = { x = -18.075, y = 1.346, z = 375.630 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 330, gadget_id = 70900238, pos = { x = -18.292, y = 1.346, z = 381.510 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 331, gadget_id = 70900238, pos = { x = -22.242, y = 1.346, z = 390.204 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 332, gadget_id = 70900238, pos = { x = -25.258, y = 1.346, z = 398.831 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 333, gadget_id = 70900238, pos = { x = -23.179, y = 1.346, z = 407.576 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 334, gadget_id = 70900238, pos = { x = -26.346, y = 1.346, z = 422.344 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 335, gadget_id = 70900238, pos = { x = -23.653, y = 1.346, z = 428.492 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 336, gadget_id = 70900238, pos = { x = -20.502, y = 1.346, z = 435.335 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 337, gadget_id = 70900238, pos = { x = -29.999, y = 1.346, z = 358.440 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 338, gadget_id = 70900238, pos = { x = -48.984, y = 1.346, z = 358.604 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 339, gadget_id = 70900238, pos = { x = -8.392, y = 1.388, z = 368.874 }, rot = { x = 0.000, y = 180.277, z = 0.000 }, level = 1 },
	{ config_id = 340, gadget_id = 70220014, pos = { x = -39.223, y = 0.500, z = 372.543 }, rot = { x = 0.000, y = 23.462, z = 0.000 }, level = 1 },
	{ config_id = 341, gadget_id = 70220014, pos = { x = -39.245, y = 0.500, z = 381.104 }, rot = { x = 0.000, y = 359.450, z = 0.000 }, level = 1 },
	{ config_id = 342, gadget_id = 70220014, pos = { x = -39.422, y = 0.500, z = 388.015 }, rot = { x = 0.000, y = 295.097, z = 0.000 }, level = 1 },
	{ config_id = 343, gadget_id = 70220014, pos = { x = -39.926, y = 0.500, z = 395.842 }, rot = { x = 0.000, y = 20.606, z = 0.000 }, level = 1 },
	{ config_id = 344, gadget_id = 70220014, pos = { x = -40.237, y = 0.500, z = 404.714 }, rot = { x = 0.000, y = 262.739, z = 0.000 }, level = 1 },
	{ config_id = 345, gadget_id = 70220014, pos = { x = -49.165, y = 0.500, z = 429.432 }, rot = { x = 0.000, y = 347.616, z = 0.000 }, level = 1 },
	{ config_id = 346, gadget_id = 70220014, pos = { x = -29.825, y = 0.500, z = 372.028 }, rot = { x = 0.000, y = 260.767, z = 0.000 }, level = 1 },
	{ config_id = 347, gadget_id = 70220014, pos = { x = -29.958, y = 0.500, z = 379.910 }, rot = { x = 0.000, y = 273.280, z = 0.000 }, level = 1 },
	{ config_id = 348, gadget_id = 70220014, pos = { x = -29.679, y = 0.500, z = 387.421 }, rot = { x = 0.000, y = 352.504, z = 0.000 }, level = 1 },
	{ config_id = 349, gadget_id = 70220014, pos = { x = -30.018, y = 0.500, z = 395.510 }, rot = { x = 0.000, y = 248.933, z = 0.000 }, level = 1 },
	{ config_id = 350, gadget_id = 70220014, pos = { x = -29.944, y = 0.500, z = 403.402 }, rot = { x = 0.000, y = 150.606, z = 0.000 }, level = 1 },
	{ config_id = 351, gadget_id = 70220014, pos = { x = -30.542, y = 15.788, z = 382.970 }, rot = { x = 0.000, y = 202.192, z = 0.000 }, level = 1 },
	{ config_id = 352, gadget_id = 70220014, pos = { x = 5.961, y = 0.500, z = 415.118 }, rot = { x = 0.000, y = 202.192, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000106, name = "ANY_GADGET_DIE_106", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_106", action = "action_EVENT_ANY_GADGET_DIE_106", trigger_count = 0 },
	{ config_id = 1000107, name = "ANY_GADGET_DIE_107", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_107", action = "action_EVENT_ANY_GADGET_DIE_107", trigger_count = 0 }
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
		gadgets = { 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 352 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_106", "ANY_GADGET_DIE_107" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_106(context, evt)
	if 328 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_106(context, evt)
	-- 创建id为328的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 328 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_107(context, evt)
	if 352 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_107(context, evt)
	-- 创建id为352的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 352 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 1001003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1001003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end