-- 基础信息
local base_info = {
	group_id = 133220599
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
	{ config_id = 599001, gadget_id = 70220013, pos = { x = -2470.464, y = 201.819, z = -4150.511 }, rot = { x = 349.308, y = 245.933, z = 359.930 }, level = 27, area_id = 11 },
	{ config_id = 599002, gadget_id = 70220013, pos = { x = -2473.252, y = 202.928, z = -4160.833 }, rot = { x = 3.542, y = 359.752, z = 351.995 }, level = 27, area_id = 11 },
	{ config_id = 599003, gadget_id = 70220013, pos = { x = -2461.167, y = 202.476, z = -4159.839 }, rot = { x = 7.126, y = 69.028, z = 358.882 }, level = 27, area_id = 11 },
	{ config_id = 599004, gadget_id = 70220013, pos = { x = -2467.674, y = 203.507, z = -4164.014 }, rot = { x = 6.573, y = 359.889, z = 358.070 }, level = 27, area_id = 11 },
	{ config_id = 599005, gadget_id = 70220014, pos = { x = -2460.663, y = 201.224, z = -4154.629 }, rot = { x = 10.575, y = 359.504, z = 354.644 }, level = 27, area_id = 11 },
	{ config_id = 599006, gadget_id = 70220013, pos = { x = -2466.600, y = 201.263, z = -4149.471 }, rot = { x = 354.262, y = 226.879, z = 1.702 }, level = 27, area_id = 11 },
	{ config_id = 599007, gadget_id = 70220013, pos = { x = -2470.541, y = 204.062, z = -4168.749 }, rot = { x = 3.293, y = 338.022, z = 356.656 }, level = 27, area_id = 11 },
	{ config_id = 599008, gadget_id = 70220013, pos = { x = -2471.738, y = 202.394, z = -4155.750 }, rot = { x = 4.424, y = 359.690, z = 351.995 }, level = 27, area_id = 11 },
	{ config_id = 599009, gadget_id = 70220014, pos = { x = -2471.106, y = 203.033, z = -4163.521 }, rot = { x = 6.127, y = 358.776, z = 354.544 }, level = 27, area_id = 11 },
	{ config_id = 599010, gadget_id = 70220014, pos = { x = -2465.689, y = 202.503, z = -4159.548 }, rot = { x = 4.980, y = 359.850, z = 356.561 }, level = 27, area_id = 11 },
	{ config_id = 599011, gadget_id = 70220014, pos = { x = -2476.187, y = 204.283, z = -4167.588 }, rot = { x = 347.111, y = 277.732, z = 350.428 }, level = 27, area_id = 11 },
	{ config_id = 599012, gadget_id = 70220013, pos = { x = -2453.040, y = 201.080, z = -4154.623 }, rot = { x = 352.619, y = 226.931, z = 354.741 }, level = 27, area_id = 11 },
	{ config_id = 599013, gadget_id = 70220013, pos = { x = -2459.748, y = 200.976, z = -4147.148 }, rot = { x = 5.207, y = 107.256, z = 352.325 }, level = 27, area_id = 11 },
	{ config_id = 599015, gadget_id = 70211111, pos = { x = -2475.820, y = 203.634, z = -4164.008 }, rot = { x = 14.878, y = 53.016, z = 0.836 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1599014, name = "VARIABLE_CHANGE_599014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_599014", action = "action_EVENT_VARIABLE_CHANGE_599014" },
	-- 保底，防止玩家没拿宝箱就下线了，写个trigger让它下次来还得有
	{ config_id = 1599016, name = "GROUP_LOAD_599016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_599016", action = "action_EVENT_GROUP_LOAD_599016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest", value = 0, no_refresh = false }
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
		gadgets = { 599001, 599002, 599003, 599004, 599005, 599006, 599007, 599008, 599009, 599010, 599011, 599012, 599013 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_599014", "GROUP_LOAD_599016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_599014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chest"为2
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_599014(context, evt)
	-- 创建id为599015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_599016(context, evt)
	-- 判断变量"chest"为2
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_599016(context, evt)
	-- 创建id为599015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end