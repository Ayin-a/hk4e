-- 基础信息
local base_info = {
	group_id = 220163007
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
	-- 真正的电梯1-一次性
	{ config_id = 7001, gadget_id = 70320026, pos = { x = 2.640, y = 57.528, z = -10.850 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	{ config_id = 7002, gadget_id = 70320045, pos = { x = 2.640, y = 56.254, z = -10.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7003, gadget_id = 70320046, pos = { x = 2.640, y = 56.254, z = -10.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7004, gadget_id = 70320047, pos = { x = 2.640, y = 56.254, z = -10.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7005, gadget_id = 70320048, pos = { x = 2.640, y = 56.254, z = -10.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7006, gadget_id = 70320044, pos = { x = 2.640, y = 56.254, z = -10.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 操作--圈2
	{ config_id = 7011, gadget_id = 70320079, pos = { x = -24.236, y = 68.849, z = -10.608 }, rot = { x = 0.000, y = 35.430, z = 0.000 }, level = 1 },
	-- 操作--圈3
	{ config_id = 7012, gadget_id = 70320079, pos = { x = -19.790, y = 83.570, z = -40.294 }, rot = { x = 0.000, y = 35.581, z = 0.000 }, level = 1 },
	-- 操作--圈4
	{ config_id = 7013, gadget_id = 70320079, pos = { x = 35.511, y = 73.679, z = -59.344 }, rot = { x = 0.000, y = 269.997, z = 0.000 }, level = 1 },
	-- 操作--圈5
	{ config_id = 7014, gadget_id = 70320079, pos = { x = 25.541, y = 80.984, z = 3.110 }, rot = { x = 0.000, y = 216.554, z = 0.000 }, level = 1 },
	{ config_id = 7037, gadget_id = 70900203, pos = { x = 3.058, y = 59.236, z = -11.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7049, gadget_id = 70320075, pos = { x = 2.640, y = 56.210, z = -10.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 真正的电梯2-重复利用
	{ config_id = 7054, gadget_id = 70320026, pos = { x = 2.640, y = 45.080, z = -10.850 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	-- 假电梯
	{ config_id = 7074, gadget_id = 70320026, pos = { x = 2.640, y = 45.080, z = -10.850 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	-- 真正的电梯3-重复利用
	{ config_id = 7078, gadget_id = 70320026, pos = { x = 2.640, y = 45.080, z = -10.850 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true }
}

-- 区域
regions = {
	-- 没坐上电梯保底
	{ config_id = 7055, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 2.774, y = 54.297, z = -10.793 } },
	-- 电梯2启动
	{ config_id = 7060, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 2.640, y = 59.490, z = -10.850 } },
	-- 进入电梯后启动
	{ config_id = 7069, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 2.640, y = 59.490, z = -10.850 } },
	-- 进入电梯后移除目标
	{ config_id = 7070, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 2.640, y = 59.490, z = -10.850 } },
	-- 没坐上电梯保底
	{ config_id = 7071, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 2.774, y = 54.297, z = -10.793 } },
	-- 电梯3启动
	{ config_id = 7080, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 2.640, y = 59.490, z = -10.850 } }
}

-- 触发器
triggers = {
	-- 电梯2升起后再创建一个电梯3--第一次
	{ config_id = 1007007, name = "PLATFORM_ARRIVAL_7007", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7007", action = "action_EVENT_PLATFORM_ARRIVAL_7007" },
	-- 四个转盘成功转对
	{ config_id = 1007008, name = "VARIABLE_CHANGE_7008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7008", action = "action_EVENT_VARIABLE_CHANGE_7008", trigger_count = 0 },
	-- 电梯2 -- 停车去掉特效（底部）
	{ config_id = 1007009, name = "PLATFORM_ARRIVAL_7009", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7009", action = "action_EVENT_PLATFORM_ARRIVAL_7009", trigger_count = 0 },
	-- 电梯2 -- 停车去掉特效（顶部）
	{ config_id = 1007010, name = "PLATFORM_ARRIVAL_7010", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7010", action = "action_EVENT_PLATFORM_ARRIVAL_7010", trigger_count = 0 },
	-- 圈2--7002
	{ config_id = 1007015, name = "LUA_NOTIFY_7015", event = EventType.EVENT_LUA_NOTIFY, source = "FactoryOperator", condition = "condition_EVENT_LUA_NOTIFY_7015", action = "action_EVENT_LUA_NOTIFY_7015", trigger_count = 0 },
	-- 圈3--7003
	{ config_id = 1007016, name = "LUA_NOTIFY_7016", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_7016", action = "action_EVENT_LUA_NOTIFY_7016", trigger_count = 0 },
	-- 圈4--7004
	{ config_id = 1007017, name = "LUA_NOTIFY_7017", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_7017", action = "action_EVENT_LUA_NOTIFY_7017", trigger_count = 0 },
	-- 圈5--7005
	{ config_id = 1007018, name = "LUA_NOTIFY_7018", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_7018", action = "action_EVENT_LUA_NOTIFY_7018", trigger_count = 0 },
	-- 圈1旋转正确
	{ config_id = 1007019, name = "GADGET_STATE_CHANGE_7019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7019", action = "action_EVENT_GADGET_STATE_CHANGE_7019", trigger_count = 0 },
	-- 圈1旋转正确
	{ config_id = 1007020, name = "GADGET_STATE_CHANGE_7020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7020", action = "action_EVENT_GADGET_STATE_CHANGE_7020", trigger_count = 0 },
	-- 圈1旋转正确
	{ config_id = 1007021, name = "GADGET_STATE_CHANGE_7021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7021", action = "action_EVENT_GADGET_STATE_CHANGE_7021", trigger_count = 0 },
	-- 圈2旋转正确
	{ config_id = 1007022, name = "GADGET_STATE_CHANGE_7022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7022", action = "action_EVENT_GADGET_STATE_CHANGE_7022", trigger_count = 0 },
	-- 圈2旋转正确
	{ config_id = 1007023, name = "GADGET_STATE_CHANGE_7023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7023", action = "action_EVENT_GADGET_STATE_CHANGE_7023", trigger_count = 0 },
	-- 圈2旋转正确
	{ config_id = 1007024, name = "GADGET_STATE_CHANGE_7024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7024", action = "action_EVENT_GADGET_STATE_CHANGE_7024", trigger_count = 0 },
	-- 圈3旋转正确
	{ config_id = 1007025, name = "GADGET_STATE_CHANGE_7025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7025", action = "action_EVENT_GADGET_STATE_CHANGE_7025", trigger_count = 0 },
	-- 圈3旋转正确
	{ config_id = 1007026, name = "GADGET_STATE_CHANGE_7026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7026", action = "action_EVENT_GADGET_STATE_CHANGE_7026", trigger_count = 0 },
	-- 圈3旋转正确
	{ config_id = 1007027, name = "GADGET_STATE_CHANGE_7027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7027", action = "action_EVENT_GADGET_STATE_CHANGE_7027", trigger_count = 0 },
	-- 圈4旋转正确
	{ config_id = 1007028, name = "GADGET_STATE_CHANGE_7028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7028", action = "action_EVENT_GADGET_STATE_CHANGE_7028", trigger_count = 0 },
	-- 圈4旋转正确
	{ config_id = 1007029, name = "GADGET_STATE_CHANGE_7029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7029", action = "action_EVENT_GADGET_STATE_CHANGE_7029", trigger_count = 0 },
	-- 圈4旋转正确
	{ config_id = 1007030, name = "GADGET_STATE_CHANGE_7030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7030", action = "action_EVENT_GADGET_STATE_CHANGE_7030", trigger_count = 0 },
	{ config_id = 1007031, name = "GADGET_CREATE_7031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7031", action = "action_EVENT_GADGET_CREATE_7031", trigger_count = 0 },
	{ config_id = 1007032, name = "GADGET_CREATE_7032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7032", action = "action_EVENT_GADGET_CREATE_7032", trigger_count = 0 },
	{ config_id = 1007033, name = "GADGET_CREATE_7033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7033", action = "action_EVENT_GADGET_CREATE_7033", trigger_count = 0 },
	{ config_id = 1007034, name = "GADGET_CREATE_7034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7034", action = "action_EVENT_GADGET_CREATE_7034", trigger_count = 0 },
	-- 电梯3 -- 停车去掉特效（底部）
	{ config_id = 1007035, name = "PLATFORM_ARRIVAL_7035", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7035", action = "action_EVENT_PLATFORM_ARRIVAL_7035", trigger_count = 0 },
	-- 电梯3 -- 停车去掉特效（顶部）
	{ config_id = 1007036, name = "PLATFORM_ARRIVAL_7036", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7036", action = "action_EVENT_PLATFORM_ARRIVAL_7036", trigger_count = 0 },
	-- 电梯1 -- 停车去掉特效（顶部）
	{ config_id = 1007038, name = "PLATFORM_ARRIVAL_7038", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7038", action = "action_EVENT_PLATFORM_ARRIVAL_7038", trigger_count = 0 },
	-- 没坐上电梯保底
	{ config_id = 1007055, name = "ENTER_REGION_7055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7055", action = "action_EVENT_ENTER_REGION_7055", trigger_count = 0 },
	-- 第二个电梯升起后移除电梯1
	{ config_id = 1007056, name = "PLATFORM_ARRIVAL_7056", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7056", action = "action_EVENT_PLATFORM_ARRIVAL_7056", trigger_count = 0 },
	-- 电梯2启动
	{ config_id = 1007060, name = "ENTER_REGION_7060", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7060", action = "action_EVENT_ENTER_REGION_7060", trigger_count = 0 },
	-- 播放cs--删掉假电梯
	{ config_id = 1007062, name = "TIME_AXIS_PASS_7062", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_7062", action = "action_EVENT_TIME_AXIS_PASS_7062" },
	-- 电梯2上升后打开封印--循环
	{ config_id = 1007065, name = "PLATFORM_ARRIVAL_7065", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7065", action = "action_EVENT_PLATFORM_ARRIVAL_7065", trigger_count = 0 },
	-- 电梯1上升后打开封印并创建电梯2-一次性
	{ config_id = 1007066, name = "PLATFORM_ARRIVAL_7066", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7066", action = "action_EVENT_PLATFORM_ARRIVAL_7066" },
	-- 进入电梯后启动
	{ config_id = 1007069, name = "ENTER_REGION_7069", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7069", action = "action_EVENT_ENTER_REGION_7069" },
	-- 进入电梯后移除目标
	{ config_id = 1007070, name = "ENTER_REGION_7070", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7070", action = "action_EVENT_ENTER_REGION_7070" },
	-- 没坐上电梯保底
	{ config_id = 1007071, name = "ENTER_REGION_7071", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7071", action = "action_EVENT_ENTER_REGION_7071", trigger_count = 0 },
	-- 假如上了电梯2--永久移除电梯1
	{ config_id = 1007072, name = "PLATFORM_ARRIVAL_7072", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7072", action = "action_EVENT_PLATFORM_ARRIVAL_7072" },
	-- 电梯3升起后再创建一个电梯2
	{ config_id = 1007073, name = "PLATFORM_ARRIVAL_7073", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7073", action = "action_EVENT_PLATFORM_ARRIVAL_7073", trigger_count = 0 },
	-- cs播完创建电梯1
	{ config_id = 1007075, name = "TIME_AXIS_PASS_7075", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_7075", action = "action_EVENT_TIME_AXIS_PASS_7075", trigger_count = 0 },
	-- 真电梯创建后打开指引
	{ config_id = 1007076, name = "GADGET_CREATE_7076", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7076", action = "action_EVENT_GADGET_CREATE_7076" },
	-- 电梯2升起后再创建一个电梯3--循环
	{ config_id = 1007079, name = "PLATFORM_ARRIVAL_7079", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7079", action = "action_EVENT_PLATFORM_ARRIVAL_7079", trigger_count = 0 },
	-- 电梯3启动
	{ config_id = 1007080, name = "ENTER_REGION_7080", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7080", action = "action_EVENT_ENTER_REGION_7080", trigger_count = 0 },
	-- 电梯3上升后打开封印--循环
	{ config_id = 1007081, name = "PLATFORM_ARRIVAL_7081", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7081", action = "action_EVENT_PLATFORM_ARRIVAL_7081", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "discSuccess", value = 0, no_refresh = true },
	{ config_id = 2, name = "discSuccess4", value = 0, no_refresh = true },
	{ config_id = 3, name = "disc1", value = 0, no_refresh = true },
	{ config_id = 4, name = "disc2", value = 0, no_refresh = true },
	{ config_id = 5, name = "disc3", value = 0, no_refresh = true },
	{ config_id = 6, name = "disc4", value = 0, no_refresh = false },
	{ config_id = 7, name = "eleState", value = 0, no_refresh = true },
	{ config_id = 8, name = "eleState2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1007051, name = "GADGET_STATE_CHANGE_7051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7051", action = "action_EVENT_GADGET_STATE_CHANGE_7051" },
		{ config_id = 1007067, name = "PLATFORM_ARRIVAL_7067", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_7067", action = "action_EVENT_PLATFORM_ARRIVAL_7067" },
		{ config_id = 1007082, name = "TIME_AXIS_PASS_7082", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_7082", action = "action_EVENT_TIME_AXIS_PASS_7082" }
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
		gadgets = { 7002, 7003, 7004, 7005, 7006, 7011, 7012, 7013, 7014, 7049, 7074 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7008", "LUA_NOTIFY_7015", "LUA_NOTIFY_7016", "LUA_NOTIFY_7017", "LUA_NOTIFY_7018", "GADGET_STATE_CHANGE_7019", "GADGET_STATE_CHANGE_7020", "GADGET_STATE_CHANGE_7021", "GADGET_STATE_CHANGE_7022", "GADGET_STATE_CHANGE_7023", "GADGET_STATE_CHANGE_7024", "GADGET_STATE_CHANGE_7025", "GADGET_STATE_CHANGE_7026", "GADGET_STATE_CHANGE_7027", "GADGET_STATE_CHANGE_7028", "GADGET_STATE_CHANGE_7029", "GADGET_STATE_CHANGE_7030", "GADGET_CREATE_7031", "GADGET_CREATE_7032", "GADGET_CREATE_7033", "GADGET_CREATE_7034", "TIME_AXIS_PASS_7062", "PLATFORM_ARRIVAL_7065", "PLATFORM_ARRIVAL_7066", "TIME_AXIS_PASS_7075", "PLATFORM_ARRIVAL_7081" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 7069, 7070 },
		triggers = { "PLATFORM_ARRIVAL_7007", "PLATFORM_ARRIVAL_7009", "PLATFORM_ARRIVAL_7010", "PLATFORM_ARRIVAL_7035", "PLATFORM_ARRIVAL_7036", "PLATFORM_ARRIVAL_7038", "ENTER_REGION_7069", "ENTER_REGION_7070", "PLATFORM_ARRIVAL_7072", "PLATFORM_ARRIVAL_7073", "GADGET_CREATE_7076" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 7055, 7060, 7071, 7080 },
		triggers = { "ENTER_REGION_7055", "PLATFORM_ARRIVAL_7056", "ENTER_REGION_7060", "ENTER_REGION_7071", "ENTER_REGION_7080" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_ARRIVAL_7079" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7007(context, evt)
	-- 判断是gadgetid 为 7054的移动平台，是否到达了1 的点集中的 3 点
	
	if 7054 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7007(context, evt)
	-- 创建id为7078的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7078 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163007, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"disc4"为1
	if ScriptLib.GetGroupVariableValue(context, "disc4") ~= 1 then
			return false
	end
	
	-- 判断变量"disc3"为1
	if ScriptLib.GetGroupVariableValue(context, "disc3") ~= 1 then
			return false
	end
	
	-- 判断变量"disc2"为1
	if ScriptLib.GetGroupVariableValue(context, "disc2") ~= 1 then
			return false
	end
	
	-- 判断变量"disc1"为1
	if ScriptLib.GetGroupVariableValue(context, "disc1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163007, 2)
	
	-- 创建标识为"A"，时间节点为{4,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "A", {4,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7009(context, evt)
	-- 判断是gadgetid 为 7078的移动平台，是否到达了1 的点集中的 2 点
	
	if 7078 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7009(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7078) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7010(context, evt)
	-- 判断是gadgetid 为 7078的移动平台，是否到达了1 的点集中的 4 点
	
	if 7078 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7010(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7078) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_7015(context, evt)
	local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
	if 7011 ~= configId then
	        return false        
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_7015(context, evt)
	
	-- 将在groupid为 220163007 中的 configid为 7002 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,102,104,106,108,110,112,114,116,118,120,122}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 220163007, 7002) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 7002 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7002, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7002, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 7002 .."State没有成功")
	
	  return -1
	end
	
	
	-- 将本组内变量名为 "discSuccess1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess1", 0, 220163012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "disc1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "disc1", 0, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 7006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_7016(context, evt)
	local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
	if 7012 ~= configId then
	        return false        
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_7016(context, evt)
	
	-- 将在groupid为 220163007 中的 configid为 7003 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,102,104,106,108,110,112,114,116,118,120,122}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 220163007, 7003) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 7003 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7003, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7003, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 7003 .."State没有成功")
	
	  return -1
	end
	
	
	-- 将本组内变量名为 "discSuccess2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess2", 0, 220163004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "disc2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "disc2", 0, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_7017(context, evt)
	local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
	if 7013 ~= configId then
	        return false        
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_7017(context, evt)
	
	-- 将在groupid为 220163007 中的 configid为 7004 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 220163007, 7004) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 7004 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7004, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7004, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 7004 .."State没有成功")
	
	  return -1
	end
	
	
	-- 将本组内变量名为 "discSuccess3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess3", 0, 220163011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "disc3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "disc3", 0, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_7018(context, evt)
	local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
	if 7014 ~= configId then
	        return false        
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_7018(context, evt)
	
	-- 将在groupid为 220163007 中的 configid为 7005 的物件根据当前GadgetStateList以及index_Step设置GadgetState
	-- 
	local _gadgetStateList = {0,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124}
	local _key = 0
	
	if 0 == #_gadgetStateList then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : gadgetStateList为空")
	  return -1
	end
	
	for k,v in pairs(_gadgetStateList) do
	  if v == ScriptLib.GetGadgetStateByConfigId(context, 220163007, 7005) then
	    _key = k
	    break
	  end
	end
	
	if 0 == _key then
	     ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 物件" .. 7005 .."的当前State不在List中")
	     ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7005, _gadgetStateList[1])
	  return 0
	end
	
	_key = _key + 1
	_key = _key%#_gadgetStateList
	if 0 == _key then
	  _key = #_gadgetStateList
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220163007, 7005, _gadgetStateList[_key]) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置物件" .. 7005 .."State没有成功")
	
	  return -1
	end
	
	
	-- 将本组内变量名为 "discSuccess4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess4", 0, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163002, EntityType.GADGET, 2017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "disc4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "disc4", 0, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7019(context, evt)
	if 7002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7019(context, evt)
	-- 将本组内变量名为 "discSuccess1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess1", 1, 220163012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 7006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "eleFinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish1", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 7011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7020(context, evt)
	if 7002 ~= evt.param2 or 108 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7020(context, evt)
	-- 将本组内变量名为 "discSuccess1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess1", 1, 220163012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 7006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	ScriptLib.SetGadgetStateByConfigId(context, 7011, GadgetState.GearStop)
	
	-- 将本组内变量名为 "eleFinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish1", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7021(context, evt)
	if 7002 ~= evt.param2 or 116 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7021(context, evt)
	-- 将本组内变量名为 "discSuccess1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess1", 1, 220163012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 7006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7011, GadgetState.GearStop)
	
	-- 将本组内变量名为 "eleFinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish1", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7022(context, evt)
	if 7002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7022(context, evt)
	-- 将本组内变量名为 "discSuccess2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess2", 1, 220163004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "eleFinish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish2", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStop)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7023(context, evt)
	if 7003 ~= evt.param2 or 108 ~= evt.param1 then
		return false
	end
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7023(context, evt)
	-- 将本组内变量名为 "discSuccess2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess2", 1, 220163004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "eleFinish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish2", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStop)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7024(context, evt)
	if 7003 ~= evt.param2 or 116 ~= evt.param1 then
		return false
	end
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7024(context, evt)
	-- 将本组内变量名为 "discSuccess2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess2", 1, 220163004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "eleFinish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish2", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStop)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7025(context, evt)
	if 7004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7025(context, evt)
	-- 将本组内变量名为 "discSuccess3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess3", 1, 220163011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7013, GadgetState.GearStop)
	
	-- 将本组内变量名为 "eleFinish3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish3", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7026(context, evt)
	if 7004 ~= evt.param2 or 108 ~= evt.param1 then
		return false
	end
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7026(context, evt)
	-- 将本组内变量名为 "discSuccess3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess3", 1, 220163011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7013, GadgetState.GearStop)
	
	-- 将本组内变量名为 "eleFinish3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish3", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7027(context, evt)
	if 7004 ~= evt.param2 or 116 ~= evt.param1 then
		return false
	end
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7027(context, evt)
	-- 将本组内变量名为 "discSuccess3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess3", 1, 220163011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7013, GadgetState.GearStop)
	
	-- 将本组内变量名为 "eleFinish3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish3", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7028(context, evt)
	if 7005 ~= evt.param2 or 0 ~= evt.param1 then
		return false
	end
	
	
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7028(context, evt)
	-- 将本组内变量名为 "discSuccess4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess4", 1, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "eleFinish4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish4", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 7014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7029(context, evt)
	if 7005 ~= evt.param2 or 108 ~= evt.param1 then
		return false
	end
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7029(context, evt)
	-- 将本组内变量名为 "discSuccess4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess4", 1, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7014, GadgetState.GearStop)
	
	-- 将本组内变量名为 "eleFinish4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish4", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7030(context, evt)
	if 7005 ~= evt.param2 or 116 ~= evt.param1 then
		return false
	end
	
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7030(context, evt)
	-- 将本组内变量名为 "discSuccess4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "discSuccess4", 1, 220163007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "disc4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "disc4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 7014, GadgetState.GearStop)
	
	-- 将本组内变量名为 "eleFinish4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "eleFinish4", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7031(context, evt)
	if 7002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7031(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.ChestRock
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, 104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7032(context, evt)
	if 7003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7032(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.ChestRock
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7003, 102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7033(context, evt)
	if 7004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7033(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.ChestRock
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7004, 105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7034(context, evt)
	if 7005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7034(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.ChestRock
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7005, 110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7035(context, evt)
	-- 判断是gadgetid 为 7054的移动平台，是否到达了1 的点集中的 2 点
	
	if 7054 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7035(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7036(context, evt)
	-- 判断是gadgetid 为 7054的移动平台，是否到达了1 的点集中的 4 点
	
	if 7054 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7036(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7038(context, evt)
	-- 判断是gadgetid 为 7001的移动平台，是否到达了1 的点集中的 4 点
	
	if 7001 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7038(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7055(context, evt)
	if evt.param1 ~= 7055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"eleState2"为1
	if ScriptLib.GetGroupVariableValue(context, "eleState2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7055(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7054, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 7049 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7049, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "eleState2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7056(context, evt)
	-- 判断是gadgetid 为 7054的移动平台，是否到达了1 的点集中的 3 点
	
	if 7054 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7056(context, evt)
	-- 将本组内变量名为 "eleState" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7060(context, evt)
	if evt.param1 ~= 7060 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"eleState2"为2
	if ScriptLib.GetGroupVariableValue(context, "eleState2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7060(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7054, 1, {3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "eleState2" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_7062(context, evt)
	if "A" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_7062(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163007, EntityType.GADGET, 7074 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知场景上的所有玩家播放名字为201630001 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 201630001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"elevator"，时间节点为{1,10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "elevator", {1,10}, false)
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163007, EntityType.GADGET, 7049 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7065(context, evt)
	-- 判断是gadgetid 为 7054的移动平台，是否到达了1 的点集中的 3 点
	
	if 7054 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7065(context, evt)
	-- 将configid为 7049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "eleState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7066(context, evt)
	-- 判断是gadgetid 为 7001的移动平台，是否到达了1 的点集中的 3 点
	
	if 7001 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7066(context, evt)
	-- 创建id为7049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为7054的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7054 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 7049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "eleState2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7069(context, evt)
	if evt.param1 ~= 7069 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"eleState"为2
	if ScriptLib.GetGroupVariableValue(context, "eleState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7069(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7001, 1, {3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "eleState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7070(context, evt)
	if evt.param1 ~= 7070 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7070(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163007, EntityType.GADGET, 7037 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7071(context, evt)
	if evt.param1 ~= 7071 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"eleState"为1
	if ScriptLib.GetGroupVariableValue(context, "eleState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7071(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7078, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 7049 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7049, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "eleState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7072(context, evt)
	-- 判断是gadgetid 为 7054的移动平台，是否到达了1 的点集中的 3 点
	
	if 7054 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7072(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163007, EntityType.GADGET, 7001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7073(context, evt)
	-- 判断是gadgetid 为 7078的移动平台，是否到达了1 的点集中的 3 点
	
	if 7078 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7073(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163007, EntityType.GADGET, 7054 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为7054的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7054 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_7075(context, evt)
	if "elevator" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_7075(context, evt)
	-- 创建id为7001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7076(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7076(context, evt)
	-- 创建id为7037的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7037 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "eleState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7079(context, evt)
	-- 判断是gadgetid 为 7054的移动平台，是否到达了1 的点集中的 3 点
	
	if 7054 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7079(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220163007, EntityType.GADGET, 7078 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为7078的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7078 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7080(context, evt)
	if evt.param1 ~= 7080 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"eleState"为2
	if ScriptLib.GetGroupVariableValue(context, "eleState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7080(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 7078, 1, {3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "eleState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_7081(context, evt)
	-- 判断是gadgetid 为 7078的移动平台，是否到达了1 的点集中的 3 点
	
	if 7078 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_7081(context, evt)
	-- 将configid为 7049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "eleState2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "eleState2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end