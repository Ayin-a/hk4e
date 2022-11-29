-- 基础信息
local base_info = {
	group_id = 133102149
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
	{ config_id = 149001, gadget_id = 70500000, pos = { x = 1412.498, y = 201.344, z = 140.824 }, rot = { x = 31.351, y = -0.003, z = 17.343 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149002, gadget_id = 70500000, pos = { x = 1495.337, y = 201.390, z = 178.728 }, rot = { x = 328.232, y = 13.580, z = 40.855 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149003, gadget_id = 70500000, pos = { x = 1382.762, y = 200.012, z = 214.191 }, rot = { x = 0.000, y = 0.000, z = 325.515 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149004, gadget_id = 70500000, pos = { x = 1379.361, y = 200.092, z = 218.337 }, rot = { x = 311.827, y = 222.133, z = 331.665 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149005, gadget_id = 70500000, pos = { x = 1380.155, y = 201.169, z = 211.292 }, rot = { x = 335.844, y = 0.000, z = 0.000 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149006, gadget_id = 70500000, pos = { x = 1294.703, y = 201.920, z = 243.680 }, rot = { x = 2.686, y = 246.906, z = 8.514 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149007, gadget_id = 70290014, pos = { x = 1320.040, y = 200.000, z = 181.735 }, rot = { x = 0.000, y = 95.254, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149008, gadget_id = 70500000, pos = { x = 1319.770, y = 200.000, z = 181.254 }, rot = { x = 0.000, y = 95.247, z = 0.000 }, level = 16, point_type = 2015, owner = 149007, area_id = 5 },
	{ config_id = 149009, gadget_id = 70290014, pos = { x = 1313.755, y = 200.000, z = 181.145 }, rot = { x = 0.000, y = 44.270, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149010, gadget_id = 70500000, pos = { x = 1313.485, y = 200.000, z = 180.664 }, rot = { x = 0.000, y = 44.270, z = 322.934 }, level = 16, point_type = 2015, owner = 149009, area_id = 5 },
	{ config_id = 149011, gadget_id = 70500000, pos = { x = 1336.313, y = 200.000, z = 141.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2005, area_id = 5 },
	{ config_id = 149012, gadget_id = 70500000, pos = { x = 1332.948, y = 172.483, z = 150.364 }, rot = { x = 0.000, y = 182.991, z = 0.000 }, level = 16, point_type = 2005, area_id = 5 },
	{ config_id = 149013, gadget_id = 70500000, pos = { x = 1403.824, y = 216.326, z = 87.112 }, rot = { x = 339.103, y = 358.261, z = 19.278 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149014, gadget_id = 70500000, pos = { x = 1469.030, y = 235.107, z = 73.992 }, rot = { x = 343.975, y = 102.386, z = 359.625 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149015, gadget_id = 70500000, pos = { x = 1506.162, y = 242.134, z = 95.956 }, rot = { x = 350.825, y = 359.177, z = 10.230 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149016, gadget_id = 70500000, pos = { x = 1444.543, y = 220.522, z = 79.154 }, rot = { x = 334.195, y = 2.185, z = 350.484 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149017, gadget_id = 70500000, pos = { x = 1445.163, y = 226.231, z = 82.234 }, rot = { x = 335.416, y = 1.921, z = 357.735 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149018, gadget_id = 70290014, pos = { x = 1435.259, y = 214.000, z = 32.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149019, gadget_id = 70500000, pos = { x = 1434.989, y = 214.000, z = 32.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2015, owner = 149018, area_id = 5 },
	{ config_id = 149020, gadget_id = 70290014, pos = { x = 1435.498, y = 214.000, z = 39.501 }, rot = { x = 0.000, y = 92.419, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149021, gadget_id = 70500000, pos = { x = 1435.029, y = 214.000, z = 39.790 }, rot = { x = 0.000, y = 92.405, z = 0.000 }, level = 16, point_type = 2015, owner = 149020, area_id = 5 },
	{ config_id = 149022, gadget_id = 70500000, pos = { x = 1523.051, y = 223.159, z = 41.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149023, gadget_id = 70500000, pos = { x = 1515.908, y = 222.914, z = 43.790 }, rot = { x = 333.327, y = 313.114, z = 24.710 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149024, gadget_id = 70500000, pos = { x = 1479.007, y = 222.114, z = 35.871 }, rot = { x = 340.214, y = 1.860, z = 349.368 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149025, gadget_id = 70500000, pos = { x = 1509.911, y = 219.003, z = 28.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149026, gadget_id = 70290003, pos = { x = 1360.505, y = 210.823, z = 220.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149027, gadget_id = 70500000, pos = { x = 1360.505, y = 210.926, z = 220.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 149026, area_id = 5 },
	{ config_id = 149028, gadget_id = 70500000, pos = { x = 1360.505, y = 210.926, z = 220.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 149026, area_id = 5 },
	{ config_id = 149029, gadget_id = 70290001, pos = { x = 1469.161, y = 210.036, z = 5.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149030, gadget_id = 70500000, pos = { x = 1469.178, y = 210.605, z = 5.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3002, owner = 149029, area_id = 5 },
	{ config_id = 149031, gadget_id = 70500000, pos = { x = 1469.096, y = 210.891, z = 4.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3002, owner = 149029, area_id = 5 },
	{ config_id = 149032, gadget_id = 70500000, pos = { x = 1469.429, y = 211.303, z = 4.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3002, owner = 149029, area_id = 5 },
	{ config_id = 149033, gadget_id = 70290001, pos = { x = 1446.956, y = 228.638, z = 113.723 }, rot = { x = 348.507, y = 0.180, z = 3.469 }, level = 16, area_id = 5 },
	{ config_id = 149034, gadget_id = 70500000, pos = { x = 1446.940, y = 229.276, z = 114.002 }, rot = { x = 348.507, y = 0.180, z = 3.469 }, level = 16, point_type = 3002, owner = 149033, area_id = 5 },
	{ config_id = 149035, gadget_id = 70500000, pos = { x = 1446.838, y = 229.392, z = 113.166 }, rot = { x = 348.507, y = 0.180, z = 3.469 }, level = 16, point_type = 3002, owner = 149033, area_id = 5 },
	{ config_id = 149036, gadget_id = 70500000, pos = { x = 1447.146, y = 229.873, z = 113.366 }, rot = { x = 348.507, y = 0.180, z = 3.469 }, level = 16, point_type = 3002, owner = 149033, area_id = 5 },
	{ config_id = 149037, gadget_id = 70290002, pos = { x = 1513.856, y = 237.704, z = 47.680 }, rot = { x = 355.065, y = 359.746, z = 5.880 }, level = 16, area_id = 5 },
	{ config_id = 149038, gadget_id = 70500000, pos = { x = 1512.623, y = 239.260, z = 48.257 }, rot = { x = 355.065, y = 359.746, z = 5.880 }, level = 16, point_type = 3011, owner = 149037, area_id = 5 },
	{ config_id = 149039, gadget_id = 70500000, pos = { x = 1514.458, y = 240.311, z = 46.443 }, rot = { x = 355.065, y = 359.746, z = 5.880 }, level = 16, point_type = 3011, owner = 149037, area_id = 5 },
	{ config_id = 149040, gadget_id = 70500000, pos = { x = 1513.596, y = 240.709, z = 48.806 }, rot = { x = 355.065, y = 359.746, z = 5.880 }, level = 16, point_type = 3011, owner = 149037, area_id = 5 },
	{ config_id = 149041, gadget_id = 70290002, pos = { x = 1528.690, y = 232.864, z = 47.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149042, gadget_id = 70500000, pos = { x = 1527.619, y = 234.482, z = 48.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3011, owner = 149041, area_id = 5 },
	{ config_id = 149043, gadget_id = 70500000, pos = { x = 1529.560, y = 235.492, z = 46.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3011, owner = 149041, area_id = 5 },
	{ config_id = 149044, gadget_id = 70500000, pos = { x = 1528.733, y = 235.772, z = 49.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3011, owner = 149041, area_id = 5 },
	{ config_id = 149045, gadget_id = 70290002, pos = { x = 1471.118, y = 236.245, z = 119.335 }, rot = { x = 347.577, y = 357.729, z = 15.032 }, level = 16, area_id = 5 },
	{ config_id = 149046, gadget_id = 70500000, pos = { x = 1469.649, y = 237.653, z = 119.698 }, rot = { x = 347.578, y = 357.729, z = 15.031 }, level = 16, point_type = 3011, owner = 149045, area_id = 5 },
	{ config_id = 149047, gadget_id = 70500000, pos = { x = 1471.340, y = 238.726, z = 117.761 }, rot = { x = 347.578, y = 357.729, z = 15.031 }, level = 16, point_type = 3011, owner = 149045, area_id = 5 },
	{ config_id = 149048, gadget_id = 70500000, pos = { x = 1470.377, y = 239.295, z = 120.048 }, rot = { x = 347.578, y = 357.729, z = 15.031 }, level = 16, point_type = 3011, owner = 149045, area_id = 5 },
	{ config_id = 149049, gadget_id = 70500000, pos = { x = 1498.352, y = 202.452, z = 181.054 }, rot = { x = 336.261, y = 278.886, z = 301.748 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 149050, gadget_id = 70500000, pos = { x = 1477.573, y = 235.356, z = 97.933 }, rot = { x = 6.335, y = 269.246, z = 7.001 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 149051, gadget_id = 70500000, pos = { x = 1488.026, y = 237.823, z = 96.110 }, rot = { x = 10.346, y = 1.200, z = 13.191 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 149052, gadget_id = 70290003, pos = { x = 1438.951, y = 232.674, z = 84.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 149053, gadget_id = 70500000, pos = { x = 1438.951, y = 232.777, z = 84.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 149052, area_id = 5 },
	{ config_id = 149054, gadget_id = 70500000, pos = { x = 1438.951, y = 232.777, z = 84.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 149052, area_id = 5 },
	{ config_id = 149055, gadget_id = 70500000, pos = { x = 1477.426, y = 236.046, z = 119.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2019, area_id = 5 },
	{ config_id = 149056, gadget_id = 70500000, pos = { x = 1474.999, y = 236.046, z = 120.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2019, area_id = 5 },
	{ config_id = 149057, gadget_id = 70500000, pos = { x = 1476.496, y = 236.046, z = 121.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2019, area_id = 5 },
	{ config_id = 149058, gadget_id = 70500000, pos = { x = 1475.038, y = 236.046, z = 122.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2019, area_id = 5 },
	{ config_id = 149059, gadget_id = 70290001, pos = { x = 1458.706, y = 231.961, z = 124.564 }, rot = { x = 357.028, y = 359.410, z = 11.729 }, level = 16, area_id = 5 },
	{ config_id = 149060, gadget_id = 70500000, pos = { x = 1458.603, y = 232.541, z = 124.934 }, rot = { x = 357.028, y = 359.410, z = 11.729 }, level = 16, point_type = 3002, owner = 149059, area_id = 5 },
	{ config_id = 149061, gadget_id = 70500000, pos = { x = 1458.473, y = 232.763, z = 124.123 }, rot = { x = 357.028, y = 359.410, z = 11.729 }, level = 16, point_type = 3002, owner = 149059, area_id = 5 },
	{ config_id = 149062, gadget_id = 70500000, pos = { x = 1458.712, y = 233.249, z = 124.394 }, rot = { x = 357.028, y = 359.410, z = 11.729 }, level = 16, point_type = 3002, owner = 149059, area_id = 5 },
	{ config_id = 149063, gadget_id = 70500000, pos = { x = 1436.138, y = 211.158, z = 11.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149064, gadget_id = 70500000, pos = { x = 1414.669, y = 211.262, z = 14.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149065, gadget_id = 70500000, pos = { x = 1421.877, y = 213.149, z = 26.464 }, rot = { x = 0.000, y = 153.163, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149066, gadget_id = 70500000, pos = { x = 1410.229, y = 215.134, z = 34.913 }, rot = { x = 0.000, y = 153.163, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149067, gadget_id = 70500000, pos = { x = 1396.726, y = 218.072, z = 44.742 }, rot = { x = 0.000, y = 153.163, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149068, gadget_id = 70500000, pos = { x = 1389.808, y = 213.989, z = 66.415 }, rot = { x = 0.000, y = 153.163, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149069, gadget_id = 70500000, pos = { x = 1465.150, y = 232.933, z = 106.989 }, rot = { x = 0.000, y = 251.679, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149070, gadget_id = 70500000, pos = { x = 1365.944, y = 200.845, z = 156.226 }, rot = { x = 359.232, y = 347.362, z = 4.749 }, level = 16, point_type = 2009, area_id = 5 },
	{ config_id = 149071, gadget_id = 70500000, pos = { x = 1459.995, y = 202.574, z = 165.636 }, rot = { x = 0.000, y = 117.999, z = 0.000 }, level = 16, point_type = 2009, area_id = 5 },
	{ config_id = 149072, gadget_id = 70500000, pos = { x = 1410.556, y = 216.605, z = 67.255 }, rot = { x = 3.928, y = 343.040, z = 358.916 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149073, gadget_id = 70500000, pos = { x = 1447.333, y = 200.802, z = 145.350 }, rot = { x = 0.000, y = 311.552, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149074, gadget_id = 70500000, pos = { x = 1479.584, y = 209.468, z = 4.573 }, rot = { x = 353.719, y = 98.864, z = 348.376 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 149075, gadget_id = 70500000, pos = { x = 1520.257, y = 238.597, z = 71.616 }, rot = { x = 350.802, y = 292.105, z = 23.487 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149076, gadget_id = 70500000, pos = { x = 1424.671, y = 222.158, z = 92.256 }, rot = { x = 6.483, y = 109.898, z = 343.554 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 149077, gadget_id = 70500000, pos = { x = 1375.127, y = 200.682, z = 158.373 }, rot = { x = 0.674, y = 357.645, z = 354.612 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 149078, gadget_id = 70290001, pos = { x = 1283.971, y = 201.548, z = 212.038 }, rot = { x = 15.871, y = 83.126, z = 7.608 }, level = 16, area_id = 5 },
	{ config_id = 149079, gadget_id = 70500000, pos = { x = 1284.501, y = 201.983, z = 212.161 }, rot = { x = 15.871, y = 83.126, z = 7.608 }, level = 16, point_type = 3002, owner = 149078, area_id = 5 },
	{ config_id = 149080, gadget_id = 70500000, pos = { x = 1283.800, y = 202.464, z = 212.196 }, rot = { x = 15.871, y = 83.126, z = 7.608 }, level = 16, point_type = 3002, owner = 149078, area_id = 5 },
	{ config_id = 149081, gadget_id = 70500000, pos = { x = 1284.235, y = 202.819, z = 211.972 }, rot = { x = 15.871, y = 83.126, z = 7.608 }, level = 16, point_type = 3002, owner = 149078, area_id = 5 },
	{ config_id = 149082, gadget_id = 70500000, pos = { x = 1513.414, y = 199.602, z = 227.770 }, rot = { x = 0.000, y = 146.554, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149083, gadget_id = 70500000, pos = { x = 1511.685, y = 199.716, z = 238.814 }, rot = { x = 0.000, y = 146.554, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149084, gadget_id = 70500000, pos = { x = 1507.467, y = 199.384, z = 250.821 }, rot = { x = 0.000, y = 127.421, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149085, gadget_id = 70500000, pos = { x = 1505.614, y = 199.192, z = 255.044 }, rot = { x = 0.000, y = 129.474, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149086, gadget_id = 70500000, pos = { x = 1458.568, y = 199.691, z = 178.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149087, gadget_id = 70500000, pos = { x = 1448.947, y = 199.319, z = 180.528 }, rot = { x = 0.000, y = 323.919, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149088, gadget_id = 70500000, pos = { x = 1457.045, y = 198.866, z = 186.728 }, rot = { x = 0.000, y = 1.312, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149089, gadget_id = 70500000, pos = { x = 1375.971, y = 199.675, z = 186.333 }, rot = { x = 0.000, y = 114.587, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149090, gadget_id = 70500000, pos = { x = 1374.759, y = 200.000, z = 225.907 }, rot = { x = 0.000, y = 153.250, z = 6.271 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 149091, gadget_id = 70500000, pos = { x = 1399.053, y = 199.477, z = 206.385 }, rot = { x = 0.000, y = 4.102, z = 347.884 }, level = 16, point_type = 2027, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		gadgets = { 149001, 149002, 149003, 149004, 149005, 149006, 149007, 149008, 149009, 149010, 149011, 149012, 149013, 149014, 149015, 149016, 149017, 149018, 149019, 149020, 149021, 149022, 149023, 149024, 149025, 149026, 149027, 149028, 149029, 149030, 149031, 149032, 149033, 149034, 149035, 149036, 149037, 149038, 149039, 149040, 149041, 149042, 149043, 149044, 149045, 149046, 149047, 149048, 149049, 149050, 149051, 149052, 149053, 149054, 149055, 149056, 149057, 149058, 149059, 149060, 149061, 149062, 149063, 149064, 149065, 149066, 149067, 149068, 149069, 149070, 149071, 149072, 149073, 149074, 149075, 149076, 149077, 149078, 149079, 149080, 149081, 149082, 149083, 149084, 149085, 149086, 149087, 149088, 149089, 149090, 149091 },
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