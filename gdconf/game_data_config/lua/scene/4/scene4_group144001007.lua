-- 基础信息
local base_info = {
	group_id = 144001007
}

-- Trigger变量
local defs = {
	gadget_up = 7003,
	gadget_down = 7002,
	gadget_water = 7001,
	point_array = 400100018,
	point_list = {3,2,1},
	gadget_list = {7006,7005,7004},
	point_xz = {x=359.9709,z=421.7593},
	point_y = {179.6873,181.0356,182.25},
	start_level = 1,
	is_abnormal = 0,
	abnormal_height = 179.6873,
	audio_list = {"YinLvDao_Tone_04_False_A","YinLvDao_Tone_04_True","YinLvDao_Tone_04_False_B"},
	audio_xyz = {x=359.9709,y=179.6873,z=421.7593}
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
	{ config_id = 7001, gadget_id = 70380028, pos = { x = 359.971, y = 179.687, z = 421.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, start_route = false, is_use_point_array = true, area_id = 102 },
	-- 使水面降低的按钮
	{ config_id = 7002, gadget_id = 70950097, pos = { x = 352.699, y = 183.411, z = 419.961 }, rot = { x = 347.056, y = 239.421, z = 355.539 }, level = 1, persistent = true, area_id = 102 },
	-- 使水面抬高的按钮
	{ config_id = 7003, gadget_id = 70950097, pos = { x = 354.033, y = 183.626, z = 417.205 }, rot = { x = 11.493, y = 52.039, z = 355.126 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-高
	{ config_id = 7004, gadget_id = 70230042, pos = { x = 359.901, y = 182.250, z = 421.260 }, rot = { x = 0.000, y = 253.390, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-中
	{ config_id = 7005, gadget_id = 70230042, pos = { x = 359.267, y = 181.036, z = 421.148 }, rot = { x = 0.000, y = 218.975, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-低
	{ config_id = 7006, gadget_id = 70230042, pos = { x = 359.887, y = 179.687, z = 421.260 }, rot = { x = 0.000, y = 268.103, z = 0.000 }, level = 1, persistent = true, area_id = 102 }
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
		{ config_id = 1007007, name = "GADGET_STATE_CHANGE_7007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7007", action = "action_EVENT_GADGET_STATE_CHANGE_7007", trigger_count = 0 },
		{ config_id = 1007008, name = "GADGET_STATE_CHANGE_7008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7008", action = "action_EVENT_GADGET_STATE_CHANGE_7008", trigger_count = 0 },
		{ config_id = 1007009, name = "GADGET_STATE_CHANGE_7009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7009", action = "action_EVENT_GADGET_STATE_CHANGE_7009", trigger_count = 0 },
		{ config_id = 1007010, name = "GADGET_STATE_CHANGE_7010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7010", action = "action_EVENT_GADGET_STATE_CHANGE_7010", trigger_count = 0 },
		{ config_id = 1007011, name = "PLATFORM_REACH_POINT_7011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7011", action = "action_EVENT_PLATFORM_REACH_POINT_7011", trigger_count = 0 },
		{ config_id = 1007012, name = "PLATFORM_REACH_POINT_7012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7012", action = "action_EVENT_PLATFORM_REACH_POINT_7012", trigger_count = 0 },
		{ config_id = 1007013, name = "PLATFORM_REACH_POINT_7013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7013", action = "action_EVENT_PLATFORM_REACH_POINT_7013", trigger_count = 0 },
		{ config_id = 1007014, name = "GADGET_STATE_CHANGE_7014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7014", action = "action_EVENT_GADGET_STATE_CHANGE_7014", trigger_count = 0 },
		{ config_id = 1007015, name = "GADGET_STATE_CHANGE_7015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7015", action = "action_EVENT_GADGET_STATE_CHANGE_7015", trigger_count = 0 },
		{ config_id = 1007016, name = "GADGET_STATE_CHANGE_7016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7016", action = "action_EVENT_GADGET_STATE_CHANGE_7016", trigger_count = 0 },
		{ config_id = 1007017, name = "GADGET_STATE_CHANGE_7017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7017", action = "action_EVENT_GADGET_STATE_CHANGE_7017", trigger_count = 0 },
		{ config_id = 1007018, name = "GADGET_STATE_CHANGE_7018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7018", action = "action_EVENT_GADGET_STATE_CHANGE_7018", trigger_count = 0 },
		{ config_id = 1007019, name = "PLATFORM_REACH_POINT_7019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7019", action = "action_EVENT_PLATFORM_REACH_POINT_7019", trigger_count = 0 },
		{ config_id = 1007020, name = "PLATFORM_REACH_POINT_7020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7020", action = "action_EVENT_PLATFORM_REACH_POINT_7020", trigger_count = 0 },
		{ config_id = 1007021, name = "PLATFORM_REACH_POINT_7021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7021", action = "action_EVENT_PLATFORM_REACH_POINT_7021", trigger_count = 0 },
		{ config_id = 1007022, name = "PLATFORM_REACH_POINT_7022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7022", action = "action_EVENT_PLATFORM_REACH_POINT_7022", trigger_count = 0 },
		{ config_id = 1007023, name = "PLATFORM_REACH_POINT_7023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7023", action = "action_EVENT_PLATFORM_REACH_POINT_7023", trigger_count = 0 },
		{ config_id = 1007024, name = "PLATFORM_REACH_POINT_7024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7024", action = "action_EVENT_PLATFORM_REACH_POINT_7024", trigger_count = 0 },
		{ config_id = 1007025, name = "PLATFORM_REACH_POINT_7025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7025", action = "action_EVENT_PLATFORM_REACH_POINT_7025", trigger_count = 0 },
		{ config_id = 1007026, name = "PLATFORM_REACH_POINT_7026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7026", action = "action_EVENT_PLATFORM_REACH_POINT_7026", trigger_count = 0 },
		{ config_id = 1007027, name = "PLATFORM_REACH_POINT_7027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7027", action = "action_EVENT_PLATFORM_REACH_POINT_7027", trigger_count = 0 },
		{ config_id = 1007028, name = "PLATFORM_REACH_POINT_7028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7028", action = "action_EVENT_PLATFORM_REACH_POINT_7028", trigger_count = 0 },
		{ config_id = 1007029, name = "PLATFORM_REACH_POINT_7029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7029", action = "action_EVENT_PLATFORM_REACH_POINT_7029", trigger_count = 0 },
		{ config_id = 1007030, name = "GADGET_STATE_CHANGE_7030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7030", action = "action_EVENT_GADGET_STATE_CHANGE_7030", trigger_count = 0 },
		{ config_id = 1007031, name = "PLATFORM_REACH_POINT_7031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7031", action = "action_EVENT_PLATFORM_REACH_POINT_7031", trigger_count = 0 },
		{ config_id = 1007032, name = "PLATFORM_REACH_POINT_7032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_7032", action = "action_EVENT_PLATFORM_REACH_POINT_7032", trigger_count = 0 },
		{ config_id = 1007033, name = "GROUP_LOAD_7033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7033", action = "action_EVENT_GROUP_LOAD_7033", trigger_count = 0 },
		{ config_id = 1007034, name = "GROUP_LOAD_7034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_7034", trigger_count = 0 },
		{ config_id = 1007035, name = "GROUP_LOAD_7035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7035", action = "action_EVENT_GROUP_LOAD_7035", trigger_count = 0 },
		{ config_id = 1007036, name = "GROUP_LOAD_7036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7036", action = "action_EVENT_GROUP_LOAD_7036", trigger_count = 0 },
		{ config_id = 1007037, name = "GADGET_STATE_CHANGE_7037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7037", action = "action_EVENT_GADGET_STATE_CHANGE_7037", trigger_count = 0 },
		{ config_id = 1007038, name = "GADGET_STATE_CHANGE_7038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7038", action = "action_EVENT_GADGET_STATE_CHANGE_7038", trigger_count = 0 },
		{ config_id = 1007039, name = "GADGET_STATE_CHANGE_7039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7039", action = "action_EVENT_GADGET_STATE_CHANGE_7039", trigger_count = 0 },
		{ config_id = 1007040, name = "GADGET_STATE_CHANGE_7040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7040", action = "action_EVENT_GADGET_STATE_CHANGE_7040", trigger_count = 0 },
		{ config_id = 1007041, name = "GROUP_LOAD_7041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7041", action = "action_EVENT_GROUP_LOAD_7041", trigger_count = 0 },
		{ config_id = 1007042, name = "GROUP_LOAD_7042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7042", action = "action_EVENT_GROUP_LOAD_7042", trigger_count = 0 },
		{ config_id = 1007043, name = "GROUP_LOAD_7043", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7043", action = "action_EVENT_GROUP_LOAD_7043", trigger_count = 0 }
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
		gadgets = { 7002, 7003, 7004, 7005, 7006 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V1_6/TuneStone"