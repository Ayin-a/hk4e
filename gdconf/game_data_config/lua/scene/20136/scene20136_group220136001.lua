-- 基础信息
local base_info = {
	group_id = 220136001
}

-- Trigger变量
local defs = {
	point_sum = 19,
	route_2 = 99,
	gadget_seelie = 1106
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 1001, gadget_id = 70310240, pos = { x = 769.581, y = 1.993, z = 650.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70310240, pos = { x = 773.531, y = 1.993, z = 650.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70310240, pos = { x = 777.622, y = 1.993, z = 654.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70310240, pos = { x = 765.387, y = 1.993, z = 650.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70310240, pos = { x = 761.312, y = 1.993, z = 650.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70310240, pos = { x = 759.157, y = 1.993, z = 652.900 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70310240, pos = { x = 755.500, y = 1.993, z = 656.272 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70310240, pos = { x = 761.062, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70310240, pos = { x = 764.816, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70310240, pos = { x = 768.789, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70310240, pos = { x = 796.046, y = 1.993, z = 656.843 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70310240, pos = { x = 796.046, y = 1.993, z = 660.807 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70310240, pos = { x = 781.620, y = 1.993, z = 654.634 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70310240, pos = { x = 772.983, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70310240, pos = { x = 771.123, y = 1.993, z = 661.643 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70310240, pos = { x = 763.186, y = 1.993, z = 660.668 }, rot = { x = 0.000, y = 269.038, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70310240, pos = { x = 775.688, y = 1.993, z = 652.967 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70310240, pos = { x = 767.218, y = 1.993, z = 656.704 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70310240, pos = { x = 779.957, y = 1.993, z = 664.327 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70310240, pos = { x = 774.870, y = 1.993, z = 661.019 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70310240, pos = { x = 774.870, y = 1.993, z = 665.008 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70310240, pos = { x = 774.870, y = 1.993, z = 669.013 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70310240, pos = { x = 774.870, y = 1.993, z = 672.998 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70310240, pos = { x = 777.084, y = 1.993, z = 674.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70310240, pos = { x = 779.957, y = 1.993, z = 668.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70310240, pos = { x = 781.243, y = 1.993, z = 674.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70310240, pos = { x = 785.307, y = 1.993, z = 674.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70310240, pos = { x = 782.217, y = 1.993, z = 670.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70310240, pos = { x = 786.278, y = 1.993, z = 670.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70310240, pos = { x = 790.380, y = 1.993, z = 670.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70310240, pos = { x = 792.474, y = 1.993, z = 672.402 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70310240, pos = { x = 792.474, y = 1.993, z = 676.472 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70310240, pos = { x = 787.602, y = 1.993, z = 676.472 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70310240, pos = { x = 792.532, y = 1.993, z = 680.515 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70310240, pos = { x = 790.380, y = 1.993, z = 682.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1036, gadget_id = 70310240, pos = { x = 786.305, y = 1.993, z = 682.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70310240, pos = { x = 782.133, y = 1.993, z = 682.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70310240, pos = { x = 774.844, y = 1.993, z = 677.005 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70310240, pos = { x = 774.844, y = 1.993, z = 681.120 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, gadget_id = 70310240, pos = { x = 774.844, y = 1.993, z = 685.214 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70310240, pos = { x = 780.017, y = 1.993, z = 684.584 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, gadget_id = 70310240, pos = { x = 772.654, y = 1.993, z = 687.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70310240, pos = { x = 768.595, y = 1.993, z = 687.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, gadget_id = 70310240, pos = { x = 766.302, y = 1.993, z = 689.861 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1046, gadget_id = 70310240, pos = { x = 766.302, y = 1.993, z = 693.845 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1047, gadget_id = 70310240, pos = { x = 768.595, y = 1.993, z = 699.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70310240, pos = { x = 766.302, y = 1.993, z = 697.914 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1049, gadget_id = 70310240, pos = { x = 770.661, y = 1.993, z = 697.914 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1050, gadget_id = 70310240, pos = { x = 772.886, y = 1.993, z = 691.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1051, gadget_id = 70310240, pos = { x = 776.247, y = 1.993, z = 703.731 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1052, gadget_id = 70310240, pos = { x = 776.967, y = 1.993, z = 691.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70310240, pos = { x = 784.263, y = 1.993, z = 689.438 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70310240, pos = { x = 786.024, y = 1.993, z = 691.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70310240, pos = { x = 782.248, y = 1.993, z = 686.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, gadget_id = 70310240, pos = { x = 790.734, y = 1.993, z = 686.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1057, gadget_id = 70310240, pos = { x = 792.532, y = 1.993, z = 684.589 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70310240, pos = { x = 792.532, y = 1.993, z = 689.325 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70310240, pos = { x = 792.532, y = 1.993, z = 693.430 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1060, gadget_id = 70310240, pos = { x = 794.624, y = 1.993, z = 695.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70310240, pos = { x = 798.682, y = 1.993, z = 695.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1062, gadget_id = 70310240, pos = { x = 800.893, y = 1.993, z = 698.107 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1063, gadget_id = 70310240, pos = { x = 798.682, y = 1.993, z = 700.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1064, gadget_id = 70310240, pos = { x = 794.624, y = 1.993, z = 700.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1065, gadget_id = 70310240, pos = { x = 790.492, y = 1.993, z = 700.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1066, gadget_id = 70310240, pos = { x = 786.434, y = 1.993, z = 700.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1067, gadget_id = 70310240, pos = { x = 784.438, y = 1.993, z = 693.862 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1068, gadget_id = 70310240, pos = { x = 775.251, y = 1.993, z = 694.078 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1069, gadget_id = 70310240, pos = { x = 782.353, y = 1.993, z = 696.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1070, gadget_id = 70310240, pos = { x = 778.168, y = 1.993, z = 701.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1071, gadget_id = 70310240, pos = { x = 784.611, y = 1.993, z = 702.889 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1072, gadget_id = 70310240, pos = { x = 784.611, y = 1.993, z = 706.925 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1073, gadget_id = 70310240, pos = { x = 782.174, y = 1.993, z = 708.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1074, gadget_id = 70310240, pos = { x = 777.913, y = 1.993, z = 708.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1075, gadget_id = 70310240, pos = { x = 780.046, y = 1.993, z = 698.911 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1076, gadget_id = 70310240, pos = { x = 770.573, y = 1.993, z = 702.231 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1077, gadget_id = 70310240, pos = { x = 770.573, y = 1.993, z = 706.453 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1078, gadget_id = 70310240, pos = { x = 776.383, y = 1.993, z = 710.955 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1079, gadget_id = 70310240, pos = { x = 770.723, y = 1.993, z = 710.594 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1080, gadget_id = 70310239, pos = { x = 772.889, y = 5.000, z = 775.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1081, gadget_id = 70310239, pos = { x = 772.889, y = 5.400, z = 779.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1082, gadget_id = 70310239, pos = { x = 772.889, y = 5.800, z = 783.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1083, gadget_id = 70310239, pos = { x = 772.889, y = 6.200, z = 787.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1086, gadget_id = 70310240, pos = { x = 749.249, y = 1.993, z = 666.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1087, gadget_id = 70310240, pos = { x = 757.022, y = 1.993, z = 650.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1088, gadget_id = 70310240, pos = { x = 752.843, y = 1.993, z = 650.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1089, gadget_id = 70310240, pos = { x = 748.609, y = 1.993, z = 650.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1091, gadget_id = 70310240, pos = { x = 742.732, y = 1.993, z = 660.696 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1092, gadget_id = 70310240, pos = { x = 742.732, y = 1.993, z = 664.596 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1093, gadget_id = 70310240, pos = { x = 757.022, y = 1.993, z = 658.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1094, gadget_id = 70310240, pos = { x = 750.538, y = 1.993, z = 658.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1095, gadget_id = 70310240, pos = { x = 748.609, y = 1.993, z = 658.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1096, gadget_id = 70310240, pos = { x = 744.379, y = 1.993, z = 658.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1097, gadget_id = 70310240, pos = { x = 755.583, y = 1.993, z = 660.696 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1098, gadget_id = 70310240, pos = { x = 755.582, y = 1.993, z = 664.877 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1099, gadget_id = 70310240, pos = { x = 753.241, y = 1.993, z = 666.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1100, gadget_id = 70310240, pos = { x = 745.124, y = 1.993, z = 666.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1101, gadget_id = 70310240, pos = { x = 746.307, y = 1.993, z = 652.403 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1102, gadget_id = 70310240, pos = { x = 746.307, y = 1.993, z = 656.303 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1105, gadget_id = 70310240, pos = { x = 753.310, y = 1.993, z = 654.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1106, gadget_id = 70310244, pos = { x = 753.991, y = 1.669, z = 657.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1116, gadget_id = 70310239, pos = { x = 772.889, y = 3.400, z = 759.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1125, gadget_id = 70310439, pos = { x = 772.656, y = 8.137, z = 804.750 }, rot = { x = 0.000, y = 182.065, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 阶梯
	{ config_id = 1129, gadget_id = 70310239, pos = { x = 772.889, y = 6.600, z = 791.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 阶梯
	{ config_id = 1130, gadget_id = 70310239, pos = { x = 772.889, y = 7.000, z = 795.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 阶梯
	{ config_id = 1131, gadget_id = 70310239, pos = { x = 772.889, y = 7.400, z = 799.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 阶梯
	{ config_id = 1132, gadget_id = 70310239, pos = { x = 772.889, y = 7.800, z = 803.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1142, gadget_id = 70310240, pos = { x = 777.262, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1143, gadget_id = 70310240, pos = { x = 785.753, y = 1.993, z = 654.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1144, gadget_id = 70310240, pos = { x = 789.861, y = 1.993, z = 654.634 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1145, gadget_id = 70310240, pos = { x = 793.956, y = 1.993, z = 654.634 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1146, gadget_id = 70310240, pos = { x = 785.863, y = 1.993, z = 662.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1147, gadget_id = 70310240, pos = { x = 789.861, y = 1.993, z = 662.711 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1148, gadget_id = 70310240, pos = { x = 793.905, y = 1.993, z = 662.711 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1149, gadget_id = 70310240, pos = { x = 782.031, y = 1.993, z = 662.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1150, gadget_id = 70310240, pos = { x = 781.329, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1151, gadget_id = 70310240, pos = { x = 785.536, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1152, gadget_id = 70310240, pos = { x = 789.603, y = 1.993, z = 658.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1153, gadget_id = 70310240, pos = { x = 768.781, y = 1.993, z = 691.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1154, gadget_id = 70310239, pos = { x = 772.889, y = 3.800, z = 763.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1155, gadget_id = 70310239, pos = { x = 772.889, y = 4.200, z = 767.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1156, gadget_id = 70310239, pos = { x = 772.889, y = 4.600, z = 771.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1157, gadget_id = 70310239, pos = { x = 772.889, y = 1.800, z = 743.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1158, gadget_id = 70310239, pos = { x = 772.889, y = 2.200, z = 747.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1159, gadget_id = 70310239, pos = { x = 772.889, y = 2.600, z = 751.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1160, gadget_id = 70310239, pos = { x = 772.889, y = 3.000, z = 755.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1161, gadget_id = 70310239, pos = { x = 772.889, y = 0.200, z = 728.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1162, gadget_id = 70310239, pos = { x = 772.889, y = 0.600, z = 732.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1163, gadget_id = 70310239, pos = { x = 772.889, y = 1.000, z = 736.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1164, gadget_id = 70310239, pos = { x = 772.889, y = 1.400, z = 740.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 拆分语音，保留刷门逻辑
	{ config_id = 1084, shape = RegionShape.SPHERE, radius = 5, pos = { x = 772.592, y = 6.512, z = 779.502 } },
	-- 点1造仙灵
	{ config_id = 1085, shape = RegionShape.SPHERE, radius = 2, pos = { x = 754.239, y = 0.000, z = 657.398 } },
	-- 点10
	{ config_id = 1090, shape = RegionShape.SPHERE, radius = 3, pos = { x = 776.601, y = 0.000, z = 671.697 } },
	-- 上天镜头
	{ config_id = 1103, shape = RegionShape.SPHERE, radius = 4, pos = { x = 777.678, y = 0.000, z = 680.723 } },
	-- 点3
	{ config_id = 1104, shape = RegionShape.SPHERE, radius = 3, pos = { x = 757.017, y = 0.000, z = 651.370 } },
	-- 点22
	{ config_id = 1108, shape = RegionShape.CUBIC, size = { x = 100.000, y = 10.000, z = 10.000 }, pos = { x = 773.794, y = 5.512, z = 736.214 } },
	-- 点4
	{ config_id = 1109, shape = RegionShape.SPHERE, radius = 2, pos = { x = 759.969, y = 0.000, z = 656.772 } },
	-- 点5
	{ config_id = 1110, shape = RegionShape.SPHERE, radius = 3, pos = { x = 767.432, y = 0.000, z = 651.872 } },
	-- 点23
	{ config_id = 1111, shape = RegionShape.SPHERE, radius = 3, pos = { x = 767.318, y = 0.000, z = 688.388 } },
	-- 点6
	{ config_id = 1112, shape = RegionShape.SPHERE, radius = 3, pos = { x = 777.328, y = 0.000, z = 655.656 } },
	-- 点7
	{ config_id = 1113, shape = RegionShape.SPHERE, radius = 3, pos = { x = 791.994, y = 0.000, z = 655.395 } },
	-- 点8
	{ config_id = 1117, shape = RegionShape.SPHERE, radius = 3, pos = { x = 793.435, y = 0.000, z = 662.578 } },
	-- 点9
	{ config_id = 1118, shape = RegionShape.SPHERE, radius = 3, pos = { x = 776.774, y = 0.000, z = 662.030 } },
	-- 点13上天
	{ config_id = 1119, shape = RegionShape.SPHERE, radius = 4, pos = { x = 777.678, y = 0.000, z = 680.723 } },
	-- 点11
	{ config_id = 1120, shape = RegionShape.SPHERE, radius = 3, pos = { x = 789.475, y = 0.000, z = 673.140 } },
	-- 点12
	{ config_id = 1121, shape = RegionShape.SPHERE, radius = 3, pos = { x = 789.645, y = 0.000, z = 679.247 } },
	-- 点21
	{ config_id = 1126, shape = RegionShape.SPHERE, radius = 3, pos = { x = 777.089, y = 0.000, z = 688.748 } },
	-- 完成挑战
	{ config_id = 1127, shape = RegionShape.SPHERE, radius = 3, pos = { x = 772.656, y = 8.785, z = 804.750 } },
	-- 天气改下雨
	{ config_id = 1128, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 774.219, y = 0.000, z = 712.398 } },
	-- 点15
	{ config_id = 1133, shape = RegionShape.SPHERE, radius = 2, pos = { x = 781.318, y = 0.000, z = 689.356 } },
	-- 点16
	{ config_id = 1134, shape = RegionShape.SPHERE, radius = 3, pos = { x = 781.842, y = 0.000, z = 695.039 } },
	-- 点17
	{ config_id = 1135, shape = RegionShape.SPHERE, radius = 2, pos = { x = 776.984, y = 0.000, z = 694.468 } },
	-- 点18
	{ config_id = 1136, shape = RegionShape.SPHERE, radius = 2, pos = { x = 776.709, y = 0.000, z = 699.565 } },
	-- 点19
	{ config_id = 1137, shape = RegionShape.SPHERE, radius = 3, pos = { x = 772.901, y = 0.000, z = 700.526 } },
	-- 点2
	{ config_id = 1138, shape = RegionShape.SPHERE, radius = 3, pos = { x = 749.306, y = 0.000, z = 652.544 } },
	-- 点20，终点给镜头
	{ config_id = 1141, shape = RegionShape.SPHERE, radius = 3, pos = { x = 773.481, y = 0.000, z = 709.748 } }
}

-- 触发器
triggers = {
	-- 拆分语音，保留刷门逻辑
	{ config_id = 1001084, name = "ENTER_REGION_1084", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1084", action = "action_EVENT_ENTER_REGION_1084", trigger_count = 0 },
	-- 点1造仙灵
	{ config_id = 1001085, name = "ENTER_REGION_1085", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1085", action = "action_EVENT_ENTER_REGION_1085", trigger_count = 0 },
	-- 点10
	{ config_id = 1001090, name = "ENTER_REGION_1090", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1090", action = "action_EVENT_ENTER_REGION_1090", trigger_count = 0 },
	-- 上天镜头
	{ config_id = 1001103, name = "ENTER_REGION_1103", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1103", action = "action_EVENT_ENTER_REGION_1103" },
	-- 点3
	{ config_id = 1001104, name = "ENTER_REGION_1104", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1104", action = "action_EVENT_ENTER_REGION_1104", trigger_count = 0 },
	{ config_id = 1001107, name = "AVATAR_NEAR_PLATFORM_1107", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_1107", action = "action_EVENT_AVATAR_NEAR_PLATFORM_1107", trigger_count = 0 },
	-- 点22
	{ config_id = 1001108, name = "ENTER_REGION_1108", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1108", action = "action_EVENT_ENTER_REGION_1108", trigger_count = 0 },
	-- 点4
	{ config_id = 1001109, name = "ENTER_REGION_1109", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1109", action = "action_EVENT_ENTER_REGION_1109", trigger_count = 0 },
	-- 点5
	{ config_id = 1001110, name = "ENTER_REGION_1110", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1110", action = "action_EVENT_ENTER_REGION_1110", trigger_count = 0 },
	-- 点23
	{ config_id = 1001111, name = "ENTER_REGION_1111", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1111", action = "action_EVENT_ENTER_REGION_1111", trigger_count = 0 },
	-- 点6
	{ config_id = 1001112, name = "ENTER_REGION_1112", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1112", action = "action_EVENT_ENTER_REGION_1112", trigger_count = 0 },
	-- 点7
	{ config_id = 1001113, name = "ENTER_REGION_1113", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1113", action = "action_EVENT_ENTER_REGION_1113", trigger_count = 0 },
	-- 操作别的传送门group到空usite
	{ config_id = 1001114, name = "GROUP_REFRESH_1114", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_1114", trigger_count = 0 },
	-- 在suite1groupload操作别的传送门group到空usite
	{ config_id = 1001115, name = "GROUP_LOAD_1115", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1115", trigger_count = 0 },
	-- 点8
	{ config_id = 1001117, name = "ENTER_REGION_1117", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1117", action = "action_EVENT_ENTER_REGION_1117", trigger_count = 0 },
	-- 点9
	{ config_id = 1001118, name = "ENTER_REGION_1118", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1118", action = "action_EVENT_ENTER_REGION_1118", trigger_count = 0 },
	-- 点13上天
	{ config_id = 1001119, name = "ENTER_REGION_1119", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1119", action = "action_EVENT_ENTER_REGION_1119", trigger_count = 0 },
	-- 点11
	{ config_id = 1001120, name = "ENTER_REGION_1120", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1120", action = "action_EVENT_ENTER_REGION_1120", trigger_count = 0 },
	-- 点12
	{ config_id = 1001121, name = "ENTER_REGION_1121", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1121", action = "action_EVENT_ENTER_REGION_1121", trigger_count = 0 },
	-- 点21
	{ config_id = 1001126, name = "ENTER_REGION_1126", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1126", action = "action_EVENT_ENTER_REGION_1126", trigger_count = 0 },
	-- 完成挑战
	{ config_id = 1001127, name = "ENTER_REGION_1127", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1127", action = "action_EVENT_ENTER_REGION_1127", trigger_count = 0 },
	-- 天气改下雨
	{ config_id = 1001128, name = "ENTER_REGION_1128", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1128", action = "action_EVENT_ENTER_REGION_1128", trigger_count = 0 },
	-- 点15
	{ config_id = 1001133, name = "ENTER_REGION_1133", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1133", action = "action_EVENT_ENTER_REGION_1133", trigger_count = 0 },
	-- 点16
	{ config_id = 1001134, name = "ENTER_REGION_1134", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1134", action = "action_EVENT_ENTER_REGION_1134", trigger_count = 0 },
	-- 点17
	{ config_id = 1001135, name = "ENTER_REGION_1135", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1135", action = "action_EVENT_ENTER_REGION_1135", trigger_count = 0 },
	-- 点18
	{ config_id = 1001136, name = "ENTER_REGION_1136", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1136", action = "action_EVENT_ENTER_REGION_1136", trigger_count = 0 },
	-- 点19
	{ config_id = 1001137, name = "ENTER_REGION_1137", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1137", action = "action_EVENT_ENTER_REGION_1137", trigger_count = 0 },
	-- 点2
	{ config_id = 1001138, name = "ENTER_REGION_1138", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1138", action = "action_EVENT_ENTER_REGION_1138", trigger_count = 0 },
	-- 加载scenetag和天气
	{ config_id = 1001139, name = "GROUP_LOAD_1139", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1139", trigger_count = 0 },
	-- 点20，终点给镜头
	{ config_id = 1001141, name = "ENTER_REGION_1141", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1141", action = "action_EVENT_ENTER_REGION_1141", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1042, gadget_id = 70310240, pos = { x = 777.579, y = 1.993, z = 682.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1123, gadget_id = 70360002, pos = { x = 754.534, y = 0.000, z = 664.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1124, gadget_id = 70360002, pos = { x = 744.530, y = 0.000, z = 664.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	triggers = {
		{ config_id = 1001122, name = "PLATFORM_REACH_POINT_1122", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1122", action = "action_EVENT_PLATFORM_REACH_POINT_1122" },
		{ config_id = 1001140, name = "PLATFORM_REACH_POINT_1140", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1140", action = "action_EVENT_PLATFORM_REACH_POINT_1140", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
	end_suite = 5,
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1086, 1087, 1088, 1089, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1105, 1106, 1116, 1129, 1130, 1131, 1132, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164 },
		regions = { 1084, 1085, 1090, 1103, 1104, 1108, 1109, 1110, 1111, 1112, 1113, 1117, 1118, 1119, 1120, 1121, 1126, 1128, 1133, 1134, 1135, 1136, 1137, 1138, 1141 },
		triggers = { "ENTER_REGION_1084", "ENTER_REGION_1085", "ENTER_REGION_1090", "ENTER_REGION_1103", "ENTER_REGION_1104", "AVATAR_NEAR_PLATFORM_1107", "ENTER_REGION_1108", "ENTER_REGION_1109", "ENTER_REGION_1110", "ENTER_REGION_1111", "ENTER_REGION_1112", "ENTER_REGION_1113", "GROUP_REFRESH_1114", "GROUP_LOAD_1115", "ENTER_REGION_1117", "ENTER_REGION_1118", "ENTER_REGION_1119", "ENTER_REGION_1120", "ENTER_REGION_1121", "ENTER_REGION_1126", "ENTER_REGION_1128", "ENTER_REGION_1133", "ENTER_REGION_1134", "ENTER_REGION_1135", "ENTER_REGION_1136", "ENTER_REGION_1137", "ENTER_REGION_1138", "GROUP_LOAD_1139", "ENTER_REGION_1141" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_1139" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1125 },
		regions = { 1127 },
		triggers = { "ENTER_REGION_1127", "GROUP_LOAD_1139" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_1139" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_1139" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1084(context, evt)
	if evt.param1 ~= 1084 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1084(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1085(context, evt)
	if evt.param1 ~= 1085 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1085(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1090(context, evt)
	if evt.param1 ~= 1090 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1090(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {10}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1103(context, evt)
	if evt.param1 ~= 1103 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1103(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（778，28，748），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=778, y=28, z=748}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1104(context, evt)
	if evt.param1 ~= 1104 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1104(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_1107(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_1107(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 1106) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1108(context, evt)
	if evt.param1 ~= 1108 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1108(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {22}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1109(context, evt)
	if evt.param1 ~= 1109 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1109(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1110(context, evt)
	if evt.param1 ~= 1110 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1110(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1111(context, evt)
	if evt.param1 ~= 1111 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1111(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {23}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1112(context, evt)
	if evt.param1 ~= 1112 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1112(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1113(context, evt)
	if evt.param1 ~= 1113 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1113(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_1114(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136004, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136007, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1115(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136004, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136007, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1117(context, evt)
	if evt.param1 ~= 1117 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1117(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1118(context, evt)
	if evt.param1 ~= 1118 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1118(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1119(context, evt)
	if evt.param1 ~= 1119 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1119(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1120(context, evt)
	if evt.param1 ~= 1120 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1120(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {11}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1121(context, evt)
	if evt.param1 ~= 1121 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1121(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {12}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1126(context, evt)
	if evt.param1 ~= 1126 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1126(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {21}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1127(context, evt)
	if evt.param1 ~= 1127 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1127(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 220136006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monachallenge2complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220136001, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136006, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1128(context, evt)
	if evt.param1 ~= 1128 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1128(context, evt)
	ScriptLib.AddQuestProgress(context, "monamaze2complete") 
	
	ScriptLib.SetWeatherAreaState(context, 10091, 0)
	ScriptLib.SetWeatherAreaState(context, 10092, 1)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1133(context, evt)
	if evt.param1 ~= 1133 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1133(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {14}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1134(context, evt)
	if evt.param1 ~= 1134 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1134(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {15}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1135(context, evt)
	if evt.param1 ~= 1135 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1135(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {16}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1136(context, evt)
	if evt.param1 ~= 1136 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1136(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {17}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1137(context, evt)
	if evt.param1 ~= 1137 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1137(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {18}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1138(context, evt)
	if evt.param1 ~= 1138 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1138(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1139(context, evt)
	  if ScriptLib.GetHostQuestState(context,4007510)==2 or ScriptLib.GetHostQuestState(context,4007506)==2
	 or ScriptLib.GetHostQuestState(context,4007509)==2  then
	ScriptLib.RefreshGroup(context, { group_id = 220136001, suite = 1 })
	
	ScriptLib.DelSceneTag(context,20136,1065)
	ScriptLib.DelSceneTag(context,20136,1066)
	
	ScriptLib.AddSceneTag(context,20136,1067)
	ScriptLib.SetWeatherAreaState(context, 10090, 0)
	ScriptLib.SetWeatherAreaState(context, 10091, 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1141(context, evt)
	if evt.param1 ~= 1141 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1141(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1106, 6, {20}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（772，0.85，765），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=772, y=0.85, z=765}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end