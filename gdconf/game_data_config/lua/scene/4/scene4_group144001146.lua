-- 基础信息
local base_info = {
	group_id = 144001146
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
	{ config_id = 146003, gadget_id = 70950076, pos = { x = 359.965, y = 118.047, z = 112.796 }, rot = { x = 0.000, y = 29.283, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146004, gadget_id = 70350240, pos = { x = 359.916, y = 111.760, z = 112.899 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 146005, gadget_id = 70950076, pos = { x = 354.538, y = 117.596, z = 118.580 }, rot = { x = 0.000, y = 246.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146006, gadget_id = 70350240, pos = { x = 354.513, y = 114.128, z = 118.468 }, rot = { x = 0.000, y = 284.893, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 146007, gadget_id = 70950079, pos = { x = 323.797, y = 145.298, z = 155.769 }, rot = { x = 347.233, y = 43.130, z = 167.283 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146008, gadget_id = 70350243, pos = { x = 324.359, y = 141.777, z = 156.806 }, rot = { x = 354.493, y = 304.782, z = 15.170 }, level = 1, area_id = 102 },
	{ config_id = 146009, gadget_id = 70950079, pos = { x = 357.158, y = 123.707, z = 123.412 }, rot = { x = 0.000, y = 161.767, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146010, gadget_id = 70350243, pos = { x = 357.267, y = 118.908, z = 123.377 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 146011, gadget_id = 70360001, pos = { x = 357.267, y = 118.896, z = 123.377 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 146012, gadget_id = 70950077, pos = { x = 331.742, y = 150.459, z = 163.313 }, rot = { x = 350.773, y = 52.825, z = 344.289 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146013, gadget_id = 70350241, pos = { x = 332.271, y = 146.735, z = 164.916 }, rot = { x = 1.177, y = 86.098, z = 341.876 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 146014, gadget_id = 70360001, pos = { x = 331.715, y = 147.285, z = 165.395 }, rot = { x = 1.177, y = 86.098, z = 341.876 }, level = 1, area_id = 102 },
	{ config_id = 146015, gadget_id = 70950078, pos = { x = 375.529, y = 119.006, z = 122.394 }, rot = { x = 0.000, y = 277.789, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146016, gadget_id = 70350242, pos = { x = 375.450, y = 115.553, z = 122.311 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 146017, gadget_id = 70360001, pos = { x = 375.450, y = 115.553, z = 122.311 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 146018, gadget_id = 70350211, pos = { x = 373.866, y = 116.975, z = 113.163 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146019, gadget_id = 70350270, pos = { x = 373.710, y = 115.581, z = 113.108 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 146020, gadget_id = 70350212, pos = { x = 374.880, y = 118.664, z = 114.797 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146021, gadget_id = 70350212, pos = { x = 372.878, y = 118.613, z = 111.537 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146022, gadget_id = 70350211, pos = { x = 365.307, y = 115.741, z = 106.034 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146023, gadget_id = 70350270, pos = { x = 365.397, y = 114.347, z = 105.964 }, rot = { x = 0.000, y = 220.515, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 146024, gadget_id = 70350212, pos = { x = 367.228, y = 117.430, z = 105.947 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 146025, gadget_id = 70350212, pos = { x = 363.406, y = 117.379, z = 106.104 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146029, name = "SELECT_OPTION_146029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_146029", action = "action_EVENT_SELECT_OPTION_146029", trigger_count = 0 },
	{ config_id = 1146031, name = "GADGET_STATE_CHANGE_146031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146031", action = "action_EVENT_GADGET_STATE_CHANGE_146031", trigger_count = 0 },
	{ config_id = 1146032, name = "GADGET_STATE_CHANGE_146032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146032", action = "action_EVENT_GADGET_STATE_CHANGE_146032", trigger_count = 0 },
	{ config_id = 1146033, name = "GADGET_STATE_CHANGE_146033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146033", action = "action_EVENT_GADGET_STATE_CHANGE_146033", trigger_count = 0 },
	{ config_id = 1146034, name = "GADGET_STATE_CHANGE_146034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146034", action = "action_EVENT_GADGET_STATE_CHANGE_146034", trigger_count = 0 },
	{ config_id = 1146035, name = "GADGET_STATE_CHANGE_146035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146035", action = "action_EVENT_GADGET_STATE_CHANGE_146035", trigger_count = 0 },
	{ config_id = 1146036, name = "GADGET_STATE_CHANGE_146036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146036", action = "action_EVENT_GADGET_STATE_CHANGE_146036", trigger_count = 0 },
	{ config_id = 1146037, name = "GADGET_STATE_CHANGE_146037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146037", action = "action_EVENT_GADGET_STATE_CHANGE_146037", trigger_count = 0 },
	{ config_id = 1146038, name = "GADGET_STATE_CHANGE_146038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146038", action = "action_EVENT_GADGET_STATE_CHANGE_146038", trigger_count = 0 },
	{ config_id = 1146039, name = "GADGET_STATE_CHANGE_146039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146039", action = "action_EVENT_GADGET_STATE_CHANGE_146039", trigger_count = 0 },
	{ config_id = 1146040, name = "GADGET_STATE_CHANGE_146040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146040", action = "action_EVENT_GADGET_STATE_CHANGE_146040", trigger_count = 0 },
	{ config_id = 1146041, name = "GADGET_CREATE_146041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_146041", action = "action_EVENT_GADGET_CREATE_146041", trigger_count = 0 },
	{ config_id = 1146042, name = "GADGET_STATE_CHANGE_146042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146042", action = "action_EVENT_GADGET_STATE_CHANGE_146042", trigger_count = 0 },
	{ config_id = 1146043, name = "GADGET_STATE_CHANGE_146043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146043", action = "action_EVENT_GADGET_STATE_CHANGE_146043", trigger_count = 0 },
	{ config_id = 1146044, name = "GADGET_STATE_CHANGE_146044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146044", action = "action_EVENT_GADGET_STATE_CHANGE_146044", trigger_count = 0 },
	{ config_id = 1146045, name = "GADGET_CREATE_146045", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_146045", action = "action_EVENT_GADGET_CREATE_146045", trigger_count = 0 },
	{ config_id = 1146046, name = "SELECT_OPTION_146046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_146046", action = "action_EVENT_SELECT_OPTION_146046", trigger_count = 0 },
	{ config_id = 1146047, name = "SELECT_OPTION_146047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_146047", action = "action_EVENT_SELECT_OPTION_146047", trigger_count = 0 },
	{ config_id = 1146048, name = "GADGET_STATE_CHANGE_146048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146048", action = "action_EVENT_GADGET_STATE_CHANGE_146048", trigger_count = 0 },
	{ config_id = 1146049, name = "SELECT_OPTION_146049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_146049", action = "action_EVENT_SELECT_OPTION_146049", trigger_count = 0 },
	{ config_id = 1146050, name = "GADGET_STATE_CHANGE_146050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146050", action = "action_EVENT_GADGET_STATE_CHANGE_146050", trigger_count = 0 },
	{ config_id = 1146051, name = "GADGET_STATE_CHANGE_146051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146051", action = "action_EVENT_GADGET_STATE_CHANGE_146051", trigger_count = 0 },
	{ config_id = 1146052, name = "GADGET_CREATE_146052", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_146052", action = "action_EVENT_GADGET_CREATE_146052", trigger_count = 0 },
	{ config_id = 1146053, name = "SELECT_OPTION_146053", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_146053", action = "action_EVENT_SELECT_OPTION_146053", trigger_count = 0 },
	{ config_id = 1146054, name = "SELECT_OPTION_146054", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_146054", action = "action_EVENT_SELECT_OPTION_146054", trigger_count = 0 },
	{ config_id = 1146055, name = "GADGET_STATE_CHANGE_146055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146055", action = "action_EVENT_GADGET_STATE_CHANGE_146055", trigger_count = 0 },
	{ config_id = 1146056, name = "GADGET_STATE_CHANGE_146056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146056", action = "action_EVENT_GADGET_STATE_CHANGE_146056", trigger_count = 0 },
	{ config_id = 1146057, name = "GADGET_STATE_CHANGE_146057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146057", action = "action_EVENT_GADGET_STATE_CHANGE_146057", trigger_count = 0 },
	{ config_id = 1146058, name = "GADGET_STATE_CHANGE_146058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146058", action = "action_EVENT_GADGET_STATE_CHANGE_146058", trigger_count = 0 },
	{ config_id = 1146059, name = "GADGET_STATE_CHANGE_146059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146059", action = "action_EVENT_GADGET_STATE_CHANGE_146059", trigger_count = 0 },
	{ config_id = 1146060, name = "GADGET_STATE_CHANGE_146060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146060", action = "action_EVENT_GADGET_STATE_CHANGE_146060", trigger_count = 0 },
	{ config_id = 1146061, name = "GADGET_STATE_CHANGE_146061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146061", action = "action_EVENT_GADGET_STATE_CHANGE_146061", trigger_count = 0 },
	{ config_id = 1146062, name = "GADGET_STATE_CHANGE_146062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146062", action = "action_EVENT_GADGET_STATE_CHANGE_146062", trigger_count = 0 },
	{ config_id = 1146063, name = "PLATFORM_REACH_POINT_146063", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_146063", action = "action_EVENT_PLATFORM_REACH_POINT_146063", trigger_count = 0 },
	{ config_id = 1146064, name = "PLATFORM_REACH_POINT_146064", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_146064", action = "action_EVENT_PLATFORM_REACH_POINT_146064", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 146001, gadget_id = 70360006, pos = { x = 339.667, y = 146.713, z = 171.069 }, rot = { x = 346.162, y = 6.996, z = 354.016 }, level = 1, area_id = 102 },
		{ config_id = 146002, gadget_id = 70211102, pos = { x = 337.818, y = 148.559, z = 173.435 }, rot = { x = 0.000, y = 170.069, z = 12.849 }, level = 16, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
		{ config_id = 146027, gadget_id = 70950074, pos = { x = 364.457, y = 122.870, z = 125.550 }, rot = { x = 0.000, y = 60.519, z = 0.000 }, level = 1, area_id = 102 }
	},
	triggers = {
		{ config_id = 1146030, name = "GROUP_LOAD_146030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "", trigger_count = 0 },
		{ config_id = 1146065, name = "ANY_GADGET_DIE_146065", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_146065", action = "action_EVENT_ANY_GADGET_DIE_146065" },
		{ config_id = 1146066, name = "ANY_GADGET_DIE_146066", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_146066", action = "action_EVENT_ANY_GADGET_DIE_146066" },
		{ config_id = 1146067, name = "GADGET_STATE_CHANGE_146067", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146067", action = "action_EVENT_GADGET_STATE_CHANGE_146067", trigger_count = 0 },
		{ config_id = 1146068, name = "GADGET_STATE_CHANGE_146068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146068", action = "action_EVENT_GADGET_STATE_CHANGE_146068", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = [默认加载的Entities],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载羽球元素靶标&判定玩法成功的方法2],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [玩法完成后的空Suite],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 146003, 146004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146031", "GADGET_STATE_CHANGE_146032" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载往复运动的元素台座],
		monsters = { },
		gadgets = { 146005, 146006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146033", "GADGET_STATE_CHANGE_146034" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 146007, 146008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146036", "GADGET_STATE_CHANGE_146037" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 146009, 146010, 146011 },
		regions = { },
		triggers = { "SELECT_OPTION_146029", "GADGET_STATE_CHANGE_146039", "GADGET_STATE_CHANGE_146040", "GADGET_CREATE_146041" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 146012, 146013, 146014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146043", "GADGET_STATE_CHANGE_146044", "GADGET_CREATE_146045", "SELECT_OPTION_146046", "SELECT_OPTION_146047", "SELECT_OPTION_146049" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 146015, 146016, 146017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146050", "GADGET_STATE_CHANGE_146051", "GADGET_CREATE_146052", "SELECT_OPTION_146053", "SELECT_OPTION_146054" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 146018, 146019, 146020, 146021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146035", "GADGET_STATE_CHANGE_146038", "GADGET_STATE_CHANGE_146042", "GADGET_STATE_CHANGE_146048", "GADGET_STATE_CHANGE_146055", "GADGET_STATE_CHANGE_146056", "GADGET_STATE_CHANGE_146059", "GADGET_STATE_CHANGE_146060" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = [加载往复运动的分裂台座],
		monsters = { },
		gadgets = { 146022, 146023, 146024, 146025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146057", "GADGET_STATE_CHANGE_146058", "GADGET_STATE_CHANGE_146061", "GADGET_STATE_CHANGE_146062", "PLATFORM_REACH_POINT_146063", "PLATFORM_REACH_POINT_146064" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_146029(context, evt)
	-- 判断是gadgetid 146011 option_id 211
	if 146011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146009, 110100018, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146031(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146031(context, evt)
	-- 将configid为 146003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146032(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146032(context, evt)
	-- 将configid为 146003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146033(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146033(context, evt)
	-- 将configid为 146005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146034(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146034(context, evt)
	-- 将configid为 146005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146035(context, evt)
	if 146018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146035(context, evt)
	-- 将configid为 146020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146036(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146036(context, evt)
	-- 将configid为 146007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146037(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146037(context, evt)
	-- 将configid为 146007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146038(context, evt)
	if 146018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146038(context, evt)
	-- 将configid为 146020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146039(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146039(context, evt)
	-- 将configid为 146009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144001146 ；指定config：146011；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001146, 146011, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146040(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146040(context, evt)
	-- 将configid为 146009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001146, 146011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_146041(context, evt)
	if 146011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_146041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001146, 146011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146042(context, evt)
	if 146018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146042(context, evt)
	-- 将configid为 146020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146043(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146043(context, evt)
	-- 将configid为 146012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144001146 ；指定config：146014；物件身上指定option：217；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001146, 146014, 217) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 144001146 ；指定config：146014；物件身上指定option：218；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001146, 146014, 218) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146044(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146044(context, evt)
	-- 将configid为 146012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001146, 146014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_146045(context, evt)
	if 146014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_146045(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001146, 146014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_146046(context, evt)
	-- 判断是gadgetid 146014 option_id 217
	if 146014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146046(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146012, 110100019, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_146047(context, evt)
	-- 判断是gadgetid 146014 option_id 218
	if 146014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146012, 110100019, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146048(context, evt)
	if 146018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146048(context, evt)
	-- 将configid为 146020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_146049(context, evt)
	-- 判断是gadgetid 146014 option_id 219
	if 146014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146049(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146012, 110100019, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146050(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146050(context, evt)
	-- 将configid为 146012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144001146 ；指定config：146017；物件身上指定option：215；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001146, 146017, 215) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 144001146 ；指定config：146017；物件身上指定option：216；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001146, 146017, 216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146051(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146051(context, evt)
	-- 将configid为 146012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001146, 146017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_146052(context, evt)
	if 146017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_146052(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001146, 146017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_146053(context, evt)
	-- 判断是gadgetid 146017 option_id 215
	if 146017 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146053(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146015, 110100020, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_146054(context, evt)
	-- 判断是gadgetid 146017 option_id 216
	if 146017 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146054(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146015, 110100020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146055(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146055(context, evt)
	-- 将configid为 146018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146056(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146056(context, evt)
	-- 将configid为 146018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146057(context, evt)
	if 146001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146057(context, evt)
	-- 将configid为 146022 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146022, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146024 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146024, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146025 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146025, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146022, 110100022, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146024, 110100022, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146025, 110100022, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 146023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146058(context, evt)
	if 146001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146058(context, evt)
	-- 将configid为 146022 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146022, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146024 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146024, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146025 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146025, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146022, 110100022, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146024, 110100022, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146025, 110100022, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 146023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146059(context, evt)
	if 146018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146059(context, evt)
	-- 将configid为 146020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146060(context, evt)
	if 146020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146060(context, evt)
	-- 将configid为 146018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146061(context, evt)
	if 146022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146061(context, evt)
	-- 将configid为 146024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146062(context, evt)
	if 146024 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146062(context, evt)
	-- 将configid为 146025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_146063(context, evt)
	-- 判断是gadgetid 为 146024的移动平台，是否到达了999800005 的路线中的 5 点
	
	if 146024 ~= evt.param1 then
	  return false
	end
	
	if 999800005 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_146063(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146024, 110100022, {5,7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_146064(context, evt)
	-- 判断是gadgetid 为 146025的移动平台，是否到达了999800005 的路线中的 6 点
	
	if 146025 ~= evt.param1 then
	  return false
	end
	
	if 999800005 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_146064(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 146025, 110100022, {6,8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end