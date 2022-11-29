-- 基础信息
local base_info = {
	group_id = 144001006
}

-- Trigger变量
local defs = {
	gadget_up = 6003,
	gadget_down = 6002,
	gadget_water = 6001,
	point_array = 400100009,
	point_list = {3,2,1},
	gadget_list = {6006,6005,6004},
	point_xz = {x=229.1936,z=434.615},
	point_y = {181.9146,183.9146,185.9146},
	start_level = 3,
	is_abnormal = 1,
	abnormal_height = 181.9146,
	audio_list = {"YinLvDao_Tone_02_False_A","YinLvDao_Tone_02_False_B","YinLvDao_Tone_02_True"},
	audio_xyz = {x=229.1936,y=181.9146,z=434.615}
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
	{ config_id = 6001, gadget_id = 70380028, pos = { x = 229.194, y = 180.473, z = 434.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, start_route = false, is_use_point_array = true, area_id = 102 },
	-- 使水面降低的按钮
	{ config_id = 6002, gadget_id = 70950097, pos = { x = 222.705, y = 191.194, z = 437.820 }, rot = { x = 353.856, y = 279.267, z = 2.794 }, level = 1, persistent = true, area_id = 102 },
	-- 使水面抬高的按钮
	{ config_id = 6003, gadget_id = 70950097, pos = { x = 222.253, y = 191.097, z = 435.479 }, rot = { x = 9.134, y = 89.397, z = 341.543 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-高
	{ config_id = 6004, gadget_id = 70230042, pos = { x = 232.322, y = 185.915, z = 435.868 }, rot = { x = 0.000, y = 268.291, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-中
	{ config_id = 6005, gadget_id = 70230042, pos = { x = 232.124, y = 183.915, z = 435.916 }, rot = { x = 0.000, y = 237.773, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-低
	{ config_id = 6006, gadget_id = 70230042, pos = { x = 232.557, y = 181.915, z = 435.725 }, rot = { x = 0.000, y = 274.879, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 6046, gadget_id = 70220010, pos = { x = 231.820, y = 185.830, z = 430.425 }, rot = { x = 0.000, y = 270.013, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006048, name = "ANY_GADGET_DIE_6048", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6048", action = "action_EVENT_ANY_GADGET_DIE_6048" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1006007, name = "GADGET_STATE_CHANGE_6007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6007", action = "action_EVENT_GADGET_STATE_CHANGE_6007", trigger_count = 0 },
		{ config_id = 1006008, name = "GADGET_STATE_CHANGE_6008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6008", action = "action_EVENT_GADGET_STATE_CHANGE_6008", trigger_count = 0 },
		{ config_id = 1006009, name = "GADGET_STATE_CHANGE_6009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6009", action = "action_EVENT_GADGET_STATE_CHANGE_6009", trigger_count = 0 },
		{ config_id = 1006010, name = "GADGET_STATE_CHANGE_6010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6010", action = "action_EVENT_GADGET_STATE_CHANGE_6010", trigger_count = 0 },
		{ config_id = 1006011, name = "PLATFORM_REACH_POINT_6011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6011", action = "action_EVENT_PLATFORM_REACH_POINT_6011", trigger_count = 0 },
		{ config_id = 1006012, name = "PLATFORM_REACH_POINT_6012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6012", action = "action_EVENT_PLATFORM_REACH_POINT_6012", trigger_count = 0 },
		{ config_id = 1006013, name = "PLATFORM_REACH_POINT_6013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6013", action = "action_EVENT_PLATFORM_REACH_POINT_6013", trigger_count = 0 },
		{ config_id = 1006014, name = "GADGET_STATE_CHANGE_6014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6014", action = "action_EVENT_GADGET_STATE_CHANGE_6014", trigger_count = 0 },
		{ config_id = 1006015, name = "GADGET_STATE_CHANGE_6015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6015", action = "action_EVENT_GADGET_STATE_CHANGE_6015", trigger_count = 0 },
		{ config_id = 1006016, name = "GADGET_STATE_CHANGE_6016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6016", action = "action_EVENT_GADGET_STATE_CHANGE_6016", trigger_count = 0 },
		{ config_id = 1006017, name = "GADGET_STATE_CHANGE_6017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6017", action = "action_EVENT_GADGET_STATE_CHANGE_6017", trigger_count = 0 },
		{ config_id = 1006018, name = "GADGET_STATE_CHANGE_6018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6018", action = "action_EVENT_GADGET_STATE_CHANGE_6018", trigger_count = 0 },
		{ config_id = 1006019, name = "PLATFORM_REACH_POINT_6019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6019", action = "action_EVENT_PLATFORM_REACH_POINT_6019", trigger_count = 0 },
		{ config_id = 1006020, name = "PLATFORM_REACH_POINT_6020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6020", action = "action_EVENT_PLATFORM_REACH_POINT_6020", trigger_count = 0 },
		{ config_id = 1006021, name = "PLATFORM_REACH_POINT_6021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6021", action = "action_EVENT_PLATFORM_REACH_POINT_6021", trigger_count = 0 },
		{ config_id = 1006022, name = "PLATFORM_REACH_POINT_6022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6022", action = "action_EVENT_PLATFORM_REACH_POINT_6022", trigger_count = 0 },
		{ config_id = 1006023, name = "PLATFORM_REACH_POINT_6023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6023", action = "action_EVENT_PLATFORM_REACH_POINT_6023", trigger_count = 0 },
		{ config_id = 1006024, name = "PLATFORM_REACH_POINT_6024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6024", action = "action_EVENT_PLATFORM_REACH_POINT_6024", trigger_count = 0 },
		{ config_id = 1006025, name = "PLATFORM_REACH_POINT_6025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6025", action = "action_EVENT_PLATFORM_REACH_POINT_6025", trigger_count = 0 },
		{ config_id = 1006026, name = "PLATFORM_REACH_POINT_6026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6026", action = "action_EVENT_PLATFORM_REACH_POINT_6026", trigger_count = 0 },
		{ config_id = 1006027, name = "PLATFORM_REACH_POINT_6027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6027", action = "action_EVENT_PLATFORM_REACH_POINT_6027", trigger_count = 0 },
		{ config_id = 1006028, name = "PLATFORM_REACH_POINT_6028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6028", action = "action_EVENT_PLATFORM_REACH_POINT_6028", trigger_count = 0 },
		{ config_id = 1006029, name = "PLATFORM_REACH_POINT_6029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6029", action = "action_EVENT_PLATFORM_REACH_POINT_6029", trigger_count = 0 },
		{ config_id = 1006030, name = "GADGET_STATE_CHANGE_6030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6030", action = "action_EVENT_GADGET_STATE_CHANGE_6030", trigger_count = 0 },
		{ config_id = 1006031, name = "PLATFORM_REACH_POINT_6031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6031", action = "action_EVENT_PLATFORM_REACH_POINT_6031", trigger_count = 0 },
		{ config_id = 1006032, name = "PLATFORM_REACH_POINT_6032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6032", action = "action_EVENT_PLATFORM_REACH_POINT_6032", trigger_count = 0 },
		{ config_id = 1006033, name = "GROUP_LOAD_6033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6033", action = "action_EVENT_GROUP_LOAD_6033", trigger_count = 0 },
		{ config_id = 1006034, name = "GROUP_LOAD_6034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6034", trigger_count = 0 },
		{ config_id = 1006035, name = "GROUP_LOAD_6035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6035", action = "action_EVENT_GROUP_LOAD_6035", trigger_count = 0 },
		{ config_id = 1006036, name = "GROUP_LOAD_6036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6036", action = "action_EVENT_GROUP_LOAD_6036", trigger_count = 0 },
		{ config_id = 1006037, name = "GADGET_STATE_CHANGE_6037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6037", action = "action_EVENT_GADGET_STATE_CHANGE_6037", trigger_count = 0 },
		{ config_id = 1006038, name = "GADGET_STATE_CHANGE_6038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6038", action = "action_EVENT_GADGET_STATE_CHANGE_6038", trigger_count = 0 },
		{ config_id = 1006039, name = "GADGET_STATE_CHANGE_6039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6039", action = "action_EVENT_GADGET_STATE_CHANGE_6039", trigger_count = 0 },
		{ config_id = 1006040, name = "GADGET_STATE_CHANGE_6040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6040", action = "action_EVENT_GADGET_STATE_CHANGE_6040", trigger_count = 0 },
		{ config_id = 1006041, name = "GROUP_LOAD_6041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6041", action = "action_EVENT_GROUP_LOAD_6041", trigger_count = 0 },
		{ config_id = 1006042, name = "GROUP_LOAD_6042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6042", action = "action_EVENT_GROUP_LOAD_6042", trigger_count = 0 },
		{ config_id = 1006043, name = "GROUP_LOAD_6043", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6043", action = "action_EVENT_GROUP_LOAD_6043", trigger_count = 0 },
		{ config_id = 1006044, name = "VARIABLE_CHANGE_6044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6044", action = "action_EVENT_VARIABLE_CHANGE_6044" },
		{ config_id = 1006045, name = "GROUP_LOAD_6045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6045", action = "action_EVENT_GROUP_LOAD_6045", trigger_count = 0 },
		{ config_id = 1006047, name = "ANY_GADGET_DIE_6047", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6047", action = "action_EVENT_ANY_GADGET_DIE_6047" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 7,
	end_suite = 1,
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
		gadgets = { 6002, 6003, 6004, 6005, 6006 },
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
		-- description = 处理与前置Group的关系,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [前置解锁条件],
		monsters = { },
		gadgets = { 6002, 6003, 6004, 6005, 6006, 6046 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_6048" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6048(context, evt)
	if 6046 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V1_6/TuneStone"