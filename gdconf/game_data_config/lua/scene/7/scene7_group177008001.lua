-- 基础信息
local base_info = {
	group_id = 177008001
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
	{ config_id = 1002, gadget_id = 70211161, pos = { x = -311.746, y = 240.632, z = 182.844 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 1003, gadget_id = 70330177, pos = { x = -311.948, y = 237.851, z = 182.687 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, start_route = false, area_id = 210 },
	{ config_id = 1004, gadget_id = 70330144, pos = { x = -270.086, y = 221.165, z = 292.028 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1005, gadget_id = 70330144, pos = { x = -273.123, y = 219.804, z = 286.669 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1006, gadget_id = 70330144, pos = { x = -275.300, y = 215.791, z = 272.542 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1011, gadget_id = 70330144, pos = { x = -264.845, y = 215.791, z = 266.727 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 1019, gadget_id = 70330144, pos = { x = -270.918, y = 215.791, z = 256.120 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 1020, gadget_id = 70330144, pos = { x = -287.425, y = 237.572, z = 226.485 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 1022, gadget_id = 70330144, pos = { x = -289.670, y = 237.252, z = 204.126 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 1026, gadget_id = 70330144, pos = { x = -276.345, y = 218.655, z = 280.913 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1031, gadget_id = 70690011, pos = { x = -279.207, y = 217.463, z = 242.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1035, gadget_id = 70330144, pos = { x = -280.096, y = 217.089, z = 275.592 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1044, gadget_id = 70710126, pos = { x = -277.224, y = 218.571, z = 245.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1049, gadget_id = 70330144, pos = { x = -283.343, y = 216.051, z = 270.371 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1050, gadget_id = 70330144, pos = { x = -286.507, y = 216.051, z = 264.899 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1051, gadget_id = 70330144, pos = { x = -289.854, y = 216.051, z = 259.504 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1052, gadget_id = 70330144, pos = { x = -270.108, y = 215.791, z = 269.677 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1054, gadget_id = 70330144, pos = { x = -267.947, y = 215.791, z = 261.476 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1055, gadget_id = 70330144, pos = { x = -274.123, y = 215.791, z = 250.627 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1056, gadget_id = 70330177, pos = { x = -277.317, y = 215.791, z = 245.036 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1057, gadget_id = 70330177, pos = { x = -282.056, y = 239.041, z = 236.769 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1058, gadget_id = 70330144, pos = { x = -284.729, y = 238.341, z = 231.630 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1059, gadget_id = 70330144, pos = { x = -290.093, y = 237.252, z = 221.437 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1060, gadget_id = 70330144, pos = { x = -292.791, y = 237.252, z = 216.227 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1061, gadget_id = 70330144, pos = { x = -299.142, y = 237.252, z = 214.251 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1062, gadget_id = 70330144, pos = { x = -305.029, y = 237.252, z = 212.596 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1063, gadget_id = 70330144, pos = { x = -310.889, y = 237.252, z = 210.925 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1064, gadget_id = 70330144, pos = { x = -316.774, y = 237.252, z = 209.483 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1065, gadget_id = 70330144, pos = { x = -291.297, y = 237.252, z = 209.814 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1066, gadget_id = 70330144, pos = { x = -288.080, y = 237.252, z = 198.544 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1067, gadget_id = 70330144, pos = { x = -286.430, y = 237.252, z = 192.873 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 1068, gadget_id = 70330144, pos = { x = -306.397, y = 238.780, z = 184.475 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 210 }
}

-- 区域
regions = {
	-- 加载下个路段
	{ config_id = 1007, shape = RegionShape.SPHERE, radius = 4, pos = { x = -272.944, y = 224.238, z = 288.345 }, area_id = 210 },
	-- 加载路段
	{ config_id = 1008, shape = RegionShape.SPHERE, radius = 4, pos = { x = -270.621, y = 220.494, z = 271.222 }, area_id = 210 },
	-- 加载路段
	{ config_id = 1009, shape = RegionShape.SPHERE, radius = 4, pos = { x = -284.696, y = 243.896, z = 227.838 }, area_id = 210 },
	-- 加载路段
	{ config_id = 1010, shape = RegionShape.SPHERE, radius = 4, pos = { x = -288.128, y = 241.973, z = 202.087 }, area_id = 210 },
	-- 卸载本路段
	{ config_id = 1017, shape = RegionShape.SPHERE, radius = 4, pos = { x = -280.026, y = 220.581, z = 273.027 }, area_id = 210 },
	-- 卸载本路段
	{ config_id = 1018, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = -268.347, y = 218.571, z = 260.783 }, area_id = 210 },
	-- 卸载本路段
	{ config_id = 1021, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = -293.162, y = 240.033, z = 215.533 }, area_id = 210 },
	-- 卸载本路段
	{ config_id = 1024, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = -285.666, y = 241.168, z = 190.569 }, area_id = 210 },
	-- 卸载中途点，加载第二层路径
	{ config_id = 1042, shape = RegionShape.SPHERE, radius = 4, pos = { x = -277.128, y = 219.817, z = 244.673 }, area_id = 210 },
	-- 准备卸载第二段路径
	{ config_id = 1043, shape = RegionShape.SPHERE, radius = 7, pos = { x = -278.030, y = 237.684, z = 243.445 }, area_id = 210 },
	{ config_id = 1048, shape = RegionShape.CUBIC, size = { x = 100.000, y = 5.000, z = 100.000 }, pos = { x = -307.876, y = 200.729, z = 255.099 }, area_id = 210 },
	-- 卸载本路段
	{ config_id = 1069, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = -276.937, y = 222.536, z = 244.376 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 加载下个路段
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007", trigger_count = 0 },
	-- 加载路段
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1008", action = "action_EVENT_ENTER_REGION_1008", trigger_count = 0 },
	-- 加载路段
	{ config_id = 1001009, name = "ENTER_REGION_1009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1009", action = "action_EVENT_ENTER_REGION_1009", trigger_count = 0 },
	-- 加载路段
	{ config_id = 1001010, name = "ENTER_REGION_1010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1010", action = "action_EVENT_ENTER_REGION_1010", trigger_count = 0 },
	-- 刚开挑战时看中途点
	{ config_id = 1001012, name = "GADGET_CREATE_1012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1012", action = "action_EVENT_GADGET_CREATE_1012", trigger_count = 0 },
	-- 卸载第二段路径
	{ config_id = 1001014, name = "TIME_AXIS_PASS_1014", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1014", trigger_count = 0 },
	-- 卸载本路段
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017", trigger_count = 0 },
	-- 卸载本路段
	{ config_id = 1001018, name = "ENTER_REGION_1018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1018", action = "action_EVENT_ENTER_REGION_1018", trigger_count = 0 },
	-- 卸载本路段
	{ config_id = 1001021, name = "ENTER_REGION_1021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1021", action = "action_EVENT_ENTER_REGION_1021", trigger_count = 0 },
	-- 卸载本路段
	{ config_id = 1001024, name = "ENTER_REGION_1024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1024", action = "action_EVENT_ENTER_REGION_1024", trigger_count = 0 },
	{ config_id = 1001025, name = "GADGET_STATE_CHANGE_1025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1025", action = "action_EVENT_GADGET_STATE_CHANGE_1025", trigger_count = 0 },
	{ config_id = 1001041, name = "GADGET_CREATE_1041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1041", action = "action_EVENT_GADGET_CREATE_1041", trigger_count = 0 },
	-- 卸载中途点，加载第二层路径
	{ config_id = 1001042, name = "ENTER_REGION_1042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1042", action = "action_EVENT_ENTER_REGION_1042", trigger_count = 0 },
	-- 准备卸载第二段路径
	{ config_id = 1001043, name = "ENTER_REGION_1043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1043", action = "action_EVENT_ENTER_REGION_1043", trigger_count = 0 },
	{ config_id = 1001045, name = "GADGET_STATE_CHANGE_1045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1045", action = "", trigger_count = 0, tag = "123" },
	{ config_id = 1001048, name = "ENTER_REGION_1048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1048", action = "action_EVENT_ENTER_REGION_1048", trigger_count = 0 },
	-- 卸载本路段
	{ config_id = 1001069, name = "ENTER_REGION_1069", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1069", action = "action_EVENT_ENTER_REGION_1069", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1001, gadget_id = 70330139, pos = { x = -264.596, y = 224.302, z = 296.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction2, area_id = 210 },
		{ config_id = 1023, gadget_id = 70360001, pos = { x = -264.596, y = 224.302, z = 296.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
	},
	triggers = {
		{ config_id = 1001013, name = "TIME_AXIS_PASS_1013", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1013", trigger_count = 0 },
		{ config_id = 1001015, name = "GADGET_STATE_CHANGE_1015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1015", action = "action_EVENT_GADGET_STATE_CHANGE_1015", trigger_count = 0 },
		{ config_id = 1001016, name = "SELECT_OPTION_1016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1016", action = "action_EVENT_SELECT_OPTION_1016", trigger_count = 0 },
		{ config_id = 1001046, name = "CHALLENGE_SUCCESS_1046", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1046" },
		{ config_id = 1001047, name = "CHALLENGE_FAIL_1047", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1047", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 最终目标点宝箱,
		monsters = { },
		gadgets = { 1002, 1003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1045" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 中途目标点,
		monsters = { },
		gadgets = { 1031, 1044, 1056, 1057 },
		regions = { 1042, 1043 },
		triggers = { "TIME_AXIS_PASS_1014", "ENTER_REGION_1042", "ENTER_REGION_1043" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 挑战成功后要卸载的坠落回传region,
		monsters = { },
		gadgets = { },
		regions = { 1048 },
		triggers = { "ENTER_REGION_1048" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第1段,
		monsters = { },
		gadgets = { 1004, 1005, 1026 },
		regions = { 1007, 1017 },
		triggers = { "ENTER_REGION_1007", "ENTER_REGION_1017" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第2段,
		monsters = { },
		gadgets = { 1006, 1011, 1035, 1049, 1050, 1051, 1052 },
		regions = { 1008, 1018 },
		triggers = { "ENTER_REGION_1008", "ENTER_REGION_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 第3段,
		monsters = { },
		gadgets = { 1019, 1054, 1055 },
		regions = { 1069 },
		triggers = { "ENTER_REGION_1069" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 第二层第一段,
		monsters = { },
		gadgets = { 1020, 1058, 1059 },
		regions = { 1009, 1021 },
		triggers = { "ENTER_REGION_1009", "ENTER_REGION_1021" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 第二层第2段,
		monsters = { },
		gadgets = { 1022, 1060, 1061, 1062, 1063, 1064, 1065, 1066 },
		regions = { 1010, 1024 },
		triggers = { "ENTER_REGION_1010", "ENTER_REGION_1024" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 2-3,
		monsters = { },
		gadgets = { 1067, 1068 },
		regions = { },
		triggers = { "GADGET_CREATE_1041" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1008(context, evt)
	if evt.param1 ~= 1008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1008(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008001, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1009(context, evt)
	if evt.param1 ~= 1009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1009(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008001, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1010(context, evt)
	if evt.param1 ~= 1010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1010(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008001, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1012(context, evt)
	if 1044 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1012(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	-- 触发镜头注目，注目位置为坐标{x=-274, y=216, z=245}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-274, y=216, z=245}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1014(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008001, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008001, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1018(context, evt)
	if evt.param1 ~= 1018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1018(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1021(context, evt)
	if evt.param1 ~= 1021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1021(context, evt)
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008001, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1024(context, evt)
	if evt.param1 ~= 1024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1024(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008001, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1025(context, evt)
	if 1068 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1068, 700800009, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1041(context, evt)
	if 1068 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1041(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1068, 700800009, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1042(context, evt)
	if evt.param1 ~= 1042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1042(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 177008001, EntityType.GADGET, 1044 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008001, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008001, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008001, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1043(context, evt)
	if evt.param1 ~= 1043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1043(context, evt)
	-- 创建标识为"T2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1045(context, evt)
	-- 检测config_id为1002的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 1002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1048(context, evt)
	if evt.param1 ~= 1048 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1048(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=-267, y=225, z=300}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=180, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1069(context, evt)
	if evt.param1 ~= 1069 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1069(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008001, 7)
	
	return 0
end