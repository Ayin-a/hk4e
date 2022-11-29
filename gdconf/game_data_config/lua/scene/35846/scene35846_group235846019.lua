-- 基础信息
local base_info = {
	group_id = 235846019
}

-- DEFS_MISCS
local defs = {
challenge_id = 2010046,
    --起始操作台
    starter = 19001,
    --起始操作台选项
    option_id = 24,
    --波次之间延时 秒
    delay = 3,
    --挑战总时限 秒
    time_limit = 300,

    --怪物潮信息
    --monsters填入怪物configID，
    --当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
    --spec_event:随着本怪物潮的出现而发生的关卡事件。为LD约定好的枚举。
    tide_cfg = {

        [1] = { monsters = {19024,19030,19031,19066}, min = 4, max = 4},
        [2] = { monsters = {19067,19068,19069,19070}, min = 4, max = 4},
        [3] = { monsters = {19013,19017,19028,19060,19061,19062}, min = 6, max = 6},
        [4] = { monsters = {19014,19018,19022,19029,19063,19064}, min = 6, max = 6},
        [5] = { monsters = {19020}, min = 1, max = 1},
        [6] = { monsters = {19016}, min = 1, max = 1},
        [7] = { monsters = {19015,19021,19023,19065}, min = 4, max = 4},
        [8] = { monsters = {19019,19025,19026,19027}, min = 4, max = 4},
    },
    --怪物潮随机表
    --随机固定顺序怪物潮组合 每次进地城随机取key。
    --key对应value代表依序出现的MonsterTide，小花括号内配置复数个表示同时刷出。
    rand_table = {
        [1] = 
        {
            {1},
            {3},
            {7},
            {5}
        },
        [2] = 
        {
            {2},
            {4},
            {8},
            {6}
        },
    },
    --谁的地城 1-万叶 2-辛焱 3-菲谢尔 4-莫娜
    type =2 ,

    --莫娜、辛焱需配这里-随机suite池
    rand_suites = {9,10},

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[19013] = { config_id = 19013, monster_id = 20011501, pos = { x = 2630.693, y = 583.923, z = -1763.575 }, rot = { x = 0.000, y = 131.871, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19014] = { config_id = 19014, monster_id = 20011502, pos = { x = 2631.485, y = 583.937, z = -1768.034 }, rot = { x = 0.000, y = 135.856, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19015] = { config_id = 19015, monster_id = 24010101, pos = { x = 2645.742, y = 583.911, z = -1771.859 }, rot = { x = 0.000, y = 256.816, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19016] = { config_id = 19016, monster_id = 21020501, pos = { x = 2632.214, y = 583.929, z = -1774.503 }, rot = { x = 0.000, y = 86.822, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19017] = { config_id = 19017, monster_id = 20011501, pos = { x = 2630.865, y = 583.923, z = -1779.214 }, rot = { x = 0.000, y = 52.336, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19018] = { config_id = 19018, monster_id = 21011201, pos = { x = 2631.623, y = 583.922, z = -1779.247 }, rot = { x = 0.000, y = 41.818, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19019] = { config_id = 19019, monster_id = 21010502, pos = { x = 2644.503, y = 583.910, z = -1769.636 }, rot = { x = 0.000, y = 289.159, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19020] = { config_id = 19020, monster_id = 21020501, pos = { x = 2645.415, y = 584.050, z = -1768.955 }, rot = { x = 0.000, y = 269.470, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19021] = { config_id = 19021, monster_id = 24010101, pos = { x = 2628.716, y = 583.923, z = -1771.783 }, rot = { x = 0.000, y = 86.063, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19022] = { config_id = 19022, monster_id = 23010401, pos = { x = 2644.521, y = 583.922, z = -1767.620 }, rot = { x = 0.000, y = 238.391, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19023] = { config_id = 19023, monster_id = 21010502, pos = { x = 2637.806, y = 583.911, z = -1765.122 }, rot = { x = 0.000, y = 192.988, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19024] = { config_id = 19024, monster_id = 20011304, pos = { x = 2633.571, y = 583.993, z = -1776.805 }, rot = { x = 0.000, y = 39.746, z = 0.000 }, level = 1 },
	[19025] = { config_id = 19025, monster_id = 21010502, pos = { x = 2632.987, y = 583.906, z = -1774.027 }, rot = { x = 0.000, y = 77.752, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19026] = { config_id = 19026, monster_id = 24010101, pos = { x = 2637.564, y = 583.910, z = -1778.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19027] = { config_id = 19027, monster_id = 24010101, pos = { x = 2637.409, y = 583.902, z = -1764.775 }, rot = { x = 0.000, y = 173.330, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19028] = { config_id = 19028, monster_id = 21030401, pos = { x = 2642.750, y = 583.929, z = -1767.808 }, rot = { x = 0.000, y = 275.005, z = 0.000 }, level = 1 },
	[19029] = { config_id = 19029, monster_id = 23010401, pos = { x = 2645.482, y = 583.929, z = -1777.513 }, rot = { x = 0.000, y = 306.229, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19030] = { config_id = 19030, monster_id = 21010502, pos = { x = 2641.471, y = 583.911, z = -1777.188 }, rot = { x = 0.000, y = 339.225, z = 0.000 }, level = 1 },
	[19031] = { config_id = 19031, monster_id = 20011304, pos = { x = 2641.888, y = 584.052, z = -1768.459 }, rot = { x = 0.000, y = 220.109, z = 0.000 }, level = 1 },
	[19060] = { config_id = 19060, monster_id = 20011401, pos = { x = 2641.639, y = 583.929, z = -1778.478 }, rot = { x = 0.000, y = 304.166, z = 0.000 }, level = 1 },
	[19061] = { config_id = 19061, monster_id = 23010401, pos = { x = 2638.936, y = 583.929, z = -1772.104 }, rot = { x = 0.000, y = 275.005, z = 0.000 }, level = 1 },
	[19062] = { config_id = 19062, monster_id = 20011401, pos = { x = 2643.336, y = 583.929, z = -1775.335 }, rot = { x = 0.000, y = 298.230, z = 0.000 }, level = 1 },
	[19063] = { config_id = 19063, monster_id = 21030401, pos = { x = 2642.999, y = 583.929, z = -1772.578 }, rot = { x = 0.000, y = 279.230, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19064] = { config_id = 19064, monster_id = 21030401, pos = { x = 2633.840, y = 583.929, z = -1773.223 }, rot = { x = 0.000, y = 80.721, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19065] = { config_id = 19065, monster_id = 21010502, pos = { x = 2637.433, y = 583.911, z = -1779.661 }, rot = { x = 0.000, y = 355.074, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19066] = { config_id = 19066, monster_id = 21010502, pos = { x = 2633.772, y = 584.049, z = -1768.868 }, rot = { x = 0.000, y = 139.840, z = 0.000 }, level = 1 },
	[19067] = { config_id = 19067, monster_id = 20011304, pos = { x = 2641.930, y = 583.993, z = -1776.643 }, rot = { x = 0.000, y = 305.691, z = 0.000 }, level = 1 },
	[19068] = { config_id = 19068, monster_id = 21010502, pos = { x = 2641.754, y = 583.911, z = -1768.736 }, rot = { x = 0.000, y = 245.171, z = 0.000 }, level = 1 },
	[19069] = { config_id = 19069, monster_id = 20011304, pos = { x = 2633.017, y = 584.052, z = -1768.937 }, rot = { x = 0.000, y = 126.054, z = 0.000 }, level = 1 },
	[19070] = { config_id = 19070, monster_id = 21010502, pos = { x = 2634.000, y = 584.049, z = -1777.003 }, rot = { x = 0.000, y = 45.786, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[19001] = { config_id = 19001, gadget_id = 70360010, pos = { x = 2630.927, y = 583.837, z = -1772.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 24 } } },
	[19003] = { config_id = 19003, gadget_id = 70950011, pos = { x = 2623.024, y = 584.149, z = -1747.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19004] = { config_id = 19004, gadget_id = 70950011, pos = { x = 2652.701, y = 584.149, z = -1747.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19005] = { config_id = 19005, gadget_id = 70950011, pos = { x = 2656.807, y = 584.149, z = -1796.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19006] = { config_id = 19006, gadget_id = 70950011, pos = { x = 2623.472, y = 584.149, z = -1796.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19007] = { config_id = 19007, gadget_id = 70950011, pos = { x = 2616.157, y = 583.791, z = -1765.313 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19008] = { config_id = 19008, gadget_id = 70950011, pos = { x = 2616.157, y = 584.149, z = -1791.823 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19009] = { config_id = 19009, gadget_id = 70950011, pos = { x = 2616.157, y = 584.149, z = -1753.434 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19010] = { config_id = 19010, gadget_id = 70950011, pos = { x = 2659.727, y = 584.149, z = -1764.004 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19011] = { config_id = 19011, gadget_id = 70950011, pos = { x = 2659.727, y = 584.149, z = -1790.319 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19012] = { config_id = 19012, gadget_id = 70950011, pos = { x = 2659.727, y = 584.149, z = -1756.703 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19032] = { config_id = 19032, gadget_id = 70310321, pos = { x = 2654.551, y = 583.804, z = -1767.355 }, rot = { x = 0.000, y = 269.758, z = 0.000 }, level = 1 },
	[19033] = { config_id = 19033, gadget_id = 70220111, pos = { x = 2654.480, y = 583.932, z = -1771.292 }, rot = { x = 0.000, y = 267.204, z = 0.000 }, level = 1, interact_id = 64 },
	[19035] = { config_id = 19035, gadget_id = 70310321, pos = { x = 2655.083, y = 583.804, z = -1775.432 }, rot = { x = 0.000, y = 274.019, z = 0.000 }, level = 1 },
	[19036] = { config_id = 19036, gadget_id = 70220112, pos = { x = 2638.186, y = 583.998, z = -1772.183 }, rot = { x = 0.000, y = 269.067, z = 0.000 }, level = 1, interact_id = 64 },
	[19037] = { config_id = 19037, gadget_id = 70310322, pos = { x = 2634.849, y = 584.037, z = -1766.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19038] = { config_id = 19038, gadget_id = 70310322, pos = { x = 2634.793, y = 584.042, z = -1777.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19040] = { config_id = 19040, gadget_id = 70310321, pos = { x = 2623.097, y = 583.714, z = -1785.019 }, rot = { x = 2.250, y = 50.982, z = 359.793 }, level = 1 },
	[19041] = { config_id = 19041, gadget_id = 70220111, pos = { x = 2621.183, y = 583.911, z = -1781.694 }, rot = { x = 0.000, y = 82.383, z = 0.000 }, level = 1, interact_id = 64 },
	[19042] = { config_id = 19042, gadget_id = 70220111, pos = { x = 2620.877, y = 583.879, z = -1763.939 }, rot = { x = 359.639, y = 92.925, z = 1.764 }, level = 1, interact_id = 64 },
	[19043] = { config_id = 19043, gadget_id = 70310321, pos = { x = 2622.301, y = 583.786, z = -1760.601 }, rot = { x = 4.368, y = 124.287, z = 0.990 }, level = 1 },
	[19044] = { config_id = 19044, gadget_id = 70220112, pos = { x = 2640.793, y = 583.998, z = -1772.146 }, rot = { x = 0.000, y = 269.067, z = 0.000 }, level = 1, interact_id = 64 },
	[19045] = { config_id = 19045, gadget_id = 70310322, pos = { x = 2636.760, y = 583.951, z = -1766.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19046] = { config_id = 19046, gadget_id = 70310322, pos = { x = 2636.797, y = 583.996, z = -1777.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19048] = { config_id = 19048, gadget_id = 70220118, pos = { x = 2634.849, y = 584.037, z = -1766.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19049] = { config_id = 19049, gadget_id = 70220118, pos = { x = 2634.793, y = 584.042, z = -1777.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19053] = { config_id = 19053, gadget_id = 70220118, pos = { x = 2636.760, y = 583.951, z = -1766.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19054] = { config_id = 19054, gadget_id = 70220118, pos = { x = 2636.797, y = 583.996, z = -1777.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19057] = { config_id = 19057, gadget_id = 70310322, pos = { x = 2643.571, y = 584.015, z = -1772.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19059] = { config_id = 19059, gadget_id = 70220118, pos = { x = 2643.571, y = 584.015, z = -1772.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19071] = { config_id = 19071, gadget_id = 70900201, pos = { x = 2630.927, y = 583.837, z = -1772.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19073] = { config_id = 19073, gadget_id = 70950011, pos = { x = 2639.117, y = 584.149, z = -1747.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19074] = { config_id = 19074, gadget_id = 70950011, pos = { x = 2640.968, y = 584.149, z = -1796.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19075] = { config_id = 19075, gadget_id = 70950011, pos = { x = 2616.157, y = 583.791, z = -1778.548 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19076] = { config_id = 19076, gadget_id = 70950011, pos = { x = 2659.727, y = 584.149, z = -1774.122 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019002, name = "SELECT_OPTION_19002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19002", action = "action_EVENT_SELECT_OPTION_19002", trigger_count = 0 },
	{ config_id = 1019039, name = "GADGET_STATE_CHANGE_19039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19039", action = "action_EVENT_GADGET_STATE_CHANGE_19039", trigger_count = 0 },
	{ config_id = 1019047, name = "GADGET_STATE_CHANGE_19047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19047", action = "action_EVENT_GADGET_STATE_CHANGE_19047", trigger_count = 0 },
	-- 37激活-创时间轴-WindTimeA
	{ config_id = 1019050, name = "GADGET_STATE_CHANGE_19050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19050", action = "action_EVENT_GADGET_STATE_CHANGE_19050", trigger_count = 0 },
	{ config_id = 1019051, name = "CHALLENGE_SUCCESS_19051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010046", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_19051", trigger_count = 0 },
	{ config_id = 1019052, name = "TIME_AXIS_PASS_19052", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_19052", action = "action_EVENT_TIME_AXIS_PASS_19052", trigger_count = 0 },
	{ config_id = 1019055, name = "CHALLENGE_FAIL_19055", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010046", condition = "", action = "action_EVENT_CHALLENGE_FAIL_19055", trigger_count = 0 },
	-- 45激活-创时间轴-WindTimeB
	{ config_id = 1019056, name = "GADGET_STATE_CHANGE_19056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19056", action = "action_EVENT_GADGET_STATE_CHANGE_19056", trigger_count = 0 },
	{ config_id = 1019058, name = "TIME_AXIS_PASS_19058", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_19058", action = "action_EVENT_TIME_AXIS_PASS_19058", trigger_count = 0 },
	-- 第一次交互即将黄点移除
	{ config_id = 1019072, name = "SELECT_OPTION_19072", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19072", action = "action_EVENT_SELECT_OPTION_19072" },
	{ config_id = 1019077, name = "VARIABLE_CHANGE_19077", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_19077", action = "action_EVENT_VARIABLE_CHANGE_19077", trigger_count = 0 },
	{ config_id = 1019078, name = "GROUP_LOAD_19078", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_19078", action = "action_EVENT_GROUP_LOAD_19078", trigger_count = 0 },
	{ config_id = 1019079, name = "GROUP_REFRESH_19079", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_19079", action = "action_EVENT_GROUP_REFRESH_19079", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "OptionAdd", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 19034, gadget_id = 70220111, pos = { x = 2636.324, y = 583.947, z = -1799.712 }, rot = { x = 0.000, y = 359.184, z = 0.000 }, level = 1, interact_id = 64 }
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
		triggers = { "SELECT_OPTION_19002", "CHALLENGE_SUCCESS_19051", "CHALLENGE_FAIL_19055", "SELECT_OPTION_19072", "VARIABLE_CHANGE_19077", "GROUP_LOAD_19078", "GROUP_REFRESH_19079" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19003, 19004, 19005, 19006, 19007, 19008, 19009, 19010, 19011, 19012, 19073, 19074, 19075, 19076 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = wave1,
		monsters = { 19024, 19030, 19031, 19066 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = wave2,
		monsters = { 19067, 19068, 19069, 19070 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = wave3-reminder,
		monsters = { 19013, 19017, 19028, 19060, 19061, 19062 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = wave4-reminder,
		monsters = { 19014, 19018, 19022, 19029, 19063, 19064 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = wave5-reminder,
		monsters = { 19020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = wave6-reminder,
		monsters = { 19016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 传音花Layout1,
		monsters = { },
		gadgets = { 19032, 19033, 19035, 19036, 19037, 19038, 19057 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19039", "GADGET_STATE_CHANGE_19050", "TIME_AXIS_PASS_19052" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 传音花Layout2,
		monsters = { },
		gadgets = { 19040, 19041, 19042, 19043, 19044, 19045, 19046 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19047", "GADGET_STATE_CHANGE_19056", "TIME_AXIS_PASS_19058" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = WindTimeA风场,
		monsters = { },
		gadgets = { 19048, 19049, 19059 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = WindTimeB风场,
		monsters = { },
		gadgets = { 19053, 19054 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = wave7,
		monsters = { 19015, 19021, 19023, 19065 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = wave8,
		monsters = { 19019, 19025, 19026, 19027 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { 19071 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = P6黄点,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
		gadgets = { 19001 },
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
function condition_EVENT_SELECT_OPTION_19002(context, evt)
	-- 判断是gadgetid 19001 option_id 24
	if 19001 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846019, 2)
	
	-- 将configid为 19001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 235846019 ；指定config：19001；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235846019, 19001, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19039(context, evt)
	if 19036 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19039(context, evt)
	-- 将configid为 19037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19037, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19057 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19057, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19047(context, evt)
	if 19044 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19047(context, evt)
	-- 将configid为 19045 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19045, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19046 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19046, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19050(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235846019, 19037) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19050(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{14}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {14}, false)
	
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846019, 11)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_19051(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846019, 11)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846019, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_19052(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_19052(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846019, 11)
	
	-- 将configid为 19037 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19037, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19038 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19038, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19057 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19057, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_19055(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846019, 11)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846019, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19056(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235846019, 19045) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19056(context, evt)
	-- 创建标识为"WindTimeB"，时间节点为{14}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeB", {14}, false)
	
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846019, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_19058(context, evt)
	if "WindTimeB" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_19058(context, evt)
	-- 将configid为 19045 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19045, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19046 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19046, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846019, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19072(context, evt)
	-- 判断是gadgetid 19001 option_id 24
	if 19001 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19072(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235846019, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_19077(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"OptionAdd"为1
	if ScriptLib.GetGroupVariableValue(context, "OptionAdd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19077(context, evt)
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846019, 18)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_19078(context, evt)
	-- 判断变量"OptionAdd"为1
	if ScriptLib.GetGroupVariableValue(context, "OptionAdd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19078(context, evt)
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846019, 18)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_19079(context, evt)
	-- 判断变量"OptionAdd"为1
	if ScriptLib.GetGroupVariableValue(context, "OptionAdd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_19079(context, evt)
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846019, 18)
	
	return 0
end

require "V2_8/DLActivityDungeon"