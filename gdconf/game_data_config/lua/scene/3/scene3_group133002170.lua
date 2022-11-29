-- 基础信息
local base_info = {
	group_id = 133002170
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499, monster_id = 28030401, pos = { x = 1923.439, y = 247.595, z = -383.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 500, monster_id = 28030401, pos = { x = 1921.512, y = 247.204, z = -386.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 506, monster_id = 28030401, pos = { x = 1888.646, y = 239.638, z = -355.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 507, monster_id = 28030401, pos = { x = 1893.154, y = 239.406, z = -353.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 526, monster_id = 28030401, pos = { x = 1727.198, y = 247.491, z = -681.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 528, monster_id = 28030401, pos = { x = 1726.832, y = 247.633, z = -679.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 529, monster_id = 28030401, pos = { x = 1854.528, y = 256.482, z = -619.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 531, monster_id = 28030401, pos = { x = 1855.068, y = 255.813, z = -623.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 532, monster_id = 28030401, pos = { x = 1901.016, y = 234.214, z = -701.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 534, monster_id = 28030401, pos = { x = 1898.181, y = 233.801, z = -698.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 535, monster_id = 28030401, pos = { x = 1902.129, y = 234.348, z = -702.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 558, monster_id = 28030401, pos = { x = 1784.680, y = 252.171, z = -814.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 559, monster_id = 28030401, pos = { x = 1781.089, y = 252.966, z = -818.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 573, monster_id = 28030301, pos = { x = 1767.938, y = 226.246, z = -398.209 }, rot = { x = 0.000, y = 8.039, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 620, monster_id = 28030301, pos = { x = 1767.983, y = 233.849, z = -410.913 }, rot = { x = 0.000, y = 8.039, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 3 },
	{ config_id = 621, monster_id = 28030301, pos = { x = 1761.680, y = 233.849, z = -407.567 }, rot = { x = 0.000, y = 8.039, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 3 },
	{ config_id = 623, monster_id = 28030301, pos = { x = 1757.957, y = 233.849, z = -405.541 }, rot = { x = 0.000, y = 8.039, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 3 },
	{ config_id = 624, monster_id = 28030301, pos = { x = 1765.800, y = 233.867, z = -405.507 }, rot = { x = 0.000, y = 8.039, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 3 },
	{ config_id = 625, monster_id = 28030301, pos = { x = 1762.735, y = 233.867, z = -411.064 }, rot = { x = 0.000, y = 8.039, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 3 },
	{ config_id = 637, monster_id = 28030301, pos = { x = 1774.981, y = 232.412, z = -411.288 }, rot = { x = 0.000, y = 8.039, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 694, monster_id = 28030401, pos = { x = 1988.808, y = 203.200, z = -847.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 695, monster_id = 28030401, pos = { x = 1988.050, y = 203.106, z = -843.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 696, monster_id = 28030401, pos = { x = 1992.283, y = 203.234, z = -847.335 }, rot = { x = 0.000, y = 200.286, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 697, monster_id = 28030401, pos = { x = 1988.962, y = 203.075, z = -843.026 }, rot = { x = 0.000, y = 212.721, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 721, monster_id = 28030401, pos = { x = 1858.141, y = 254.459, z = -623.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 170001, monster_id = 28030401, pos = { x = 1694.593, y = 205.377, z = -225.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 170002, monster_id = 28030401, pos = { x = 1694.469, y = 205.000, z = -229.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 170003, monster_id = 28030401, pos = { x = 1692.162, y = 205.602, z = -229.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 170004, monster_id = 28030401, pos = { x = 1698.727, y = 203.991, z = -227.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "鸟类", pose_id = 2, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 539, monster_id = 28040101, pos = { x = 1804.325, y = 232.450, z = -905.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 540, monster_id = 28040101, pos = { x = 1800.727, y = 232.450, z = -901.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 541, monster_id = 28040101, pos = { x = 1759.472, y = 232.450, z = -899.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 542, monster_id = 28040101, pos = { x = 1747.749, y = 232.450, z = -903.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 543, monster_id = 28040101, pos = { x = 1791.948, y = 232.450, z = -928.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 544, monster_id = 28040101, pos = { x = 1783.961, y = 232.450, z = -925.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 545, monster_id = 28040101, pos = { x = 1809.479, y = 232.450, z = -926.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 546, monster_id = 28040101, pos = { x = 1779.760, y = 232.450, z = -907.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 547, monster_id = 28040101, pos = { x = 1782.357, y = 232.450, z = -904.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 548, monster_id = 28040101, pos = { x = 1775.934, y = 232.450, z = -902.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 580, monster_id = 28040101, pos = { x = 1637.031, y = 199.250, z = -345.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 581, monster_id = 28040101, pos = { x = 1637.057, y = 199.250, z = -339.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 582, monster_id = 28040101, pos = { x = 1632.206, y = 199.250, z = -341.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 583, monster_id = 28040101, pos = { x = 1808.454, y = 199.250, z = -232.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 584, monster_id = 28040101, pos = { x = 1800.857, y = 199.250, z = -238.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 585, monster_id = 28040101, pos = { x = 1801.901, y = 199.250, z = -233.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 586, monster_id = 28040101, pos = { x = 1791.384, y = 199.250, z = -225.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 587, monster_id = 28040101, pos = { x = 1615.781, y = 199.250, z = -394.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 588, monster_id = 28040101, pos = { x = 1609.378, y = 199.250, z = -397.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 606, monster_id = 28040101, pos = { x = 1614.833, y = 199.250, z = -390.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 656, monster_id = 28040101, pos = { x = 1568.042, y = 199.250, z = -425.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 657, monster_id = 28040101, pos = { x = 1575.757, y = 199.250, z = -422.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 658, monster_id = 28040101, pos = { x = 1557.406, y = 199.250, z = -440.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 659, monster_id = 28040101, pos = { x = 1530.613, y = 199.250, z = -455.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 660, monster_id = 28040101, pos = { x = 1539.098, y = 199.250, z = -453.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 661, monster_id = 28040101, pos = { x = 1533.494, y = 199.250, z = -451.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 662, monster_id = 28040101, pos = { x = 1826.727, y = 199.250, z = -129.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 663, monster_id = 28040101, pos = { x = 1831.547, y = 199.250, z = -121.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 664, monster_id = 28040101, pos = { x = 1802.301, y = 199.250, z = -111.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 665, monster_id = 28040101, pos = { x = 1797.785, y = 199.250, z = -113.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 666, monster_id = 28040101, pos = { x = 1801.602, y = 199.250, z = -115.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 667, monster_id = 28040101, pos = { x = 1842.063, y = 199.250, z = -103.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 668, monster_id = 28040101, pos = { x = 1837.122, y = 200.000, z = -96.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "水族", area_id = 3 },
		{ config_id = 669, monster_id = 28040101, pos = { x = 1838.196, y = 199.250, z = -103.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 670, monster_id = 28040101, pos = { x = 1835.762, y = 199.250, z = -192.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 671, monster_id = 28040101, pos = { x = 1832.114, y = 199.250, z = -186.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 672, monster_id = 28040101, pos = { x = 1836.307, y = 199.250, z = -184.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 673, monster_id = 28040101, pos = { x = 1832.922, y = 199.250, z = -188.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 674, monster_id = 28040101, pos = { x = 2038.672, y = 201.650, z = -906.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 675, monster_id = 28040101, pos = { x = 2041.728, y = 201.650, z = -903.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 676, monster_id = 28040101, pos = { x = 2041.504, y = 201.650, z = -896.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 677, monster_id = 28040101, pos = { x = 2041.820, y = 201.650, z = -898.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 678, monster_id = 28040101, pos = { x = 2042.368, y = 201.650, z = -906.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 784, monster_id = 28040101, pos = { x = 2079.089, y = 201.650, z = -736.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 785, monster_id = 28040101, pos = { x = 2079.089, y = 201.650, z = -736.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 786, monster_id = 28040101, pos = { x = 2081.458, y = 201.650, z = -735.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 787, monster_id = 28040101, pos = { x = 2078.615, y = 201.650, z = -740.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 788, monster_id = 28040101, pos = { x = 2088.109, y = 201.650, z = -725.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 789, monster_id = 28040101, pos = { x = 2087.197, y = 201.650, z = -723.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 790, monster_id = 28040101, pos = { x = 2095.890, y = 201.650, z = -706.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 791, monster_id = 28040101, pos = { x = 2088.272, y = 201.650, z = -744.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 792, monster_id = 28040101, pos = { x = 2089.326, y = 201.650, z = -742.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 793, monster_id = 28040101, pos = { x = 2090.318, y = 201.650, z = -745.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 794, monster_id = 28040101, pos = { x = 2056.179, y = 201.650, z = -778.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 795, monster_id = 28040101, pos = { x = 2054.594, y = 201.650, z = -779.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 },
		{ config_id = 796, monster_id = 28040101, pos = { x = 2054.657, y = 201.650, z = -781.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 3 }
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
	rand_suite = true
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
		monsters = { 499, 500, 506, 507, 526, 528, 529, 531, 532, 534, 535, 558, 559, 573, 620, 621, 623, 624, 625, 637, 694, 695, 696, 697, 721, 170001, 170002, 170003, 170004 },
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