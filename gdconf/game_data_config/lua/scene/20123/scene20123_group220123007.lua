-- 基础信息
local base_info = {
	group_id = 220123007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7026, monster_id = 25010201, pos = { x = 33.882, y = 1.929, z = -20.786 }, rot = { x = 0.000, y = 358.848, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 7027, monster_id = 25010201, pos = { x = 36.190, y = 1.929, z = -20.693 }, rot = { x = 0.000, y = 322.831, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 7028, monster_id = 25030301, pos = { x = 35.641, y = 1.929, z = -21.977 }, rot = { x = 0.000, y = 302.726, z = 0.000 }, level = 1, disableWander = true, pose_id = 9006 },
	{ config_id = 7047, monster_id = 25060101, pos = { x = 34.455, y = 1.929, z = -22.242 }, rot = { x = 0.000, y = 36.345, z = 0.000 }, level = 1, pose_id = 9006 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70350293, pos = { x = 25.113, y = 2.682, z = -53.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 7002, gadget_id = 70350293, pos = { x = 19.979, y = 2.649, z = -58.314 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 7003, gadget_id = 70350293, pos = { x = 35.132, y = 2.649, z = -43.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 7004, gadget_id = 70350293, pos = { x = 29.804, y = 2.721, z = -37.806 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 7005, gadget_id = 70350293, pos = { x = 40.285, y = 2.669, z = -48.318 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 7006, gadget_id = 70350293, pos = { x = 40.285, y = 2.669, z = -38.017 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 7021, gadget_id = 70220048, pos = { x = 29.768, y = 2.724, z = -31.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7022, gadget_id = 70220048, pos = { x = 40.379, y = 2.649, z = -31.474 }, rot = { x = 0.000, y = 28.165, z = 0.000 }, level = 1 },
	{ config_id = 7023, gadget_id = 70211001, pos = { x = 43.630, y = 3.337, z = -47.585 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 7025, gadget_id = 70211001, pos = { x = 16.763, y = 4.820, z = -34.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 7029, gadget_id = 70220066, pos = { x = 12.006, y = 2.683, z = -55.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7030, gadget_id = 70220066, pos = { x = 12.959, y = 2.747, z = -54.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7031, gadget_id = 70220066, pos = { x = 11.028, y = 2.609, z = -60.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7032, gadget_id = 70220014, pos = { x = 11.022, y = 2.609, z = -59.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7033, gadget_id = 70220066, pos = { x = 39.417, y = 1.809, z = -57.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7034, gadget_id = 70220014, pos = { x = 39.355, y = 1.809, z = -58.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7035, gadget_id = 70220066, pos = { x = 48.853, y = 2.581, z = -49.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7036, gadget_id = 70220014, pos = { x = 48.862, y = 2.581, z = -50.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7037, gadget_id = 70220065, pos = { x = 46.871, y = 2.619, z = -24.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7038, gadget_id = 70220048, pos = { x = 45.070, y = 2.619, z = -24.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7039, gadget_id = 70220065, pos = { x = 31.134, y = 1.929, z = -20.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7040, gadget_id = 70220065, pos = { x = 37.702, y = 1.929, z = -20.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7041, gadget_id = 70220062, pos = { x = 32.549, y = 1.932, z = -20.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7042, gadget_id = 70220062, pos = { x = 35.034, y = 1.929, z = -19.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7043, gadget_id = 70220062, pos = { x = 22.680, y = 2.617, z = -27.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7044, gadget_id = 70220062, pos = { x = 23.251, y = 2.628, z = -26.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7045, gadget_id = 70220065, pos = { x = 25.543, y = 2.657, z = -25.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7046, gadget_id = 70220048, pos = { x = 27.333, y = 2.655, z = -25.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7052, gadget_id = 70220066, pos = { x = 49.541, y = 2.619, z = -28.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7053, gadget_id = 70220066, pos = { x = 48.596, y = 2.619, z = -28.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7054, gadget_id = 70220066, pos = { x = 47.838, y = 2.619, z = -32.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7055, gadget_id = 70220066, pos = { x = 46.487, y = 2.619, z = -32.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7056, gadget_id = 70220014, pos = { x = 44.091, y = 2.583, z = -51.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7057, gadget_id = 70220066, pos = { x = 43.004, y = 2.584, z = -51.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7058, gadget_id = 70220065, pos = { x = 34.876, y = 1.809, z = -62.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7059, gadget_id = 70220065, pos = { x = 38.394, y = 1.875, z = -55.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 7060, gadget_id = 70220048, pos = { x = 46.892, y = 2.588, z = -34.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 刷怪
	{ config_id = 7024, shape = RegionShape.SPHERE, radius = 5, pos = { x = 35.248, y = 2.878, z = -50.121 } }
}

-- 触发器
triggers = {
	-- 第1个门
	{ config_id = 1007007, name = "GADGET_STATE_CHANGE_7007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7007", action = "action_EVENT_GADGET_STATE_CHANGE_7007", trigger_count = 0 },
	-- 第1个门
	{ config_id = 1007008, name = "GADGET_STATE_CHANGE_7008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7008", action = "action_EVENT_GADGET_STATE_CHANGE_7008", trigger_count = 0 },
	-- 第2个门
	{ config_id = 1007009, name = "GADGET_STATE_CHANGE_7009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7009", action = "action_EVENT_GADGET_STATE_CHANGE_7009", trigger_count = 0 },
	-- 第2个门
	{ config_id = 1007010, name = "GADGET_STATE_CHANGE_7010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7010", action = "action_EVENT_GADGET_STATE_CHANGE_7010", trigger_count = 0 },
	-- 第3个门
	{ config_id = 1007011, name = "GADGET_STATE_CHANGE_7011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7011", action = "action_EVENT_GADGET_STATE_CHANGE_7011", trigger_count = 0 },
	-- 第3个门
	{ config_id = 1007012, name = "GADGET_STATE_CHANGE_7012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7012", action = "action_EVENT_GADGET_STATE_CHANGE_7012", trigger_count = 0 },
	-- 第4个门
	{ config_id = 1007013, name = "GADGET_STATE_CHANGE_7013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7013", action = "action_EVENT_GADGET_STATE_CHANGE_7013", trigger_count = 0 },
	-- 第4个门
	{ config_id = 1007014, name = "GADGET_STATE_CHANGE_7014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7014", action = "action_EVENT_GADGET_STATE_CHANGE_7014", trigger_count = 0 },
	-- 第5个门移动-正常
	{ config_id = 1007015, name = "GADGET_STATE_CHANGE_7015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7015", action = "action_EVENT_GADGET_STATE_CHANGE_7015", trigger_count = 0 },
	-- 第5个门移动-被门6卡着
	{ config_id = 1007016, name = "GADGET_STATE_CHANGE_7016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7016", action = "action_EVENT_GADGET_STATE_CHANGE_7016", trigger_count = 0 },
	-- 第5个门移动-正常
	{ config_id = 1007017, name = "GADGET_STATE_CHANGE_7017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7017", action = "action_EVENT_GADGET_STATE_CHANGE_7017", trigger_count = 0 },
	-- 第6个门移动-正常
	{ config_id = 1007018, name = "GADGET_STATE_CHANGE_7018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7018", action = "action_EVENT_GADGET_STATE_CHANGE_7018", trigger_count = 0 },
	-- 第6个门移动-正常
	{ config_id = 1007019, name = "GADGET_STATE_CHANGE_7019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7019", action = "action_EVENT_GADGET_STATE_CHANGE_7019", trigger_count = 0 },
	-- 第6个门移动-被门5卡着
	{ config_id = 1007020, name = "GADGET_STATE_CHANGE_7020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7020", action = "action_EVENT_GADGET_STATE_CHANGE_7020", trigger_count = 0 },
	-- 刷怪
	{ config_id = 1007024, name = "ENTER_REGION_7024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7024", action = "action_EVENT_ENTER_REGION_7024" },
	-- 门4的阻挡
	{ config_id = 1007048, name = "ANY_GADGET_DIE_7048", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7048", action = "action_EVENT_ANY_GADGET_DIE_7048" },
	-- 门6的阻挡
	{ config_id = 1007049, name = "ANY_GADGET_DIE_7049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7049", action = "action_EVENT_ANY_GADGET_DIE_7049" },
	-- 第4个门被卡着
	{ config_id = 1007050, name = "GADGET_STATE_CHANGE_7050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7050", action = "action_EVENT_GADGET_STATE_CHANGE_7050", trigger_count = 0 },
	-- 第6个门被阻碍卡着
	{ config_id = 1007051, name = "GADGET_STATE_CHANGE_7051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7051", action = "action_EVENT_GADGET_STATE_CHANGE_7051", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Wall1", value = 1, no_refresh = false },
	{ config_id = 2, name = "Wall2", value = 1, no_refresh = false },
	{ config_id = 3, name = "Wall3", value = 1, no_refresh = false },
	{ config_id = 4, name = "Wall4", value = 1, no_refresh = false },
	{ config_id = 5, name = "Wall5", value = 1, no_refresh = false },
	{ config_id = 6, name = "Wall6", value = 1, no_refresh = false },
	{ config_id = 7, name = "Block4", value = 1, no_refresh = false },
	{ config_id = 8, name = "Block6", value = 1, no_refresh = false }
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
		gadgets = { 7001, 7002, 7003, 7004, 7005, 7006, 7021, 7022, 7023, 7025, 7029, 7030, 7031, 7032, 7033, 7034, 7035, 7036, 7037, 7038, 7039, 7040, 7041, 7042, 7043, 7044, 7045, 7046, 7052, 7053, 7054, 7055, 7056, 7057, 7058, 7059, 7060 },
		regions = { 7024 },
		triggers = { "GADGET_STATE_CHANGE_7007", "GADGET_STATE_CHANGE_7008", "GADGET_STATE_CHANGE_7009", "GADGET_STATE_CHANGE_7010", "GADGET_STATE_CHANGE_7011", "GADGET_STATE_CHANGE_7012", "GADGET_STATE_CHANGE_7013", "GADGET_STATE_CHANGE_7014", "GADGET_STATE_CHANGE_7015", "GADGET_STATE_CHANGE_7016", "GADGET_STATE_CHANGE_7017", "GADGET_STATE_CHANGE_7018", "GADGET_STATE_CHANGE_7019", "GADGET_STATE_CHANGE_7020", "ENTER_REGION_7024", "ANY_GADGET_DIE_7048", "ANY_GADGET_DIE_7049", "GADGET_STATE_CHANGE_7050", "GADGET_STATE_CHANGE_7051" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7026, 7027, 7028, 7047 },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	-- 检测config_id为7001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7001, 5, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall1" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7008(context, evt)
	-- 检测config_id为7001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall1"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7001, 5, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7009(context, evt)
	-- 检测config_id为7002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall2"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7002, 6, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7010(context, evt)
	-- 检测config_id为7002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall2"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7010(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7002, 6, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7011(context, evt)
	-- 检测config_id为7003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall3"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7011(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7003, 7, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall3" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	-- 检测config_id为7003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall3"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7003, 7, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7013(context, evt)
	-- 检测config_id为7004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall4") ~= 1 then
			return false
	end
	
	-- 判断变量"Block4"为0
	if ScriptLib.GetGroupVariableValue(context, "Block4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7013(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7004, 8, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall4" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall4", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7014(context, evt)
	-- 检测config_id为7004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall4"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall4") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7014(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7004, 8, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7015(context, evt)
	-- 检测config_id为7005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall5") ~= 1 then
			return false
	end
	
	-- 判断变量"Wall6"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall6") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7015(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7005, 9, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall5" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall5", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7016(context, evt)
	-- 检测config_id为7005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall5") ~= 1 then
			return false
	end
	
	-- 判断变量"Wall6"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7016(context, evt)
	-- 调用提示id为 50050101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 50050101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7017(context, evt)
	-- 检测config_id为7005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall5"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall5") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7005, 9, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7018(context, evt)
	-- 检测config_id为7006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall6"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall6") ~= 1 then
			return false
	end
	
	-- 判断变量"Block6"为0
	if ScriptLib.GetGroupVariableValue(context, "Block6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7006, 9, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall6" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall6", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7019(context, evt)
	-- 检测config_id为7006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall6"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall6") ~= 2 then
			return false
	end
	
	-- 判断变量"Wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7019(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7006, 9, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "Wall6" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wall6", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7020(context, evt)
	-- 检测config_id为7006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall6"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall6") ~= 2 then
			return false
	end
	
	-- 判断变量"Wall5"为2
	if ScriptLib.GetGroupVariableValue(context, "Wall5") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7020(context, evt)
	-- 调用提示id为 50050101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 50050101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7024(context, evt)
	if evt.param1 ~= 7024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7024(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7048(context, evt)
	if 7021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7048(context, evt)
	-- 将本组内变量名为 "Block4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Block4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7049(context, evt)
	if 7022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7049(context, evt)
	-- 将本组内变量名为 "Block6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Block6", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7050(context, evt)
	-- 检测config_id为7004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall4") ~= 1 then
			return false
	end
	
	-- 判断变量"Block4"为1
	if ScriptLib.GetGroupVariableValue(context, "Block4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7050(context, evt)
	-- 调用提示id为 50050101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 50050101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7051(context, evt)
	-- 检测config_id为7006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 7006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"Wall6"为1
	if ScriptLib.GetGroupVariableValue(context, "Wall6") ~= 1 then
			return false
	end
	
	-- 判断变量"Block6"为1
	if ScriptLib.GetGroupVariableValue(context, "Block6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7051(context, evt)
	-- 调用提示id为 50050101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 50050101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end