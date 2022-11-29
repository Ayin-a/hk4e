-- 基础信息
local base_info = {
	group_id = 144001147
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
	-- 触发靶标出现的开关
	{ config_id = 147001, gadget_id = 70360006, pos = { x = 154.108, y = 150.765, z = 459.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 147002, gadget_id = 70211122, pos = { x = 148.822, y = 153.203, z = 463.119 }, rot = { x = 358.699, y = 128.665, z = 1.327 }, level = 16, drop_tag = "解谜高级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 147003, gadget_id = 70950076, pos = { x = 161.510, y = 153.200, z = 465.710 }, rot = { x = 0.000, y = 289.831, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147004, gadget_id = 70350240, pos = { x = 161.427, y = 149.458, z = 465.498 }, rot = { x = 354.961, y = 241.474, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 147007, gadget_id = 70950079, pos = { x = 154.610, y = 155.180, z = 468.010 }, rot = { x = 6.542, y = 205.301, z = 13.211 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147008, gadget_id = 70350243, pos = { x = 154.146, y = 151.552, z = 468.564 }, rot = { x = 0.000, y = 183.313, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 147009, gadget_id = 70950079, pos = { x = 173.570, y = 150.940, z = 446.850 }, rot = { x = 5.000, y = 211.371, z = 1.401 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147010, gadget_id = 70350243, pos = { x = 174.251, y = 146.942, z = 448.002 }, rot = { x = 358.194, y = 291.861, z = 22.384 }, level = 1, state = GadgetState.GearStop, area_id = 102 },
	{ config_id = 147011, gadget_id = 70360001, pos = { x = 174.243, y = 147.571, z = 447.967 }, rot = { x = 29.181, y = 213.572, z = 6.102 }, level = 1, area_id = 102 },
	{ config_id = 147012, gadget_id = 70950079, pos = { x = 183.351, y = 150.891, z = 463.025 }, rot = { x = 2.959, y = 271.080, z = 359.863 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147013, gadget_id = 70350243, pos = { x = 183.248, y = 146.926, z = 463.260 }, rot = { x = 357.499, y = 317.598, z = 354.946 }, level = 1, area_id = 102 },
	{ config_id = 147014, gadget_id = 70360001, pos = { x = 183.351, y = 150.891, z = 463.025 }, rot = { x = 2.959, y = 271.080, z = 359.863 }, level = 1, area_id = 102 },
	{ config_id = 147015, gadget_id = 70950078, pos = { x = 175.630, y = 151.690, z = 463.580 }, rot = { x = 0.000, y = 109.533, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147016, gadget_id = 70350242, pos = { x = 175.718, y = 147.838, z = 463.382 }, rot = { x = 2.316, y = 359.759, z = 0.378 }, level = 1, area_id = 102 },
	{ config_id = 147017, gadget_id = 70950079, pos = { x = 183.360, y = 151.192, z = 441.740 }, rot = { x = 20.201, y = 152.280, z = 10.020 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147018, gadget_id = 70350211, pos = { x = 169.250, y = 151.740, z = 462.680 }, rot = { x = 0.000, y = 109.533, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147019, gadget_id = 70350270, pos = { x = 169.111, y = 147.752, z = 462.909 }, rot = { x = 0.000, y = 216.519, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 147020, gadget_id = 70350212, pos = { x = 169.568, y = 153.321, z = 464.843 }, rot = { x = 8.882, y = 99.429, z = 3.533 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147021, gadget_id = 70350212, pos = { x = 168.308, y = 153.320, z = 460.502 }, rot = { x = 9.350, y = 162.679, z = 358.054 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 147022, gadget_id = 70350243, pos = { x = 182.593, y = 146.314, z = 443.604 }, rot = { x = 19.554, y = 176.374, z = 8.753 }, level = 1, area_id = 102 },
	{ config_id = 147026, gadget_id = 70950073, pos = { x = 192.459, y = 150.157, z = 448.457 }, rot = { x = 0.000, y = 53.733, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 147028, gadget_id = 70950075, pos = { x = 189.333, y = 150.255, z = 446.691 }, rot = { x = 0.000, y = 238.221, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 147046, gadget_id = 70350085, pos = { x = 192.459, y = 150.157, z = 448.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 147047, gadget_id = 70350085, pos = { x = 189.333, y = 150.255, z = 446.691 }, rot = { x = 350.667, y = 330.255, z = 266.691 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147005, name = "SELECT_OPTION_147005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147005", action = "action_EVENT_SELECT_OPTION_147005", trigger_count = 0 },
	{ config_id = 1147006, name = "SELECT_OPTION_147006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147006", action = "action_EVENT_SELECT_OPTION_147006", trigger_count = 0 },
	{ config_id = 1147023, name = "GADGET_STATE_CHANGE_147023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147023", action = "action_EVENT_GADGET_STATE_CHANGE_147023", trigger_count = 0 },
	{ config_id = 1147024, name = "GADGET_STATE_CHANGE_147024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147024", action = "action_EVENT_GADGET_STATE_CHANGE_147024", trigger_count = 0 },
	{ config_id = 1147025, name = "SELECT_OPTION_147025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147025", action = "action_EVENT_SELECT_OPTION_147025", trigger_count = 0 },
	{ config_id = 1147029, name = "SELECT_OPTION_147029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147029", action = "action_EVENT_SELECT_OPTION_147029", trigger_count = 0 },
	-- 加载此玩法所需的Suites，必须要在Suite2/3中选一个
	{ config_id = 1147030, name = "GROUP_LOAD_147030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_147030", trigger_count = 0 },
	{ config_id = 1147031, name = "GADGET_STATE_CHANGE_147031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147031", action = "action_EVENT_GADGET_STATE_CHANGE_147031", trigger_count = 0 },
	{ config_id = 1147032, name = "GADGET_STATE_CHANGE_147032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147032", action = "action_EVENT_GADGET_STATE_CHANGE_147032", trigger_count = 0 },
	{ config_id = 1147033, name = "VARIABLE_CHANGE_147033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147033", action = "action_EVENT_VARIABLE_CHANGE_147033", trigger_count = 0 },
	{ config_id = 1147034, name = "TIMER_EVENT_147034", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_147034", action = "action_EVENT_TIMER_EVENT_147034", trigger_count = 0 },
	{ config_id = 1147035, name = "GADGET_STATE_CHANGE_147035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147035", action = "action_EVENT_GADGET_STATE_CHANGE_147035", trigger_count = 0 },
	{ config_id = 1147036, name = "GADGET_STATE_CHANGE_147036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147036", action = "action_EVENT_GADGET_STATE_CHANGE_147036", trigger_count = 0 },
	{ config_id = 1147037, name = "GADGET_STATE_CHANGE_147037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147037", action = "action_EVENT_GADGET_STATE_CHANGE_147037", trigger_count = 0 },
	{ config_id = 1147038, name = "GADGET_STATE_CHANGE_147038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147038", action = "action_EVENT_GADGET_STATE_CHANGE_147038", trigger_count = 0 },
	{ config_id = 1147039, name = "GADGET_STATE_CHANGE_147039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147039", action = "action_EVENT_GADGET_STATE_CHANGE_147039", trigger_count = 0 },
	{ config_id = 1147040, name = "GADGET_STATE_CHANGE_147040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147040", action = "action_EVENT_GADGET_STATE_CHANGE_147040", trigger_count = 0 },
	{ config_id = 1147041, name = "GADGET_CREATE_147041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147041", action = "action_EVENT_GADGET_CREATE_147041", trigger_count = 0 },
	{ config_id = 1147042, name = "GADGET_STATE_CHANGE_147042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147042", action = "action_EVENT_GADGET_STATE_CHANGE_147042", trigger_count = 0 },
	{ config_id = 1147043, name = "GADGET_STATE_CHANGE_147043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147043", action = "action_EVENT_GADGET_STATE_CHANGE_147043", trigger_count = 0 },
	{ config_id = 1147044, name = "GADGET_STATE_CHANGE_147044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147044", action = "action_EVENT_GADGET_STATE_CHANGE_147044", trigger_count = 0 },
	{ config_id = 1147045, name = "GADGET_CREATE_147045", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147045", action = "action_EVENT_GADGET_CREATE_147045", trigger_count = 0 },
	{ config_id = 1147048, name = "GADGET_STATE_CHANGE_147048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147048", action = "action_EVENT_GADGET_STATE_CHANGE_147048", trigger_count = 0 },
	{ config_id = 1147049, name = "ANY_GADGET_DIE_147049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147049", action = "action_EVENT_ANY_GADGET_DIE_147049", trigger_count = 0 },
	{ config_id = 1147050, name = "VARIABLE_CHANGE_147050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147050", action = "action_EVENT_VARIABLE_CHANGE_147050", trigger_count = 0 },
	{ config_id = 1147051, name = "TIMER_EVENT_147051", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_147051", action = "action_EVENT_TIMER_EVENT_147051", trigger_count = 0 },
	{ config_id = 1147052, name = "ANY_GADGET_DIE_147052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147052", action = "action_EVENT_ANY_GADGET_DIE_147052", trigger_count = 0 },
	{ config_id = 1147053, name = "GADGET_STATE_CHANGE_147053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147053", action = "action_EVENT_GADGET_STATE_CHANGE_147053", trigger_count = 0 },
	{ config_id = 1147054, name = "GADGET_STATE_CHANGE_147054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147054", action = "action_EVENT_GADGET_STATE_CHANGE_147054", trigger_count = 0 },
	{ config_id = 1147055, name = "ANY_GADGET_DIE_147055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147055", action = "action_EVENT_ANY_GADGET_DIE_147055", trigger_count = 0 },
	-- 加载此玩法所需的Suites，必须要在Suite2/3中选一个
	{ config_id = 1147056, name = "GROUP_LOAD_147056", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_147056", action = "action_EVENT_GROUP_LOAD_147056", trigger_count = 0 },
	-- 如果销毁了全部靶标，则开启宝箱
	{ config_id = 1147058, name = "VARIABLE_CHANGE_147058", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147058", action = "action_EVENT_VARIABLE_CHANGE_147058", trigger_count = 0 },
	{ config_id = 1147059, name = "GADGET_STATE_CHANGE_147059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147059", action = "action_EVENT_GADGET_STATE_CHANGE_147059", trigger_count = 0 },
	{ config_id = 1147060, name = "GADGET_STATE_CHANGE_147060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147060", action = "action_EVENT_GADGET_STATE_CHANGE_147060", trigger_count = 0 },
	{ config_id = 1147063, name = "GADGET_STATE_CHANGE_147063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147063", action = "action_EVENT_GADGET_STATE_CHANGE_147063", trigger_count = 0 },
	{ config_id = 1147064, name = "GADGET_STATE_CHANGE_147064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147064", action = "action_EVENT_GADGET_STATE_CHANGE_147064", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1147069, name = "ANY_GADGET_DIE_147069", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147069", action = "action_EVENT_ANY_GADGET_DIE_147069" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1147070, name = "GADGET_STATE_CHANGE_147070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147070", action = "action_EVENT_GADGET_STATE_CHANGE_147070" },
	{ config_id = 1147071, name = "GADGET_STATE_CHANGE_147071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147071", action = "action_EVENT_GADGET_STATE_CHANGE_147071", trigger_count = 0 },
	{ config_id = 1147072, name = "GADGET_STATE_CHANGE_147072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147072", action = "action_EVENT_GADGET_STATE_CHANGE_147072", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1147027, name = "SELECT_OPTION_147027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147027", action = "action_EVENT_SELECT_OPTION_147027", trigger_count = 0 }
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
	end_suite = 12,
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
		gadgets = { 147001, 147002 },
		regions = { },
		triggers = { "GROUP_LOAD_147030", "ANY_GADGET_DIE_147052", "ANY_GADGET_DIE_147055", "GROUP_LOAD_147056", "GADGET_STATE_CHANGE_147070", "GADGET_STATE_CHANGE_147071", "GADGET_STATE_CHANGE_147072" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球元素靶标],
		monsters = { },
		gadgets = { 147046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [需销毁1个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [需销毁多个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_147049", "VARIABLE_CHANGE_147050", "TIMER_EVENT_147051", "VARIABLE_CHANGE_147058" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 147003, 147004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147031", "GADGET_STATE_CHANGE_147032" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 147007, 147008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147036", "GADGET_STATE_CHANGE_147037" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 147009, 147010, 147011 },
		regions = { },
		triggers = { "SELECT_OPTION_147005", "SELECT_OPTION_147006", "SELECT_OPTION_147025", "SELECT_OPTION_147029", "VARIABLE_CHANGE_147033", "GADGET_STATE_CHANGE_147039", "GADGET_STATE_CHANGE_147040", "GADGET_CREATE_147041" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 147015, 147016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147053", "GADGET_STATE_CHANGE_147054" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 147018, 147019, 147020, 147021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147035", "GADGET_STATE_CHANGE_147038", "GADGET_STATE_CHANGE_147042", "GADGET_STATE_CHANGE_147048", "GADGET_STATE_CHANGE_147059", "GADGET_STATE_CHANGE_147060", "GADGET_STATE_CHANGE_147063", "GADGET_STATE_CHANGE_147064" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = [完成玩法后的空Suite],
		monsters = { },
		gadgets = { 147012, 147013, 147014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147043", "GADGET_STATE_CHANGE_147044", "GADGET_CREATE_147045" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 147017, 147022 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147023", "GADGET_STATE_CHANGE_147024" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = [完成玩法后的EndSuite],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 147026, 147028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 147047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIMER_EVENT_147034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_147005(context, evt)
	-- 判断是gadgetid 147011 option_id 211
	if 147011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147009, 400100003, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147006(context, evt)
	-- 判断是gadgetid 147011 option_id 211
	if 147011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147006(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147009, 400100003, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147023(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147023(context, evt)
	-- 将configid为 147017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147024(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147024(context, evt)
	-- 将configid为 147017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147025(context, evt)
	-- 判断是gadgetid 147011 option_id 211
	if 147011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147009, 400100003, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147029(context, evt)
	-- 判断是gadgetid 147011 option_id 211
	if 147011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147009, 400100003, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_147030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 10)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 11)
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 12)
	
	-- 变量"killedHoops"赋值为0
	ScriptLib.SetGroupVariableValue(context, "killedHoops", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147031(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147031(context, evt)
	-- 将configid为 147003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147032(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147032(context, evt)
	-- 将configid为 147003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147033(context, evt)
	-- 变量"turncount"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_147034(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_147034(context, evt)
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144001147, 147018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(1 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {147018}, "LudiSplitter_Active", DeltaValue)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 2)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 14)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 2)
	
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147035(context, evt)
	if 147018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147035(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147036(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147036(context, evt)
	-- 将configid为 147007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147037(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147037(context, evt)
	-- 将configid为 147007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147038(context, evt)
	if 147018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147038(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147039(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147039(context, evt)
	-- 将configid为 147009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147040(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147040(context, evt)
	-- 将configid为 147009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001147, 147011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147041(context, evt)
	if 147011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001147, 147011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147042(context, evt)
	if 147018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147042(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147043(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147043(context, evt)
	-- 将configid为 147012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144001147 ；指定config：147013；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001147, 147013, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147044(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147044(context, evt)
	-- 将configid为 147012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001147, 147011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147045(context, evt)
	if 147011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147045(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001147, 147011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147048(context, evt)
	if 147018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147048(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147049(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147049(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147050(context, evt)
	-- 延迟4秒后,向groupId为：144001147的对象,请求一次调用,并将string参数："waitForRecreateHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001147, "waitForRecreateHoops", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_147051(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_147051(context, evt)
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 13)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 13)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147052(context, evt)
	if 147028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147052(context, evt)
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147053(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147053(context, evt)
	-- 将configid为 147015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144001147 ；指定config：147017；物件身上指定option：215；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001147, 147017, 215) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 144001147 ；指定config：147017；物件身上指定option：216；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001147, 147017, 216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 147016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147054(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147054(context, evt)
	-- 将configid为 147015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001147, 147017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 147016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147055(context, evt)
	if 147026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147055(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_147056(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_147056(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147058(context, evt)
	-- 将configid为 147002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147059(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147059(context, evt)
	-- 将configid为 147018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144001147, 147018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(1 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {147018}, "LudiSplitter_Active", DeltaValue)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147060(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147060(context, evt)
	-- 将configid为 147018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144001147, 147018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(0 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {147018}, "LudiSplitter_Active", DeltaValue)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147063(context, evt)
	if 147018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147063(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147064(context, evt)
	if 147020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147064(context, evt)
	-- 将configid为 147018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144001147, 147018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(0 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {147018}, "LudiSplitter_Active", DeltaValue)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147069(context, evt)
	if 147026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147069(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147070(context, evt)
	if 147002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147070(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001147, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147071(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147071(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 2)
	
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 14)
	
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001147, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147072(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147072(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 2)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 14)
	
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001147, 15)
	
	return 0
end