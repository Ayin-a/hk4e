-- 基础信息
local base_info = {
	group_id = 133003509
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 509002, monster_id = 22010101, pos = { x = 2653.911, y = 230.616, z = -1147.956 }, rot = { x = 0.000, y = 180.923, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 1 },
	{ config_id = 509003, monster_id = 21010601, pos = { x = 2656.957, y = 230.301, z = -1142.975 }, rot = { x = 0.000, y = 183.368, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509004, monster_id = 21010601, pos = { x = 2650.328, y = 230.201, z = -1142.585 }, rot = { x = 0.000, y = 183.368, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509005, monster_id = 21011201, pos = { x = 2657.204, y = 230.696, z = -1146.851 }, rot = { x = 0.000, y = 178.723, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509006, monster_id = 21011201, pos = { x = 2649.869, y = 230.897, z = -1146.505 }, rot = { x = 0.000, y = 183.320, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509011, monster_id = 21020201, pos = { x = 2706.972, y = 243.876, z = -1258.227 }, rot = { x = 0.000, y = 320.163, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 509016, monster_id = 21030301, pos = { x = 2701.688, y = 248.883, z = -1244.350 }, rot = { x = 0.000, y = 329.667, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 509017, monster_id = 21010701, pos = { x = 2657.843, y = 232.441, z = -1156.758 }, rot = { x = 0.000, y = 160.279, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509018, monster_id = 21010701, pos = { x = 2651.563, y = 232.423, z = -1158.593 }, rot = { x = 0.000, y = 162.468, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509020, monster_id = 21011001, pos = { x = 2683.033, y = 240.061, z = -1199.958 }, rot = { x = 0.000, y = 267.726, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 1 },
	{ config_id = 509021, monster_id = 22010301, pos = { x = 2680.348, y = 240.701, z = -1213.442 }, rot = { x = 0.000, y = 232.911, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, area_id = 1 },
	{ config_id = 509024, monster_id = 21030101, pos = { x = 2678.812, y = 241.054, z = -1220.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 509026, monster_id = 21010901, pos = { x = 2689.894, y = 242.170, z = -1217.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 509027, monster_id = 21030301, pos = { x = 2686.205, y = 244.731, z = -1244.707 }, rot = { x = 0.000, y = 12.288, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 509029, monster_id = 22010201, pos = { x = 2701.309, y = 244.752, z = -1283.780 }, rot = { x = 0.000, y = 300.281, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 1 },
	{ config_id = 509030, monster_id = 21010901, pos = { x = 2678.195, y = 244.829, z = -1274.597 }, rot = { x = 0.000, y = 62.205, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 509031, monster_id = 21010901, pos = { x = 2677.497, y = 244.696, z = -1278.985 }, rot = { x = 0.000, y = 62.205, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 509032, monster_id = 21011201, pos = { x = 2700.872, y = 244.657, z = -1281.421 }, rot = { x = 0.000, y = 300.281, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509033, monster_id = 21011201, pos = { x = 2699.751, y = 244.576, z = -1285.734 }, rot = { x = 0.000, y = 300.281, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 509034, monster_id = 21030101, pos = { x = 2678.193, y = 244.708, z = -1276.645 }, rot = { x = 0.000, y = 62.205, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 1 },
	{ config_id = 509035, monster_id = 21010501, pos = { x = 2700.987, y = 243.769, z = -1261.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 1 },
	{ config_id = 509036, monster_id = 21010501, pos = { x = 2689.914, y = 243.819, z = -1260.620 }, rot = { x = 0.000, y = 14.389, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 509001, gadget_id = 70710116, pos = { x = 2653.937, y = 230.221, z = -1144.629 }, rot = { x = 0.000, y = 174.503, z = 0.000 }, level = 1, route_id = 300300288, start_route = false, persistent = true, area_id = 1 },
	{ config_id = 509007, gadget_id = 70220004, pos = { x = 2664.083, y = 236.059, z = -1172.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509008, gadget_id = 70220004, pos = { x = 2657.670, y = 236.061, z = -1176.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509009, gadget_id = 70220004, pos = { x = 2662.558, y = 237.383, z = -1185.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509010, gadget_id = 70220004, pos = { x = 2677.385, y = 239.296, z = -1191.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509012, gadget_id = 70220004, pos = { x = 2665.062, y = 236.628, z = -1178.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509013, gadget_id = 70220035, pos = { x = 2665.440, y = 236.273, z = -1175.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509014, gadget_id = 70220035, pos = { x = 2663.950, y = 237.845, z = -1187.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509015, gadget_id = 70220035, pos = { x = 2676.020, y = 239.346, z = -1189.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509019, gadget_id = 70220006, pos = { x = 2701.751, y = 242.846, z = -1244.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509022, gadget_id = 70220010, pos = { x = 2677.670, y = 240.890, z = -1214.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509023, gadget_id = 70220010, pos = { x = 2679.910, y = 241.333, z = -1223.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 509028, gadget_id = 70690008, pos = { x = 2692.215, y = 241.964, z = -1236.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1509025, name = "PLATFORM_REACH_POINT_509025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_509025", action = "action_EVENT_PLATFORM_REACH_POINT_509025" },
	{ config_id = 1509037, name = "PLATFORM_REACH_POINT_509037", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_509037", action = "action_EVENT_PLATFORM_REACH_POINT_509037" },
	{ config_id = 1509038, name = "PLATFORM_REACH_POINT_509038", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_509038", action = "action_EVENT_PLATFORM_REACH_POINT_509038" },
	{ config_id = 1509039, name = "PLATFORM_REACH_POINT_509039", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_509039", action = "action_EVENT_PLATFORM_REACH_POINT_509039" },
	{ config_id = 1509040, name = "ANY_MONSTER_DIE_509040", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_509040", action = "action_EVENT_ANY_MONSTER_DIE_509040" },
	{ config_id = 1509041, name = "ANY_MONSTER_DIE_509041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_509041", action = "action_EVENT_ANY_MONSTER_DIE_509041" },
	{ config_id = 1509042, name = "VARIABLE_CHANGE_509042", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_509042", action = "action_EVENT_VARIABLE_CHANGE_509042" },
	{ config_id = 1509043, name = "PLATFORM_REACH_POINT_509043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_509043", action = "action_EVENT_PLATFORM_REACH_POINT_509043" }
}

-- 变量
variables = {
	{ config_id = 1, name = "diedShamanNum", value = 0, no_refresh = false }
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
		monsters = { 509002, 509003, 509004, 509005, 509006 },
		gadgets = { 509001 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_509025", "PLATFORM_REACH_POINT_509037", "PLATFORM_REACH_POINT_509038", "PLATFORM_REACH_POINT_509039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 509020 },
		gadgets = { 509007, 509008, 509009, 509010, 509012, 509013, 509014, 509015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 509021, 509024, 509026 },
		gadgets = { 509019, 509022, 509023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 509011, 509016, 509027, 509035, 509036 },
		gadgets = { 509028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_509040", "ANY_MONSTER_DIE_509041", "VARIABLE_CHANGE_509042", "PLATFORM_REACH_POINT_509043" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 509029, 509030, 509031, 509032, 509033, 509034 },
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
function condition_EVENT_PLATFORM_REACH_POINT_509025(context, evt)
	-- 判断是gadgetid 为 509001的移动平台，是否到达了300300288 的路线中的 1 点
	
	if 509001 ~= evt.param1 then
	  return false
	end
	
	if 300300288 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_509025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003509, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_509037(context, evt)
	-- 判断是gadgetid 为 509001的移动平台，是否到达了300300288 的路线中的 3 点
	
	if 509001 ~= evt.param1 then
	  return false
	end
	
	if 300300288 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_509037(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 509017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 509018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_509038(context, evt)
	-- 判断是gadgetid 为 509001的移动平台，是否到达了300300288 的路线中的 4 点
	
	if 509001 ~= evt.param1 then
	  return false
	end
	
	if 300300288 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_509038(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003509, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_509039(context, evt)
	-- 判断是gadgetid 为 509001的移动平台，是否到达了300300288 的路线中的 7 点
	
	if 509001 ~= evt.param1 then
	  return false
	end
	
	if 300300288 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_509039(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003509, 4)
	
	-- 调用提示id为 1109009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1109009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_509040(context, evt)
	--判断死亡怪物的configid是否为 509016
	if evt.param1 ~= 509016 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_509040(context, evt)
	-- 针对当前group内变量名为 "diedShamanNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "diedShamanNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_509041(context, evt)
	--判断死亡怪物的configid是否为 509027
	if evt.param1 ~= 509027 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_509041(context, evt)
	-- 针对当前group内变量名为 "diedShamanNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "diedShamanNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_509042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"diedShamanNum"为2
	if ScriptLib.GetGroupVariableValue(context, "diedShamanNum") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_509042(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 509001, 300300289) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 509001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003509, EntityType.GADGET, 509028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_509043(context, evt)
	-- 判断是gadgetid 为 509001的移动平台，是否到达了300300289 的路线中的 2 点
	
	if 509001 ~= evt.param1 then
	  return false
	end
	
	if 300300289 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_509043(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003509, 5)
	
	return 0
end