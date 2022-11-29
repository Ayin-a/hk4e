-- 基础信息
local base_info = {
	group_id = 144001001
}

-- Trigger变量
local defs = {
	gadget_up = 1003,
	gadget_down = 1002,
	gadget_water = 1001,
	point_array = 400100019,
	point_list = {3,2,1},
	gadget_list = {1008,1007,1006},
	point_xz = {x=215.4799,z=156.5524},
	point_y = {192.25,193.75,195.25},
	start_level = 3,
	is_abnormal = 0,
	abnormal_height = 195.25,
	audio_list = {"YinLvDao_Tone_05_False_A","YinLvDao_Tone_05_True","YinLvDao_Tone_05_False_B"},
	audio_xyz = {x=215.4799,y=195.25,z=156.5524}
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
	{ config_id = 1001, gadget_id = 70380028, pos = { x = 214.986, y = 195.250, z = 154.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, start_route = false, is_use_point_array = true, area_id = 102 },
	-- 使水面降低的按钮
	{ config_id = 1002, gadget_id = 70950097, pos = { x = 216.377, y = 197.308, z = 163.828 }, rot = { x = 7.264, y = 4.677, z = 350.739 }, level = 1, persistent = true, area_id = 102 },
	-- 使水面抬高的按钮
	{ config_id = 1003, gadget_id = 70950097, pos = { x = 214.294, y = 197.140, z = 163.860 }, rot = { x = 349.973, y = 176.066, z = 358.592 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-高
	{ config_id = 1006, gadget_id = 70230042, pos = { x = 214.797, y = 195.250, z = 152.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-中
	{ config_id = 1007, gadget_id = 70230042, pos = { x = 214.797, y = 193.750, z = 152.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-低
	{ config_id = 1008, gadget_id = 70230042, pos = { x = 214.797, y = 192.250, z = 152.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1001063, name = "GADGET_STATE_CHANGE_1063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1063", action = "action_EVENT_GADGET_STATE_CHANGE_1063", trigger_count = 0 },
		{ config_id = 1001078, name = "GADGET_STATE_CHANGE_1078", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1078", action = "action_EVENT_GADGET_STATE_CHANGE_1078", trigger_count = 0 },
		{ config_id = 1001081, name = "GADGET_STATE_CHANGE_1081", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1081", action = "action_EVENT_GADGET_STATE_CHANGE_1081", trigger_count = 0 },
		{ config_id = 1001082, name = "GADGET_STATE_CHANGE_1082", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1082", action = "action_EVENT_GADGET_STATE_CHANGE_1082", trigger_count = 0 },
		{ config_id = 1001083, name = "PLATFORM_REACH_POINT_1083", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1083", action = "action_EVENT_PLATFORM_REACH_POINT_1083", trigger_count = 0 },
		{ config_id = 1001086, name = "PLATFORM_REACH_POINT_1086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1086", action = "action_EVENT_PLATFORM_REACH_POINT_1086", trigger_count = 0 },
		{ config_id = 1001087, name = "PLATFORM_REACH_POINT_1087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1087", action = "action_EVENT_PLATFORM_REACH_POINT_1087", trigger_count = 0 },
		{ config_id = 1001099, name = "GADGET_STATE_CHANGE_1099", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1099", action = "action_EVENT_GADGET_STATE_CHANGE_1099", trigger_count = 0 },
		{ config_id = 1001100, name = "GADGET_STATE_CHANGE_1100", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1100", action = "action_EVENT_GADGET_STATE_CHANGE_1100", trigger_count = 0 },
		{ config_id = 1001102, name = "GADGET_STATE_CHANGE_1102", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1102", action = "action_EVENT_GADGET_STATE_CHANGE_1102", trigger_count = 0 },
		{ config_id = 1001106, name = "GADGET_STATE_CHANGE_1106", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1106", action = "action_EVENT_GADGET_STATE_CHANGE_1106", trigger_count = 0 },
		{ config_id = 1001107, name = "GADGET_STATE_CHANGE_1107", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1107", action = "action_EVENT_GADGET_STATE_CHANGE_1107", trigger_count = 0 },
		{ config_id = 1001108, name = "PLATFORM_REACH_POINT_1108", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1108", action = "action_EVENT_PLATFORM_REACH_POINT_1108", trigger_count = 0 },
		{ config_id = 1001109, name = "PLATFORM_REACH_POINT_1109", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1109", action = "action_EVENT_PLATFORM_REACH_POINT_1109", trigger_count = 0 },
		{ config_id = 1001114, name = "PLATFORM_REACH_POINT_1114", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1114", action = "action_EVENT_PLATFORM_REACH_POINT_1114", trigger_count = 0 },
		{ config_id = 1001115, name = "PLATFORM_REACH_POINT_1115", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1115", action = "action_EVENT_PLATFORM_REACH_POINT_1115", trigger_count = 0 },
		{ config_id = 1001079, name = "PLATFORM_REACH_POINT_1079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1079", action = "action_EVENT_PLATFORM_REACH_POINT_1079", trigger_count = 0 },
		{ config_id = 1001080, name = "PLATFORM_REACH_POINT_1080", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1080", action = "action_EVENT_PLATFORM_REACH_POINT_1080", trigger_count = 0 },
		{ config_id = 1001084, name = "PLATFORM_REACH_POINT_1084", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1084", action = "action_EVENT_PLATFORM_REACH_POINT_1084", trigger_count = 0 },
		{ config_id = 1001085, name = "PLATFORM_REACH_POINT_1085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1085", action = "action_EVENT_PLATFORM_REACH_POINT_1085", trigger_count = 0 },
		{ config_id = 1001116, name = "PLATFORM_REACH_POINT_1116", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1116", action = "action_EVENT_PLATFORM_REACH_POINT_1116", trigger_count = 0 },
		{ config_id = 1001117, name = "PLATFORM_REACH_POINT_1117", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1117", action = "action_EVENT_PLATFORM_REACH_POINT_1117", trigger_count = 0 },
		{ config_id = 1001118, name = "PLATFORM_REACH_POINT_1118", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1118", action = "action_EVENT_PLATFORM_REACH_POINT_1118", trigger_count = 0 },
		{ config_id = 1001088, name = "GADGET_STATE_CHANGE_1088", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1088", action = "action_EVENT_GADGET_STATE_CHANGE_1088", trigger_count = 0 },
		{ config_id = 1001089, name = "PLATFORM_REACH_POINT_1089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1089", action = "action_EVENT_PLATFORM_REACH_POINT_1089", trigger_count = 0 },
		{ config_id = 1001090, name = "PLATFORM_REACH_POINT_1090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1090", action = "action_EVENT_PLATFORM_REACH_POINT_1090", trigger_count = 0 },
		{ config_id = 1001091, name = "GROUP_LOAD_1091", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1091", action = "action_EVENT_GROUP_LOAD_1091", trigger_count = 0 },
		{ config_id = 1001004, name = "GROUP_LOAD_1004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1004", trigger_count = 0 },
		{ config_id = 1001005, name = "GROUP_LOAD_1005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1005", action = "action_EVENT_GROUP_LOAD_1005", trigger_count = 0 },
		{ config_id = 1001009, name = "GROUP_LOAD_1009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1009", action = "action_EVENT_GROUP_LOAD_1009", trigger_count = 0 },
		{ config_id = 1001010, name = "GADGET_STATE_CHANGE_1010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1010", action = "action_EVENT_GADGET_STATE_CHANGE_1010", trigger_count = 0 },
		{ config_id = 1001011, name = "GADGET_STATE_CHANGE_1011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1011", action = "action_EVENT_GADGET_STATE_CHANGE_1011", trigger_count = 0 },
		{ config_id = 1001012, name = "GADGET_STATE_CHANGE_1012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1012", action = "action_EVENT_GADGET_STATE_CHANGE_1012", trigger_count = 0 },
		{ config_id = 1001013, name = "GADGET_STATE_CHANGE_1013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1013", action = "action_EVENT_GADGET_STATE_CHANGE_1013", trigger_count = 0 },
		{ config_id = 1001014, name = "GROUP_LOAD_1014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1014", action = "action_EVENT_GROUP_LOAD_1014", trigger_count = 0 },
		{ config_id = 1001015, name = "GROUP_LOAD_1015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1015", action = "action_EVENT_GROUP_LOAD_1015", trigger_count = 0 },
		{ config_id = 1001016, name = "GROUP_LOAD_1016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1016", action = "action_EVENT_GROUP_LOAD_1016", trigger_count = 0 },
		{ config_id = 1001017, name = "GROUP_LOAD_1017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1017", action = "action_EVENT_GROUP_LOAD_1017", trigger_count = 0 },
		{ config_id = 1001018, name = "GROUP_LOAD_1018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1018", action = "action_EVENT_GROUP_LOAD_1018", trigger_count = 0 },
		{ config_id = 1001019, name = "VARIABLE_CHANGE_1019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1019", action = "action_EVENT_VARIABLE_CHANGE_1019" }
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
		gadgets = { 1002, 1003, 1006, 1007, 1008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 踩踏按钮后启动水面,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 水面分别到达每一个点时的行为,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 进入和离开按钮时会改变监听上升下降的变量,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 水面每次到达路点时检测是否继续上升/下降,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [处理与前置Group的关系],
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

require "V1_6/TuneStone"