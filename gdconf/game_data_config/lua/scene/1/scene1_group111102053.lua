-- 基础信息
local base_info = {
	group_id = 111102053
}

-- Trigger变量
local defs = {
	starter_worktop_id = 53005,
	final_stage = 7,
	TEMP_father_challenge_id = 2010001,
	TEMP_kill_stage_monster_challenge_id = 2010013,
	TEMP_kill_wind_slime_challenge_id = 2010014,
	TEMP_challenge_time = 600,
	dive_region = 53127
}

-- DEFS_MISCS
local score = {
    checkpoint = 20,
    monster = 5,
}



local stage = 
{
    [1] = {monster_suites = {2}, start_suites = {2}, tag = "Battle"},
    [2] = {monster_suites = {3,4},start_suites = {3,4}, tag = "Battle"},
    [3] = {monster_suites = {5,6},start_suites = {5,6}, tag = "Battle"},
    [4] = {monster_suites = {7},  start_suites = {7},   tag = "Dive"},
}

local mechanism_ball_level_variable = 
{
	[53128] = "Ball_1",
	[53129] = "Ball_2",
	[53132] = "Ball_3",
	[53133] = "Ball_4",
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53010, monster_id = 21010101, pos = { x = 1884.021, y = 465.741, z = -1770.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53011, monster_id = 21010101, pos = { x = 1888.916, y = 465.741, z = -1771.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53012, monster_id = 21010101, pos = { x = 1889.380, y = 465.741, z = -1775.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53013, monster_id = 21010101, pos = { x = 1884.728, y = 465.741, z = -1776.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53014, monster_id = 21010101, pos = { x = 1945.128, y = 465.741, z = -1757.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53015, monster_id = 21010101, pos = { x = 1949.828, y = 465.741, z = -1757.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53016, monster_id = 21010101, pos = { x = 1945.119, y = 465.741, z = -1762.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53017, monster_id = 21010101, pos = { x = 1949.069, y = 465.741, z = -1761.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 53018, monster_id = 20011201, pos = { x = 1907.033, y = 465.741, z = -1734.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53019, monster_id = 20011201, pos = { x = 1911.867, y = 465.741, z = -1733.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53020, monster_id = 20011201, pos = { x = 1907.962, y = 465.741, z = -1739.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53021, monster_id = 20011201, pos = { x = 1913.118, y = 465.741, z = -1738.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53022, monster_id = 20011201, pos = { x = 1926.872, y = 465.741, z = -1797.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53023, monster_id = 20011201, pos = { x = 1921.596, y = 465.741, z = -1797.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53024, monster_id = 20011201, pos = { x = 1926.232, y = 465.741, z = -1792.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53025, monster_id = 20011201, pos = { x = 1921.897, y = 465.741, z = -1792.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 53046, monster_id = 21020101, pos = { x = 1883.159, y = 389.502, z = -1756.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 53047, monster_id = 21020101, pos = { x = 1888.982, y = 389.502, z = -1760.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 53048, monster_id = 21020201, pos = { x = 1944.267, y = 389.502, z = -1769.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 53049, monster_id = 21020201, pos = { x = 1948.563, y = 389.502, z = -1774.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 53050, monster_id = 21010901, pos = { x = 1907.471, y = 389.502, z = -1793.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53051, monster_id = 21010901, pos = { x = 1912.358, y = 389.502, z = -1797.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53052, monster_id = 21010901, pos = { x = 1905.390, y = 389.502, z = -1797.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53053, monster_id = 21010901, pos = { x = 1909.994, y = 389.502, z = -1800.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53054, monster_id = 21011001, pos = { x = 1926.424, y = 389.502, z = -1733.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53055, monster_id = 21011001, pos = { x = 1926.339, y = 389.502, z = -1739.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53056, monster_id = 21011001, pos = { x = 1920.525, y = 389.502, z = -1733.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53057, monster_id = 21011001, pos = { x = 1920.725, y = 389.502, z = -1739.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 53066, monster_id = 21020501, pos = { x = 1916.756, y = 271.228, z = -1765.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53001, gadget_id = 70380312, pos = { x = 1909.729, y = 504.167, z = -1757.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53002, gadget_id = 70380312, pos = { x = 1924.574, y = 504.167, z = -1757.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53003, gadget_id = 70380312, pos = { x = 1924.574, y = 504.167, z = -1772.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53004, gadget_id = 70380312, pos = { x = 1909.547, y = 504.167, z = -1772.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53005, gadget_id = 70350250, pos = { x = 1917.111, y = 505.229, z = -1765.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53006, gadget_id = 70380312, pos = { x = 1909.729, y = 464.835, z = -1735.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53007, gadget_id = 70380312, pos = { x = 1946.936, y = 464.835, z = -1757.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53008, gadget_id = 70380312, pos = { x = 1924.574, y = 464.835, z = -1795.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53009, gadget_id = 70380312, pos = { x = 1886.786, y = 464.835, z = -1772.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53026, gadget_id = 70690029, pos = { x = 1935.537, y = 456.132, z = -1738.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53027, gadget_id = 70690029, pos = { x = 1890.102, y = 456.132, z = -1749.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53028, gadget_id = 70690029, pos = { x = 1901.007, y = 456.132, z = -1793.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53029, gadget_id = 70690029, pos = { x = 1943.489, y = 456.132, z = -1784.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53030, gadget_id = 70380312, pos = { x = 1916.988, y = 427.798, z = -1773.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53031, gadget_id = 70380312, pos = { x = 1916.826, y = 427.798, z = -1743.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53032, gadget_id = 70380312, pos = { x = 1916.826, y = 427.798, z = -1788.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53033, gadget_id = 70380312, pos = { x = 1916.806, y = 427.798, z = -1758.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53034, gadget_id = 70380312, pos = { x = 1886.844, y = 427.798, z = -1773.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53035, gadget_id = 70380312, pos = { x = 1886.682, y = 427.798, z = -1743.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53036, gadget_id = 70380312, pos = { x = 1886.682, y = 427.798, z = -1788.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53037, gadget_id = 70380312, pos = { x = 1886.661, y = 427.798, z = -1758.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53038, gadget_id = 70380312, pos = { x = 1946.979, y = 427.798, z = -1773.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53039, gadget_id = 70380312, pos = { x = 1946.817, y = 427.798, z = -1743.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53040, gadget_id = 70380312, pos = { x = 1946.817, y = 427.798, z = -1788.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53041, gadget_id = 70380312, pos = { x = 1946.796, y = 427.798, z = -1758.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53042, gadget_id = 70380312, pos = { x = 1924.186, y = 388.596, z = -1735.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53043, gadget_id = 70380312, pos = { x = 1946.936, y = 388.596, z = -1771.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53044, gadget_id = 70380312, pos = { x = 1909.648, y = 388.596, z = -1795.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53045, gadget_id = 70380312, pos = { x = 1886.786, y = 388.596, z = -1757.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53058, gadget_id = 70380312, pos = { x = 1916.988, y = 333.435, z = -1773.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53059, gadget_id = 70380312, pos = { x = 1916.826, y = 333.435, z = -1743.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53060, gadget_id = 70380312, pos = { x = 1916.826, y = 333.435, z = -1788.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53061, gadget_id = 70380312, pos = { x = 1916.806, y = 333.435, z = -1758.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53062, gadget_id = 70380312, pos = { x = 1909.729, y = 270.166, z = -1757.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53063, gadget_id = 70380312, pos = { x = 1924.574, y = 270.166, z = -1757.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53064, gadget_id = 70380312, pos = { x = 1924.574, y = 270.166, z = -1772.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53065, gadget_id = 70380312, pos = { x = 1909.547, y = 270.166, z = -1772.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53067, gadget_id = 70350256, pos = { x = 1907.104, y = 273.072, z = -1744.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53068, gadget_id = 70350256, pos = { x = 1927.719, y = 273.072, z = -1744.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53069, gadget_id = 70350256, pos = { x = 1896.183, y = 273.072, z = -1753.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53070, gadget_id = 70350256, pos = { x = 1937.463, y = 273.072, z = -1754.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53071, gadget_id = 70350256, pos = { x = 1895.151, y = 273.072, z = -1775.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53072, gadget_id = 70350256, pos = { x = 1937.653, y = 273.072, z = -1776.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53073, gadget_id = 70350256, pos = { x = 1907.551, y = 273.072, z = -1785.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53074, gadget_id = 70350256, pos = { x = 1927.025, y = 273.072, z = -1785.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53075, gadget_id = 70350256, pos = { x = 1907.104, y = 258.786, z = -1744.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53076, gadget_id = 70350256, pos = { x = 1927.719, y = 258.786, z = -1744.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53077, gadget_id = 70350256, pos = { x = 1896.183, y = 258.786, z = -1753.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53078, gadget_id = 70350256, pos = { x = 1937.463, y = 258.786, z = -1754.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53079, gadget_id = 70350256, pos = { x = 1895.151, y = 258.786, z = -1775.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53080, gadget_id = 70350256, pos = { x = 1937.653, y = 258.786, z = -1776.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53081, gadget_id = 70350256, pos = { x = 1907.551, y = 258.786, z = -1785.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53082, gadget_id = 70350256, pos = { x = 1927.025, y = 258.786, z = -1785.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53083, gadget_id = 70350256, pos = { x = 1907.104, y = 244.360, z = -1744.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53084, gadget_id = 70350256, pos = { x = 1927.719, y = 244.360, z = -1744.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53085, gadget_id = 70350256, pos = { x = 1896.183, y = 244.360, z = -1753.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53086, gadget_id = 70350256, pos = { x = 1937.463, y = 244.360, z = -1754.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53087, gadget_id = 70350256, pos = { x = 1895.151, y = 244.360, z = -1775.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53088, gadget_id = 70350256, pos = { x = 1937.653, y = 244.360, z = -1776.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53089, gadget_id = 70350256, pos = { x = 1907.551, y = 244.360, z = -1785.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53090, gadget_id = 70350256, pos = { x = 1927.025, y = 244.360, z = -1785.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53091, gadget_id = 70350256, pos = { x = 1907.104, y = 231.345, z = -1744.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53092, gadget_id = 70350256, pos = { x = 1927.719, y = 231.345, z = -1744.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53093, gadget_id = 70350256, pos = { x = 1896.183, y = 231.345, z = -1753.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53094, gadget_id = 70350256, pos = { x = 1937.463, y = 231.345, z = -1754.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53095, gadget_id = 70350256, pos = { x = 1895.151, y = 231.345, z = -1775.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53096, gadget_id = 70350256, pos = { x = 1937.653, y = 231.345, z = -1776.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53097, gadget_id = 70350256, pos = { x = 1907.551, y = 231.345, z = -1785.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53098, gadget_id = 70350256, pos = { x = 1927.025, y = 231.345, z = -1785.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53099, gadget_id = 70350256, pos = { x = 1907.104, y = 217.058, z = -1744.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53100, gadget_id = 70350256, pos = { x = 1927.719, y = 217.058, z = -1744.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53101, gadget_id = 70350256, pos = { x = 1896.183, y = 217.058, z = -1753.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53102, gadget_id = 70350256, pos = { x = 1937.463, y = 217.058, z = -1754.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53103, gadget_id = 70350256, pos = { x = 1895.151, y = 217.058, z = -1775.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53104, gadget_id = 70350256, pos = { x = 1937.653, y = 217.058, z = -1776.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53105, gadget_id = 70350256, pos = { x = 1907.551, y = 217.058, z = -1785.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53106, gadget_id = 70350256, pos = { x = 1927.025, y = 217.058, z = -1785.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53107, gadget_id = 70350256, pos = { x = 1907.104, y = 202.632, z = -1744.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53108, gadget_id = 70350256, pos = { x = 1927.719, y = 202.632, z = -1744.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53109, gadget_id = 70350256, pos = { x = 1896.183, y = 202.632, z = -1753.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53110, gadget_id = 70350256, pos = { x = 1937.463, y = 202.632, z = -1754.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53111, gadget_id = 70350256, pos = { x = 1895.151, y = 202.632, z = -1775.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53112, gadget_id = 70350256, pos = { x = 1937.653, y = 202.632, z = -1776.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53113, gadget_id = 70350256, pos = { x = 1907.551, y = 202.632, z = -1785.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53114, gadget_id = 70350256, pos = { x = 1927.025, y = 202.632, z = -1785.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53128, gadget_id = 70380227, pos = { x = 1947.712, y = 429.983, z = -1744.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53129, gadget_id = 70380227, pos = { x = 1886.184, y = 430.652, z = -1788.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53130, gadget_id = 70380228, pos = { x = 1915.942, y = 430.921, z = -1743.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53131, gadget_id = 70380228, pos = { x = 1916.415, y = 430.537, z = -1789.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53132, gadget_id = 70380228, pos = { x = 1916.985, y = 336.045, z = -1743.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53133, gadget_id = 70380228, pos = { x = 1917.480, y = 336.089, z = -1772.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53134, gadget_id = 70380227, pos = { x = 1917.834, y = 336.150, z = -1758.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53135, gadget_id = 70380227, pos = { x = 1917.995, y = 335.629, z = -1788.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53136, gadget_id = 70690029, pos = { x = 1940.029, y = 373.328, z = -1746.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53137, gadget_id = 70690029, pos = { x = 1931.656, y = 373.328, z = -1790.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53138, gadget_id = 70690029, pos = { x = 1889.653, y = 373.328, z = -1778.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53139, gadget_id = 70690029, pos = { x = 1902.392, y = 373.328, z = -1739.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53140, gadget_id = 70380309, pos = { x = 1924.405, y = 389.640, z = -1729.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53141, gadget_id = 70380309, pos = { x = 1947.301, y = 389.645, z = -1764.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53142, gadget_id = 70380309, pos = { x = 1909.127, y = 389.612, z = -1789.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53143, gadget_id = 70380309, pos = { x = 1886.447, y = 389.640, z = -1751.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53146, gadget_id = 70380309, pos = { x = 1924.405, y = 389.640, z = -1743.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53147, gadget_id = 70380309, pos = { x = 1947.301, y = 389.645, z = -1779.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53148, gadget_id = 70380309, pos = { x = 1909.127, y = 389.612, z = -1803.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53149, gadget_id = 70380309, pos = { x = 1886.447, y = 389.640, z = -1765.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53150, gadget_id = 70380309, pos = { x = 1917.220, y = 271.229, z = -1779.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53151, gadget_id = 70380309, pos = { x = 1916.957, y = 271.228, z = -1750.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53152, gadget_id = 70380309, pos = { x = 1902.378, y = 271.215, z = -1764.958 }, rot = { x = 0.000, y = 269.801, z = 0.000 }, level = 1 },
	{ config_id = 53153, gadget_id = 70380309, pos = { x = 1931.891, y = 271.215, z = -1764.855 }, rot = { x = 0.000, y = 269.801, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 53127, shape = RegionShape.CUBIC, size = { x = 70.000, y = 10.000, z = 70.000 }, pos = { x = 1917.599, y = 194.600, z = -1763.551 } }
}

-- 触发器
triggers = {
	{ config_id = 1053144, name = "VARIABLE_CHANGE_53144", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53144", action = "action_EVENT_VARIABLE_CHANGE_53144", trigger_count = 0 },
	{ config_id = 1053145, name = "VARIABLE_CHANGE_53145", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53145", action = "action_EVENT_VARIABLE_CHANGE_53145", trigger_count = 0 },
	{ config_id = 1053154, name = "VARIABLE_CHANGE_53154", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53154", action = "action_EVENT_VARIABLE_CHANGE_53154", trigger_count = 0 },
	{ config_id = 1053155, name = "VARIABLE_CHANGE_53155", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53155", action = "action_EVENT_VARIABLE_CHANGE_53155", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Ball_1", value = 0, no_refresh = false },
	{ config_id = 2, name = "Ball_2", value = 0, no_refresh = false },
	{ config_id = 3, name = "Ball_3", value = 0, no_refresh = false },
	{ config_id = 4, name = "Ball_4", value = 0, no_refresh = false }
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
		gadgets = { 53001, 53002, 53003, 53004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 战斗平台1,
		monsters = { 53010, 53011, 53012, 53013, 53014, 53015, 53016, 53017, 53018, 53019, 53020, 53021, 53022, 53023, 53024, 53025 },
		gadgets = { 53006, 53007, 53008, 53009, 53026, 53027, 53028, 53029 },
		regions = { 53127 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 吃球平台1,
		monsters = { },
		gadgets = { 53030, 53031, 53032, 53033, 53034, 53035, 53036, 53037, 53038, 53039, 53040, 53041, 53128, 53129, 53130, 53131 },
		regions = { 53127 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 战斗平台2,
		monsters = { 53046, 53047, 53048, 53049, 53050, 53051, 53052, 53053, 53054, 53055, 53056, 53057 },
		gadgets = { 53042, 53043, 53044, 53045, 53136, 53137, 53138, 53139 },
		regions = { 53127 },
		triggers = { "VARIABLE_CHANGE_53144", "VARIABLE_CHANGE_53145" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 吃球平台2,
		monsters = { },
		gadgets = { 53058, 53059, 53060, 53061, 53132, 53133, 53134, 53135 },
		regions = { 53127 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 战斗平台3,
		monsters = { 53066 },
		gadgets = { 53062, 53063, 53064, 53065 },
		regions = { 53127 },
		triggers = { "VARIABLE_CHANGE_53154", "VARIABLE_CHANGE_53155" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 跳水阶段,
		monsters = { },
		gadgets = { 53067, 53068, 53069, 53070, 53071, 53072, 53073, 53074, 53075, 53076, 53077, 53078, 53079, 53080, 53081, 53082, 53083, 53084, 53085, 53086, 53087, 53088, 53089, 53090, 53091, 53092, 53093, 53094, 53095, 53096, 53097, 53098, 53099, 53100, 53101, 53102, 53103, 53104, 53105, 53106, 53107, 53108, 53109, 53110, 53111, 53112, 53113, 53114 },
		regions = { 53127 },
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
function condition_EVENT_VARIABLE_CHANGE_53144(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_1"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53144(context, evt)
	-- 创建id为53140的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53140 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53141的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53141 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53142的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53142 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53143的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53143 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_53145(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_2"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53145(context, evt)
	-- 创建id为53146的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53146 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53147的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53147 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53148的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53148 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53149的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53149 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_53154(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_3"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53154(context, evt)
	-- 创建id为53150的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53150 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53151的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53151 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53152的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53152 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53153的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53153 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_53155(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_4"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53155(context, evt)
	-- 将configid为 53062 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53062, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53063 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53063, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53064 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53064, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53065 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53065, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_DownHill"