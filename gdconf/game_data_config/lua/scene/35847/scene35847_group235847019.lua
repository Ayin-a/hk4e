-- 基础信息
local base_info = {
	group_id = 235847019
}

-- DEFS_MISCS
local defs = {
challenge_id = 2010046,
    --起始操作台
    starter = 19031,
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

        [1] = { monsters = {19012,19018,19019,19026}, min = 4, max = 4},
        [2] = { monsters = {19027,19028,19029,19030}, min = 4, max = 4},
        [3] = { monsters = {19001,19005,19016,19020,19021,19022}, min = 6, max = 6},
        [4] = { monsters = {19002,19006,19010,19017,19023,19024}, min = 6, max = 6},
        [5] = { monsters = {19008}, min = 1, max = 1},
        [6] = { monsters = {19004}, min = 1, max = 1},
        [7] = { monsters = {19003,19009,19011,19025}, min = 4, max = 4},
        [8] = { monsters = {19007,19013,19014,19015}, min = 4, max = 4},
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
	[19001] = { config_id = 19001, monster_id = 20011501, pos = { x = 2632.469, y = 583.996, z = -1763.876 }, rot = { x = 0.000, y = 131.871, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19002] = { config_id = 19002, monster_id = 20011502, pos = { x = 2633.261, y = 584.011, z = -1768.335 }, rot = { x = 0.000, y = 135.856, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19003] = { config_id = 19003, monster_id = 24010101, pos = { x = 2647.518, y = 583.984, z = -1772.160 }, rot = { x = 0.000, y = 256.816, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19004] = { config_id = 19004, monster_id = 21020501, pos = { x = 2633.990, y = 584.003, z = -1774.804 }, rot = { x = 0.000, y = 86.822, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19005] = { config_id = 19005, monster_id = 20011501, pos = { x = 2632.641, y = 583.996, z = -1779.515 }, rot = { x = 0.000, y = 52.336, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19006] = { config_id = 19006, monster_id = 21011201, pos = { x = 2633.399, y = 583.996, z = -1779.548 }, rot = { x = 0.000, y = 41.818, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19007] = { config_id = 19007, monster_id = 21010502, pos = { x = 2646.279, y = 583.983, z = -1769.937 }, rot = { x = 0.000, y = 289.159, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19008] = { config_id = 19008, monster_id = 21020501, pos = { x = 2647.191, y = 584.123, z = -1769.256 }, rot = { x = 0.000, y = 269.470, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19009] = { config_id = 19009, monster_id = 24010101, pos = { x = 2630.492, y = 583.996, z = -1772.084 }, rot = { x = 0.000, y = 86.063, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19010] = { config_id = 19010, monster_id = 23010401, pos = { x = 2646.297, y = 583.996, z = -1767.921 }, rot = { x = 0.000, y = 238.391, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19011] = { config_id = 19011, monster_id = 21010502, pos = { x = 2639.582, y = 583.984, z = -1765.423 }, rot = { x = 0.000, y = 192.988, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19012] = { config_id = 19012, monster_id = 20011304, pos = { x = 2635.347, y = 584.066, z = -1777.106 }, rot = { x = 0.000, y = 39.746, z = 0.000 }, level = 1 },
	[19013] = { config_id = 19013, monster_id = 21010502, pos = { x = 2634.763, y = 583.979, z = -1774.328 }, rot = { x = 0.000, y = 77.752, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19014] = { config_id = 19014, monster_id = 24010101, pos = { x = 2639.340, y = 583.983, z = -1778.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19015] = { config_id = 19015, monster_id = 24010101, pos = { x = 2639.185, y = 583.976, z = -1765.076 }, rot = { x = 0.000, y = 173.330, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	[19016] = { config_id = 19016, monster_id = 21030401, pos = { x = 2644.526, y = 584.003, z = -1768.109 }, rot = { x = 0.000, y = 275.005, z = 0.000 }, level = 1 },
	[19017] = { config_id = 19017, monster_id = 23010401, pos = { x = 2647.258, y = 584.003, z = -1777.814 }, rot = { x = 0.000, y = 306.229, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19018] = { config_id = 19018, monster_id = 21010502, pos = { x = 2643.247, y = 583.984, z = -1777.489 }, rot = { x = 0.000, y = 339.225, z = 0.000 }, level = 1 },
	[19019] = { config_id = 19019, monster_id = 20011304, pos = { x = 2643.664, y = 584.126, z = -1768.760 }, rot = { x = 0.000, y = 220.109, z = 0.000 }, level = 1 },
	[19020] = { config_id = 19020, monster_id = 20011401, pos = { x = 2643.415, y = 584.003, z = -1778.779 }, rot = { x = 0.000, y = 304.166, z = 0.000 }, level = 1 },
	[19021] = { config_id = 19021, monster_id = 23010401, pos = { x = 2640.712, y = 584.003, z = -1772.405 }, rot = { x = 0.000, y = 275.005, z = 0.000 }, level = 1 },
	[19022] = { config_id = 19022, monster_id = 20011401, pos = { x = 2645.112, y = 584.003, z = -1775.636 }, rot = { x = 0.000, y = 298.230, z = 0.000 }, level = 1 },
	[19023] = { config_id = 19023, monster_id = 21030401, pos = { x = 2644.775, y = 584.003, z = -1772.879 }, rot = { x = 0.000, y = 279.230, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19024] = { config_id = 19024, monster_id = 21030401, pos = { x = 2635.616, y = 584.003, z = -1773.524 }, rot = { x = 0.000, y = 80.721, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19025] = { config_id = 19025, monster_id = 21010502, pos = { x = 2639.209, y = 583.984, z = -1779.962 }, rot = { x = 0.000, y = 355.074, z = 0.000 }, level = 1, drop_id = 1000100 },
	[19026] = { config_id = 19026, monster_id = 21010502, pos = { x = 2635.548, y = 584.122, z = -1769.169 }, rot = { x = 0.000, y = 139.840, z = 0.000 }, level = 1 },
	[19027] = { config_id = 19027, monster_id = 20011304, pos = { x = 2643.706, y = 584.066, z = -1776.944 }, rot = { x = 0.000, y = 305.691, z = 0.000 }, level = 1 },
	[19028] = { config_id = 19028, monster_id = 21010502, pos = { x = 2643.530, y = 583.984, z = -1769.037 }, rot = { x = 0.000, y = 245.171, z = 0.000 }, level = 1 },
	[19029] = { config_id = 19029, monster_id = 20011304, pos = { x = 2634.793, y = 584.126, z = -1769.238 }, rot = { x = 0.000, y = 126.054, z = 0.000 }, level = 1 },
	[19030] = { config_id = 19030, monster_id = 21010502, pos = { x = 2635.776, y = 584.122, z = -1777.304 }, rot = { x = 0.000, y = 45.786, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[19031] = { config_id = 19031, gadget_id = 70360010, pos = { x = 2632.703, y = 583.836, z = -1772.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 24 } } },
	[19032] = { config_id = 19032, gadget_id = 70950011, pos = { x = 2623.173, y = 584.222, z = -1747.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19033] = { config_id = 19033, gadget_id = 70950011, pos = { x = 2653.649, y = 584.222, z = -1747.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19034] = { config_id = 19034, gadget_id = 70950011, pos = { x = 2654.571, y = 584.222, z = -1797.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19035] = { config_id = 19035, gadget_id = 70950011, pos = { x = 2624.812, y = 584.222, z = -1797.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19036] = { config_id = 19036, gadget_id = 70950011, pos = { x = 2617.933, y = 584.222, z = -1769.100 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19037] = { config_id = 19037, gadget_id = 70950011, pos = { x = 2617.933, y = 584.222, z = -1795.078 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19038] = { config_id = 19038, gadget_id = 70950011, pos = { x = 2617.933, y = 584.222, z = -1753.735 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19039] = { config_id = 19039, gadget_id = 70950011, pos = { x = 2661.503, y = 584.222, z = -1775.208 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19040] = { config_id = 19040, gadget_id = 70950011, pos = { x = 2661.503, y = 584.222, z = -1794.036 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19041] = { config_id = 19041, gadget_id = 70950011, pos = { x = 2661.503, y = 584.222, z = -1754.394 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19042] = { config_id = 19042, gadget_id = 70310321, pos = { x = 2656.327, y = 583.878, z = -1767.656 }, rot = { x = 0.000, y = 269.758, z = 0.000 }, level = 1 },
	[19043] = { config_id = 19043, gadget_id = 70220111, pos = { x = 2656.256, y = 584.006, z = -1771.593 }, rot = { x = 0.000, y = 267.204, z = 0.000 }, level = 1, interact_id = 64, is_guest_can_operate = true },
	[19045] = { config_id = 19045, gadget_id = 70310321, pos = { x = 2656.859, y = 583.878, z = -1775.733 }, rot = { x = 0.000, y = 274.019, z = 0.000 }, level = 1 },
	[19046] = { config_id = 19046, gadget_id = 70220112, pos = { x = 2639.962, y = 584.072, z = -1772.484 }, rot = { x = 0.000, y = 269.067, z = 0.000 }, level = 1, interact_id = 64, is_guest_can_operate = true },
	[19047] = { config_id = 19047, gadget_id = 70310322, pos = { x = 2636.625, y = 583.925, z = -1766.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19048] = { config_id = 19048, gadget_id = 70310322, pos = { x = 2636.569, y = 583.925, z = -1777.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19049] = { config_id = 19049, gadget_id = 70310321, pos = { x = 2624.873, y = 583.788, z = -1785.320 }, rot = { x = 2.250, y = 50.982, z = 359.793 }, level = 1 },
	[19050] = { config_id = 19050, gadget_id = 70220111, pos = { x = 2622.959, y = 583.984, z = -1781.995 }, rot = { x = 0.000, y = 82.383, z = 0.000 }, level = 1, interact_id = 64, is_guest_can_operate = true },
	[19051] = { config_id = 19051, gadget_id = 70220111, pos = { x = 2622.653, y = 583.953, z = -1764.240 }, rot = { x = 359.639, y = 92.925, z = 1.764 }, level = 1, interact_id = 64, is_guest_can_operate = true },
	[19052] = { config_id = 19052, gadget_id = 70310321, pos = { x = 2624.077, y = 583.859, z = -1760.902 }, rot = { x = 4.368, y = 124.287, z = 0.990 }, level = 1 },
	[19053] = { config_id = 19053, gadget_id = 70220112, pos = { x = 2642.569, y = 584.072, z = -1772.447 }, rot = { x = 0.000, y = 269.067, z = 0.000 }, level = 1, interact_id = 64, is_guest_can_operate = true },
	[19054] = { config_id = 19054, gadget_id = 70310322, pos = { x = 2638.536, y = 583.925, z = -1767.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19055] = { config_id = 19055, gadget_id = 70310322, pos = { x = 2638.573, y = 583.925, z = -1777.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19056] = { config_id = 19056, gadget_id = 70220118, pos = { x = 2636.625, y = 584.110, z = -1766.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19057] = { config_id = 19057, gadget_id = 70220118, pos = { x = 2636.569, y = 584.116, z = -1777.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19058] = { config_id = 19058, gadget_id = 70220118, pos = { x = 2638.536, y = 584.025, z = -1767.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19059] = { config_id = 19059, gadget_id = 70220118, pos = { x = 2638.573, y = 584.069, z = -1777.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19060] = { config_id = 19060, gadget_id = 70310322, pos = { x = 2645.347, y = 583.925, z = -1772.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19061] = { config_id = 19061, gadget_id = 70220118, pos = { x = 2645.347, y = 584.089, z = -1772.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	[19071] = { config_id = 19071, gadget_id = 70950011, pos = { x = 2639.071, y = 584.222, z = -1747.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19072] = { config_id = 19072, gadget_id = 70950011, pos = { x = 2640.022, y = 584.222, z = -1797.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[19073] = { config_id = 19073, gadget_id = 70950011, pos = { x = 2617.933, y = 584.222, z = -1777.416 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[19074] = { config_id = 19074, gadget_id = 70950011, pos = { x = 2661.503, y = 584.222, z = -1765.118 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019062, name = "SELECT_OPTION_19062", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19062", action = "action_EVENT_SELECT_OPTION_19062" },
	{ config_id = 1019063, name = "GADGET_STATE_CHANGE_19063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19063", action = "action_EVENT_GADGET_STATE_CHANGE_19063", trigger_count = 0 },
	{ config_id = 1019064, name = "GADGET_STATE_CHANGE_19064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19064", action = "action_EVENT_GADGET_STATE_CHANGE_19064", trigger_count = 0 },
	-- 37激活-创时间轴-WindTimeA
	{ config_id = 1019065, name = "GADGET_STATE_CHANGE_19065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19065", action = "action_EVENT_GADGET_STATE_CHANGE_19065", trigger_count = 0 },
	{ config_id = 1019066, name = "CHALLENGE_SUCCESS_19066", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010046", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_19066", trigger_count = 0 },
	{ config_id = 1019067, name = "TIME_AXIS_PASS_19067", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_19067", action = "action_EVENT_TIME_AXIS_PASS_19067", trigger_count = 0 },
	{ config_id = 1019068, name = "CHALLENGE_FAIL_19068", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010046", condition = "", action = "action_EVENT_CHALLENGE_FAIL_19068", trigger_count = 0 },
	-- 45激活-创时间轴-WindTimeB
	{ config_id = 1019069, name = "GADGET_STATE_CHANGE_19069", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19069", action = "action_EVENT_GADGET_STATE_CHANGE_19069", trigger_count = 0 },
	{ config_id = 1019070, name = "TIME_AXIS_PASS_19070", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_19070", action = "action_EVENT_TIME_AXIS_PASS_19070", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 19044, gadget_id = 70220111, pos = { x = 2638.100, y = 584.020, z = -1800.013 }, rot = { x = 0.000, y = 359.184, z = 0.000 }, level = 1, interact_id = 64, is_guest_can_operate = true }
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
		gadgets = { 19031 },
		regions = { },
		triggers = { "SELECT_OPTION_19062", "CHALLENGE_SUCCESS_19066", "CHALLENGE_FAIL_19068" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19032, 19033, 19034, 19035, 19036, 19037, 19038, 19039, 19040, 19041, 19071, 19072, 19073, 19074 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 19012, 19018, 19019, 19026 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 19027, 19028, 19029, 19030 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 19001, 19005, 19016, 19020, 19021, 19022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 19002, 19006, 19010, 19017, 19023, 19024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 19008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 19004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 19042, 19043, 19045, 19046, 19047, 19048, 19060 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19063", "GADGET_STATE_CHANGE_19065", "TIME_AXIS_PASS_19067" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 19049, 19050, 19051, 19052, 19053, 19054, 19055 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19064", "GADGET_STATE_CHANGE_19069", "TIME_AXIS_PASS_19070" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 19056, 19057, 19061 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 19058, 19059 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { 19003, 19009, 19011, 19025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { 19007, 19013, 19014, 19015 },
		gadgets = { },
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
function condition_EVENT_SELECT_OPTION_19062(context, evt)
	-- 判断是gadgetid 19031 option_id 24
	if 19031 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19062(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235847019, 2)
	
	-- 将configid为 19031 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19031, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 235847019 ；指定config：19031；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235847019, 19031, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19063(context, evt)
	if 19046 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19063(context, evt)
	-- 将configid为 19047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19048 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19048, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19060 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19060, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19064(context, evt)
	if 19053 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19064(context, evt)
	-- 将configid为 19054 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19054, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19055 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19055, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19065(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235847019, 19047) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19065(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{14}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {14}, false)
	
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235847019, 11)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_19066(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235847019, 11)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235847019, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_19067(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_19067(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235847019, 11)
	
	-- 将configid为 19047 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19047, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19048 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19048, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19060 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19060, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_19068(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235847019, 11)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235847019, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19069(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235847019, 19054) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19069(context, evt)
	-- 创建标识为"WindTimeB"，时间节点为{14}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeB", {14}, false)
	
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235847019, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_19070(context, evt)
	if "WindTimeB" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_19070(context, evt)
	-- 将configid为 19054 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19054, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19055 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19055, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235847019, 12)
	
	return 0
end

require "V2_8/DLActivityDungeon"