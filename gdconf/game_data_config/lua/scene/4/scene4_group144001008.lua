-- 基础信息
local base_info = {
	group_id = 144001008
}

-- Trigger变量
local defs = {
	gadget_up = 8003,
	gadget_down = 8002,
	gadget_water = 8001,
	point_array = 400100020,
	point_list = {3,2,1},
	gadget_list = {8006,8005,8004},
	point_xz = {x=320.752,z=169.5557},
	point_y = {199.5,200.5,201.5},
	start_level = 3,
	is_abnormal = 1,
	abnormal_height = 201.5,
	audio_list = {"YinLvDao_Tone_03_True","YinLvDao_Tone_03_False_A","YinLvDao_Tone_03_False_B"},
	audio_xyz = {x=320.752,y=199.5,z=169.5557}
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
	{ config_id = 8001, gadget_id = 70380028, pos = { x = 320.752, y = 197.051, z = 169.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, start_route = false, is_use_point_array = true, area_id = 102 },
	-- 使水面降低的按钮
	{ config_id = 8002, gadget_id = 70950097, pos = { x = 316.731, y = 202.112, z = 159.255 }, rot = { x = 0.000, y = 184.443, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 使水面抬高的按钮
	{ config_id = 8003, gadget_id = 70950097, pos = { x = 318.609, y = 202.305, z = 158.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-高
	{ config_id = 8004, gadget_id = 70230042, pos = { x = 320.715, y = 201.500, z = 167.322 }, rot = { x = 0.000, y = 213.390, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-中
	{ config_id = 8005, gadget_id = 70230042, pos = { x = 320.744, y = 200.500, z = 167.369 }, rot = { x = 0.000, y = 202.919, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 吃水线-低
	{ config_id = 8006, gadget_id = 70230042, pos = { x = 320.726, y = 199.500, z = 167.288 }, rot = { x = 0.000, y = 286.531, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 上方水潭
	{ config_id = 8047, gadget_id = 70950083, pos = { x = 324.633, y = 222.960, z = 171.764 }, rot = { x = 0.000, y = 229.856, z = 0.000 }, level = 1, route_id = 400100001, start_route = false, area_id = 102 },
	{ config_id = 8048, gadget_id = 70220021, pos = { x = 321.703, y = 219.292, z = 169.279 }, rot = { x = 339.037, y = 32.195, z = 7.222 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 摧毁碎石堆后使上方水塘下降
	{ config_id = 1008049, name = "ANY_GADGET_DIE_8049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8049", action = "action_EVENT_ANY_GADGET_DIE_8049", trigger_count = 0 },
	-- 上方水塘下降中途改变瀑布的透明度
	{ config_id = 1008050, name = "PLATFORM_REACH_POINT_8050", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8050", action = "action_EVENT_PLATFORM_REACH_POINT_8050", trigger_count = 0 },
	-- Group加载时判定短暂的瀑布是否已下降
	{ config_id = 1008051, name = "GROUP_LOAD_8051", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8051", action = "action_EVENT_GROUP_LOAD_8051", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasWaterfallDisappeared", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1008007, name = "GADGET_STATE_CHANGE_8007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8007", action = "action_EVENT_GADGET_STATE_CHANGE_8007", trigger_count = 0 },
		{ config_id = 1008008, name = "GADGET_STATE_CHANGE_8008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8008", action = "action_EVENT_GADGET_STATE_CHANGE_8008", trigger_count = 0 },
		{ config_id = 1008009, name = "GADGET_STATE_CHANGE_8009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8009", action = "action_EVENT_GADGET_STATE_CHANGE_8009", trigger_count = 0 },
		{ config_id = 1008010, name = "GADGET_STATE_CHANGE_8010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8010", action = "action_EVENT_GADGET_STATE_CHANGE_8010", trigger_count = 0 },
		{ config_id = 1008011, name = "PLATFORM_REACH_POINT_8011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8011", action = "action_EVENT_PLATFORM_REACH_POINT_8011", trigger_count = 0 },
		{ config_id = 1008012, name = "PLATFORM_REACH_POINT_8012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8012", action = "action_EVENT_PLATFORM_REACH_POINT_8012", trigger_count = 0 },
		{ config_id = 1008013, name = "PLATFORM_REACH_POINT_8013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8013", action = "action_EVENT_PLATFORM_REACH_POINT_8013", trigger_count = 0 },
		{ config_id = 1008014, name = "GADGET_STATE_CHANGE_8014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8014", action = "action_EVENT_GADGET_STATE_CHANGE_8014", trigger_count = 0 },
		{ config_id = 1008015, name = "GADGET_STATE_CHANGE_8015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8015", action = "action_EVENT_GADGET_STATE_CHANGE_8015", trigger_count = 0 },
		{ config_id = 1008016, name = "GADGET_STATE_CHANGE_8016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8016", action = "action_EVENT_GADGET_STATE_CHANGE_8016", trigger_count = 0 },
		{ config_id = 1008017, name = "GADGET_STATE_CHANGE_8017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8017", action = "action_EVENT_GADGET_STATE_CHANGE_8017", trigger_count = 0 },
		{ config_id = 1008018, name = "GADGET_STATE_CHANGE_8018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8018", action = "action_EVENT_GADGET_STATE_CHANGE_8018", trigger_count = 0 },
		{ config_id = 1008019, name = "PLATFORM_REACH_POINT_8019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8019", action = "action_EVENT_PLATFORM_REACH_POINT_8019", trigger_count = 0 },
		{ config_id = 1008020, name = "PLATFORM_REACH_POINT_8020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8020", action = "action_EVENT_PLATFORM_REACH_POINT_8020", trigger_count = 0 },
		{ config_id = 1008021, name = "PLATFORM_REACH_POINT_8021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8021", action = "action_EVENT_PLATFORM_REACH_POINT_8021", trigger_count = 0 },
		{ config_id = 1008022, name = "PLATFORM_REACH_POINT_8022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8022", action = "action_EVENT_PLATFORM_REACH_POINT_8022", trigger_count = 0 },
		{ config_id = 1008023, name = "PLATFORM_REACH_POINT_8023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8023", action = "action_EVENT_PLATFORM_REACH_POINT_8023", trigger_count = 0 },
		{ config_id = 1008024, name = "PLATFORM_REACH_POINT_8024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8024", action = "action_EVENT_PLATFORM_REACH_POINT_8024", trigger_count = 0 },
		{ config_id = 1008025, name = "PLATFORM_REACH_POINT_8025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8025", action = "action_EVENT_PLATFORM_REACH_POINT_8025", trigger_count = 0 },
		{ config_id = 1008026, name = "PLATFORM_REACH_POINT_8026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8026", action = "action_EVENT_PLATFORM_REACH_POINT_8026", trigger_count = 0 },
		{ config_id = 1008027, name = "PLATFORM_REACH_POINT_8027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8027", action = "action_EVENT_PLATFORM_REACH_POINT_8027", trigger_count = 0 },
		{ config_id = 1008028, name = "PLATFORM_REACH_POINT_8028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8028", action = "action_EVENT_PLATFORM_REACH_POINT_8028", trigger_count = 0 },
		{ config_id = 1008029, name = "PLATFORM_REACH_POINT_8029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8029", action = "action_EVENT_PLATFORM_REACH_POINT_8029", trigger_count = 0 },
		{ config_id = 1008030, name = "GADGET_STATE_CHANGE_8030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8030", action = "action_EVENT_GADGET_STATE_CHANGE_8030", trigger_count = 0 },
		{ config_id = 1008031, name = "PLATFORM_REACH_POINT_8031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8031", action = "action_EVENT_PLATFORM_REACH_POINT_8031", trigger_count = 0 },
		{ config_id = 1008032, name = "PLATFORM_REACH_POINT_8032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8032", action = "action_EVENT_PLATFORM_REACH_POINT_8032", trigger_count = 0 },
		{ config_id = 1008033, name = "GROUP_LOAD_8033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8033", action = "action_EVENT_GROUP_LOAD_8033", trigger_count = 0 },
		{ config_id = 1008034, name = "GROUP_LOAD_8034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_8034", trigger_count = 0 },
		{ config_id = 1008035, name = "GROUP_LOAD_8035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8035", action = "action_EVENT_GROUP_LOAD_8035", trigger_count = 0 },
		{ config_id = 1008036, name = "GROUP_LOAD_8036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8036", action = "action_EVENT_GROUP_LOAD_8036", trigger_count = 0 },
		{ config_id = 1008037, name = "GADGET_STATE_CHANGE_8037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8037", action = "action_EVENT_GADGET_STATE_CHANGE_8037", trigger_count = 0 },
		{ config_id = 1008038, name = "GADGET_STATE_CHANGE_8038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8038", action = "action_EVENT_GADGET_STATE_CHANGE_8038", trigger_count = 0 },
		{ config_id = 1008039, name = "GADGET_STATE_CHANGE_8039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8039", action = "action_EVENT_GADGET_STATE_CHANGE_8039", trigger_count = 0 },
		{ config_id = 1008040, name = "GADGET_STATE_CHANGE_8040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8040", action = "action_EVENT_GADGET_STATE_CHANGE_8040", trigger_count = 0 },
		{ config_id = 1008041, name = "GROUP_LOAD_8041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8041", action = "action_EVENT_GROUP_LOAD_8041", trigger_count = 0 },
		{ config_id = 1008042, name = "GROUP_LOAD_8042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8042", action = "action_EVENT_GROUP_LOAD_8042", trigger_count = 0 },
		{ config_id = 1008043, name = "GROUP_LOAD_8043", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8043", action = "action_EVENT_GROUP_LOAD_8043", trigger_count = 0 },
		{ config_id = 1008044, name = "GROUP_LOAD_8044", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8044", action = "action_EVENT_GROUP_LOAD_8044", trigger_count = 0 },
		{ config_id = 1008045, name = "GROUP_LOAD_8045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8045", action = "action_EVENT_GROUP_LOAD_8045", trigger_count = 0 },
		{ config_id = 1008046, name = "VARIABLE_CHANGE_8046", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8046", action = "action_EVENT_VARIABLE_CHANGE_8046" }
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
		gadgets = { 8002, 8003, 8004, 8005, 8006 },
		regions = { },
		triggers = { "GROUP_LOAD_8051" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 踩踏按钮后启动水面,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_8051" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 水面分别到达每一个点时的行为,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_8051" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 进入和离开按钮时会改变监听上升下降的变量,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_8051" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 水面每次到达路点时检测是否继续上升/下降,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_8051" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [处理与前置Group的关系],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_8051" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [前置Suite],
		monsters = { },
		gadgets = { 8002, 8003, 8004, 8005, 8006, 8047, 8048 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_8049", "PLATFORM_REACH_POINT_8050", "GROUP_LOAD_8051" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8049(context, evt)
	if 8048 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8049(context, evt)
	-- 将configid为 8047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_8050(context, evt)
	-- 判断是gadgetid 为 8047的移动平台，是否到达了400100001 的路线中的 1 点
	
	if 8047 ~= evt.param1 then
	  return false
	end
	
	if 400100001 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_8050(context, evt)
	-- 将本组内变量名为 "hasWaterfallDisappeared" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasWaterfallDisappeared", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 8047 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8047, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8047 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_8051(context, evt)
	-- 判断变量"hasWaterfallDisappeared"为0
	if ScriptLib.GetGroupVariableValue(context, "hasWaterfallDisappeared") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8051(context, evt)
	-- 创建id为8048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为8047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 8047 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8047, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V1_6/TuneStone"