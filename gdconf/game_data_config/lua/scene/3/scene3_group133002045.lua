-- 基础信息
local base_info = {
	group_id = 133002045
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
	{ config_id = 45001, gadget_id = 70690017, pos = { x = 1296.783, y = 265.136, z = -1199.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 10 },
	{ config_id = 45002, gadget_id = 70690001, pos = { x = 1297.011, y = 279.959, z = -1194.758 }, rot = { x = 356.165, y = 1.986, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45004, gadget_id = 70690001, pos = { x = 1297.365, y = 280.657, z = -1180.783 }, rot = { x = 0.058, y = 359.856, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45006, gadget_id = 70690001, pos = { x = 1297.187, y = 280.381, z = -1166.792 }, rot = { x = 0.737, y = 357.693, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45008, gadget_id = 70690001, pos = { x = 1296.625, y = 280.469, z = -1152.814 }, rot = { x = 358.543, y = 357.708, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45009, gadget_id = 70690001, pos = { x = 1296.345, y = 280.647, z = -1145.821 }, rot = { x = 358.544, y = 357.707, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45012, gadget_id = 70690001, pos = { x = 1296.065, y = 280.825, z = -1138.829 }, rot = { x = 351.980, y = 352.716, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45013, gadget_id = 70690001, pos = { x = 1295.199, y = 281.787, z = -1132.053 }, rot = { x = 314.393, y = 354.123, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45014, gadget_id = 70690001, pos = { x = 1294.705, y = 286.714, z = -1127.256 }, rot = { x = 289.795, y = 1.893, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45015, gadget_id = 70690001, pos = { x = 1294.783, y = 293.274, z = -1124.896 }, rot = { x = 278.407, y = 20.742, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45016, gadget_id = 70690001, pos = { x = 1295.145, y = 300.191, z = -1123.940 }, rot = { x = 274.364, y = 78.925, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45017, gadget_id = 70690001, pos = { x = 1295.668, y = 307.168, z = -1123.837 }, rot = { x = 272.739, y = 116.443, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45018, gadget_id = 70690001, pos = { x = 1295.967, y = 314.152, z = -1123.986 }, rot = { x = 270.082, y = 46.353, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45019, gadget_id = 70690001, pos = { x = 1295.975, y = 321.152, z = -1123.979 }, rot = { x = 270.082, y = 44.542, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45024, gadget_id = 70690017, pos = { x = 1268.873, y = 314.000, z = -1077.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 10 },
	{ config_id = 45025, gadget_id = 70690017, pos = { x = 1258.513, y = 312.915, z = -1031.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 10 },
	{ config_id = 45031, gadget_id = 70690001, pos = { x = 1285.402, y = 330.191, z = -1106.257 }, rot = { x = 353.945, y = 330.050, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45032, gadget_id = 70690001, pos = { x = 1281.927, y = 330.929, z = -1100.226 }, rot = { x = 353.945, y = 330.049, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45033, gadget_id = 70690001, pos = { x = 1278.451, y = 331.668, z = -1094.195 }, rot = { x = 353.945, y = 330.050, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45037, gadget_id = 70690001, pos = { x = 1263.521, y = 328.662, z = -1067.782 }, rot = { x = 3.128, y = 353.034, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45038, gadget_id = 70690001, pos = { x = 1262.674, y = 328.280, z = -1060.844 }, rot = { x = 3.129, y = 353.034, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45039, gadget_id = 70690001, pos = { x = 1261.826, y = 327.898, z = -1053.906 }, rot = { x = 3.129, y = 353.034, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45040, gadget_id = 70690001, pos = { x = 1260.978, y = 327.516, z = -1046.968 }, rot = { x = 3.129, y = 353.034, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45041, gadget_id = 70690001, pos = { x = 1260.131, y = 327.134, z = -1040.030 }, rot = { x = 3.128, y = 353.034, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45045, gadget_id = 70690001, pos = { x = 1263.062, y = 325.731, z = -1019.508 }, rot = { x = 2.510, y = 46.477, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45047, gadget_id = 70690001, pos = { x = 1273.204, y = 325.118, z = -1009.877 }, rot = { x = 2.510, y = 46.477, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45049, gadget_id = 70690017, pos = { x = 1281.959, y = 320.236, z = -1002.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45050, gadget_id = 70690001, pos = { x = 1282.865, y = 331.236, z = -1001.018 }, rot = { x = 270.306, y = 8.861, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45051, gadget_id = 70690001, pos = { x = 1282.871, y = 338.236, z = -1000.981 }, rot = { x = 270.306, y = 8.861, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45052, gadget_id = 70690001, pos = { x = 1282.876, y = 345.235, z = -1000.944 }, rot = { x = 270.301, y = 8.875, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45053, gadget_id = 70690001, pos = { x = 1282.882, y = 352.235, z = -1000.907 }, rot = { x = 270.293, y = 8.860, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45054, gadget_id = 70690001, pos = { x = 1282.888, y = 359.235, z = -1000.870 }, rot = { x = 270.306, y = 8.861, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45055, gadget_id = 70690001, pos = { x = 1282.894, y = 366.235, z = -1000.833 }, rot = { x = 270.301, y = 8.875, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45056, gadget_id = 70690001, pos = { x = 1282.899, y = 373.235, z = -1000.797 }, rot = { x = 270.293, y = 8.860, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45057, gadget_id = 70690001, pos = { x = 1282.905, y = 380.235, z = -1000.760 }, rot = { x = 270.297, y = 9.046, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45066, gadget_id = 70690017, pos = { x = 1297.718, y = 374.653, z = -977.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45069, gadget_id = 70690001, pos = { x = 1300.046, y = 387.458, z = -974.372 }, rot = { x = 2.632, y = 33.370, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45071, gadget_id = 70690001, pos = { x = 1307.739, y = 386.815, z = -962.692 }, rot = { x = 2.632, y = 33.369, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 45073, gadget_id = 70690017, pos = { x = 1294.705, y = 273.714, z = -1127.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 45011, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1329.584, y = 353.263, z = -928.082 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1045010, name = "GROUP_LOAD_45010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_45010" },
	{ config_id = 1045011, name = "ENTER_REGION_45011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45011", action = "action_EVENT_ENTER_REGION_45011" },
	{ config_id = 1045020, name = "TIME_AXIS_PASS_45020", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_45020" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 45003, gadget_id = 70690001, pos = { x = 1297.253, y = 280.427, z = -1187.778 }, rot = { x = 358.111, y = 0.922, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 45005, gadget_id = 70690001, pos = { x = 1297.348, y = 280.650, z = -1173.784 }, rot = { x = 2.207, y = 358.682, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 45007, gadget_id = 70690001, pos = { x = 1296.905, y = 280.291, z = -1159.806 }, rot = { x = 358.544, y = 357.706, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 45046, gadget_id = 70690001, pos = { x = 1268.133, y = 325.425, z = -1014.692 }, rot = { x = 2.509, y = 46.477, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 45070, gadget_id = 70690001, pos = { x = 1303.892, y = 387.137, z = -968.532 }, rot = { x = 2.632, y = 33.369, z = 0.000 }, level = 1, area_id = 10 }
	}
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
		gadgets = { 45001, 45002, 45004, 45006, 45008, 45009, 45012, 45013, 45014, 45015, 45016, 45017, 45018, 45019, 45024, 45025, 45031, 45032, 45033, 45037, 45038, 45039, 45040, 45041, 45045, 45047, 45049, 45050, 45051, 45052, 45053, 45054, 45055, 45056, 45057, 45066, 45069, 45071, 45073 },
		regions = { 45011 },
		triggers = { "GROUP_LOAD_45010", "ENTER_REGION_45011", "TIME_AXIS_PASS_45020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_45010(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45011(context, evt)
	if evt.param1 ~= 45011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45011(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002045, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_45020(context, evt)
	-- 触发镜头注目，注目位置为坐标（1297.011，279.9585，-1194.758），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1297.011, y=279.9585, z=-1194.758}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 400071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end