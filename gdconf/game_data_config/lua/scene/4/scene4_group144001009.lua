-- 基础信息
local base_info = {
	group_id = 144001009
}

-- Trigger变量
local defs = {
	gadget_up = 9003,
	gadget_down = 9002,
	gadget_water = 9001,
	point_array = 400100017,
	point_list = {3,2,1},
	gadget_list = {9006,9005,9004},
	point_xz = {x=186.5551,z=308.0727},
	point_y = {209.25,210.75,211.9718},
	start_level = 3,
	is_abnormal = 0,
	abnormal_height = 211.9718,
	audio_list = {"YinLvDao_Tone_01_True","YinLvDao_Tone_01_False_A","YinLvDao_Tone_01_False_B"},
	audio_xyz = {x=186.5551,y=209.25,z=308.0727}
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
	{ config_id = 9001, gadget_id = 70380028, pos = { x = 186.555, y = 211.972, z = 308.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, start_route = false, is_use_point_array = true, area_id = 102 },
	-- 使水面降低的按钮
	{ config_id = 9002, gadget_id = 70950097, pos = { x = 192.340, y = 216.603, z = 300.142 }, rot = { x = 14.593, y = 120.453, z = 356.945 }, level = 1, persistent = true, area_id = 102 },
	-- 使水面抬高的按钮
	{ config_id = 9003, gadget_id = 70950097, pos = { x = 194.005, y = 216.584, z = 302.209 }, rot = { x = 355.484, y = 305.683, z = 357.767 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-高
	{ config_id = 9004, gadget_id = 70230042, pos = { x = 187.783, y = 211.972, z = 313.818 }, rot = { x = 0.000, y = 215.478, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-中
	{ config_id = 9005, gadget_id = 70230042, pos = { x = 187.859, y = 210.750, z = 313.924 }, rot = { x = 0.000, y = 215.478, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-低
	{ config_id = 9006, gadget_id = 70230042, pos = { x = 188.131, y = 209.250, z = 314.305 }, rot = { x = 0.000, y = 215.478, z = 0.000 }, level = 1, persistent = true, area_id = 102 }
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
		{ config_id = 1009007, name = "GADGET_STATE_CHANGE_9007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9007", action = "action_EVENT_GADGET_STATE_CHANGE_9007", trigger_count = 0 },
		{ config_id = 1009008, name = "GADGET_STATE_CHANGE_9008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9008", action = "action_EVENT_GADGET_STATE_CHANGE_9008", trigger_count = 0 },
		{ config_id = 1009009, name = "GADGET_STATE_CHANGE_9009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9009", action = "action_EVENT_GADGET_STATE_CHANGE_9009", trigger_count = 0 },
		{ config_id = 1009010, name = "GADGET_STATE_CHANGE_9010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9010", action = "action_EVENT_GADGET_STATE_CHANGE_9010", trigger_count = 0 },
		{ config_id = 1009011, name = "PLATFORM_REACH_POINT_9011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9011", action = "action_EVENT_PLATFORM_REACH_POINT_9011", trigger_count = 0 },
		{ config_id = 1009012, name = "PLATFORM_REACH_POINT_9012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9012", action = "action_EVENT_PLATFORM_REACH_POINT_9012", trigger_count = 0 },
		{ config_id = 1009013, name = "PLATFORM_REACH_POINT_9013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9013", action = "action_EVENT_PLATFORM_REACH_POINT_9013", trigger_count = 0 },
		{ config_id = 1009014, name = "GADGET_STATE_CHANGE_9014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9014", action = "action_EVENT_GADGET_STATE_CHANGE_9014", trigger_count = 0 },
		{ config_id = 1009015, name = "GADGET_STATE_CHANGE_9015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9015", action = "action_EVENT_GADGET_STATE_CHANGE_9015", trigger_count = 0 },
		{ config_id = 1009016, name = "GADGET_STATE_CHANGE_9016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9016", action = "action_EVENT_GADGET_STATE_CHANGE_9016", trigger_count = 0 },
		{ config_id = 1009017, name = "GADGET_STATE_CHANGE_9017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9017", action = "action_EVENT_GADGET_STATE_CHANGE_9017", trigger_count = 0 },
		{ config_id = 1009018, name = "GADGET_STATE_CHANGE_9018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9018", action = "action_EVENT_GADGET_STATE_CHANGE_9018", trigger_count = 0 },
		{ config_id = 1009019, name = "PLATFORM_REACH_POINT_9019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9019", action = "action_EVENT_PLATFORM_REACH_POINT_9019", trigger_count = 0 },
		{ config_id = 1009020, name = "PLATFORM_REACH_POINT_9020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9020", action = "action_EVENT_PLATFORM_REACH_POINT_9020", trigger_count = 0 },
		{ config_id = 1009021, name = "PLATFORM_REACH_POINT_9021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9021", action = "action_EVENT_PLATFORM_REACH_POINT_9021", trigger_count = 0 },
		{ config_id = 1009022, name = "PLATFORM_REACH_POINT_9022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9022", action = "action_EVENT_PLATFORM_REACH_POINT_9022", trigger_count = 0 },
		{ config_id = 1009023, name = "PLATFORM_REACH_POINT_9023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9023", action = "action_EVENT_PLATFORM_REACH_POINT_9023", trigger_count = 0 },
		{ config_id = 1009024, name = "PLATFORM_REACH_POINT_9024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9024", action = "action_EVENT_PLATFORM_REACH_POINT_9024", trigger_count = 0 },
		{ config_id = 1009025, name = "PLATFORM_REACH_POINT_9025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9025", action = "action_EVENT_PLATFORM_REACH_POINT_9025", trigger_count = 0 },
		{ config_id = 1009026, name = "PLATFORM_REACH_POINT_9026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9026", action = "action_EVENT_PLATFORM_REACH_POINT_9026", trigger_count = 0 },
		{ config_id = 1009027, name = "PLATFORM_REACH_POINT_9027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9027", action = "action_EVENT_PLATFORM_REACH_POINT_9027", trigger_count = 0 },
		{ config_id = 1009028, name = "PLATFORM_REACH_POINT_9028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9028", action = "action_EVENT_PLATFORM_REACH_POINT_9028", trigger_count = 0 },
		{ config_id = 1009029, name = "PLATFORM_REACH_POINT_9029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9029", action = "action_EVENT_PLATFORM_REACH_POINT_9029", trigger_count = 0 },
		{ config_id = 1009030, name = "GADGET_STATE_CHANGE_9030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9030", action = "action_EVENT_GADGET_STATE_CHANGE_9030", trigger_count = 0 },
		{ config_id = 1009031, name = "PLATFORM_REACH_POINT_9031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9031", action = "action_EVENT_PLATFORM_REACH_POINT_9031", trigger_count = 0 },
		{ config_id = 1009032, name = "PLATFORM_REACH_POINT_9032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9032", action = "action_EVENT_PLATFORM_REACH_POINT_9032", trigger_count = 0 },
		{ config_id = 1009033, name = "GROUP_LOAD_9033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9033", action = "action_EVENT_GROUP_LOAD_9033", trigger_count = 0 },
		{ config_id = 1009034, name = "GROUP_LOAD_9034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9034", trigger_count = 0 },
		{ config_id = 1009035, name = "GROUP_LOAD_9035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9035", action = "action_EVENT_GROUP_LOAD_9035", trigger_count = 0 },
		{ config_id = 1009036, name = "GROUP_LOAD_9036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9036", action = "action_EVENT_GROUP_LOAD_9036", trigger_count = 0 },
		{ config_id = 1009037, name = "GADGET_STATE_CHANGE_9037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9037", action = "action_EVENT_GADGET_STATE_CHANGE_9037", trigger_count = 0 },
		{ config_id = 1009038, name = "GADGET_STATE_CHANGE_9038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9038", action = "action_EVENT_GADGET_STATE_CHANGE_9038", trigger_count = 0 },
		{ config_id = 1009039, name = "GADGET_STATE_CHANGE_9039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9039", action = "action_EVENT_GADGET_STATE_CHANGE_9039", trigger_count = 0 },
		{ config_id = 1009040, name = "GADGET_STATE_CHANGE_9040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9040", action = "action_EVENT_GADGET_STATE_CHANGE_9040", trigger_count = 0 },
		{ config_id = 1009041, name = "GROUP_LOAD_9041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9041", action = "action_EVENT_GROUP_LOAD_9041", trigger_count = 0 },
		{ config_id = 1009042, name = "GROUP_LOAD_9042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9042", action = "action_EVENT_GROUP_LOAD_9042", trigger_count = 0 },
		{ config_id = 1009043, name = "GROUP_LOAD_9043", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9043", action = "action_EVENT_GROUP_LOAD_9043", trigger_count = 0 }
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
		gadgets = { 9002, 9003, 9004, 9005, 9006 },
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