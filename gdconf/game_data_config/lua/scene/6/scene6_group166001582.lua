-- 基础信息
local base_info = {
	group_id = 166001582
}

-- Trigger变量
local defs = {
	pursina = 0
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 582012, monster_id = 21010901, pos = { x = 962.576, y = 719.791, z = 317.554 }, rot = { x = 0.000, y = 356.435, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, pose_id = 32, area_id = 300 },
	{ config_id = 582014, monster_id = 21010501, pos = { x = 969.753, y = 720.158, z = 318.307 }, rot = { x = 0.000, y = 318.820, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, pose_id = 32, area_id = 300 },
	{ config_id = 582015, monster_id = 21011301, pos = { x = 962.794, y = 722.372, z = 326.177 }, rot = { x = 0.000, y = 348.553, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582016, monster_id = 21010601, pos = { x = 966.804, y = 722.544, z = 327.186 }, rot = { x = 0.000, y = 331.895, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582026, monster_id = 21030401, pos = { x = 897.436, y = 706.866, z = 228.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582027, monster_id = 21010501, pos = { x = 902.086, y = 707.187, z = 228.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, pose_id = 32, area_id = 300 },
	{ config_id = 582040, monster_id = 21020301, pos = { x = 806.983, y = 706.248, z = 228.937 }, rot = { x = 0.000, y = 89.187, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582115, monster_id = 21020201, pos = { x = 918.076, y = 708.484, z = 262.800 }, rot = { x = 0.000, y = 71.848, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582116, monster_id = 21011001, pos = { x = 912.356, y = 708.022, z = 262.060 }, rot = { x = 0.000, y = 94.785, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, pose_id = 32, area_id = 300 },
	{ config_id = 582117, monster_id = 21010901, pos = { x = 915.745, y = 708.477, z = 256.732 }, rot = { x = 0.000, y = 43.315, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, pose_id = 32, area_id = 300 },
	{ config_id = 582118, monster_id = 21010601, pos = { x = 919.539, y = 708.639, z = 259.915 }, rot = { x = 0.000, y = 29.536, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582140, monster_id = 21011201, pos = { x = 900.937, y = 707.011, z = 236.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582142, monster_id = 20011401, pos = { x = 903.830, y = 707.334, z = 233.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582143, monster_id = 20011401, pos = { x = 897.042, y = 707.049, z = 234.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582181, monster_id = 21020701, pos = { x = 807.833, y = 706.233, z = 231.847 }, rot = { x = 0.000, y = 88.402, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 582192, monster_id = 21010901, pos = { x = 800.807, y = 706.212, z = 228.733 }, rot = { x = 0.000, y = 76.872, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, pose_id = 32, area_id = 300 },
	{ config_id = 582195, monster_id = 21010501, pos = { x = 800.835, y = 706.171, z = 234.057 }, rot = { x = 0.000, y = 90.896, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, pose_id = 32, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 582001, gadget_id = 70380232, pos = { x = 933.499, y = 724.637, z = 335.298 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 90, route_id = 600100110, start_route = false, persistent = true, area_id = 300 },
	{ config_id = 582002, gadget_id = 70360001, pos = { x = 933.514, y = 725.793, z = 335.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 终点标志
	{ config_id = 582009, gadget_id = 70710126, pos = { x = 799.000, y = 706.168, z = 229.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点2坠落岩柱
	{ config_id = 582017, gadget_id = 70290276, pos = { x = 959.007, y = 800.747, z = 300.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 1
	{ config_id = 582019, gadget_id = 70290266, pos = { x = 963.176, y = 724.639, z = 341.270 }, rot = { x = 348.434, y = 0.815, z = 9.682 }, level = 1, area_id = 300 },
	-- 2
	{ config_id = 582020, gadget_id = 70290266, pos = { x = 950.011, y = 722.937, z = 327.235 }, rot = { x = 344.913, y = 307.528, z = 3.800 }, level = 1, area_id = 300 },
	-- 2
	{ config_id = 582021, gadget_id = 70290205, pos = { x = 950.075, y = 722.969, z = 327.429 }, rot = { x = 344.913, y = 307.528, z = 3.800 }, level = 1, area_id = 300 },
	-- 1
	{ config_id = 582022, gadget_id = 70290205, pos = { x = 963.229, y = 724.708, z = 341.362 }, rot = { x = 346.340, y = 358.557, z = 11.174 }, level = 1, area_id = 300 },
	-- 1
	{ config_id = 582023, gadget_id = 70290233, pos = { x = 965.622, y = 724.973, z = 340.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2
	{ config_id = 582024, gadget_id = 70290233, pos = { x = 952.459, y = 722.376, z = 326.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582025, gadget_id = 70290200, pos = { x = 879.162, y = 709.866, z = 236.891 }, rot = { x = 351.348, y = 349.883, z = 356.310 }, level = 1, area_id = 300 },
	-- 4
	{ config_id = 582028, gadget_id = 70290233, pos = { x = 953.971, y = 718.019, z = 306.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4
	{ config_id = 582030, gadget_id = 70290266, pos = { x = 952.645, y = 717.856, z = 308.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4
	{ config_id = 582031, gadget_id = 70290205, pos = { x = 952.571, y = 717.857, z = 308.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582034, gadget_id = 70290200, pos = { x = 869.499, y = 708.975, z = 211.785 }, rot = { x = 359.665, y = 34.667, z = 356.757 }, level = 1, area_id = 300 },
	{ config_id = 582035, gadget_id = 70290200, pos = { x = 852.302, y = 706.058, z = 233.177 }, rot = { x = 10.489, y = 120.006, z = 341.856 }, level = 1, area_id = 300 },
	-- 拦截点3附近结晶灯
	{ config_id = 582036, gadget_id = 70290300, pos = { x = 957.968, y = 719.241, z = 312.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 300 },
	-- 拦截点2坠落岩柱
	{ config_id = 582037, gadget_id = 70290276, pos = { x = 967.547, y = 796.573, z = 308.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6
	{ config_id = 582038, gadget_id = 70290266, pos = { x = 886.325, y = 709.611, z = 206.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点2坠落岩柱
	{ config_id = 582041, gadget_id = 70290276, pos = { x = 970.210, y = 793.266, z = 299.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6
	{ config_id = 582045, gadget_id = 70290205, pos = { x = 886.326, y = 709.611, z = 206.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6
	{ config_id = 582052, gadget_id = 70290233, pos = { x = 884.534, y = 709.522, z = 210.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582055, gadget_id = 70290233, pos = { x = 967.138, y = 718.222, z = 308.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582056, gadget_id = 70290233, pos = { x = 969.189, y = 716.737, z = 299.864 }, rot = { x = 351.123, y = 359.861, z = 1.790 }, level = 1, area_id = 300 },
	{ config_id = 582057, gadget_id = 70290233, pos = { x = 956.490, y = 716.135, z = 298.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582058, gadget_id = 70290204, pos = { x = 967.116, y = 718.173, z = 308.456 }, rot = { x = 351.605, y = 0.350, z = 2.853 }, level = 1, area_id = 300 },
	{ config_id = 582059, gadget_id = 70290204, pos = { x = 969.866, y = 716.502, z = 298.924 }, rot = { x = 354.265, y = 359.697, z = 3.030 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582060, gadget_id = 70290204, pos = { x = 958.709, y = 716.487, z = 300.609 }, rot = { x = 349.966, y = 359.796, z = 1.804 }, level = 1, area_id = 300 },
	-- 拦截点2发光蜜虫点
	{ config_id = 582061, gadget_id = 70290353, pos = { x = 964.246, y = 717.579, z = 305.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582062, gadget_id = 70360342, pos = { x = 964.195, y = 717.405, z = 305.355 }, rot = { x = 350.824, y = 0.023, z = 359.711 }, level = 1, area_id = 300 },
	-- 拦截点2发光蜜虫点
	{ config_id = 582067, gadget_id = 70290353, pos = { x = 956.130, y = 715.689, z = 296.252 }, rot = { x = 351.171, y = 359.518, z = 6.242 }, level = 1, area_id = 300 },
	{ config_id = 582068, gadget_id = 70360342, pos = { x = 956.058, y = 715.599, z = 296.138 }, rot = { x = 349.623, y = 359.475, z = 5.783 }, level = 1, area_id = 300 },
	{ config_id = 582092, gadget_id = 70290233, pos = { x = 966.262, y = 714.571, z = 283.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582093, gadget_id = 70290233, pos = { x = 961.212, y = 713.169, z = 273.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582094, gadget_id = 70290233, pos = { x = 946.119, y = 713.011, z = 283.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582095, gadget_id = 70290204, pos = { x = 963.447, y = 715.341, z = 288.716 }, rot = { x = 351.995, y = 359.807, z = 0.027 }, level = 1, area_id = 300 },
	{ config_id = 582096, gadget_id = 70290204, pos = { x = 958.525, y = 713.926, z = 277.448 }, rot = { x = 350.252, y = 0.153, z = 358.210 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582097, gadget_id = 70290204, pos = { x = 943.034, y = 711.502, z = 273.086 }, rot = { x = 350.332, y = 359.645, z = 4.494 }, level = 1, area_id = 300 },
	{ config_id = 582098, gadget_id = 70360342, pos = { x = 963.902, y = 714.529, z = 282.064 }, rot = { x = 352.878, y = 0.111, z = 358.210 }, level = 1, area_id = 300 },
	{ config_id = 582099, gadget_id = 70360342, pos = { x = 954.471, y = 713.731, z = 273.853 }, rot = { x = 357.679, y = 359.607, z = 356.034 }, level = 1, area_id = 300 },
	-- 5
	{ config_id = 582100, gadget_id = 70290266, pos = { x = 943.124, y = 711.287, z = 256.344 }, rot = { x = 18.505, y = 2.158, z = 13.191 }, level = 1, area_id = 300 },
	-- 5
	{ config_id = 582101, gadget_id = 70290205, pos = { x = 943.199, y = 711.293, z = 256.400 }, rot = { x = 19.848, y = 2.567, z = 14.491 }, level = 1, area_id = 300 },
	-- 5
	{ config_id = 582102, gadget_id = 70290233, pos = { x = 948.157, y = 711.323, z = 260.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点3发光蜜虫点
	{ config_id = 582110, gadget_id = 70290353, pos = { x = 963.956, y = 714.597, z = 282.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点3发光蜜虫点
	{ config_id = 582111, gadget_id = 70290353, pos = { x = 954.453, y = 713.792, z = 273.675 }, rot = { x = 1.276, y = 359.022, z = 348.146 }, level = 1, area_id = 300 },
	-- 拦截点3坠落岩柱
	{ config_id = 582121, gadget_id = 70290276, pos = { x = 961.120, y = 791.502, z = 275.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点3坠落岩柱
	{ config_id = 582122, gadget_id = 70290276, pos = { x = 943.132, y = 787.754, z = 272.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点3坠落岩柱
	{ config_id = 582123, gadget_id = 70290276, pos = { x = 963.956, y = 791.939, z = 282.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582125, gadget_id = 70290233, pos = { x = 927.946, y = 709.478, z = 254.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582126, gadget_id = 70290233, pos = { x = 915.426, y = 708.282, z = 259.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582127, gadget_id = 70290204, pos = { x = 926.335, y = 709.709, z = 251.919 }, rot = { x = 1.648, y = 0.455, z = 0.963 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582128, gadget_id = 70290204, pos = { x = 919.319, y = 708.511, z = 264.970 }, rot = { x = 359.071, y = 0.720, z = 2.672 }, level = 1, area_id = 300 },
	{ config_id = 582129, gadget_id = 70290266, pos = { x = 926.489, y = 709.718, z = 251.934 }, rot = { x = 7.981, y = 0.312, z = 4.467 }, level = 1, area_id = 300 },
	{ config_id = 582130, gadget_id = 70360342, pos = { x = 909.464, y = 707.743, z = 259.536 }, rot = { x = 357.627, y = 0.020, z = 359.580 }, level = 1, area_id = 300 },
	-- 拦截点4发光蜜虫点
	{ config_id = 582134, gadget_id = 70290353, pos = { x = 909.075, y = 707.761, z = 259.706 }, rot = { x = 353.755, y = 359.921, z = 358.229 }, level = 1, area_id = 300 },
	-- 拦截点4坠落岩柱
	{ config_id = 582136, gadget_id = 70290276, pos = { x = 926.844, y = 786.356, z = 252.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点4坠落岩柱
	{ config_id = 582137, gadget_id = 70290276, pos = { x = 915.179, y = 787.472, z = 263.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582147, gadget_id = 70290233, pos = { x = 901.776, y = 707.214, z = 227.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582148, gadget_id = 70290204, pos = { x = 899.995, y = 706.886, z = 230.904 }, rot = { x = 0.062, y = 0.597, z = 1.529 }, level = 1, area_id = 300 },
	{ config_id = 582149, gadget_id = 70360342, pos = { x = 897.674, y = 706.989, z = 226.724 }, rot = { x = 1.425, y = 0.338, z = 5.835 }, level = 1, area_id = 300 },
	-- 拦截点5发光蜜虫点
	{ config_id = 582150, gadget_id = 70290353, pos = { x = 897.535, y = 707.027, z = 226.753 }, rot = { x = 353.755, y = 359.921, z = 358.229 }, level = 1, area_id = 300 },
	-- 拦截点5坠落岩柱
	{ config_id = 582151, gadget_id = 70290276, pos = { x = 915.179, y = 787.472, z = 263.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582154, gadget_id = 70290233, pos = { x = 885.829, y = 706.566, z = 226.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582155, gadget_id = 70290233, pos = { x = 874.479, y = 706.144, z = 223.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582156, gadget_id = 70290233, pos = { x = 858.953, y = 706.412, z = 225.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582157, gadget_id = 70290233, pos = { x = 843.600, y = 706.202, z = 225.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582158, gadget_id = 70290233, pos = { x = 822.171, y = 706.231, z = 229.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点6至10坠落岩柱
	{ config_id = 582164, gadget_id = 70290276, pos = { x = 888.376, y = 792.503, z = 228.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点6至10坠落岩柱
	{ config_id = 582165, gadget_id = 70290276, pos = { x = 880.620, y = 783.760, z = 222.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点6至10坠落岩柱
	{ config_id = 582166, gadget_id = 70290276, pos = { x = 869.510, y = 785.244, z = 227.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点6至10坠落岩柱
	{ config_id = 582167, gadget_id = 70290276, pos = { x = 860.594, y = 789.558, z = 222.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点6至10坠落岩柱
	{ config_id = 582168, gadget_id = 70290276, pos = { x = 848.182, y = 785.831, z = 227.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582169, gadget_id = 70290204, pos = { x = 894.569, y = 706.714, z = 233.050 }, rot = { x = 354.318, y = 6.880, z = 2.957 }, level = 1, area_id = 300 },
	{ config_id = 582170, gadget_id = 70360342, pos = { x = 888.670, y = 707.237, z = 220.019 }, rot = { x = 357.627, y = 0.020, z = 359.580 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582171, gadget_id = 70290204, pos = { x = 866.981, y = 706.076, z = 221.940 }, rot = { x = 0.404, y = 0.609, z = 0.015 }, level = 1, area_id = 300 },
	{ config_id = 582172, gadget_id = 70360342, pos = { x = 867.312, y = 706.189, z = 217.993 }, rot = { x = 357.627, y = 0.020, z = 359.580 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582173, gadget_id = 70290204, pos = { x = 853.773, y = 706.482, z = 227.916 }, rot = { x = 3.324, y = 0.760, z = 5.902 }, level = 1, area_id = 300 },
	{ config_id = 582174, gadget_id = 70360342, pos = { x = 853.337, y = 706.257, z = 224.719 }, rot = { x = 357.627, y = 0.020, z = 359.580 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582175, gadget_id = 70290204, pos = { x = 836.188, y = 706.159, z = 224.557 }, rot = { x = 0.404, y = 0.609, z = 0.015 }, level = 1, area_id = 300 },
	{ config_id = 582176, gadget_id = 70360342, pos = { x = 838.652, y = 706.220, z = 222.000 }, rot = { x = 357.627, y = 0.020, z = 359.580 }, level = 1, area_id = 300 },
	-- 拦截点6发光蜜虫点170
	{ config_id = 582184, gadget_id = 70290353, pos = { x = 888.652, y = 707.269, z = 219.923 }, rot = { x = 353.755, y = 359.921, z = 358.229 }, level = 1, area_id = 300 },
	-- 拦截点7发光蜜虫点172
	{ config_id = 582185, gadget_id = 70290353, pos = { x = 867.235, y = 706.183, z = 218.152 }, rot = { x = 353.755, y = 359.921, z = 358.229 }, level = 1, area_id = 300 },
	-- 拦截点8发光蜜虫点174
	{ config_id = 582186, gadget_id = 70290353, pos = { x = 853.216, y = 706.269, z = 224.861 }, rot = { x = 353.755, y = 359.921, z = 358.229 }, level = 1, area_id = 300 },
	-- 拦截点10光蜜虫点176
	{ config_id = 582187, gadget_id = 70290353, pos = { x = 838.637, y = 706.220, z = 222.031 }, rot = { x = 353.755, y = 359.921, z = 358.229 }, level = 1, area_id = 300 },
	-- 拦截点10发光蜜虫点191
	{ config_id = 582188, gadget_id = 70290353, pos = { x = 824.400, y = 706.316, z = 226.734 }, rot = { x = 353.755, y = 359.921, z = 358.229 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心
	{ config_id = 582190, gadget_id = 70290204, pos = { x = 832.600, y = 706.119, z = 223.994 }, rot = { x = 0.404, y = 0.609, z = 0.015 }, level = 1, area_id = 300 },
	{ config_id = 582191, gadget_id = 70360342, pos = { x = 824.481, y = 706.320, z = 226.695 }, rot = { x = 357.627, y = 0.020, z = 359.580 }, level = 1, area_id = 300 },
	{ config_id = 582202, gadget_id = 70290233, pos = { x = 831.533, y = 706.245, z = 227.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582203, gadget_id = 70290233, pos = { x = 812.469, y = 706.197, z = 232.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582204, gadget_id = 70290233, pos = { x = 806.172, y = 706.074, z = 244.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582205, gadget_id = 70290233, pos = { x = 798.162, y = 706.197, z = 233.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582206, gadget_id = 70290233, pos = { x = 797.102, y = 706.165, z = 221.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 582215，582202，582217
	{ config_id = 582207, gadget_id = 70290204, pos = { x = 834.714, y = 706.138, z = 227.431 }, rot = { x = 1.645, y = 359.463, z = 359.238 }, level = 1, area_id = 300 },
	-- 582213，582204，582219
	{ config_id = 582208, gadget_id = 70290204, pos = { x = 801.265, y = 706.260, z = 247.670 }, rot = { x = 358.619, y = 359.316, z = 352.619 }, level = 1, area_id = 300 },
	-- 582216，582206，582221
	{ config_id = 582209, gadget_id = 70290204, pos = { x = 794.520, y = 706.059, z = 217.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心，582214，582205，582220
	{ config_id = 582210, gadget_id = 70290204, pos = { x = 802.348, y = 706.195, z = 231.356 }, rot = { x = 1.752, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦路黑泥深渊核心，582212，582203，582218
	{ config_id = 582211, gadget_id = 70290204, pos = { x = 812.611, y = 706.129, z = 231.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582212, gadget_id = 70360342, pos = { x = 809.206, y = 706.464, z = 234.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582213, gadget_id = 70360342, pos = { x = 796.307, y = 707.178, z = 246.246 }, rot = { x = 355.650, y = 0.503, z = 346.809 }, level = 1, area_id = 300 },
	{ config_id = 582214, gadget_id = 70360342, pos = { x = 796.766, y = 706.185, z = 235.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582215, gadget_id = 70360342, pos = { x = 834.056, y = 706.080, z = 231.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 582216, gadget_id = 70360342, pos = { x = 794.248, y = 706.121, z = 223.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11发光蜜虫点
	{ config_id = 582217, gadget_id = 70290353, pos = { x = 834.144, y = 706.080, z = 231.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11发光蜜虫点
	{ config_id = 582218, gadget_id = 70290353, pos = { x = 809.295, y = 706.453, z = 233.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11发光蜜虫点
	{ config_id = 582219, gadget_id = 70290353, pos = { x = 796.033, y = 707.257, z = 246.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11发光蜜虫点
	{ config_id = 582220, gadget_id = 70290353, pos = { x = 797.176, y = 706.153, z = 235.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11发光蜜虫点
	{ config_id = 582221, gadget_id = 70290353, pos = { x = 794.362, y = 706.122, z = 223.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11坠落岩柱
	{ config_id = 582234, gadget_id = 70290276, pos = { x = 794.660, y = 784.390, z = 219.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11坠落岩柱
	{ config_id = 582235, gadget_id = 70290276, pos = { x = 799.813, y = 747.168, z = 248.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11坠落岩柱
	{ config_id = 582236, gadget_id = 70290276, pos = { x = 834.836, y = 785.322, z = 227.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11坠落岩柱
	{ config_id = 582237, gadget_id = 70290276, pos = { x = 812.822, y = 789.186, z = 230.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点11坠落岩柱
	{ config_id = 582238, gadget_id = 70290276, pos = { x = 802.138, y = 791.065, z = 232.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 拦截点6附近结晶灯
	{ config_id = 582245, gadget_id = 70290300, pos = { x = 891.581, y = 708.574, z = 216.933 }, rot = { x = 0.000, y = 29.214, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 300 },
	-- 拦截点10附近结晶灯
	{ config_id = 582246, gadget_id = 70290300, pos = { x = 827.937, y = 707.151, z = 222.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 300 }
}

-- 区域
regions = {
	-- ShowTemplateReminder
	{ config_id = 582042, shape = RegionShape.SPHERE, radius = 5, pos = { x = 933.542, y = 725.906, z = 335.292 }, area_id = 300 }
}

-- 触发器
triggers = {
	-- 创生大世界隐形操作台
	{ config_id = 1582003, name = "GADGET_CREATE_582003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_582003", action = "action_EVENT_GADGET_CREATE_582003", trigger_count = 0 },
	-- 开启挑战
	{ config_id = 1582004, name = "SELECT_OPTION_582004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_582004", action = "action_EVENT_SELECT_OPTION_582004", trigger_count = 0 },
	-- 到达终点
	{ config_id = 1582006, name = "PLATFORM_REACH_POINT_582006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582006", action = "action_EVENT_PLATFORM_REACH_POINT_582006", tag = "888" },
	-- 拦截点1停车
	{ config_id = 1582010, name = "PLATFORM_REACH_POINT_582010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582010", action = "action_EVENT_PLATFORM_REACH_POINT_582010" },
	-- 拦截点2岩柱启动
	{ config_id = 1582011, name = "PLATFORM_REACH_POINT_582011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582011", action = "action_EVENT_PLATFORM_REACH_POINT_582011" },
	-- 拦截点7启动
	{ config_id = 1582013, name = "VARIABLE_CHANGE_582013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582013", action = "action_EVENT_VARIABLE_CHANGE_582013" },
	-- 拦截点1怪物全部击杀
	{ config_id = 1582018, name = "ANY_MONSTER_DIE_582018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582018", action = "action_EVENT_ANY_MONSTER_DIE_582018" },
	-- 拦截点8启动
	{ config_id = 1582029, name = "VARIABLE_CHANGE_582029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582029", action = "action_EVENT_VARIABLE_CHANGE_582029" },
	-- 拦截点9启动
	{ config_id = 1582032, name = "VARIABLE_CHANGE_582032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582032", action = "action_EVENT_VARIABLE_CHANGE_582032" },
	-- 拦截点10启动
	{ config_id = 1582033, name = "VARIABLE_CHANGE_582033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582033", action = "action_EVENT_VARIABLE_CHANGE_582033" },
	-- 拦截点6启动
	{ config_id = 1582039, name = "VARIABLE_CHANGE_582039", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582039", action = "action_EVENT_VARIABLE_CHANGE_582039" },
	-- ShowTemplateReminder
	{ config_id = 1582042, name = "ENTER_REGION_582042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_582042", action = "action_EVENT_ENTER_REGION_582042" },
	-- 黑泥包裹物死亡
	{ config_id = 1582043, name = "ANY_GADGET_DIE_582043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582043", action = "action_EVENT_ANY_GADGET_DIE_582043" },
	-- 拦路黑泥深渊核心死亡
	{ config_id = 1582054, name = "ANY_GADGET_DIE_582054", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582054", action = "action_EVENT_ANY_GADGET_DIE_582054" },
	-- 拦截点2岩柱落地
	{ config_id = 1582063, name = "TIME_AXIS_PASS_582063", event = EventType.EVENT_TIME_AXIS_PASS, source = "drop5", condition = "condition_EVENT_TIME_AXIS_PASS_582063", action = "action_EVENT_TIME_AXIS_PASS_582063" },
	-- 深渊核心死亡
	{ config_id = 1582064, name = "ANY_GADGET_DIE_582064", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582064", action = "action_EVENT_ANY_GADGET_DIE_582064" },
	-- 拦路黑泥深渊核心死亡
	{ config_id = 1582065, name = "ANY_GADGET_DIE_582065", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582065", action = "action_EVENT_ANY_GADGET_DIE_582065" },
	-- 拦截点3岩柱启动
	{ config_id = 1582066, name = "PLATFORM_REACH_POINT_582066", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582066", action = "action_EVENT_PLATFORM_REACH_POINT_582066" },
	-- 黑泥包裹物死亡
	{ config_id = 1582069, name = "ANY_GADGET_DIE_582069", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582069", action = "action_EVENT_ANY_GADGET_DIE_582069" },
	-- 深渊喷口上的深渊核心2死亡
	{ config_id = 1582071, name = "ANY_GADGET_DIE_582071", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582071", action = "action_EVENT_ANY_GADGET_DIE_582071", trigger_count = 0 },
	-- 深渊喷口上的深渊核心1死亡
	{ config_id = 1582072, name = "ANY_GADGET_DIE_582072", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582072", action = "action_EVENT_ANY_GADGET_DIE_582072", trigger_count = 0 },
	-- 深渊喷口上的深渊核心4死亡
	{ config_id = 1582074, name = "ANY_GADGET_DIE_582074", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582074", action = "action_EVENT_ANY_GADGET_DIE_582074", trigger_count = 0 },
	-- 深渊喷口上的深渊核心6死亡
	{ config_id = 1582079, name = "ANY_GADGET_DIE_582079", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582079", action = "action_EVENT_ANY_GADGET_DIE_582079", trigger_count = 0 },
	-- 深渊喷口上的深渊核心5死亡
	{ config_id = 1582080, name = "ANY_GADGET_DIE_582080", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582080", action = "action_EVENT_ANY_GADGET_DIE_582080", trigger_count = 0 },
	-- 深渊喷口上的深渊核心2定时4秒重生
	{ config_id = 1582082, name = "TIME_AXIS_PASS_582082", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawn2", condition = "condition_EVENT_TIME_AXIS_PASS_582082", action = "action_EVENT_TIME_AXIS_PASS_582082", trigger_count = 0 },
	-- 深渊喷口上的深渊核心1定时4秒重生
	{ config_id = 1582083, name = "TIME_AXIS_PASS_582083", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawn3", condition = "condition_EVENT_TIME_AXIS_PASS_582083", action = "action_EVENT_TIME_AXIS_PASS_582083", trigger_count = 0 },
	-- 深渊喷口上的深渊核心4定时4秒重生
	{ config_id = 1582085, name = "TIME_AXIS_PASS_582085", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawn5", condition = "condition_EVENT_TIME_AXIS_PASS_582085", action = "action_EVENT_TIME_AXIS_PASS_582085", trigger_count = 0 },
	-- 深渊喷口上的深渊核心6定时4秒重生
	{ config_id = 1582090, name = "TIME_AXIS_PASS_582090", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawn10", condition = "condition_EVENT_TIME_AXIS_PASS_582090", action = "action_EVENT_TIME_AXIS_PASS_582090", trigger_count = 0 },
	-- 深渊喷口上的深渊核心5定时4秒重生
	{ config_id = 1582104, name = "TIME_AXIS_PASS_582104", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawn12", condition = "condition_EVENT_TIME_AXIS_PASS_582104", action = "action_EVENT_TIME_AXIS_PASS_582104", trigger_count = 0 },
	-- 黑泥包裹物死亡
	{ config_id = 1582105, name = "ANY_GADGET_DIE_582105", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582105", action = "action_EVENT_ANY_GADGET_DIE_582105" },
	-- 深渊核心死亡
	{ config_id = 1582106, name = "ANY_GADGET_DIE_582106", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582106", action = "action_EVENT_ANY_GADGET_DIE_582106" },
	-- 深渊核心死亡
	{ config_id = 1582107, name = "ANY_GADGET_DIE_582107", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582107", action = "action_EVENT_ANY_GADGET_DIE_582107" },
	-- 拦路黑泥深渊核心死亡
	{ config_id = 1582108, name = "ANY_GADGET_DIE_582108", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582108", action = "action_EVENT_ANY_GADGET_DIE_582108" },
	-- 黑泥包裹物死亡
	{ config_id = 1582109, name = "ANY_GADGET_DIE_582109", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582109", action = "action_EVENT_ANY_GADGET_DIE_582109" },
	-- 拦截点2障碍全部清除
	{ config_id = 1582112, name = "VARIABLE_CHANGE_582112", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582112", action = "action_EVENT_VARIABLE_CHANGE_582112" },
	-- 拦截点3障碍全部清除
	{ config_id = 1582113, name = "VARIABLE_CHANGE_582113", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582113", action = "action_EVENT_VARIABLE_CHANGE_582113" },
	-- 拦截点4岩柱启动
	{ config_id = 1582114, name = "PLATFORM_REACH_POINT_582114", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582114", action = "action_EVENT_PLATFORM_REACH_POINT_582114" },
	-- 拦截点4怪物全部击杀
	{ config_id = 1582119, name = "ANY_MONSTER_DIE_582119", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582119", action = "action_EVENT_ANY_MONSTER_DIE_582119" },
	-- 拦截点4障碍全部清除
	{ config_id = 1582120, name = "VARIABLE_CHANGE_582120", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582120", action = "action_EVENT_VARIABLE_CHANGE_582120" },
	-- 拦截点3岩柱落地
	{ config_id = 1582124, name = "TIME_AXIS_PASS_582124", event = EventType.EVENT_TIME_AXIS_PASS, source = "drop6", condition = "condition_EVENT_TIME_AXIS_PASS_582124", action = "action_EVENT_TIME_AXIS_PASS_582124" },
	-- 深渊喷口上深渊核心死亡
	{ config_id = 1582131, name = "ANY_GADGET_DIE_582131", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582131", action = "action_EVENT_ANY_GADGET_DIE_582131", trigger_count = 0 },
	-- 拦路黑泥深渊核心死亡
	{ config_id = 1582132, name = "ANY_GADGET_DIE_582132", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582132", action = "action_EVENT_ANY_GADGET_DIE_582132" },
	-- 黑泥包裹物死亡
	{ config_id = 1582133, name = "ANY_GADGET_DIE_582133", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582133", action = "action_EVENT_ANY_GADGET_DIE_582133" },
	-- 深渊喷口上的深渊核心定时4秒重生
	{ config_id = 1582135, name = "TIME_AXIS_PASS_582135", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawn13", condition = "condition_EVENT_TIME_AXIS_PASS_582135", action = "action_EVENT_TIME_AXIS_PASS_582135", trigger_count = 0 },
	-- 拦截点4岩柱落地
	{ config_id = 1582138, name = "TIME_AXIS_PASS_582138", event = EventType.EVENT_TIME_AXIS_PASS, source = "drop7", condition = "condition_EVENT_TIME_AXIS_PASS_582138", action = "action_EVENT_TIME_AXIS_PASS_582138" },
	-- 拦截点5岩柱启动
	{ config_id = 1582139, name = "PLATFORM_REACH_POINT_582139", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582139", action = "action_EVENT_PLATFORM_REACH_POINT_582139" },
	-- 拦截点5怪物全部击杀
	{ config_id = 1582144, name = "ANY_MONSTER_DIE_582144", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582144", action = "action_EVENT_ANY_MONSTER_DIE_582144" },
	-- 拦截点5障碍全部清除
	{ config_id = 1582145, name = "VARIABLE_CHANGE_582145", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582145", action = "action_EVENT_VARIABLE_CHANGE_582145" },
	-- 拦路黑泥深渊核心死亡
	{ config_id = 1582146, name = "ANY_GADGET_DIE_582146", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582146", action = "action_EVENT_ANY_GADGET_DIE_582146" },
	-- 拦截点5岩柱落地
	{ config_id = 1582152, name = "TIME_AXIS_PASS_582152", event = EventType.EVENT_TIME_AXIS_PASS, source = "drop8", condition = "condition_EVENT_TIME_AXIS_PASS_582152", action = "action_EVENT_TIME_AXIS_PASS_582152" },
	-- 黑泥包裹物死亡
	{ config_id = 1582153, name = "ANY_GADGET_DIE_582153", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582153", action = "action_EVENT_ANY_GADGET_DIE_582153" },
	-- 拦截点6至10岩柱启动
	{ config_id = 1582159, name = "PLATFORM_REACH_POINT_582159", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582159", action = "action_EVENT_PLATFORM_REACH_POINT_582159" },
	-- 拦截点7
	{ config_id = 1582160, name = "PLATFORM_REACH_POINT_582160", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582160", action = "action_EVENT_PLATFORM_REACH_POINT_582160" },
	-- 拦截点8
	{ config_id = 1582161, name = "PLATFORM_REACH_POINT_582161", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582161", action = "action_EVENT_PLATFORM_REACH_POINT_582161" },
	-- 拦截点9
	{ config_id = 1582162, name = "PLATFORM_REACH_POINT_582162", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582162", action = "action_EVENT_PLATFORM_REACH_POINT_582162" },
	-- 拦截点10
	{ config_id = 1582163, name = "PLATFORM_REACH_POINT_582163", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582163", action = "action_EVENT_PLATFORM_REACH_POINT_582163" },
	-- 拦路黑泥深渊核心死亡169
	{ config_id = 1582178, name = "ANY_GADGET_DIE_582178", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582178", action = "action_EVENT_ANY_GADGET_DIE_582178" },
	-- 黑泥包裹物死亡
	{ config_id = 1582180, name = "ANY_GADGET_DIE_582180", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582180", action = "action_EVENT_ANY_GADGET_DIE_582180" },
	-- 拦路黑泥深渊核心死亡171
	{ config_id = 1582182, name = "ANY_GADGET_DIE_582182", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582182", action = "action_EVENT_ANY_GADGET_DIE_582182" },
	-- 黑泥包裹物死亡
	{ config_id = 1582183, name = "ANY_GADGET_DIE_582183", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582183", action = "action_EVENT_ANY_GADGET_DIE_582183" },
	-- 拦截点6至10岩柱落地
	{ config_id = 1582189, name = "TIME_AXIS_PASS_582189", event = EventType.EVENT_TIME_AXIS_PASS, source = "drop9", condition = "condition_EVENT_TIME_AXIS_PASS_582189", action = "action_EVENT_TIME_AXIS_PASS_582189" },
	-- 拦路黑泥深渊核心死亡173
	{ config_id = 1582193, name = "ANY_GADGET_DIE_582193", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582193", action = "action_EVENT_ANY_GADGET_DIE_582193" },
	-- 黑泥包裹物死亡
	{ config_id = 1582194, name = "ANY_GADGET_DIE_582194", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582194", action = "action_EVENT_ANY_GADGET_DIE_582194" },
	-- 拦路黑泥深渊核心死亡175
	{ config_id = 1582196, name = "ANY_GADGET_DIE_582196", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582196", action = "action_EVENT_ANY_GADGET_DIE_582196" },
	-- 黑泥包裹物死亡
	{ config_id = 1582197, name = "ANY_GADGET_DIE_582197", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582197", action = "action_EVENT_ANY_GADGET_DIE_582197" },
	-- 拦截点11岩柱启动
	{ config_id = 1582198, name = "PLATFORM_REACH_POINT_582198", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582198", action = "action_EVENT_PLATFORM_REACH_POINT_582198" },
	-- 拦路黑泥深渊核心死亡190
	{ config_id = 1582199, name = "ANY_GADGET_DIE_582199", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582199", action = "action_EVENT_ANY_GADGET_DIE_582199" },
	-- 黑泥包裹物死亡
	{ config_id = 1582200, name = "ANY_GADGET_DIE_582200", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582200", action = "action_EVENT_ANY_GADGET_DIE_582200" },
	-- 拦截点11岩柱落地
	{ config_id = 1582201, name = "TIME_AXIS_PASS_582201", event = EventType.EVENT_TIME_AXIS_PASS, source = "drop10", condition = "condition_EVENT_TIME_AXIS_PASS_582201", action = "action_EVENT_TIME_AXIS_PASS_582201", trigger_count = 0 },
	-- 深渊核心582207死亡
	{ config_id = 1582222, name = "ANY_GADGET_DIE_582222", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582222", action = "action_EVENT_ANY_GADGET_DIE_582222" },
	-- 黑泥包裹物582215死亡
	{ config_id = 1582223, name = "ANY_GADGET_DIE_582223", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582223", action = "action_EVENT_ANY_GADGET_DIE_582223" },
	-- 深渊核心582208死亡
	{ config_id = 1582224, name = "ANY_GADGET_DIE_582224", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582224", action = "action_EVENT_ANY_GADGET_DIE_582224" },
	-- 黑泥包裹物582213死亡
	{ config_id = 1582225, name = "ANY_GADGET_DIE_582225", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582225", action = "action_EVENT_ANY_GADGET_DIE_582225" },
	-- 深渊核心582209死亡
	{ config_id = 1582226, name = "ANY_GADGET_DIE_582226", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582226", action = "action_EVENT_ANY_GADGET_DIE_582226" },
	-- 黑泥包裹物582216死亡
	{ config_id = 1582227, name = "ANY_GADGET_DIE_582227", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582227", action = "action_EVENT_ANY_GADGET_DIE_582227" },
	-- 拦路深渊核心582210死亡
	{ config_id = 1582228, name = "ANY_GADGET_DIE_582228", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582228", action = "action_EVENT_ANY_GADGET_DIE_582228" },
	-- 黑泥包裹物582214死亡
	{ config_id = 1582229, name = "ANY_GADGET_DIE_582229", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582229", action = "action_EVENT_ANY_GADGET_DIE_582229" },
	-- 拦路深渊核心582211死亡
	{ config_id = 1582230, name = "ANY_GADGET_DIE_582230", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582230", action = "action_EVENT_ANY_GADGET_DIE_582230" },
	-- 黑泥包裹物582212死亡
	{ config_id = 1582231, name = "ANY_GADGET_DIE_582231", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582231", action = "action_EVENT_ANY_GADGET_DIE_582231" },
	-- 拦截点11怪物全部击杀
	{ config_id = 1582232, name = "ANY_MONSTER_DIE_582232", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582232", action = "action_EVENT_ANY_MONSTER_DIE_582232" },
	-- 拦截点11障碍全部清除
	{ config_id = 1582233, name = "VARIABLE_CHANGE_582233", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_582233", action = "action_EVENT_VARIABLE_CHANGE_582233" },
	-- 拦截点11停车
	{ config_id = 1582239, name = "PLATFORM_REACH_POINT_582239", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582239", action = "action_EVENT_PLATFORM_REACH_POINT_582239" },
	-- 拦截点6停车
	{ config_id = 1582240, name = "PLATFORM_REACH_POINT_582240", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582240", action = "action_EVENT_PLATFORM_REACH_POINT_582240" },
	-- 拦截点5停车
	{ config_id = 1582241, name = "PLATFORM_REACH_POINT_582241", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582241", action = "action_EVENT_PLATFORM_REACH_POINT_582241" },
	-- 拦截点4停车
	{ config_id = 1582242, name = "PLATFORM_REACH_POINT_582242", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582242", action = "action_EVENT_PLATFORM_REACH_POINT_582242" },
	-- 拦截点3停车
	{ config_id = 1582243, name = "PLATFORM_REACH_POINT_582243", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582243", action = "action_EVENT_PLATFORM_REACH_POINT_582243" },
	-- 拦截点2停车
	{ config_id = 1582244, name = "PLATFORM_REACH_POINT_582244", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_582244", action = "action_EVENT_PLATFORM_REACH_POINT_582244" }
}

-- 变量
variables = {
	{ config_id = 1, name = "IsObstacle1Available", value = 2, no_refresh = false },
	{ config_id = 2, name = "IsObstacle2Available", value = 1, no_refresh = false },
	{ config_id = 3, name = "IsObstacle3Available", value = 2, no_refresh = false },
	{ config_id = 4, name = "IsObstacle4Available", value = 2, no_refresh = false },
	{ config_id = 5, name = "IsObstacle5Available", value = 2, no_refresh = false },
	{ config_id = 6, name = "IsObstacle6Available", value = 3, no_refresh = false },
	{ config_id = 7, name = "IsObstacle7Available", value = 4, no_refresh = false },
	{ config_id = 8, name = "IsObstacle8Available", value = 5, no_refresh = false },
	{ config_id = 9, name = "IsObstacle9Available", value = 3, no_refresh = false },
	{ config_id = 10, name = "IsObstacle10Available", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1582005, name = "CHALLENGE_SUCCESS_582005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_582005", trigger_count = 0 },
		{ config_id = 1582007, name = "CHALLENGE_FAIL_582007", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_582007", trigger_count = 0 },
		{ config_id = 1582008, name = "ANY_GADGET_DIE_582008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_582008", action = "action_EVENT_ANY_GADGET_DIE_582008", trigger_count = 0 }
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
	end_suite = 11,
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
		-- description = start_suite,
		monsters = { },
		gadgets = { 582001, 582002 },
		regions = { 582042 },
		triggers = { "GADGET_CREATE_582003", "SELECT_OPTION_582004", "PLATFORM_REACH_POINT_582006", "ENTER_REGION_582042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 初始黑泥,
		monsters = { },
		gadgets = { 582019, 582020, 582021, 582022, 582023, 582024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_582071", "ANY_GADGET_DIE_582072", "TIME_AXIS_PASS_582082", "TIME_AXIS_PASS_582083" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 初始非黑泥,
		monsters = { },
		gadgets = { 582009, 582017, 582036, 582037, 582041, 582121, 582122, 582123, 582136, 582137, 582151, 582164, 582165, 582166, 582167, 582168, 582234, 582235, 582236, 582237, 582238, 582245, 582246 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_582010", "PLATFORM_REACH_POINT_582011", "TIME_AXIS_PASS_582063", "PLATFORM_REACH_POINT_582066", "PLATFORM_REACH_POINT_582114", "TIME_AXIS_PASS_582124", "TIME_AXIS_PASS_582138", "PLATFORM_REACH_POINT_582139", "TIME_AXIS_PASS_582152", "PLATFORM_REACH_POINT_582159", "PLATFORM_REACH_POINT_582160", "PLATFORM_REACH_POINT_582161", "PLATFORM_REACH_POINT_582162", "PLATFORM_REACH_POINT_582163", "TIME_AXIS_PASS_582189", "PLATFORM_REACH_POINT_582198", "TIME_AXIS_PASS_582201", "PLATFORM_REACH_POINT_582239", "PLATFORM_REACH_POINT_582240", "PLATFORM_REACH_POINT_582241", "PLATFORM_REACH_POINT_582242", "PLATFORM_REACH_POINT_582243", "PLATFORM_REACH_POINT_582244" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 拦截点1埋伏怪,
		monsters = { 582012, 582014, 582015, 582016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_582018" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 拦截点2黑泥,
		monsters = { },
		gadgets = { 582028, 582030, 582031, 582055, 582056, 582057, 582058, 582059, 582060, 582062, 582068 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_582043", "ANY_GADGET_DIE_582054", "ANY_GADGET_DIE_582064", "ANY_GADGET_DIE_582065", "ANY_GADGET_DIE_582069", "ANY_GADGET_DIE_582074", "TIME_AXIS_PASS_582085", "VARIABLE_CHANGE_582112" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 拦截点3黑泥,
		monsters = { },
		gadgets = { 582092, 582093, 582094, 582095, 582096, 582097, 582098, 582099 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_582105", "ANY_GADGET_DIE_582106", "ANY_GADGET_DIE_582107", "ANY_GADGET_DIE_582108", "ANY_GADGET_DIE_582109", "VARIABLE_CHANGE_582113" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 拦截点4埋伏怪和黑泥,
		monsters = { 582115, 582116, 582117, 582118 },
		gadgets = { 582100, 582101, 582102, 582125, 582126, 582127, 582128, 582129, 582130 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_582080", "TIME_AXIS_PASS_582104", "ANY_MONSTER_DIE_582119", "VARIABLE_CHANGE_582120", "ANY_GADGET_DIE_582131", "ANY_GADGET_DIE_582132", "ANY_GADGET_DIE_582133", "TIME_AXIS_PASS_582135" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 拦截点5埋伏怪和黑泥,
		monsters = { 582026, 582027, 582140, 582142, 582143 },
		gadgets = { 582147, 582148, 582149 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_582144", "VARIABLE_CHANGE_582145", "ANY_GADGET_DIE_582146", "ANY_GADGET_DIE_582153" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 拦截点6至10黑泥,
		monsters = { },
		gadgets = { 582025, 582034, 582035, 582038, 582045, 582052, 582154, 582155, 582156, 582157, 582158, 582169, 582170, 582171, 582172, 582173, 582174, 582175, 582176, 582190, 582191 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_582013", "VARIABLE_CHANGE_582029", "VARIABLE_CHANGE_582032", "VARIABLE_CHANGE_582033", "VARIABLE_CHANGE_582039", "ANY_GADGET_DIE_582079", "TIME_AXIS_PASS_582090", "ANY_GADGET_DIE_582178", "ANY_GADGET_DIE_582180", "ANY_GADGET_DIE_582182", "ANY_GADGET_DIE_582183", "ANY_GADGET_DIE_582193", "ANY_GADGET_DIE_582194", "ANY_GADGET_DIE_582196", "ANY_GADGET_DIE_582197", "ANY_GADGET_DIE_582199", "ANY_GADGET_DIE_582200" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 582040, 582181, 582192, 582195 },
		gadgets = { 582202, 582203, 582204, 582205, 582206, 582207, 582208, 582209, 582210, 582211, 582212, 582213, 582214, 582215, 582216 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_582222", "ANY_GADGET_DIE_582223", "ANY_GADGET_DIE_582224", "ANY_GADGET_DIE_582225", "ANY_GADGET_DIE_582226", "ANY_GADGET_DIE_582227", "ANY_GADGET_DIE_582228", "ANY_GADGET_DIE_582229", "ANY_GADGET_DIE_582230", "ANY_GADGET_DIE_582231", "ANY_MONSTER_DIE_582232", "VARIABLE_CHANGE_582233" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = end_suite,
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
function condition_EVENT_GADGET_CREATE_582003(context, evt)
	if 582002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_582003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001582, 582002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_582004(context, evt)
	-- 判断是gadgetid 582002 option_id 7
	if 582002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_582004(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为2009006的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 2009006, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 3)
	
	-- 调用提示id为 4000147 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 4000147) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582006(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 54 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 54 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582006(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 将configid为 582001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582010(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 4 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582010(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 4)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582011(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 8 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582011(context, evt)
	-- 创建标识为"drop5"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "drop5", {2}, false)
	
	
	-- 将configid为 582017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582037, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582041 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582041, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle5Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle5Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582013(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582018(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001582) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582018(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle6Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle6Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582029(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle7Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle7Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582032(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle8Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle8Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582033(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle10Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle10Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582039(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_582042(context, evt)
	if evt.param1 ~= 582042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_582042(context, evt)
	-- 显示id为182的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,182,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582043(context, evt)
	if 582062 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582043(context, evt)
	-- 创建id为582061的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582061 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582054(context, evt)
	if 582058 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582054(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582055 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582063(context, evt)
	if "drop5" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582063(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582064(context, evt)
	if 582059 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582064(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582056 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582065(context, evt)
	if 582060 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582065(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582057 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582068 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582066(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 12 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582066(context, evt)
	-- 创建标识为"drop6"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "drop6", {2}, false)
	
	
	-- 将configid为 582121 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582121, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582122 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582122, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582123 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582123, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582069(context, evt)
	if 582068 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582069(context, evt)
	-- 创建id为582067的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582067 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582071(context, evt)
	if 582021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582071(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"respawn2"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "respawn2", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582072(context, evt)
	if 582022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582072(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"respawn3"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "respawn3", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582074(context, evt)
	if 582031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582074(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"respawn5"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "respawn5", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582079(context, evt)
	if 582045 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582052 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"respawn10"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "respawn10", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582080(context, evt)
	if 582101 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582080(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582102 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"respawn12"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "respawn12", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582082(context, evt)
	if "respawn2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582082(context, evt)
	-- 创建id为582021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为582024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582083(context, evt)
	if "respawn3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582083(context, evt)
	-- 创建id为582022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为582023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582085(context, evt)
	if "respawn5" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582085(context, evt)
	-- 创建id为582031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为582028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582090(context, evt)
	if "respawn10" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582090(context, evt)
	-- 创建id为582045的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582045 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为582052的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582052 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582104(context, evt)
	if "respawn12" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582104(context, evt)
	-- 创建id为582101的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582101 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为582102的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582102 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582105(context, evt)
	if 582098 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582105(context, evt)
	-- 创建id为582110的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582110 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582106(context, evt)
	if 582095 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582106(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582092 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582098 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582107(context, evt)
	if 582096 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582107(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582093 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582099 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582108(context, evt)
	if 582097 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582108(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582094 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle2Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582109(context, evt)
	if 582099 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582109(context, evt)
	-- 创建id为582111的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582111 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582112(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582112(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582113(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582113(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582114(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 18 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582114(context, evt)
	-- 创建标识为"drop7"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "drop7", {2}, false)
	
	
	-- 将configid为 582136 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582136, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582137 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582137, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582119(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001582) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582119(context, evt)
	-- 针对当前group内变量名为 "IsObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582120(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle3Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582120(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582124(context, evt)
	if "drop6" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582124(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582131(context, evt)
	if 582127 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582131(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582125 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"respawn13"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "respawn13", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582132(context, evt)
	if 582128 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582132(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582126 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582130 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582133(context, evt)
	if 582130 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582133(context, evt)
	-- 创建id为582134的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582134 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582135(context, evt)
	if "respawn13" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582135(context, evt)
	-- 创建id为582127的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582127 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为582125的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582125 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582138(context, evt)
	if "drop7" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582138(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582139(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 24 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582139(context, evt)
	-- 创建标识为"drop8"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "drop8", {2}, false)
	
	
	-- 将configid为 582151 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582151, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582144(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001582) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582144(context, evt)
	-- 针对当前group内变量名为 "IsObstacle4Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle4Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582145(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle4Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle4Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582145(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582146(context, evt)
	if 582148 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582146(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582147 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582149 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle4Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle4Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582152(context, evt)
	if "drop8" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582152(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582153(context, evt)
	if 582149 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582153(context, evt)
	-- 创建id为582150的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582150 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582159(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 30 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582159(context, evt)
	-- 创建标识为"drop9"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "drop9", {2}, false)
	
	
	-- 将configid为 582164 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582164, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582165 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582165, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582166 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582166, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582167 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582167, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582168 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582168, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582160(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 34 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	-- 判断变量"IsObstacle5Available"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsObstacle5Available", 166001582) == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582160(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582161(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 36 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 36 ~= evt.param3 then
	  return false
	end
	
	-- 判断变量"IsObstacle6Available"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsObstacle6Available", 166001582) == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582161(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582162(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 38 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 38 ~= evt.param3 then
	  return false
	end
	
	-- 判断变量"IsObstacle7Available"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsObstacle7Available", 166001582) == 0 then
			return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582162(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582163(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 40 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 40 ~= evt.param3 then
	  return false
	end
	
	-- 判断变量"IsObstacle8Available"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "IsObstacle8Available", 166001582) == 0 then
			return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582163(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582178(context, evt)
	if 582169 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582178(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582154 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582170 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle10Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle10Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle5Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle5Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle6Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle6Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle7Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle7Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle8Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle8Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582180(context, evt)
	if 582170 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582180(context, evt)
	-- 创建id为582184的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582184 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582182(context, evt)
	if 582171 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582182(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582155 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582172 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle5Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle5Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle6Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle6Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle7Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle7Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle8Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle8Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582183(context, evt)
	if 582172 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582183(context, evt)
	-- 创建id为582185的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582185 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582189(context, evt)
	if "drop9" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582189(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582193(context, evt)
	if 582173 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582193(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582156 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582174 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle6Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle6Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle7Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle7Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle8Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle8Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582194(context, evt)
	if 582174 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582194(context, evt)
	-- 创建id为582186的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582186 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582196(context, evt)
	if 582175 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582196(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582157 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582176 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle7Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle7Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "IsObstacle8Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle8Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582197(context, evt)
	if 582176 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582197(context, evt)
	-- 创建id为582187的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582187 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582198(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 48 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 48 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582198(context, evt)
	-- 创建标识为"drop10"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "drop10", {2}, false)
	
	
	-- 将configid为 582234 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582234, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582235 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582235, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582236 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582236, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582237 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582237, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 582238 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 582238, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582199(context, evt)
	if 582190 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582199(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582158 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582191 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle8Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle8Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582200(context, evt)
	if 582191 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582200(context, evt)
	-- 创建id为582188的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582188 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_582201(context, evt)
	if "drop10" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_582201(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001582, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582222(context, evt)
	if 582207 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582222(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582202 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582215 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582223(context, evt)
	if 582215 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582223(context, evt)
	-- 创建id为582217的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582217 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582224(context, evt)
	if 582208 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582224(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582204 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582213 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582225(context, evt)
	if 582213 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582225(context, evt)
	-- 创建id为582219的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582219 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582226(context, evt)
	if 582209 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582226(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582206 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582216 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582227(context, evt)
	if 582216 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582227(context, evt)
	-- 创建id为582221的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582221 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582228(context, evt)
	if 582210 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582228(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582205 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582214 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle9Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle9Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582229(context, evt)
	if 582214 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582229(context, evt)
	-- 创建id为582220的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582220 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582230(context, evt)
	if 582211 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582230(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582203 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 582212 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "IsObstacle9Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle9Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_582231(context, evt)
	if 582212 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_582231(context, evt)
	-- 创建id为582218的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 582218 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582232(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001582) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582232(context, evt)
	-- 针对当前group内变量名为 "IsObstacle9Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "IsObstacle9Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_582233(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsObstacle9Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle9Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_582233(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582239(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 50 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 50 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582239(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582240(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 32 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"IsObstacle10Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle10Available") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582240(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582241(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 28 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"IsObstacle4Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle4Available") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582241(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582242(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 20 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 20 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"IsObstacle3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle3Available") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582242(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582243(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 14 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	-- 判断变量"IsObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle2Available") == 0 then
			return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582243(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_582244(context, evt)
	-- 判断是gadgetid 为 582001的移动平台，是否到达了600100110 的路线中的 10 点
	
	if 582001 ~= evt.param1 then
	  return false
	end
	
	if 600100110 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	-- 判断变量"IsObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "IsObstacle1Available") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_582244(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 582001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

require "V2_6/DropRockAbyssBulletTrigger"
require "V2_7/Activity_LumenTransport"