-- 基础信息
local base_info = {
	group_id = 133003568
}

-- Trigger变量
local defs = {
	sum = 30
}

-- DEFS_MISCS
function LF_random_gadgetId()
	local a = 70330024
	a = a + math.random(1,14)
	return a
end

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
	{ config_id = 568002, gadget_id = 70330030, pos = { x = 2362.521, y = 290.423, z = -1718.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 568003, gadget_id = 70330028, pos = { x = 2379.478, y = 283.899, z = -1736.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568004, gadget_id = 70330032, pos = { x = 2374.196, y = 283.899, z = -1721.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568005, gadget_id = 70330025, pos = { x = 2374.736, y = 283.899, z = -1727.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568006, gadget_id = 70330030, pos = { x = 2383.900, y = 283.899, z = -1731.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568007, gadget_id = 70330027, pos = { x = 2380.587, y = 283.899, z = -1720.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568008, gadget_id = 70330031, pos = { x = 2373.602, y = 283.899, z = -1711.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568009, gadget_id = 70330026, pos = { x = 2363.854, y = 283.898, z = -1714.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568010, gadget_id = 70330030, pos = { x = 2349.499, y = 283.898, z = -1710.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568011, gadget_id = 70330027, pos = { x = 2354.634, y = 283.898, z = -1720.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568012, gadget_id = 70330031, pos = { x = 2345.687, y = 283.898, z = -1717.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568013, gadget_id = 70330025, pos = { x = 2339.327, y = 283.898, z = -1713.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568014, gadget_id = 70330029, pos = { x = 2335.040, y = 283.898, z = -1708.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568015, gadget_id = 70330027, pos = { x = 2344.373, y = 283.898, z = -1703.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568016, gadget_id = 70330032, pos = { x = 2326.622, y = 284.508, z = -1710.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568017, gadget_id = 70330037, pos = { x = 2320.692, y = 285.691, z = -1716.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568018, gadget_id = 70330030, pos = { x = 2325.847, y = 285.570, z = -1728.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568019, gadget_id = 70330027, pos = { x = 2331.079, y = 285.050, z = -1742.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568020, gadget_id = 70330031, pos = { x = 2323.482, y = 294.716, z = -1744.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568021, gadget_id = 70330026, pos = { x = 2321.133, y = 292.414, z = -1741.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568022, gadget_id = 70330029, pos = { x = 2308.181, y = 293.736, z = -1712.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568023, gadget_id = 70330028, pos = { x = 2310.350, y = 292.774, z = -1715.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568024, gadget_id = 70330031, pos = { x = 2313.307, y = 285.686, z = -1724.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568025, gadget_id = 70330037, pos = { x = 2309.382, y = 285.529, z = -1730.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568026, gadget_id = 70330030, pos = { x = 2312.603, y = 285.583, z = -1737.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568027, gadget_id = 70330027, pos = { x = 2327.052, y = 285.646, z = -1751.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568028, gadget_id = 70330032, pos = { x = 2334.463, y = 285.644, z = -1758.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568029, gadget_id = 70330037, pos = { x = 2345.098, y = 283.898, z = -1750.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568030, gadget_id = 70330029, pos = { x = 2345.418, y = 283.898, z = -1766.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568031, gadget_id = 70330028, pos = { x = 2354.355, y = 283.898, z = -1754.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568032, gadget_id = 70330031, pos = { x = 2354.010, y = 283.701, z = -1741.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568033, gadget_id = 70330027, pos = { x = 2362.626, y = 283.898, z = -1733.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568034, gadget_id = 70330030, pos = { x = 2352.089, y = 283.898, z = -1727.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568035, gadget_id = 70330028, pos = { x = 2362.051, y = 287.550, z = -1753.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568036, gadget_id = 70330031, pos = { x = 2355.268, y = 286.377, z = -1765.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568037, gadget_id = 70330025, pos = { x = 2366.083, y = 283.898, z = -1762.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568038, gadget_id = 70330029, pos = { x = 2375.170, y = 283.898, z = -1755.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568039, gadget_id = 70330028, pos = { x = 2381.161, y = 283.899, z = -1748.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568040, gadget_id = 70330032, pos = { x = 2378.071, y = 283.899, z = -1741.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568041, gadget_id = 70330026, pos = { x = 2362.814, y = 291.040, z = -1699.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568042, gadget_id = 70330029, pos = { x = 2370.762, y = 291.040, z = -1702.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568043, gadget_id = 70330027, pos = { x = 2386.612, y = 290.980, z = -1717.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568044, gadget_id = 70330032, pos = { x = 2389.815, y = 290.980, z = -1725.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568045, gadget_id = 70330037, pos = { x = 2390.213, y = 291.040, z = -1747.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568046, gadget_id = 70330029, pos = { x = 2387.182, y = 291.040, z = -1754.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568047, gadget_id = 70330028, pos = { x = 2371.726, y = 291.120, z = -1770.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568048, gadget_id = 70330032, pos = { x = 2398.008, y = 289.882, z = -1736.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568049, gadget_id = 70330027, pos = { x = 2390.495, y = 289.923, z = -1762.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568050, gadget_id = 70330029, pos = { x = 2390.323, y = 290.938, z = -1768.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568051, gadget_id = 70330028, pos = { x = 2397.026, y = 291.919, z = -1763.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568052, gadget_id = 70330031, pos = { x = 2389.541, y = 292.945, z = -1776.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568067, gadget_id = 70330027, pos = { x = 2389.301, y = 289.892, z = -1710.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568068, gadget_id = 70330032, pos = { x = 2401.542, y = 297.782, z = -1714.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568069, gadget_id = 70330026, pos = { x = 2394.880, y = 288.892, z = -1738.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568070, gadget_id = 70330029, pos = { x = 2402.819, y = 291.892, z = -1747.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568078, gadget_id = 70330029, pos = { x = 2394.911, y = 288.892, z = -1735.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568079, gadget_id = 70330027, pos = { x = 2384.359, y = 288.897, z = -1763.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568080, gadget_id = 70330031, pos = { x = 2376.085, y = 288.895, z = -1771.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568081, gadget_id = 70330036, pos = { x = 2379.400, y = 291.978, z = -1780.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568082, gadget_id = 70330029, pos = { x = 2378.416, y = 290.971, z = -1777.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568083, gadget_id = 70330027, pos = { x = 2384.785, y = 292.958, z = -1780.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568084, gadget_id = 70330032, pos = { x = 2384.363, y = 291.966, z = -1777.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568085, gadget_id = 70330037, pos = { x = 2380.932, y = 292.983, z = -1782.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568086, gadget_id = 70330029, pos = { x = 2398.368, y = 292.925, z = -1765.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568087, gadget_id = 70330027, pos = { x = 2393.271, y = 290.923, z = -1763.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568088, gadget_id = 70330031, pos = { x = 2385.100, y = 289.938, z = -1768.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568089, gadget_id = 70330038, pos = { x = 2387.724, y = 288.898, z = -1758.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568090, gadget_id = 70330030, pos = { x = 2377.549, y = 289.965, z = -1774.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568091, gadget_id = 70330028, pos = { x = 2393.328, y = 291.964, z = -1770.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568092, gadget_id = 70330031, pos = { x = 2391.627, y = 293.961, z = -1778.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568093, gadget_id = 70330036, pos = { x = 2396.548, y = 293.947, z = -1773.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568094, gadget_id = 70330029, pos = { x = 2400.904, y = 293.927, z = -1767.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568095, gadget_id = 70330027, pos = { x = 2402.972, y = 291.892, z = -1727.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568096, gadget_id = 70330031, pos = { x = 2405.606, y = 292.892, z = -1722.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568097, gadget_id = 70330037, pos = { x = 2399.018, y = 290.892, z = -1723.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568098, gadget_id = 70330029, pos = { x = 2394.354, y = 288.892, z = -1742.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568099, gadget_id = 70330028, pos = { x = 2378.311, y = 288.158, z = -1702.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568100, gadget_id = 70330031, pos = { x = 2387.594, y = 289.892, z = -1707.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568101, gadget_id = 70330037, pos = { x = 2390.397, y = 291.820, z = -1715.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568102, gadget_id = 70330029, pos = { x = 2360.825, y = 288.892, z = -1696.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568103, gadget_id = 70330027, pos = { x = 2341.566, y = 283.898, z = -1709.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568104, gadget_id = 70330037, pos = { x = 2341.501, y = 283.898, z = -1736.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 568105, gadget_id = 70330027, pos = { x = 2354.156, y = 283.898, z = -1757.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568106, gadget_id = 70330027, pos = { x = 2374.634, y = 283.898, z = -1757.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568107, gadget_id = 70330027, pos = { x = 2348.496, y = 283.701, z = -1724.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568108, gadget_id = 70330027, pos = { x = 2335.855, y = 283.900, z = -1747.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568109, gadget_id = 70330027, pos = { x = 2347.601, y = 283.898, z = -1767.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568110, gadget_id = 70330027, pos = { x = 2341.154, y = 283.898, z = -1713.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568111, gadget_id = 70330027, pos = { x = 2356.963, y = 283.898, z = -1711.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568112, gadget_id = 70330031, pos = { x = 2348.951, y = 283.898, z = -1754.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568113, gadget_id = 70330031, pos = { x = 2357.583, y = 283.898, z = -1757.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568114, gadget_id = 70330031, pos = { x = 2333.764, y = 283.898, z = -1727.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568115, gadget_id = 70330031, pos = { x = 2341.463, y = 283.898, z = -1713.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568116, gadget_id = 70330031, pos = { x = 2355.123, y = 283.898, z = -1716.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568117, gadget_id = 70330031, pos = { x = 2373.473, y = 283.899, z = -1721.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568118, gadget_id = 70330031, pos = { x = 2381.875, y = 283.898, z = -1743.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568119, gadget_id = 70330031, pos = { x = 2366.352, y = 283.878, z = -1707.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568120, gadget_id = 70330025, pos = { x = 2387.201, y = 283.899, z = -1750.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568121, gadget_id = 70330025, pos = { x = 2322.344, y = 285.570, z = -1735.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568122, gadget_id = 70330025, pos = { x = 2334.704, y = 285.644, z = -1760.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568123, gadget_id = 70330025, pos = { x = 2355.878, y = 284.492, z = -1776.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568124, gadget_id = 70330025, pos = { x = 2349.507, y = 283.701, z = -1722.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568125, gadget_id = 70330025, pos = { x = 2366.349, y = 283.917, z = -1722.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568126, gadget_id = 70330025, pos = { x = 2378.054, y = 283.899, z = -1739.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568127, gadget_id = 70330025, pos = { x = 2379.522, y = 283.899, z = -1713.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568128, gadget_id = 70330025, pos = { x = 2343.088, y = 283.898, z = -1710.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568129, gadget_id = 70330025, pos = { x = 2331.302, y = 284.075, z = -1724.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 568130, gadget_id = 70330025, pos = { x = 2325.686, y = 285.580, z = -1729.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1568001, name = "GROUP_REFRESH_568001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_568001", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_568001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_568001(context, evt)
	if #gadgets < defs.sum then
		return -1
	end
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1,5))
	local temp_arr1 = {}
	local temp_arr2 = {}
	--configId序列
	local fin_arr1 = {}
	--pos序列
	local fin_arr2 = {}
	for i = 1,#gadgets do
		temp_arr1[i] = i
		temp_arr2[i] = i
	end
	for i = 1,defs.sum do
		local j = math.random(1,#temp_arr1)
		local k = math.random(1,#temp_arr2)
		fin_arr1[i] = temp_arr1[j]
		fin_arr2[i] = temp_arr2[k]
		table.remove(temp_arr1, j)
		table.remove(temp_arr2, k)
		ScriptLib.CreateGadgetByConfigIdByPos(context, gadgets[fin_arr1[i]].config_id, gadgets[fin_arr2[i]].pos, gadgets[fin_arr2[i]].rot)
	end
	return 0
end