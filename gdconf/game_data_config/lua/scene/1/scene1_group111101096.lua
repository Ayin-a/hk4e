-- 基础信息
local base_info = {
	group_id = 111101096
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
	{ config_id = 96001, gadget_id = 70360006, pos = { x = 2809.044, y = 201.830, z = -1769.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 96003, gadget_id = 70211101, pos = { x = 2779.115, y = 196.162, z = -1750.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 96004, gadget_id = 70950076, pos = { x = 2805.120, y = 199.877, z = -1779.815 }, rot = { x = 0.000, y = 29.283, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96005, gadget_id = 70350240, pos = { x = 2805.071, y = 196.193, z = -1779.712 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1 },
	{ config_id = 96008, gadget_id = 70950076, pos = { x = 2799.693, y = 199.426, z = -1774.031 }, rot = { x = 0.000, y = 246.625, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96009, gadget_id = 70350240, pos = { x = 2799.668, y = 195.958, z = -1774.143 }, rot = { x = 0.000, y = 284.893, z = 0.000 }, level = 1 },
	{ config_id = 96013, gadget_id = 70950079, pos = { x = 2798.219, y = 200.358, z = -1764.958 }, rot = { x = 0.000, y = 94.153, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96014, gadget_id = 70350243, pos = { x = 2798.292, y = 196.927, z = -1764.870 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1 },
	{ config_id = 96018, gadget_id = 70950079, pos = { x = 2805.364, y = 201.519, z = -1758.745 }, rot = { x = 0.000, y = 161.767, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96019, gadget_id = 70350243, pos = { x = 2805.473, y = 198.077, z = -1758.780 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1 },
	{ config_id = 96023, gadget_id = 70360001, pos = { x = 2805.473, y = 198.066, z = -1758.780 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1 },
	{ config_id = 96025, gadget_id = 70950078, pos = { x = 2820.684, y = 200.836, z = -1770.217 }, rot = { x = 0.000, y = 277.789, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96026, gadget_id = 70950077, pos = { x = 2816.378, y = 202.548, z = -1761.038 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1 },
	{ config_id = 96027, gadget_id = 70350241, pos = { x = 2816.363, y = 198.465, z = -1760.925 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1 },
	{ config_id = 96028, gadget_id = 70360001, pos = { x = 2816.363, y = 198.836, z = -1760.925 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1 },
	{ config_id = 96039, gadget_id = 70350242, pos = { x = 2820.605, y = 197.383, z = -1770.300 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 96040, gadget_id = 70360001, pos = { x = 2820.605, y = 197.383, z = -1770.300 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 96048, gadget_id = 70350211, pos = { x = 2819.021, y = 198.805, z = -1779.448 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96049, gadget_id = 70900051, pos = { x = 2818.865, y = 197.411, z = -1779.503 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1 },
	{ config_id = 96052, gadget_id = 70350212, pos = { x = 2820.035, y = 200.493, z = -1777.814 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96053, gadget_id = 70350212, pos = { x = 2818.033, y = 200.442, z = -1781.074 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96054, gadget_id = 70350211, pos = { x = 2810.462, y = 197.571, z = -1786.577 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96055, gadget_id = 70900051, pos = { x = 2810.552, y = 196.177, z = -1786.647 }, rot = { x = 0.000, y = 220.515, z = 0.000 }, level = 1 },
	{ config_id = 96056, gadget_id = 70350212, pos = { x = 2812.383, y = 199.259, z = -1786.664 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96057, gadget_id = 70350212, pos = { x = 2808.561, y = 199.209, z = -1786.507 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 96066, gadget_id = 70950073, pos = { x = 2803.481, y = 202.826, z = -1782.785 }, rot = { x = 0.000, y = 33.749, z = 0.000 }, level = 1 },
	{ config_id = 96069, gadget_id = 70950074, pos = { x = 2819.021, y = 204.254, z = -1758.651 }, rot = { x = 0.000, y = 55.432, z = 0.000 }, level = 1 },
	{ config_id = 96070, gadget_id = 70950075, pos = { x = 2823.349, y = 202.889, z = -1770.418 }, rot = { x = 0.000, y = 274.731, z = 0.000 }, level = 1 },
	{ config_id = 96071, gadget_id = 70950073, pos = { x = 2796.416, y = 201.505, z = -1775.495 }, rot = { x = 0.000, y = 249.227, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096002, name = "GROUP_LOAD_96002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_96002", trigger_count = 0 },
	{ config_id = 1096006, name = "GADGET_STATE_CHANGE_96006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96006", action = "action_EVENT_GADGET_STATE_CHANGE_96006", trigger_count = 0 },
	{ config_id = 1096007, name = "GADGET_STATE_CHANGE_96007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96007", action = "action_EVENT_GADGET_STATE_CHANGE_96007", trigger_count = 0 },
	{ config_id = 1096010, name = "GADGET_STATE_CHANGE_96010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96010", action = "action_EVENT_GADGET_STATE_CHANGE_96010", trigger_count = 0 },
	{ config_id = 1096011, name = "GADGET_STATE_CHANGE_96011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96011", action = "action_EVENT_GADGET_STATE_CHANGE_96011", trigger_count = 0 },
	{ config_id = 1096012, name = "PLATFORM_REACH_POINT_96012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96012", action = "action_EVENT_PLATFORM_REACH_POINT_96012", trigger_count = 0 },
	{ config_id = 1096015, name = "GADGET_STATE_CHANGE_96015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96015", action = "action_EVENT_GADGET_STATE_CHANGE_96015", trigger_count = 0 },
	{ config_id = 1096016, name = "GADGET_STATE_CHANGE_96016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96016", action = "action_EVENT_GADGET_STATE_CHANGE_96016", trigger_count = 0 },
	{ config_id = 1096017, name = "PLATFORM_REACH_POINT_96017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96017", action = "action_EVENT_PLATFORM_REACH_POINT_96017", trigger_count = 0 },
	{ config_id = 1096020, name = "GADGET_STATE_CHANGE_96020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96020", action = "action_EVENT_GADGET_STATE_CHANGE_96020", trigger_count = 0 },
	{ config_id = 1096021, name = "GADGET_STATE_CHANGE_96021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96021", action = "action_EVENT_GADGET_STATE_CHANGE_96021", trigger_count = 0 },
	{ config_id = 1096022, name = "GADGET_CREATE_96022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_96022", action = "action_EVENT_GADGET_CREATE_96022", trigger_count = 0 },
	{ config_id = 1096024, name = "SELECT_OPTION_96024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_96024", action = "action_EVENT_SELECT_OPTION_96024", trigger_count = 0 },
	{ config_id = 1096029, name = "GADGET_STATE_CHANGE_96029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96029", action = "action_EVENT_GADGET_STATE_CHANGE_96029", trigger_count = 0 },
	{ config_id = 1096030, name = "GADGET_STATE_CHANGE_96030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96030", action = "action_EVENT_GADGET_STATE_CHANGE_96030", trigger_count = 0 },
	{ config_id = 1096031, name = "GADGET_CREATE_96031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_96031", action = "action_EVENT_GADGET_CREATE_96031", trigger_count = 0 },
	{ config_id = 1096032, name = "SELECT_OPTION_96032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_96032", action = "action_EVENT_SELECT_OPTION_96032", trigger_count = 0 },
	{ config_id = 1096033, name = "SELECT_OPTION_96033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_96033", action = "action_EVENT_SELECT_OPTION_96033", trigger_count = 0 },
	{ config_id = 1096034, name = "PLATFORM_REACH_POINT_96034", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96034", action = "action_EVENT_PLATFORM_REACH_POINT_96034", trigger_count = 0 },
	{ config_id = 1096035, name = "PLATFORM_REACH_POINT_96035", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96035", action = "action_EVENT_PLATFORM_REACH_POINT_96035", trigger_count = 0 },
	{ config_id = 1096036, name = "PLATFORM_REACH_POINT_96036", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96036", action = "action_EVENT_PLATFORM_REACH_POINT_96036", trigger_count = 0 },
	{ config_id = 1096037, name = "SELECT_OPTION_96037", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_96037", action = "action_EVENT_SELECT_OPTION_96037", trigger_count = 0 },
	{ config_id = 1096038, name = "SELECT_OPTION_96038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_96038", action = "action_EVENT_SELECT_OPTION_96038", trigger_count = 0 },
	{ config_id = 1096041, name = "GADGET_STATE_CHANGE_96041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96041", action = "action_EVENT_GADGET_STATE_CHANGE_96041", trigger_count = 0 },
	{ config_id = 1096042, name = "GADGET_STATE_CHANGE_96042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96042", action = "action_EVENT_GADGET_STATE_CHANGE_96042", trigger_count = 0 },
	{ config_id = 1096043, name = "GADGET_CREATE_96043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_96043", action = "action_EVENT_GADGET_CREATE_96043", trigger_count = 0 },
	{ config_id = 1096044, name = "SELECT_OPTION_96044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_96044", action = "action_EVENT_SELECT_OPTION_96044", trigger_count = 0 },
	{ config_id = 1096045, name = "SELECT_OPTION_96045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_96045", action = "action_EVENT_SELECT_OPTION_96045", trigger_count = 0 },
	{ config_id = 1096046, name = "PLATFORM_REACH_POINT_96046", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96046", action = "action_EVENT_PLATFORM_REACH_POINT_96046", trigger_count = 0 },
	{ config_id = 1096047, name = "PLATFORM_REACH_POINT_96047", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96047", action = "action_EVENT_PLATFORM_REACH_POINT_96047", trigger_count = 0 },
	{ config_id = 1096050, name = "GADGET_STATE_CHANGE_96050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96050", action = "action_EVENT_GADGET_STATE_CHANGE_96050", trigger_count = 0 },
	{ config_id = 1096051, name = "GADGET_STATE_CHANGE_96051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96051", action = "action_EVENT_GADGET_STATE_CHANGE_96051", trigger_count = 0 },
	{ config_id = 1096058, name = "GADGET_STATE_CHANGE_96058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96058", action = "action_EVENT_GADGET_STATE_CHANGE_96058", trigger_count = 0 },
	{ config_id = 1096059, name = "GADGET_STATE_CHANGE_96059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96059", action = "action_EVENT_GADGET_STATE_CHANGE_96059", trigger_count = 0 },
	{ config_id = 1096060, name = "GADGET_STATE_CHANGE_96060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96060", action = "action_EVENT_GADGET_STATE_CHANGE_96060", trigger_count = 0 },
	{ config_id = 1096061, name = "GADGET_STATE_CHANGE_96061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96061", action = "action_EVENT_GADGET_STATE_CHANGE_96061", trigger_count = 0 },
	{ config_id = 1096062, name = "GADGET_STATE_CHANGE_96062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96062", action = "action_EVENT_GADGET_STATE_CHANGE_96062", trigger_count = 0 },
	{ config_id = 1096063, name = "GADGET_STATE_CHANGE_96063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96063", action = "action_EVENT_GADGET_STATE_CHANGE_96063", trigger_count = 0 },
	{ config_id = 1096064, name = "PLATFORM_REACH_POINT_96064", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96064", action = "action_EVENT_PLATFORM_REACH_POINT_96064", trigger_count = 0 },
	{ config_id = 1096065, name = "PLATFORM_REACH_POINT_96065", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96065", action = "action_EVENT_PLATFORM_REACH_POINT_96065", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1096067, name = "ANY_GADGET_DIE_96067", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_96067", action = "action_EVENT_ANY_GADGET_DIE_96067" },
	-- 开启了宝箱后1)刷新Group进度2)移除发球线
	{ config_id = 1096068, name = "ANY_GADGET_DIE_96068", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_96068", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false }
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
		-- description = [默认加载的Entities],
		monsters = { },
		gadgets = { 96001 },
		regions = { },
		triggers = { "GROUP_LOAD_96002", "ANY_GADGET_DIE_96067", "ANY_GADGET_DIE_96068" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 96066, 96069, 96070, 96071 },
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
		gadgets = { 96004, 96005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96006", "GADGET_STATE_CHANGE_96007" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载往复运动的元素台座],
		monsters = { },
		gadgets = { 96008, 96009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96010", "GADGET_STATE_CHANGE_96011", "PLATFORM_REACH_POINT_96012" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 96013, 96014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96015", "GADGET_STATE_CHANGE_96016", "PLATFORM_REACH_POINT_96017" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 96018, 96019, 96023 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96020", "GADGET_STATE_CHANGE_96021", "GADGET_CREATE_96022", "SELECT_OPTION_96024" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 96026, 96027, 96028 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96029", "GADGET_STATE_CHANGE_96030", "GADGET_CREATE_96031", "SELECT_OPTION_96032", "SELECT_OPTION_96033", "PLATFORM_REACH_POINT_96034", "PLATFORM_REACH_POINT_96035", "PLATFORM_REACH_POINT_96036", "SELECT_OPTION_96037", "SELECT_OPTION_96038" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 96025, 96039, 96040 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96041", "GADGET_STATE_CHANGE_96042", "GADGET_CREATE_96043", "SELECT_OPTION_96044", "SELECT_OPTION_96045", "PLATFORM_REACH_POINT_96046", "PLATFORM_REACH_POINT_96047" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 96048, 96049, 96052, 96053 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96050", "GADGET_STATE_CHANGE_96051", "GADGET_STATE_CHANGE_96060", "GADGET_STATE_CHANGE_96061" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = [加载往复运动的分裂台座],
		monsters = { },
		gadgets = { 96054, 96055, 96056, 96057 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96058", "GADGET_STATE_CHANGE_96059", "GADGET_STATE_CHANGE_96062", "GADGET_STATE_CHANGE_96063", "PLATFORM_REACH_POINT_96064", "PLATFORM_REACH_POINT_96065" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_96002(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 10)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 11)
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96006(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96006(context, evt)
	-- 将configid为 96004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96004, 110100015, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96007(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96007(context, evt)
	-- 将configid为 96004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96004, 110100015, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96010(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96010(context, evt)
	-- 将configid为 96008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96008, 110100016, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96011(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96011(context, evt)
	-- 将configid为 96008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96008, 110100016, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96012(context, evt)
	-- 判断是gadgetid 为 96008的移动平台，是否到达了0 的点集中的 0 点
	
	if 96008 ~= evt.param1 then
	  return false
	end
	
	if 0 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96012(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96008, 110100016, {3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96015(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96015(context, evt)
	-- 将configid为 96013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96013, 110100017, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96016(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96016(context, evt)
	-- 将configid为 96013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96013, 110100017, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96017(context, evt)
	-- 判断是gadgetid 为 96013的移动平台，是否到达了110100017 的路线中的 2 点
	
	if 96013 ~= evt.param1 then
	  return false
	end
	
	if 110100017 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96013, 110100017, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96020(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96020(context, evt)
	-- 将configid为 96018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96018, 110100018, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96023；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96023, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96021(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96021(context, evt)
	-- 将configid为 96018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96018, 110100018, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96023, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_96022(context, evt)
	if 96023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_96022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96023, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_96024(context, evt)
	-- 判断是gadgetid 96023 option_id 211
	if 96023 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_96024(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96018, 110100018, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96029(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96029(context, evt)
	-- 将configid为 96026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96026, 110100019, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96028；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96028, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96028；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96028, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96030(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96030(context, evt)
	-- 将configid为 96026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96026, 110100019, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96028, {33,34}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_96031(context, evt)
	if 96028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_96031(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96028, {33,34}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_96032(context, evt)
	-- 判断是gadgetid 96028 option_id 33
	if 96028 ~= evt.param1 then
		return false	
	end
	
	if 33 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"hoop1Pos"为0
	if ScriptLib.GetGroupVariableValue(context, "hoop1Pos") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_96032(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96026, 110100019, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_96033(context, evt)
	-- 判断是gadgetid 96028 option_id 34
	if 96028 ~= evt.param1 then
		return false	
	end
	
	if 34 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"hoop1Pos"为0
	if ScriptLib.GetGroupVariableValue(context, "hoop1Pos") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_96033(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96026, 110100019, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96034(context, evt)
	-- 判断是gadgetid 为 96026的移动平台，是否到达了110100019 的路线中的 5 点
	
	if 96026 ~= evt.param1 then
	  return false
	end
	
	if 110100019 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96034(context, evt)
	-- 将本组内变量名为 "hoop1Pos" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hoop1Pos", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96028；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96028, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96028；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96028, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96028, {33,34}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96035(context, evt)
	-- 判断是gadgetid 为 96026的移动平台，是否到达了110100019 的路线中的 4 点
	
	if 96026 ~= evt.param1 then
	  return false
	end
	
	if 110100019 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96035(context, evt)
	-- 将本组内变量名为 "hoop1Pos" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hoop1Pos", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96028；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96028, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96036(context, evt)
	-- 判断是gadgetid 为 96026的移动平台，是否到达了110100019 的路线中的 3 点
	
	if 96026 ~= evt.param1 then
	  return false
	end
	
	if 110100019 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96036(context, evt)
	-- 将本组内变量名为 "hoop1Pos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hoop1Pos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96028；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96028, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_96037(context, evt)
	-- 判断是gadgetid 96028 option_id 34
	if 96028 ~= evt.param1 then
		return false	
	end
	
	if 34 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"hoop1Pos"为1
	if ScriptLib.GetGroupVariableValue(context, "hoop1Pos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_96037(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96026, 110100019, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_96038(context, evt)
	-- 判断是gadgetid 96028 option_id 33
	if 96028 ~= evt.param1 then
		return false	
	end
	
	if 33 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"hoop1Pos"为2
	if ScriptLib.GetGroupVariableValue(context, "hoop1Pos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_96038(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96026, 110100019, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96041(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96041(context, evt)
	-- 将configid为 96026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111101096 ；指定config：96040；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96040, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96040；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96040, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96042(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96042(context, evt)
	-- 将configid为 96026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96025, 110100020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96040, {33}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_96043(context, evt)
	if 96040 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_96043(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96040, {33,34}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_96044(context, evt)
	-- 判断是gadgetid 96040 option_id 33
	if 96040 ~= evt.param1 then
		return false	
	end
	
	if 33 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_96044(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96025, 110100020, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96040；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96040, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_96045(context, evt)
	-- 判断是gadgetid 96040 option_id 34
	if 96040 ~= evt.param1 then
		return false	
	end
	
	if 34 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_96045(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96025, 110100020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除指定group： 111101096 ；指定config：96040；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96040, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96046(context, evt)
	-- 判断是gadgetid 为 96025的移动平台，是否到达了110100020 的路线中的 1 点
	
	if 96025 ~= evt.param1 then
	  return false
	end
	
	if 110100020 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96046(context, evt)
	-- 删除指定group： 111101096 ；指定config：96040；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96040, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96040, {34}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96047(context, evt)
	-- 判断是gadgetid 为 96025的移动平台，是否到达了110100020 的路线中的 2 点
	
	if 96025 ~= evt.param1 then
	  return false
	end
	
	if 110100020 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96047(context, evt)
	-- 删除指定group： 111101096 ；指定config：96040；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101096, 96040, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101096, 96040, {33}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96050(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96050(context, evt)
	-- 将configid为 96048 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96048, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96052 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96052, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96053 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96053, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96048, 110100021, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96052, 110100021, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96053, 110100021, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96051(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96051(context, evt)
	-- 将configid为 96048 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96048, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96052 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96052, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96053 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96053, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96048, 110100021, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96052, 110100021, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96053, 110100021, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96049 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96049, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96058(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96058(context, evt)
	-- 将configid为 96054 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96054, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96056 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96056, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96057 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96057, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96054, 110100022, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96056, 110100022, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96057, 110100022, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96055 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96055, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96059(context, evt)
	if 96001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96059(context, evt)
	-- 将configid为 96054 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96054, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96056 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96056, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96057 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96057, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96054, 110100022, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96056, 110100022, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96057, 110100022, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 96055 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96055, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101096, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96060(context, evt)
	if 96048 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96060(context, evt)
	-- 将configid为 96052 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96052, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96053 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96053, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96061(context, evt)
	if 96052 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96061(context, evt)
	-- 将configid为 96048 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96048, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96062(context, evt)
	if 96054 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96062(context, evt)
	-- 将configid为 96056 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96056, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96057 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96057, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96063(context, evt)
	if 96056 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96063(context, evt)
	-- 将configid为 96057 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96057, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96064(context, evt)
	-- 判断是gadgetid 为 96056的移动平台，是否到达了110100022 的路线中的 5 点
	
	if 96056 ~= evt.param1 then
	  return false
	end
	
	if 110100022 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96064(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96056, 110100022, {5,7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96065(context, evt)
	-- 判断是gadgetid 为 96057的移动平台，是否到达了110100022 的路线中的 6 点
	
	if 96057 ~= evt.param1 then
	  return false
	end
	
	if 110100022 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_96065(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 96057, 110100022, {6,8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_96067(context, evt)
	if 96066 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_96067(context, evt)
	-- 创建id为96003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 96003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_96068(context, evt)
	if 96003 ~= evt.param1 then
		return false
	end
	
	return true
end