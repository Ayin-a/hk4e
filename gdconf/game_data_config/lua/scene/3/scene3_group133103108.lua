-- 基础信息
local base_info = {
	group_id = 133103108
}

-- Trigger变量
local defs = {
	duration = 70,
	group_id = 133103108,
	gadget_sum = 1
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
	{ config_id = 108001, gadget_id = 70690011, pos = { x = 897.666, y = 296.991, z = 1729.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 108002, gadget_id = 70690011, pos = { x = 865.422, y = 300.281, z = 1770.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 108003, gadget_id = 70690011, pos = { x = 846.009, y = 308.259, z = 1774.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 108004, gadget_id = 70690011, pos = { x = 844.495, y = 324.495, z = 1754.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 108007, gadget_id = 70380002, pos = { x = 894.197, y = 310.386, z = 1720.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310300243, area_id = 6 },
	{ config_id = 108008, gadget_id = 70380002, pos = { x = 908.494, y = 305.115, z = 1719.965 }, rot = { x = 345.313, y = 319.952, z = 354.843 }, level = 30, start_route = false, persistent = true, area_id = 6 },
	{ config_id = 108010, gadget_id = 70380002, pos = { x = 848.690, y = 324.885, z = 1781.340 }, rot = { x = 0.000, y = 135.523, z = 0.000 }, level = 1, route_id = 310300245, area_id = 6 },
	{ config_id = 108024, gadget_id = 70310082, pos = { x = 907.750, y = 307.636, z = 1721.209 }, rot = { x = 307.159, y = 298.972, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108025, gadget_id = 70310082, pos = { x = 905.896, y = 311.094, z = 1722.330 }, rot = { x = 307.159, y = 298.969, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108026, gadget_id = 70310082, pos = { x = 903.009, y = 314.707, z = 1724.142 }, rot = { x = 326.966, y = 325.545, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108027, gadget_id = 70310082, pos = { x = 901.719, y = 316.601, z = 1726.084 }, rot = { x = 337.864, y = 302.011, z = 4.798 }, level = 1, area_id = 6 },
	{ config_id = 108028, gadget_id = 70310082, pos = { x = 899.428, y = 317.924, z = 1730.182 }, rot = { x = 356.208, y = 338.249, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108029, gadget_id = 70310082, pos = { x = 897.057, y = 318.244, z = 1733.021 }, rot = { x = 358.409, y = 297.036, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108030, gadget_id = 70310082, pos = { x = 893.633, y = 318.383, z = 1734.843 }, rot = { x = 356.894, y = 300.096, z = 2.456 }, level = 1, area_id = 6 },
	{ config_id = 108031, gadget_id = 70310082, pos = { x = 889.060, y = 319.335, z = 1735.827 }, rot = { x = 332.799, y = 258.669, z = 16.865 }, level = 1, area_id = 6 },
	{ config_id = 108032, gadget_id = 70310082, pos = { x = 886.407, y = 319.845, z = 1736.513 }, rot = { x = 11.491, y = 324.671, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108033, gadget_id = 70310082, pos = { x = 881.133, y = 318.165, z = 1744.260 }, rot = { x = 353.303, y = 342.110, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108034, gadget_id = 70310082, pos = { x = 878.155, y = 318.373, z = 1747.852 }, rot = { x = 332.437, y = 314.858, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108035, gadget_id = 70310082, pos = { x = 875.013, y = 320.687, z = 1750.978 }, rot = { x = 332.466, y = 314.788, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108036, gadget_id = 70310082, pos = { x = 871.867, y = 322.998, z = 1754.101 }, rot = { x = 335.166, y = 308.584, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108037, gadget_id = 70310082, pos = { x = 868.320, y = 325.098, z = 1756.931 }, rot = { x = 331.407, y = 5.804, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108038, gadget_id = 70310082, pos = { x = 868.764, y = 327.491, z = 1761.299 }, rot = { x = 331.407, y = 5.804, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108039, gadget_id = 70310082, pos = { x = 869.208, y = 329.884, z = 1765.667 }, rot = { x = 335.472, y = 334.756, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108040, gadget_id = 70310082, pos = { x = 867.634, y = 331.568, z = 1769.005 }, rot = { x = 353.001, y = 290.981, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108041, gadget_id = 70310082, pos = { x = 863.000, y = 332.177, z = 1770.782 }, rot = { x = 353.001, y = 290.983, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108042, gadget_id = 70310082, pos = { x = 858.366, y = 332.786, z = 1772.559 }, rot = { x = 353.001, y = 290.983, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108043, gadget_id = 70310082, pos = { x = 853.733, y = 333.396, z = 1774.336 }, rot = { x = 344.956, y = 271.772, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108044, gadget_id = 70310082, pos = { x = 849.103, y = 334.641, z = 1774.479 }, rot = { x = 340.636, y = 258.780, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108045, gadget_id = 70310082, pos = { x = 844.476, y = 336.299, z = 1773.561 }, rot = { x = 336.979, y = 253.774, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108046, gadget_id = 70310082, pos = { x = 840.322, y = 338.137, z = 1772.352 }, rot = { x = 317.535, y = 182.046, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108047, gadget_id = 70310082, pos = { x = 840.190, y = 341.513, z = 1768.666 }, rot = { x = 317.534, y = 182.047, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108048, gadget_id = 70310082, pos = { x = 840.058, y = 344.888, z = 1764.980 }, rot = { x = 352.393, y = 166.350, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108049, gadget_id = 70310082, pos = { x = 841.095, y = 345.475, z = 1760.712 }, rot = { x = 10.518, y = 158.175, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108050, gadget_id = 70310082, pos = { x = 842.899, y = 344.574, z = 1756.207 }, rot = { x = 346.812, y = 119.502, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108051, gadget_id = 70310082, pos = { x = 847.136, y = 345.715, z = 1753.809 }, rot = { x = 338.918, y = 115.368, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108052, gadget_id = 70310082, pos = { x = 850.624, y = 347.203, z = 1752.156 }, rot = { x = 312.183, y = 337.264, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108053, gadget_id = 70310082, pos = { x = 849.326, y = 350.908, z = 1755.252 }, rot = { x = 333.802, y = 17.426, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108054, gadget_id = 70310082, pos = { x = 850.520, y = 352.869, z = 1759.055 }, rot = { x = 348.247, y = 31.261, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108055, gadget_id = 70310082, pos = { x = 853.060, y = 353.887, z = 1763.240 }, rot = { x = 346.991, y = 355.872, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108056, gadget_id = 70310082, pos = { x = 852.716, y = 354.991, z = 1768.004 }, rot = { x = 347.139, y = 352.137, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108057, gadget_id = 70310082, pos = { x = 852.049, y = 356.104, z = 1772.832 }, rot = { x = 349.697, y = 358.829, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108058, gadget_id = 70310082, pos = { x = 851.950, y = 356.983, z = 1777.668 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108059, gadget_id = 70310082, pos = { x = 853.111, y = 357.344, z = 1782.518 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108060, gadget_id = 70310082, pos = { x = 854.272, y = 357.705, z = 1787.368 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108061, gadget_id = 70310082, pos = { x = 855.433, y = 358.065, z = 1792.218 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108062, gadget_id = 70310082, pos = { x = 856.593, y = 358.426, z = 1797.068 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108063, gadget_id = 70310082, pos = { x = 857.754, y = 358.787, z = 1801.918 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108064, gadget_id = 70310082, pos = { x = 858.915, y = 359.148, z = 1806.768 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108065, gadget_id = 70310082, pos = { x = 860.076, y = 359.509, z = 1811.618 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108066, gadget_id = 70310082, pos = { x = 861.237, y = 359.870, z = 1816.468 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108067, gadget_id = 70310082, pos = { x = 862.397, y = 360.230, z = 1821.318 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108068, gadget_id = 70310082, pos = { x = 863.558, y = 360.591, z = 1826.167 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108069, gadget_id = 70310082, pos = { x = 864.719, y = 360.952, z = 1831.017 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108070, gadget_id = 70310082, pos = { x = 865.880, y = 361.313, z = 1835.867 }, rot = { x = 355.862, y = 13.459, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108071, gadget_id = 70310082, pos = { x = 867.041, y = 361.674, z = 1840.718 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108072, gadget_id = 70310082, pos = { x = 868.201, y = 362.035, z = 1845.568 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108073, gadget_id = 70310082, pos = { x = 869.362, y = 362.395, z = 1850.417 }, rot = { x = 355.862, y = 13.460, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108082, gadget_id = 70310082, pos = { x = 884.265, y = 319.082, z = 1739.747 }, rot = { x = 0.000, y = 331.549, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108092, gadget_id = 70360046, pos = { x = 890.847, y = 312.709, z = 1749.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108093, gadget_id = 70360046, pos = { x = 855.886, y = 325.375, z = 1783.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 108094, gadget_id = 70360046, pos = { x = 835.053, y = 338.278, z = 1755.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	-- 进圈派蒙开车
	{ config_id = 108013, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = 907.922, y = 305.612, z = 1718.046 }, area_id = 6 },
	-- 进圈修改开始挑战变量数值
	{ config_id = 108014, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = 907.922, y = 305.612, z = 1718.046 }, area_id = 6 },
	-- 进圈通知任务流转
	{ config_id = 108016, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = 907.922, y = 305.612, z = 1718.046 }, area_id = 6 },
	-- 进圈开启挑战
	{ config_id = 108019, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = 907.922, y = 305.612, z = 1718.046 }, area_id = 6 },
	-- 进圈开启挑战
	{ config_id = 108021, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = 907.922, y = 305.612, z = 1718.046 }, area_id = 6 },
	{ config_id = 108022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 943.339, y = 303.443, z = 1738.901 }, area_id = 6 }
}

-- 触发器
triggers = {
	-- 挑战失败重置group
	{ config_id = 1108005, name = "CHALLENGE_FAIL_108005", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_108005", trigger_count = 0 },
	-- 延迟3秒将变量改变
	{ config_id = 1108006, name = "TIMER_EVENT_108006", event = EventType.EVENT_TIMER_EVENT, source = "yanchi3miaogaibianliang", condition = "", action = "action_EVENT_TIMER_EVENT_108006", trigger_count = 0 },
	-- group加载时创建风史莱姆
	{ config_id = 1108011, name = "QUEST_START_108011", event = EventType.EVENT_QUEST_START, source = "7150002", condition = "", action = "action_EVENT_QUEST_START_108011", trigger_count = 0 },
	{ config_id = 1108012, name = "QUEST_START_108012", event = EventType.EVENT_QUEST_START, source = "7150004", condition = "", action = "action_EVENT_QUEST_START_108012", trigger_count = 0 },
	-- 进圈派蒙开车
	{ config_id = 1108013, name = "ENTER_REGION_108013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108013", action = "action_EVENT_ENTER_REGION_108013" },
	-- 进圈修改开始挑战变量数值
	{ config_id = 1108014, name = "ENTER_REGION_108014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108014", action = "action_EVENT_ENTER_REGION_108014", trigger_count = 0 },
	-- 进圈通知任务流转
	{ config_id = 1108016, name = "ENTER_REGION_108016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108016", action = "action_EVENT_ENTER_REGION_108016", trigger_count = 0 },
	-- 判断开始挑战数值为1时开启史莱姆行动
	{ config_id = 1108017, name = "VARIABLE_CHANGE_108017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_108017", action = "action_EVENT_VARIABLE_CHANGE_108017", trigger_count = 0 },
	{ config_id = 1108018, name = "TIMER_EVENT_108018", event = EventType.EVENT_TIMER_EVENT, source = "baodiwanchengrenwu", condition = "", action = "action_EVENT_TIMER_EVENT_108018" },
	-- 进圈开启挑战
	{ config_id = 1108019, name = "ENTER_REGION_108019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108019", action = "action_EVENT_ENTER_REGION_108019", trigger_count = 0 },
	-- 挑战成功刷新至空suite
	{ config_id = 1108020, name = "CHALLENGE_SUCCESS_108020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_108020", trigger_count = 0 },
	-- 进圈开启挑战
	{ config_id = 1108021, name = "ENTER_REGION_108021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108021", action = "action_EVENT_ENTER_REGION_108021", trigger_count = 0 },
	{ config_id = 1108022, name = "ENTER_REGION_108022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108022", action = "action_EVENT_ENTER_REGION_108022", trigger_count = 0 },
	-- 史莱姆被摧毁，挑战成功
	{ config_id = 1108023, name = "ANY_GADGET_DIE_108023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_108023", action = "action_EVENT_ANY_GADGET_DIE_108023", trigger_count = 0, tag = "246" },
	{ config_id = 1108074, name = "PLATFORM_REACH_POINT_108074", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108074", action = "action_EVENT_PLATFORM_REACH_POINT_108074", trigger_count = 0 },
	{ config_id = 1108075, name = "PLATFORM_REACH_POINT_108075", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108075", action = "action_EVENT_PLATFORM_REACH_POINT_108075", trigger_count = 0 },
	{ config_id = 1108076, name = "PLATFORM_REACH_POINT_108076", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108076", action = "action_EVENT_PLATFORM_REACH_POINT_108076", trigger_count = 0 },
	{ config_id = 1108077, name = "PLATFORM_REACH_POINT_108077", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108077", action = "action_EVENT_PLATFORM_REACH_POINT_108077", trigger_count = 0 },
	{ config_id = 1108078, name = "PLATFORM_REACH_POINT_108078", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108078", action = "action_EVENT_PLATFORM_REACH_POINT_108078", trigger_count = 0 },
	{ config_id = 1108079, name = "PLATFORM_REACH_POINT_108079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108079", action = "action_EVENT_PLATFORM_REACH_POINT_108079", trigger_count = 0 },
	{ config_id = 1108080, name = "PLATFORM_REACH_POINT_108080", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108080", action = "action_EVENT_PLATFORM_REACH_POINT_108080", trigger_count = 0 },
	{ config_id = 1108081, name = "PLATFORM_REACH_POINT_108081", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108081", action = "action_EVENT_PLATFORM_REACH_POINT_108081", trigger_count = 0 },
	{ config_id = 1108083, name = "PLATFORM_REACH_POINT_108083", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108083", action = "action_EVENT_PLATFORM_REACH_POINT_108083", trigger_count = 0 },
	{ config_id = 1108084, name = "PLATFORM_REACH_POINT_108084", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108084", action = "action_EVENT_PLATFORM_REACH_POINT_108084", trigger_count = 0 },
	{ config_id = 1108085, name = "PLATFORM_REACH_POINT_108085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108085", action = "action_EVENT_PLATFORM_REACH_POINT_108085", trigger_count = 0 },
	{ config_id = 1108086, name = "PLATFORM_REACH_POINT_108086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108086", action = "action_EVENT_PLATFORM_REACH_POINT_108086", trigger_count = 0 },
	{ config_id = 1108087, name = "PLATFORM_REACH_POINT_108087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108087", action = "action_EVENT_PLATFORM_REACH_POINT_108087", trigger_count = 0 },
	{ config_id = 1108088, name = "PLATFORM_REACH_POINT_108088", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108088", action = "action_EVENT_PLATFORM_REACH_POINT_108088", trigger_count = 0 },
	{ config_id = 1108089, name = "PLATFORM_REACH_POINT_108089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108089", action = "action_EVENT_PLATFORM_REACH_POINT_108089", trigger_count = 0 },
	{ config_id = 1108090, name = "PLATFORM_REACH_POINT_108090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108090", action = "action_EVENT_PLATFORM_REACH_POINT_108090", trigger_count = 0 },
	{ config_id = 1108091, name = "PLATFORM_REACH_POINT_108091", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_108091", action = "action_EVENT_PLATFORM_REACH_POINT_108091", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false },
	{ config_id = 3, name = "dieoralive", value = 0, no_refresh = false },
	{ config_id = 4, name = "challenging", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 108009, gadget_id = 70380002, pos = { x = 877.059, y = 312.390, z = 1754.231 }, rot = { x = 0.000, y = 55.718, z = 0.000 }, level = 1, route_id = 310300244, area_id = 6 }
	},
	triggers = {
		{ config_id = 1108015, name = "CHALLENGE_FAIL_108015", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_108015", trigger_count = 0 }
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
	end_suite = 7,
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
		-- description = 总体逻辑控制,
		monsters = { },
		gadgets = { 108001, 108002, 108003, 108004, 108092, 108093, 108094 },
		regions = { 108013, 108014, 108016, 108022 },
		triggers = { "CHALLENGE_FAIL_108005", "TIMER_EVENT_108006", "QUEST_START_108011", "QUEST_START_108012", "ENTER_REGION_108013", "ENTER_REGION_108014", "ENTER_REGION_108016", "VARIABLE_CHANGE_108017", "TIMER_EVENT_108018", "CHALLENGE_SUCCESS_108020", "ENTER_REGION_108022", "ANY_GADGET_DIE_108023", "PLATFORM_REACH_POINT_108074", "PLATFORM_REACH_POINT_108075", "PLATFORM_REACH_POINT_108076", "PLATFORM_REACH_POINT_108077", "PLATFORM_REACH_POINT_108078", "PLATFORM_REACH_POINT_108079", "PLATFORM_REACH_POINT_108080", "PLATFORM_REACH_POINT_108081", "PLATFORM_REACH_POINT_108083", "PLATFORM_REACH_POINT_108084", "PLATFORM_REACH_POINT_108085", "PLATFORM_REACH_POINT_108086", "PLATFORM_REACH_POINT_108087", "PLATFORM_REACH_POINT_108088", "PLATFORM_REACH_POINT_108089", "PLATFORM_REACH_POINT_108090", "PLATFORM_REACH_POINT_108091" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 逃跑的史莱姆,
		monsters = { },
		gadgets = { 108008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { },
		gadgets = { 108007, 108010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { },
		gadgets = { },
		regions = { 108021 },
		triggers = { "ENTER_REGION_108021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { },
		gadgets = { 108024, 108025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { },
		gadgets = { 108026, 108027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空的end suite,
		monsters = { },
		gadgets = { 108028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 108029, 108030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 108031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 108032, 108033, 108082 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 108034, 108035, 108036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 108037, 108038, 108039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 108040, 108041, 108042, 108043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 108044, 108045 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { 108046, 108047, 108048 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { 108049 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { },
		gadgets = { 108050, 108051 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
		gadgets = { 108052, 108053 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = ,
		monsters = { },
		gadgets = { 108054, 108055 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 20,
		-- description = ,
		monsters = { },
		gadgets = { 108056, 108057 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 21,
		-- description = ,
		monsters = { },
		gadgets = { 108058, 108059, 108060, 108061, 108062, 108063, 108064, 108065, 108066, 108067, 108068, 108069, 108070, 108071, 108072, 108073 },
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

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_108005(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "questfail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 3)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 3)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103100, 3)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103100, 3)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 12)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 13)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 14)
	
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 15)
	
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 16)
	
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 17)
	
	-- 删除suite18的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 18)
	
	-- 删除suite19的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 19)
	
	-- 删除suite20的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 20)
	
	-- 删除suite21的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 21)
	
	-- 延迟3秒后,向groupId为：133103108的对象,请求一次调用,并将string参数："yanchi3miaogaibianliang" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133103108, "yanchi3miaogaibianliang", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_108006(context, evt)
	-- 将本组内变量名为 "challenging" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenging", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_108011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_108012(context, evt)
	-- 调用提示id为 1110366 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110366) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108013(context, evt)
	if evt.param1 ~= 108013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108013(context, evt)
	-- 调用提示id为 1110363 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110363) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108014(context, evt)
	if evt.param1 ~= 108014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108014(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108016(context, evt)
	if evt.param1 ~= 108016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7150002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_108017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_108017(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 108008, 310300230) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 108008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_108018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7150003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108019(context, evt)
	if evt.param1 ~= 108019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"dieofalive"为0
	if ScriptLib.GetGroupVariableValue(context, "dieofalive") ~= 0 then
			return false
	end
	
	-- 判断变量"challenging"为0
	if ScriptLib.GetGroupVariableValue(context, "challenging") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108019(context, evt)
	-- 246号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 246, defs.duration, 2, 246, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 将本组内变量名为 "challenging" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenging", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_108020(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 3)
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103108, EntityType.MONSTER, 108005)
	
		
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "challenging" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenging", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108021(context, evt)
	if evt.param1 ~= 108021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"dieoralive"为0
	if ScriptLib.GetGroupVariableValue(context, "dieoralive") ~= 0 then
			return false
	end
	
	-- 判断变量"challenging"为0
	if ScriptLib.GetGroupVariableValue(context, "challenging") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108021(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "challenging" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenging", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建编号为56（该挑战的识别id),挑战内容为246的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 246, 70, 2, 246, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108022(context, evt)
	if evt.param1 ~= 108022 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_108023(context, evt)
	if 108008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_108023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "questsuccess") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7150003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：133103108的对象,请求一次调用,并将string参数："baodiwanchengrenwu" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133103108, "baodiwanchengrenwu", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "dieoralive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "dieoralive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "challenging" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenging", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 12)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 13)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 14)
	
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 15)
	
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 16)
	
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 17)
	
	-- 删除suite18的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 18)
	
	-- 删除suite19的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 19)
	
	-- 删除suite20的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 20)
	
	-- 删除suite21的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103108, 21)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108074(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 2 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108074(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108075(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 4 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108075(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108076(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 6 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108076(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108077(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 8 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108077(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108078(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 10 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108078(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108079(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 11 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 11 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108079(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108080(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 13 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 13 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108080(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108081(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 15 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 15 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108081(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108083(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 17 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108083(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108084(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 19 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 19 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108084(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108085(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 21 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108085(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108086(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 23 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 23 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108086(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108087(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 25 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108087(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108088(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 27 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108088(context, evt)
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 18)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108089(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 29 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 29 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108089(context, evt)
	-- 添加suite19的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 19)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108090(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 31 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 31 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108090(context, evt)
	-- 添加suite20的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 20)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_108091(context, evt)
	-- 判断是gadgetid 为 108008的移动平台，是否到达了310300230 的路线中的 33 点
	
	if 108008 ~= evt.param1 then
	  return false
	end
	
	if 310300230 ~= evt.param2 then
	  return false
	end
	
	if 33 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_108091(context, evt)
	-- 添加suite21的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103108, 21)
	
	return 0
end