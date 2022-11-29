-- 基础信息
local base_info = {
	group_id = 133101214
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
	{ config_id = 214001, gadget_id = 70350083, pos = { x = 1166.965, y = 260.004, z = 1114.902 }, rot = { x = 353.026, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214007, gadget_id = 70690001, pos = { x = 1219.274, y = 324.963, z = 1441.071 }, rot = { x = 358.864, y = 25.446, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214008, gadget_id = 70360094, pos = { x = 1221.000, y = 274.423, z = 1388.927 }, rot = { x = 355.337, y = 342.373, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214009, gadget_id = 70360094, pos = { x = 1203.067, y = 258.111, z = 1168.235 }, rot = { x = 348.777, y = 3.559, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214010, gadget_id = 70690001, pos = { x = 1201.522, y = 256.867, z = 1151.671 }, rot = { x = 352.068, y = 8.710, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214011, gadget_id = 70690001, pos = { x = 1203.790, y = 257.643, z = 1166.478 }, rot = { x = 348.651, y = 359.726, z = 0.569 }, level = 1, area_id = 6 },
	{ config_id = 214012, gadget_id = 70360094, pos = { x = 1203.563, y = 258.485, z = 1176.211 }, rot = { x = 357.314, y = 3.560, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214013, gadget_id = 70360094, pos = { x = 1204.059, y = 258.860, z = 1184.187 }, rot = { x = 4.407, y = 3.487, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214014, gadget_id = 70360094, pos = { x = 1204.544, y = 258.247, z = 1192.132 }, rot = { x = 4.407, y = 3.487, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214015, gadget_id = 70360094, pos = { x = 1219.274, y = 324.963, z = 1441.071 }, rot = { x = 358.864, y = 25.446, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214016, gadget_id = 70690001, pos = { x = 1229.121, y = 265.666, z = 1227.922 }, rot = { x = 341.235, y = 5.237, z = 0.792 }, level = 24, area_id = 6 },
	{ config_id = 214017, gadget_id = 70360094, pos = { x = 1234.162, y = 271.552, z = 1273.128 }, rot = { x = 320.345, y = 14.305, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214018, gadget_id = 70360094, pos = { x = 1235.684, y = 276.658, z = 1279.097 }, rot = { x = 339.092, y = 18.991, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214019, gadget_id = 70360094, pos = { x = 1237.942, y = 279.309, z = 1285.659 }, rot = { x = 3.404, y = 23.595, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214020, gadget_id = 70360096, pos = { x = 1217.294, y = 263.700, z = 1213.908 }, rot = { x = 354.389, y = 59.525, z = 0.000 }, level = 24, route_id = 310100129, area_id = 6 },
	{ config_id = 214021, gadget_id = 70690001, pos = { x = 1212.057, y = 261.320, z = 1207.974 }, rot = { x = 343.521, y = 51.205, z = 0.166 }, level = 24, area_id = 6 },
	{ config_id = 214022, gadget_id = 70690001, pos = { x = 1222.261, y = 263.874, z = 1218.635 }, rot = { x = 353.317, y = 47.024, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214023, gadget_id = 70360094, pos = { x = 1241.139, y = 278.834, z = 1292.977 }, rot = { x = 12.026, y = 18.244, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214024, gadget_id = 70690001, pos = { x = 1227.991, y = 270.814, z = 1257.529 }, rot = { x = 350.936, y = 18.523, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214025, gadget_id = 70360094, pos = { x = 1243.473, y = 277.245, z = 1300.058 }, rot = { x = 36.911, y = 358.588, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214026, gadget_id = 70690001, pos = { x = 1243.178, y = 270.263, z = 1282.702 }, rot = { x = 358.949, y = 2.160, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214027, gadget_id = 70360096, pos = { x = 1243.719, y = 275.900, z = 1298.457 }, rot = { x = 0.935, y = 358.227, z = 0.000 }, level = 24, route_id = 310100137, area_id = 6 },
	{ config_id = 214028, gadget_id = 70690001, pos = { x = 1243.279, y = 270.294, z = 1312.676 }, rot = { x = 344.353, y = 12.394, z = 359.802 }, level = 24, area_id = 6 },
	{ config_id = 214029, gadget_id = 70900201, pos = { x = 1455.433, y = 317.879, z = 1279.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214030, gadget_id = 70690001, pos = { x = 1245.438, y = 271.371, z = 1339.982 }, rot = { x = 350.803, y = 335.221, z = 352.915 }, level = 24, area_id = 6 },
	{ config_id = 214031, gadget_id = 70360025, pos = { x = 1455.482, y = 317.899, z = 1279.161 }, rot = { x = 0.000, y = 0.000, z = 0.450 }, level = 1, area_id = 5 },
	{ config_id = 214032, gadget_id = 70690001, pos = { x = 1223.855, y = 270.258, z = 1360.790 }, rot = { x = 349.905, y = 347.722, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214033, gadget_id = 70360094, pos = { x = 1243.621, y = 270.243, z = 1314.292 }, rot = { x = 354.044, y = 12.875, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214034, gadget_id = 70690001, pos = { x = 1221.799, y = 273.816, z = 1384.657 }, rot = { x = 347.941, y = 348.577, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214035, gadget_id = 70360094, pos = { x = 1245.394, y = 271.073, z = 1322.049 }, rot = { x = 355.062, y = 10.777, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214036, gadget_id = 70360094, pos = { x = 1218.585, y = 275.073, z = 1396.526 }, rot = { x = 354.175, y = 343.768, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214037, gadget_id = 70690016, pos = { x = 1209.343, y = 277.137, z = 1426.289 }, rot = { x = 2.956, y = 97.840, z = 355.767 }, level = 24, area_id = 6 },
	{ config_id = 214038, gadget_id = 70360094, pos = { x = 1246.877, y = 271.759, z = 1329.838 }, rot = { x = 1.486, y = 357.588, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214039, gadget_id = 70360094, pos = { x = 1243.315, y = 272.441, z = 1306.452 }, rot = { x = 36.911, y = 358.588, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214040, gadget_id = 70360094, pos = { x = 1246.541, y = 271.551, z = 1337.820 }, rot = { x = 359.696, y = 326.444, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214041, gadget_id = 70360094, pos = { x = 1242.119, y = 271.594, z = 1344.487 }, rot = { x = 359.696, y = 326.444, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214042, gadget_id = 70360094, pos = { x = 1237.697, y = 271.636, z = 1351.153 }, rot = { x = 4.378, y = 305.421, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214043, gadget_id = 70360094, pos = { x = 1231.478, y = 271.052, z = 1355.576 }, rot = { x = 7.015, y = 292.323, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214044, gadget_id = 70360094, pos = { x = 1224.700, y = 270.150, z = 1358.359 }, rot = { x = 7.015, y = 292.323, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214045, gadget_id = 70360096, pos = { x = 1230.397, y = 267.695, z = 1252.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310100143, area_id = 6 },
	{ config_id = 214046, gadget_id = 70690001, pos = { x = 1225.718, y = 325.260, z = 1454.613 }, rot = { x = 358.864, y = 25.446, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214047, gadget_id = 70360094, pos = { x = 1222.711, y = 325.122, z = 1448.293 }, rot = { x = 358.864, y = 25.447, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214048, gadget_id = 70690001, pos = { x = 1243.367, y = 325.303, z = 1477.845 }, rot = { x = 359.881, y = 49.567, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214049, gadget_id = 70690001, pos = { x = 1254.763, y = 325.334, z = 1487.555 }, rot = { x = 358.237, y = 46.132, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214050, gadget_id = 70360094, pos = { x = 1226.147, y = 325.280, z = 1455.516 }, rot = { x = 358.864, y = 25.446, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214051, gadget_id = 70690001, pos = { x = 1276.381, y = 326.257, z = 1508.335 }, rot = { x = 358.237, y = 46.132, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214052, gadget_id = 70690001, pos = { x = 1287.190, y = 326.719, z = 1518.725 }, rot = { x = 356.808, y = 59.365, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214053, gadget_id = 70360094, pos = { x = 1229.584, y = 325.439, z = 1462.738 }, rot = { x = 358.894, y = 25.784, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214054, gadget_id = 70690001, pos = { x = 1313.775, y = 329.103, z = 1523.439 }, rot = { x = 346.687, y = 98.890, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214055, gadget_id = 70690001, pos = { x = 1328.508, y = 330.719, z = 1521.135 }, rot = { x = 347.134, y = 98.890, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214056, gadget_id = 70360094, pos = { x = 1233.058, y = 325.593, z = 1469.930 }, rot = { x = 1.279, y = 52.486, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214058, gadget_id = 70690001, pos = { x = 1372.709, y = 335.567, z = 1514.222 }, rot = { x = 346.175, y = 95.634, z = 358.422 }, level = 1, area_id = 6 },
	{ config_id = 214059, gadget_id = 70360094, pos = { x = 1239.402, y = 325.415, z = 1474.801 }, rot = { x = 1.279, y = 52.485, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214060, gadget_id = 70690001, pos = { x = 1401.291, y = 340.033, z = 1507.117 }, rot = { x = 340.832, y = 111.604, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214061, gadget_id = 70690001, pos = { x = 1414.927, y = 343.181, z = 1501.717 }, rot = { x = 347.888, y = 111.604, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214062, gadget_id = 70360095, pos = { x = 1205.318, y = 257.744, z = 1201.556 }, rot = { x = 351.705, y = 48.455, z = 0.000 }, level = 24, route_id = 310100134, area_id = 6 },
	{ config_id = 214064, gadget_id = 70360094, pos = { x = 1228.541, y = 267.962, z = 1244.847 }, rot = { x = 351.919, y = 3.157, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214065, gadget_id = 70360094, pos = { x = 1228.807, y = 269.592, z = 1249.658 }, rot = { x = 351.919, y = 3.157, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214066, gadget_id = 70360094, pos = { x = 1227.026, y = 269.895, z = 1254.771 }, rot = { x = 351.919, y = 3.158, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214067, gadget_id = 70360094, pos = { x = 1228.734, y = 270.776, z = 1259.590 }, rot = { x = 348.364, y = 18.579, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214068, gadget_id = 70360094, pos = { x = 1230.804, y = 270.948, z = 1264.225 }, rot = { x = 348.190, y = 19.443, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214069, gadget_id = 70360094, pos = { x = 1232.556, y = 271.653, z = 1269.195 }, rot = { x = 359.770, y = 48.966, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214070, gadget_id = 70360094, pos = { x = 1245.746, y = 325.236, z = 1479.671 }, rot = { x = 0.180, y = 50.191, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214071, gadget_id = 70690001, pos = { x = 1442.198, y = 349.475, z = 1490.917 }, rot = { x = 1.701, y = 149.135, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214072, gadget_id = 70690001, pos = { x = 1449.485, y = 349.053, z = 1478.725 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214075, gadget_id = 70360094, pos = { x = 1251.881, y = 325.211, z = 1484.784 }, rot = { x = 358.237, y = 46.132, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214076, gadget_id = 70360094, pos = { x = 1257.646, y = 325.457, z = 1490.325 }, rot = { x = 358.237, y = 46.131, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214081, gadget_id = 70690016, pos = { x = 1175.104, y = 213.494, z = 1128.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214082, gadget_id = 70690001, pos = { x = 1466.918, y = 345.298, z = 1437.409 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214083, gadget_id = 70360094, pos = { x = 1263.410, y = 325.703, z = 1495.867 }, rot = { x = 358.237, y = 46.132, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214084, gadget_id = 70360094, pos = { x = 1216.361, y = 275.885, z = 1404.167 }, rot = { x = 354.084, y = 343.876, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214085, gadget_id = 70690001, pos = { x = 1484.351, y = 341.543, z = 1396.093 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214086, gadget_id = 70360094, pos = { x = 1269.175, y = 325.949, z = 1501.408 }, rot = { x = 358.237, y = 46.132, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214087, gadget_id = 70360094, pos = { x = 1214.151, y = 276.710, z = 1411.812 }, rot = { x = 345.563, y = 341.832, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214088, gadget_id = 70690001, pos = { x = 1489.027, y = 340.424, z = 1354.869 }, rot = { x = 349.970, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214089, gadget_id = 70360094, pos = { x = 1274.940, y = 326.196, z = 1506.950 }, rot = { x = 358.237, y = 46.131, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214090, gadget_id = 70690001, pos = { x = 1476.986, y = 342.811, z = 1327.495 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214091, gadget_id = 70360097, pos = { x = 1455.591, y = 316.985, z = 1278.855 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214092, gadget_id = 70360094, pos = { x = 1280.704, y = 326.442, z = 1512.491 }, rot = { x = 358.237, y = 46.132, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214093, gadget_id = 70360094, pos = { x = 1286.469, y = 326.688, z = 1518.033 }, rot = { x = 358.237, y = 46.132, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214094, gadget_id = 70360094, pos = { x = 1292.234, y = 326.934, z = 1523.574 }, rot = { x = 355.576, y = 72.319, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214095, gadget_id = 70360093, pos = { x = 1298.134, y = 327.971, z = 1524.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310100146, area_id = 6 },
	{ config_id = 214096, gadget_id = 70360094, pos = { x = 1306.899, y = 328.349, z = 1524.515 }, rot = { x = 353.816, y = 98.889, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214097, gadget_id = 70360094, pos = { x = 1314.757, y = 329.210, z = 1523.286 }, rot = { x = 353.816, y = 98.890, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214098, gadget_id = 70360094, pos = { x = 1322.615, y = 330.072, z = 1522.057 }, rot = { x = 353.816, y = 98.889, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214099, gadget_id = 70360094, pos = { x = 1330.473, y = 330.934, z = 1520.828 }, rot = { x = 353.815, y = 98.890, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214100, gadget_id = 70360094, pos = { x = 1338.331, y = 331.796, z = 1519.599 }, rot = { x = 353.816, y = 98.889, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214101, gadget_id = 70360094, pos = { x = 1346.188, y = 332.658, z = 1518.370 }, rot = { x = 353.816, y = 98.889, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214102, gadget_id = 70360094, pos = { x = 1354.046, y = 333.520, z = 1517.141 }, rot = { x = 353.816, y = 98.890, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214103, gadget_id = 70360094, pos = { x = 1361.904, y = 334.382, z = 1515.911 }, rot = { x = 353.815, y = 98.889, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214104, gadget_id = 70360094, pos = { x = 1369.762, y = 335.243, z = 1514.682 }, rot = { x = 353.816, y = 98.889, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214105, gadget_id = 70360094, pos = { x = 1396.094, y = 339.119, z = 1510.564 }, rot = { x = 353.816, y = 98.890, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214106, gadget_id = 70360094, pos = { x = 1385.478, y = 336.967, z = 1512.224 }, rot = { x = 351.476, y = 103.748, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214107, gadget_id = 70360094, pos = { x = 1393.109, y = 338.145, z = 1510.357 }, rot = { x = 347.888, y = 111.604, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214108, gadget_id = 70360094, pos = { x = 1400.382, y = 339.823, z = 1507.477 }, rot = { x = 347.888, y = 111.604, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214109, gadget_id = 70360094, pos = { x = 1407.654, y = 341.502, z = 1504.597 }, rot = { x = 347.888, y = 111.604, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214110, gadget_id = 70360094, pos = { x = 1414.927, y = 343.181, z = 1501.717 }, rot = { x = 347.888, y = 111.605, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214111, gadget_id = 70360094, pos = { x = 1422.199, y = 344.859, z = 1498.837 }, rot = { x = 347.888, y = 111.604, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214112, gadget_id = 70360096, pos = { x = 1345.284, y = 338.686, z = 1519.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310100145, area_id = 6 },
	{ config_id = 214113, gadget_id = 70360094, pos = { x = 1436.744, y = 348.216, z = 1493.077 }, rot = { x = 347.888, y = 111.605, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214114, gadget_id = 70360094, pos = { x = 1444.016, y = 349.895, z = 1490.197 }, rot = { x = 3.139, y = 152.831, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214115, gadget_id = 70360094, pos = { x = 1447.549, y = 349.471, z = 1483.316 }, rot = { x = 4.787, y = 157.124, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214116, gadget_id = 70360094, pos = { x = 1450.648, y = 348.803, z = 1475.970 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214117, gadget_id = 70360094, pos = { x = 1453.747, y = 348.135, z = 1468.625 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214118, gadget_id = 70360094, pos = { x = 1456.846, y = 347.468, z = 1461.280 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 214119, gadget_id = 70360094, pos = { x = 1459.945, y = 346.800, z = 1453.935 }, rot = { x = 4.787, y = 157.124, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214120, gadget_id = 70360094, pos = { x = 1473.982, y = 343.777, z = 1420.668 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214121, gadget_id = 70360094, pos = { x = 1466.143, y = 345.465, z = 1439.245 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214122, gadget_id = 70360094, pos = { x = 1469.243, y = 344.797, z = 1431.900 }, rot = { x = 4.787, y = 157.124, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214123, gadget_id = 70360094, pos = { x = 1472.342, y = 344.130, z = 1424.555 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214124, gadget_id = 70360094, pos = { x = 1475.441, y = 343.462, z = 1417.210 }, rot = { x = 4.787, y = 157.124, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214125, gadget_id = 70360094, pos = { x = 1478.540, y = 342.795, z = 1409.865 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214126, gadget_id = 70360094, pos = { x = 1481.639, y = 342.127, z = 1402.520 }, rot = { x = 4.787, y = 157.124, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214127, gadget_id = 70360094, pos = { x = 1484.738, y = 341.459, z = 1395.175 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214128, gadget_id = 70360094, pos = { x = 1487.838, y = 340.792, z = 1387.830 }, rot = { x = 4.787, y = 157.124, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214129, gadget_id = 70360094, pos = { x = 1490.937, y = 340.124, z = 1380.485 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214130, gadget_id = 70360094, pos = { x = 1494.036, y = 339.457, z = 1373.140 }, rot = { x = 359.901, y = 181.505, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214131, gadget_id = 70360094, pos = { x = 1493.843, y = 339.469, z = 1365.819 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214132, gadget_id = 70360094, pos = { x = 1490.632, y = 340.106, z = 1358.519 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214133, gadget_id = 70360094, pos = { x = 1487.422, y = 340.742, z = 1351.219 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214134, gadget_id = 70360094, pos = { x = 1484.211, y = 341.379, z = 1343.920 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214135, gadget_id = 70360094, pos = { x = 1481.000, y = 342.015, z = 1336.620 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214136, gadget_id = 70360094, pos = { x = 1477.789, y = 342.651, z = 1329.320 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214137, gadget_id = 70360094, pos = { x = 1474.578, y = 343.288, z = 1322.021 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214138, gadget_id = 70360094, pos = { x = 1471.229, y = 339.636, z = 1314.408 }, rot = { x = 355.437, y = 203.744, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214139, gadget_id = 70360094, pos = { x = 1467.900, y = 336.581, z = 1306.838 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214140, gadget_id = 70360094, pos = { x = 1478.997, y = 342.412, z = 1332.067 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214141, gadget_id = 70360094, pos = { x = 1463.399, y = 333.043, z = 1296.606 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 214142, gadget_id = 70360096, pos = { x = 1465.705, y = 345.476, z = 1286.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310100144, area_id = 5 },
	{ config_id = 214143, gadget_id = 70360093, pos = { x = 1239.402, y = 325.415, z = 1474.801 }, rot = { x = 359.233, y = 48.213, z = 0.000 }, level = 1, route_id = 310100157, area_id = 6 },
	{ config_id = 214144, gadget_id = 70360093, pos = { x = 1269.175, y = 325.949, z = 1501.408 }, rot = { x = 357.715, y = 50.826, z = 0.000 }, level = 1, route_id = 310100156, area_id = 6 },
	{ config_id = 214145, gadget_id = 70360094, pos = { x = 1211.738, y = 278.702, z = 1419.163 }, rot = { x = 345.563, y = 341.832, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 214146, gadget_id = 70360093, pos = { x = 1338.331, y = 331.796, z = 1519.599 }, rot = { x = 353.815, y = 98.889, z = 0.000 }, level = 1, route_id = 310100155, area_id = 6 },
	{ config_id = 214147, gadget_id = 70360093, pos = { x = 1396.094, y = 339.119, z = 1510.564 }, rot = { x = 349.746, y = 107.463, z = 0.000 }, level = 1, route_id = 310100154, area_id = 6 },
	{ config_id = 214148, gadget_id = 70360093, pos = { x = 1432.559, y = 346.580, z = 1491.771 }, rot = { x = 350.467, y = 119.427, z = 0.000 }, level = 1, route_id = 310100153, area_id = 6 },
	{ config_id = 214149, gadget_id = 70360093, pos = { x = 1455.115, y = 347.841, z = 1465.382 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, route_id = 310100152, area_id = 6 },
	{ config_id = 214150, gadget_id = 70360093, pos = { x = 1473.982, y = 343.777, z = 1420.668 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, route_id = 310100151, area_id = 5 },
	{ config_id = 214151, gadget_id = 70360093, pos = { x = 1492.256, y = 339.840, z = 1377.357 }, rot = { x = 4.787, y = 157.123, z = 0.000 }, level = 1, route_id = 310100150, area_id = 5 },
	{ config_id = 214152, gadget_id = 70360093, pos = { x = 1494.036, y = 339.457, z = 1373.140 }, rot = { x = 356.225, y = 199.644, z = 0.000 }, level = 1, route_id = 310100149, area_id = 5 },
	{ config_id = 214153, gadget_id = 70360093, pos = { x = 1481.000, y = 342.015, z = 1336.620 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, route_id = 310100148, area_id = 5 },
	{ config_id = 214154, gadget_id = 70360093, pos = { x = 1478.997, y = 342.412, z = 1332.067 }, rot = { x = 355.437, y = 203.743, z = 0.000 }, level = 1, route_id = 310100147, area_id = 5 },
	{ config_id = 214155, gadget_id = 70690016, pos = { x = 1210.343, y = 263.722, z = 1426.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 214057, shape = RegionShape.SPHERE, radius = 22.8, pos = { x = 1215.827, y = 269.877, z = 1412.780 }, area_id = 6 },
	{ config_id = 214077, shape = RegionShape.SPHERE, radius = 24, pos = { x = 1201.272, y = 267.058, z = 1157.637 }, area_id = 6 },
	{ config_id = 214078, shape = RegionShape.SPHERE, radius = 11.7, pos = { x = 1221.901, y = 261.461, z = 1216.513 }, area_id = 6 },
	{ config_id = 214079, shape = RegionShape.SPHERE, radius = 15.2, pos = { x = 1224.196, y = 269.785, z = 1359.977 }, area_id = 6 },
	{ config_id = 214080, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1455.458, y = 317.952, z = 1280.487 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1214002, name = "GADGET_CREATE_214002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_214002", action = "action_EVENT_GADGET_CREATE_214002", trigger_count = 0 },
	{ config_id = 1214003, name = "SELECT_OPTION_214003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_214003", action = "action_EVENT_SELECT_OPTION_214003", trigger_count = 0 },
	{ config_id = 1214004, name = "CHALLENGE_SUCCESS_214004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2008", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_214004", trigger_count = 0 },
	{ config_id = 1214005, name = "CHALLENGE_FAIL_214005", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008", condition = "", action = "action_EVENT_CHALLENGE_FAIL_214005", trigger_count = 0 },
	{ config_id = 1214006, name = "ANY_GADGET_DIE_214006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214006", action = "", trigger_count = 0, tag = "888" },
	{ config_id = 1214057, name = "ENTER_REGION_214057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214057", action = "action_EVENT_ENTER_REGION_214057" },
	{ config_id = 1214077, name = "ENTER_REGION_214077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214077", action = "action_EVENT_ENTER_REGION_214077" },
	{ config_id = 1214078, name = "ENTER_REGION_214078", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214078", action = "action_EVENT_ENTER_REGION_214078" },
	{ config_id = 1214079, name = "ENTER_REGION_214079", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214079", action = "action_EVENT_ENTER_REGION_214079" },
	{ config_id = 1214080, name = "ENTER_REGION_214080", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214080", action = "", tag = "666" }
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
		gadgets = { 214001 },
		regions = { },
		triggers = { "GADGET_CREATE_214002", "SELECT_OPTION_214003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 214009, 214010, 214011, 214012, 214013, 214014, 214081 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 214020, 214021, 214022, 214062 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 214016, 214017, 214018, 214019, 214023, 214024, 214025, 214026, 214027, 214028, 214030, 214032, 214033, 214035, 214038, 214039, 214040, 214041, 214042, 214043, 214044, 214045, 214064, 214065, 214066, 214067, 214068, 214069 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 214008, 214034, 214036, 214037, 214084, 214087, 214145, 214155 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 214057, 214077, 214078, 214079, 214080 },
		triggers = { "CHALLENGE_SUCCESS_214004", "CHALLENGE_FAIL_214005", "ANY_GADGET_DIE_214006", "ENTER_REGION_214057", "ENTER_REGION_214077", "ENTER_REGION_214078", "ENTER_REGION_214079", "ENTER_REGION_214080" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 214007, 214015, 214029, 214031, 214046, 214047, 214048, 214049, 214050, 214051, 214052, 214053, 214054, 214055, 214056, 214058, 214059, 214060, 214061, 214070, 214071, 214072, 214075, 214076, 214082, 214083, 214085, 214086, 214088, 214089, 214090, 214091, 214092, 214093, 214094, 214095, 214096, 214097, 214098, 214099, 214100, 214101, 214102, 214103, 214104, 214105, 214106, 214107, 214108, 214109, 214110, 214111, 214112, 214113, 214114, 214115, 214116, 214117, 214118, 214119, 214120, 214121, 214122, 214123, 214124, 214125, 214126, 214127, 214128, 214129, 214130, 214131, 214132, 214133, 214134, 214135, 214136, 214137, 214138, 214139, 214140, 214141, 214142, 214143, 214144, 214146, 214147, 214148, 214149, 214150, 214151, 214152, 214153, 214154 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
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
function condition_EVENT_GADGET_CREATE_214002(context, evt)
	if 214001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_214002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101214, 214001, {2}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_214003(context, evt)
	-- 判断是gadgetid 214001 option_id 2
	if 214001 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_214003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101214, 2)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101214, 6)
	
	-- 删除指定group： 133101214 ；指定config：214001；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101214, 214001, 2) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1165，263，1119），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1184, y=260, z=1133}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建编号为666（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	ScriptLib.CreateFatherChallenge(context, 2008, 2008, 191, {success = 1, fail = 1})
	ScriptLib.AttachChildChallenge(context, 2008, 2009, 2009,{0,4, 666,1},{},{success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 2008, 2010, 2010,{0,2, 888,5},{},{success=0,fail=0})
	ScriptLib.StartFatherChallenge(context, 2008)
	ScriptLib.SetChallengeEventMark(context, 2008, ChallengeEventMarkType.FLIGHT_TIME)
	ScriptLib.SetChallengeEventMark(context, 2010, ChallengeEventMarkType.FLIGHT_GATHER_POINT)
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_214004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101214, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_214005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101214, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214006(context, evt)
	if (214020 == evt.param1)  or (214045 == evt.param1) or (214027 == evt.param1) or (214112 == evt.param1) or (214142 == evt.param1) then
	    return true
	end
	
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214057(context, evt)
	if evt.param1 ~= 214057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214057(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101214, 7)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214095) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214154) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214152) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214151) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214150) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214149) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214148) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214147) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214146) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214144) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214077(context, evt)
	if evt.param1 ~= 214077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214077(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101214, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214078(context, evt)
	if evt.param1 ~= 214078 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214078(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101214, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101214, 2)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 214045) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214079(context, evt)
	if evt.param1 ~= 214079 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214079(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101214, 5)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101214, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214080(context, evt)
	if evt.param1 ~= 214080 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "FlyChallenge"