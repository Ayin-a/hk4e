-- 基础信息
local base_info = {
	group_id = 201059008
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
	{ config_id = 8001, gadget_id = 70330044, pos = { x = -163.300, y = 133.992, z = 91.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8002, gadget_id = 70220065, pos = { x = -171.443, y = 143.208, z = 44.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8003, gadget_id = 70220067, pos = { x = -169.408, y = 143.226, z = 46.253 }, rot = { x = 0.000, y = 41.970, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8004, gadget_id = 70220066, pos = { x = -169.843, y = 143.207, z = 44.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8005, gadget_id = 70220066, pos = { x = -169.190, y = 143.207, z = 29.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8006, gadget_id = 70220067, pos = { x = -168.191, y = 143.209, z = 30.392 }, rot = { x = 0.000, y = 315.921, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8007, gadget_id = 70220025, pos = { x = -170.743, y = 143.282, z = 43.711 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8008, gadget_id = 70220065, pos = { x = -151.092, y = 132.530, z = 103.334 }, rot = { x = 0.000, y = 341.628, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8009, gadget_id = 70220036, pos = { x = -183.015, y = 136.005, z = 92.552 }, rot = { x = 8.853, y = 90.000, z = 7.250 }, level = 1 },
	{ config_id = 8010, gadget_id = 70220065, pos = { x = -170.441, y = 132.541, z = 83.017 }, rot = { x = 0.000, y = 341.628, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8011, gadget_id = 70220065, pos = { x = -149.076, y = 132.530, z = 102.531 }, rot = { x = 0.000, y = 47.552, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8012, gadget_id = 70220067, pos = { x = -166.575, y = 132.531, z = 82.346 }, rot = { x = 0.000, y = 47.552, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8013, gadget_id = 70220066, pos = { x = -167.139, y = 132.529, z = 83.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8014, gadget_id = 70220015, pos = { x = -168.250, y = 133.332, z = 82.400 }, rot = { x = 90.000, y = 269.440, z = 0.000 }, level = 1 },
	{ config_id = 8015, gadget_id = 70220063, pos = { x = -169.218, y = 132.551, z = 83.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8020, gadget_id = 70220064, pos = { x = -152.470, y = 143.215, z = 45.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8022, gadget_id = 70220062, pos = { x = -167.299, y = 143.233, z = 46.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8023, gadget_id = 70220063, pos = { x = -152.353, y = 143.216, z = 44.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8024, gadget_id = 70220064, pos = { x = -172.084, y = 143.210, z = 43.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 8025, gadget_id = 70220015, pos = { x = -151.686, y = 144.095, z = 43.780 }, rot = { x = 90.000, y = 343.398, z = 0.000 }, level = 1 },
	{ config_id = 8027, gadget_id = 70220066, pos = { x = -166.820, y = 143.207, z = 30.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008017, name = "GADGET_STATE_CHANGE_8017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8017", action = "action_EVENT_GADGET_STATE_CHANGE_8017", trigger_count = 0 }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8014, 8015, 8020, 8022, 8023, 8024, 8025, 8027 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_8017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8017(context, evt)
	-- 检测config_id为8001的gadget是否从GadgetState.Default变为GadgetState.GearAction2
	if 8001 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059004, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059004, EntityType.GADGET, 4018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end