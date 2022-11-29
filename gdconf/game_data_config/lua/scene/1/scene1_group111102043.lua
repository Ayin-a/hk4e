-- 基础信息
local base_info = {
	group_id = 111102043
}

-- Trigger变量
local defs = {
	starter_worktop_id = 43001,
	pointarray_route = 110200017,
	final_stage = 7,
	route_num = 7,
	gallery_id = 21100
}

-- DEFS_MISCS
--物件池物件gadgetid
local pool_object_gadget_id =
{
    70380225,70380226
}


local fuel = {
	--初始燃料数量
	init_fuel = 100,
	--给发动机补充能量时，每秒消耗的燃料数量
	fuel_consume_by_tick = 1,
	--燃料球加的燃料数
	fuel_ball = 5,
}

local energy = {
	--初始发动机能量
	init_energy = 100,
	--发动机最大能量
	max_energy = 100,
	--运行时每秒消耗的能量
	energy_consume_by_tick = 5,
	--受到攻击时，消耗的能量
	energy_consume_by_hit = 10,
	--给发动机补充能量时，每秒增加的能量
	energy_heal_by_tick = 1,
}


local part = {
	--初始零件数
	init_part = 100,
	--修补分块时，每秒消耗的零件数
	part_consume_by_tick = 1,
	--零件球加的零件数
	part_ball = 5
}


local score = {
    checkpoint = 20,
    monster = 5,
}

local raft = 
{
    engine = 43106,
    part_1 = 43002,
    part_2 = 43103,
    part_3 = 43104,
    part_4 = 43105
}


local stage = 
{
	[1] = {main_suites = {2}, tag = "Sailing"},
    [2] = {main_suites = {3}, side_suites = {9}, tag = "KillMonster", obstacle = {43018}},
    [3] = {main_suites = {4}, tag = "Sailing"},
    [4] = {main_suites = {5}, tag = "KillMonster", obstacle = {43042}},
    [5] = {main_suites = {6}, tag = "Sailing"},
    [6] = {main_suites = {7}, tag = "KillMonster", obstacle = {43072}},
    [7] = {main_suites = {8}, tag = "Sailing"},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43021, monster_id = 21010401, pos = { x = 1833.312, y = 200.758, z = -1794.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43022, monster_id = 21010401, pos = { x = 1830.885, y = 200.719, z = -1795.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43023, monster_id = 21010401, pos = { x = 1799.563, y = 200.679, z = -1771.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43024, monster_id = 21010401, pos = { x = 1798.074, y = 200.761, z = -1768.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43048, monster_id = 21011001, pos = { x = 2002.503, y = 200.697, z = -1894.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43049, monster_id = 21011001, pos = { x = 2002.578, y = 200.740, z = -1897.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43050, monster_id = 21011001, pos = { x = 2007.768, y = 200.657, z = -1927.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43051, monster_id = 21011001, pos = { x = 2007.366, y = 200.763, z = -1930.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43052, monster_id = 21011001, pos = { x = 1980.018, y = 200.636, z = -1936.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43053, monster_id = 21011001, pos = { x = 1978.130, y = 200.684, z = -1939.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43079, monster_id = 21011001, pos = { x = 1744.491, y = 234.136, z = -1866.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43080, monster_id = 21011001, pos = { x = 1747.583, y = 234.150, z = -1832.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43081, monster_id = 21011001, pos = { x = 1752.631, y = 234.132, z = -1872.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43082, monster_id = 21011001, pos = { x = 1758.173, y = 234.134, z = -1829.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43083, monster_id = 22010101, pos = { x = 1767.086, y = 234.134, z = -1864.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 43084, monster_id = 22010101, pos = { x = 1770.537, y = 234.145, z = -1840.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 43109, monster_id = 21011002, pos = { x = 1801.479, y = 200.723, z = -1816.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43110, monster_id = 21011002, pos = { x = 1804.240, y = 200.720, z = -1815.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43111, monster_id = 21011002, pos = { x = 1790.100, y = 200.661, z = -1805.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 43112, monster_id = 21011002, pos = { x = 1787.509, y = 200.777, z = -1805.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43001, gadget_id = 70350250, pos = { x = 1922.350, y = 194.600, z = -1656.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43002, gadget_id = 70380220, pos = { x = 1926.526, y = 194.600, z = -1658.905 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 43003, gadget_id = 70350256, pos = { x = 1916.633, y = 194.600, z = -1676.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 43004, gadget_id = 70350256, pos = { x = 1914.669, y = 194.600, z = -1679.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43005, gadget_id = 70350256, pos = { x = 1888.784, y = 194.600, z = -1690.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43006, gadget_id = 70350256, pos = { x = 1912.533, y = 194.600, z = -1683.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43007, gadget_id = 70350256, pos = { x = 1892.789, y = 194.600, z = -1684.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43008, gadget_id = 70350256, pos = { x = 1882.704, y = 194.600, z = -1723.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43009, gadget_id = 70350256, pos = { x = 1840.995, y = 194.600, z = -1745.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43010, gadget_id = 70350256, pos = { x = 1884.037, y = 194.600, z = -1696.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43011, gadget_id = 70350256, pos = { x = 1880.361, y = 194.600, z = -1726.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43012, gadget_id = 70350256, pos = { x = 1833.524, y = 194.600, z = -1775.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43013, gadget_id = 70350256, pos = { x = 1877.362, y = 194.600, z = -1730.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43014, gadget_id = 70350256, pos = { x = 1838.233, y = 194.600, z = -1749.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43015, gadget_id = 70350256, pos = { x = 1834.961, y = 194.600, z = -1753.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43016, gadget_id = 70350256, pos = { x = 1836.452, y = 194.600, z = -1771.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43017, gadget_id = 70350256, pos = { x = 1840.024, y = 194.600, z = -1766.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43018, gadget_id = 70380310, pos = { x = 1813.322, y = 194.600, z = -1786.311 }, rot = { x = 0.000, y = 30.993, z = 0.000 }, level = 1 },
	{ config_id = 43019, gadget_id = 70290059, pos = { x = 1833.120, y = 194.600, z = -1794.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43020, gadget_id = 70290059, pos = { x = 1798.562, y = 194.600, z = -1769.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43025, gadget_id = 70690027, pos = { x = 1831.023, y = 192.176, z = -1787.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43026, gadget_id = 70690027, pos = { x = 1809.077, y = 192.465, z = -1772.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43027, gadget_id = 70350256, pos = { x = 1820.415, y = 194.600, z = -1810.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43028, gadget_id = 70350256, pos = { x = 1827.324, y = 194.600, z = -1814.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43029, gadget_id = 70350256, pos = { x = 1835.390, y = 194.600, z = -1818.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43030, gadget_id = 70350256, pos = { x = 1846.731, y = 194.600, z = -1846.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43031, gadget_id = 70350256, pos = { x = 1854.932, y = 194.600, z = -1851.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43032, gadget_id = 70350256, pos = { x = 1865.137, y = 194.600, z = -1857.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43033, gadget_id = 70350256, pos = { x = 1891.253, y = 194.600, z = -1852.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43034, gadget_id = 70350256, pos = { x = 1902.550, y = 194.600, z = -1857.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43035, gadget_id = 70350256, pos = { x = 1911.363, y = 194.600, z = -1862.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43036, gadget_id = 70350256, pos = { x = 1921.684, y = 194.600, z = -1885.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43037, gadget_id = 70350256, pos = { x = 1932.891, y = 194.600, z = -1892.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43038, gadget_id = 70350256, pos = { x = 1942.481, y = 194.600, z = -1899.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43039, gadget_id = 70350256, pos = { x = 1966.107, y = 194.600, z = -1891.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43040, gadget_id = 70350256, pos = { x = 1975.434, y = 194.600, z = -1896.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43041, gadget_id = 70350256, pos = { x = 1986.633, y = 194.600, z = -1901.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43042, gadget_id = 70380310, pos = { x = 1989.731, y = 194.600, z = -1918.049 }, rot = { x = 0.000, y = 296.645, z = 0.000 }, level = 1 },
	{ config_id = 43043, gadget_id = 70290059, pos = { x = 2003.440, y = 194.600, z = -1895.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43044, gadget_id = 70290059, pos = { x = 1980.779, y = 194.600, z = -1939.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43045, gadget_id = 70290059, pos = { x = 2008.796, y = 194.600, z = -1929.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43046, gadget_id = 70690027, pos = { x = 1996.886, y = 194.600, z = -1905.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43047, gadget_id = 70690027, pos = { x = 1982.509, y = 194.600, z = -1930.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43054, gadget_id = 70350256, pos = { x = 1950.003, y = 201.486, z = -1921.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43055, gadget_id = 70350256, pos = { x = 1940.510, y = 201.486, z = -1918.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43056, gadget_id = 70350256, pos = { x = 1929.775, y = 201.486, z = -1916.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43057, gadget_id = 70350256, pos = { x = 1917.398, y = 207.505, z = -1904.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43058, gadget_id = 70350256, pos = { x = 1904.048, y = 207.505, z = -1899.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43059, gadget_id = 70350256, pos = { x = 1892.301, y = 207.505, z = -1895.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43060, gadget_id = 70350256, pos = { x = 1866.217, y = 214.605, z = -1894.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43061, gadget_id = 70350256, pos = { x = 1855.964, y = 214.605, z = -1891.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43062, gadget_id = 70350256, pos = { x = 1845.691, y = 214.605, z = -1889.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43063, gadget_id = 70350256, pos = { x = 1836.552, y = 221.713, z = -1871.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43064, gadget_id = 70350256, pos = { x = 1826.299, y = 221.713, z = -1868.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43065, gadget_id = 70350256, pos = { x = 1816.026, y = 221.713, z = -1866.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43066, gadget_id = 70350256, pos = { x = 1800.432, y = 227.646, z = -1877.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43067, gadget_id = 70350256, pos = { x = 1790.179, y = 227.646, z = -1874.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43068, gadget_id = 70350256, pos = { x = 1779.906, y = 227.646, z = -1871.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43069, gadget_id = 70350256, pos = { x = 1772.419, y = 232.419, z = -1853.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43070, gadget_id = 70350256, pos = { x = 1762.166, y = 232.419, z = -1849.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43071, gadget_id = 70350256, pos = { x = 1751.893, y = 232.419, z = -1847.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43072, gadget_id = 70380309, pos = { x = 1746.476, y = 232.621, z = -1849.711 }, rot = { x = 0.000, y = 277.092, z = 0.000 }, level = 1 },
	{ config_id = 43073, gadget_id = 70360359, pos = { x = 1744.162, y = 234.158, z = -1866.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43074, gadget_id = 70360359, pos = { x = 1747.234, y = 234.158, z = -1832.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43075, gadget_id = 70360359, pos = { x = 1752.340, y = 234.158, z = -1872.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43076, gadget_id = 70360359, pos = { x = 1757.854, y = 234.158, z = -1829.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43077, gadget_id = 70360359, pos = { x = 1766.224, y = 234.158, z = -1865.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43078, gadget_id = 70360359, pos = { x = 1769.363, y = 234.158, z = -1840.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43085, gadget_id = 70350256, pos = { x = 1722.510, y = 238.522, z = -1858.369 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43086, gadget_id = 70350256, pos = { x = 1696.668, y = 238.522, z = -1852.455 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43087, gadget_id = 70350256, pos = { x = 1709.225, y = 238.522, z = -1855.329 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43088, gadget_id = 70350256, pos = { x = 1684.223, y = 245.187, z = -1825.963 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43089, gadget_id = 70350256, pos = { x = 1658.381, y = 245.187, z = -1820.049 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43090, gadget_id = 70350256, pos = { x = 1670.938, y = 245.187, z = -1822.923 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43091, gadget_id = 70350256, pos = { x = 1627.757, y = 252.052, z = -1836.234 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43092, gadget_id = 70350256, pos = { x = 1601.915, y = 252.052, z = -1830.320 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43093, gadget_id = 70350256, pos = { x = 1614.472, y = 252.052, z = -1833.194 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43094, gadget_id = 70350256, pos = { x = 1579.780, y = 262.326, z = -1801.159 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43095, gadget_id = 70350256, pos = { x = 1553.938, y = 262.326, z = -1795.245 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43096, gadget_id = 70350256, pos = { x = 1566.495, y = 262.326, z = -1798.119 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43097, gadget_id = 70350256, pos = { x = 1529.767, y = 262.326, z = -1805.979 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43098, gadget_id = 70350256, pos = { x = 1503.925, y = 262.326, z = -1800.065 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43099, gadget_id = 70350256, pos = { x = 1516.482, y = 262.326, z = -1802.939 }, rot = { x = 0.000, y = 12.890, z = 0.000 }, level = 1 },
	{ config_id = 43100, gadget_id = 70360348, pos = { x = 1493.306, y = 270.747, z = -1788.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43101, gadget_id = 70690027, pos = { x = 1753.718, y = 225.967, z = -1858.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43102, gadget_id = 70690027, pos = { x = 1754.843, y = 225.967, z = -1836.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43103, gadget_id = 70380221, pos = { x = 1919.563, y = 194.600, z = -1658.928 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 43104, gadget_id = 70380222, pos = { x = 1926.494, y = 194.600, z = -1652.037 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 43105, gadget_id = 70380223, pos = { x = 1919.533, y = 194.600, z = -1652.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43106, gadget_id = 70380224, pos = { x = 1923.062, y = 194.600, z = -1655.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 43107, gadget_id = 70290059, pos = { x = 1803.627, y = 194.600, z = -1816.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43108, gadget_id = 70290059, pos = { x = 1788.322, y = 194.600, z = -1805.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 航行,
		monsters = { },
		gadgets = { 43003, 43004, 43005, 43006, 43007, 43008, 43009, 43010, 43011, 43012, 43013, 43014, 43015, 43016, 43017, 43018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 杀怪,
		monsters = { 43021, 43022, 43023, 43024 },
		gadgets = { 43019, 43020, 43025, 43026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 航行,
		monsters = { },
		gadgets = { 43027, 43028, 43029, 43030, 43031, 43032, 43033, 43034, 43035, 43036, 43037, 43038, 43039, 43040, 43041, 43042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 杀怪,
		monsters = { 43048, 43049, 43050, 43051, 43052, 43053 },
		gadgets = { 43043, 43044, 43045, 43046, 43047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 航行,
		monsters = { },
		gadgets = { 43054, 43055, 43056, 43057, 43058, 43059, 43060, 43061, 43062, 43063, 43064, 43065, 43066, 43067, 43068, 43069, 43070, 43071, 43072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 杀怪,
		monsters = { 43079, 43080, 43081, 43082, 43083, 43084 },
		gadgets = { 43073, 43074, 43075, 43076, 43077, 43078, 43101, 43102 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 航行,
		monsters = { },
		gadgets = { 43085, 43086, 43087, 43088, 43089, 43090, 43091, 43092, 43093, 43094, 43095, 43096, 43097, 43098, 43099, 43100 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 阶段2支线,
		monsters = { 43109, 43110, 43111, 43112 },
		gadgets = { 43107, 43108 },
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

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_RaftChallenge"
require "V2_8/LuaGadgetPool"