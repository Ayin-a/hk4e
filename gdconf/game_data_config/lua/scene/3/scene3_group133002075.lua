-- 基础信息
local base_info = {
	group_id = 133002075
}

-- Trigger变量
local defs = {
	target_group = 133002146,
	monster_max_1 = 20,
	monster_max_2 = 4,
	monster_max_3 = 2
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75003, monster_id = 28020311, pos = { x = 1757.396, y = 257.861, z = -837.807 }, rot = { x = 0.000, y = 328.913, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75004, monster_id = 28020310, pos = { x = 1766.492, y = 255.825, z = -829.545 }, rot = { x = 0.000, y = 23.028, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75005, monster_id = 28020311, pos = { x = 1767.564, y = 248.279, z = -794.676 }, rot = { x = 0.000, y = 137.022, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75006, monster_id = 28020311, pos = { x = 1783.127, y = 250.249, z = -806.474 }, rot = { x = 0.000, y = 285.588, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75007, monster_id = 28020311, pos = { x = 1751.326, y = 254.329, z = -820.941 }, rot = { x = 0.000, y = 80.676, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75008, monster_id = 28020311, pos = { x = 1783.912, y = 253.728, z = -824.317 }, rot = { x = 0.000, y = 328.913, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75009, monster_id = 28020311, pos = { x = 1756.681, y = 255.509, z = -828.548 }, rot = { x = 0.000, y = 328.913, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75010, monster_id = 28020312, pos = { x = 1768.050, y = 256.357, z = -834.828 }, rot = { x = 0.000, y = 2.539, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75019, monster_id = 28020310, pos = { x = 1764.492, y = 248.604, z = -796.401 }, rot = { x = 0.000, y = 139.242, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75020, monster_id = 28020310, pos = { x = 1772.367, y = 246.603, z = -791.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75024, monster_id = 28020310, pos = { x = 1761.718, y = 251.221, z = -808.068 }, rot = { x = 0.000, y = 333.123, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75025, monster_id = 28020310, pos = { x = 1776.019, y = 247.641, z = -795.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75027, monster_id = 28020310, pos = { x = 1754.224, y = 253.002, z = -814.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75033, monster_id = 28020310, pos = { x = 1760.171, y = 252.509, z = -811.760 }, rot = { x = 0.000, y = 6.663, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75034, monster_id = 28020310, pos = { x = 1748.660, y = 254.732, z = -822.546 }, rot = { x = 0.000, y = 48.084, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75037, monster_id = 28020310, pos = { x = 1746.982, y = 252.321, z = -808.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75071, monster_id = 28020312, pos = { x = 1783.202, y = 252.963, z = -819.341 }, rot = { x = 0.000, y = 278.971, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75072, monster_id = 28020312, pos = { x = 1766.279, y = 247.227, z = -785.462 }, rot = { x = 0.000, y = 186.863, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75073, monster_id = 28020312, pos = { x = 1751.833, y = 250.081, z = -794.660 }, rot = { x = 0.000, y = 186.863, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75079, monster_id = 28020312, pos = { x = 1785.308, y = 251.404, z = -810.466 }, rot = { x = 0.000, y = 278.971, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75083, monster_id = 28020312, pos = { x = 1742.455, y = 252.623, z = -805.759 }, rot = { x = 0.000, y = 99.280, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75113, monster_id = 28020310, pos = { x = 1770.426, y = 255.555, z = -827.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75117, monster_id = 28020310, pos = { x = 1762.736, y = 248.467, z = -791.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75118, monster_id = 28020310, pos = { x = 1775.095, y = 254.147, z = -824.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75119, monster_id = 28020310, pos = { x = 1760.523, y = 249.453, z = -798.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75120, monster_id = 28020310, pos = { x = 1764.598, y = 257.253, z = -835.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75121, monster_id = 28020310, pos = { x = 1766.062, y = 247.791, z = -792.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75122, monster_id = 28020310, pos = { x = 1755.625, y = 252.062, z = -832.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75123, monster_id = 28020310, pos = { x = 1758.422, y = 254.633, z = -822.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75124, monster_id = 28020310, pos = { x = 1748.150, y = 255.623, z = -832.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75125, monster_id = 28020310, pos = { x = 1765.769, y = 255.439, z = -828.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75126, monster_id = 28020310, pos = { x = 1770.364, y = 256.768, z = -834.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75127, monster_id = 28020310, pos = { x = 1777.088, y = 251.080, z = -816.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75130, monster_id = 28020310, pos = { x = 1782.289, y = 252.694, z = -816.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75131, monster_id = 28020310, pos = { x = 1761.243, y = 255.711, z = -827.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75132, monster_id = 28020310, pos = { x = 1760.796, y = 256.483, z = -830.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 },
	{ config_id = 75135, monster_id = 28020310, pos = { x = 1751.264, y = 253.104, z = -814.689 }, rot = { x = 0.000, y = 187.661, z = 0.000 }, level = 80, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 第一根陷阱
	{ config_id = 75001, gadget_id = 70800230, pos = { x = 1771.418, y = 249.586, z = -803.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	-- 第一根陷阱
	{ config_id = 75018, gadget_id = 70800230, pos = { x = 1768.226, y = 253.042, z = -818.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	-- 第一根陷阱
	{ config_id = 75022, gadget_id = 70800230, pos = { x = 1753.776, y = 251.203, z = -803.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75036, gadget_id = 70710432, pos = { x = 1762.614, y = 249.521, z = -798.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75039, gadget_id = 70710432, pos = { x = 1759.413, y = 256.112, z = -830.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75040, gadget_id = 70710432, pos = { x = 1749.701, y = 253.216, z = -813.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75053, gadget_id = 70710432, pos = { x = 1772.195, y = 248.097, z = -797.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75055, gadget_id = 70950010, pos = { x = 1787.634, y = 244.103, z = -779.595 }, rot = { x = 1.994, y = 236.763, z = 359.581 }, level = 1, area_id = 3 },
	{ config_id = 75056, gadget_id = 70950010, pos = { x = 1777.193, y = 243.006, z = -776.052 }, rot = { x = 358.606, y = 341.388, z = 357.088 }, level = 1, area_id = 3 },
	{ config_id = 75057, gadget_id = 70950010, pos = { x = 1775.950, y = 244.250, z = -776.502 }, rot = { x = 358.606, y = 341.388, z = 357.088 }, level = 1, area_id = 3 },
	{ config_id = 75062, gadget_id = 70950010, pos = { x = 1763.090, y = 244.183, z = -780.831 }, rot = { x = 358.606, y = 341.388, z = 357.088 }, level = 1, area_id = 3 },
	{ config_id = 75063, gadget_id = 70800232, pos = { x = 1762.614, y = 250.195, z = -798.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75064, gadget_id = 70800232, pos = { x = 1759.413, y = 256.855, z = -830.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75065, gadget_id = 70800232, pos = { x = 1749.701, y = 253.859, z = -813.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75066, gadget_id = 70950011, pos = { x = 1742.799, y = 245.272, z = -787.693 }, rot = { x = 358.606, y = 341.388, z = 357.088 }, level = 1, area_id = 3 },
	{ config_id = 75067, gadget_id = 70950011, pos = { x = 1752.970, y = 244.726, z = -784.253 }, rot = { x = 358.606, y = 341.388, z = 357.088 }, level = 1, area_id = 3 },
	{ config_id = 75068, gadget_id = 70800232, pos = { x = 1772.195, y = 248.750, z = -797.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75069, gadget_id = 70800232, pos = { x = 1776.005, y = 252.189, z = -809.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75070, gadget_id = 70800232, pos = { x = 1763.431, y = 256.185, z = -827.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75074, gadget_id = 70950010, pos = { x = 1790.395, y = 244.139, z = -783.811 }, rot = { x = 1.994, y = 236.763, z = 359.581 }, level = 1, area_id = 3 },
	{ config_id = 75075, gadget_id = 70710432, pos = { x = 1776.005, y = 251.198, z = -809.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75077, gadget_id = 70710432, pos = { x = 1763.431, y = 255.260, z = -827.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75138, gadget_id = 70950011, pos = { x = 1750.174, y = 255.979, z = -838.486 }, rot = { x = 0.000, y = 70.832, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75139, gadget_id = 70950011, pos = { x = 1746.789, y = 255.979, z = -828.746 }, rot = { x = 0.000, y = 70.832, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75140, gadget_id = 70950011, pos = { x = 1741.203, y = 252.686, z = -812.677 }, rot = { x = 0.000, y = 70.832, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75141, gadget_id = 70950011, pos = { x = 1737.200, y = 251.745, z = -801.163 }, rot = { x = 0.000, y = 70.832, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75142, gadget_id = 70950011, pos = { x = 1762.225, y = 256.626, z = -842.571 }, rot = { x = 359.652, y = 145.498, z = 0.584 }, level = 1, area_id = 3 },
	{ config_id = 75143, gadget_id = 70950011, pos = { x = 1769.877, y = 256.531, z = -837.212 }, rot = { x = 359.652, y = 145.498, z = 0.584 }, level = 1, area_id = 3 },
	{ config_id = 75144, gadget_id = 70950011, pos = { x = 1780.590, y = 253.488, z = -829.947 }, rot = { x = 359.652, y = 145.498, z = 0.584 }, level = 1, area_id = 3 },
	{ config_id = 75145, gadget_id = 70950011, pos = { x = 1790.583, y = 246.936, z = -814.291 }, rot = { x = 0.000, y = 277.976, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 75146, gadget_id = 70950011, pos = { x = 1792.655, y = 246.936, z = -799.506 }, rot = { x = 0.000, y = 277.976, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 75011, shape = RegionShape.SPHERE, radius = 200, pos = { x = 1769.183, y = 259.326, z = -805.943 }, area_id = 3 }
}

-- 触发器
triggers = {
	-- 开启挑战的 待接入Gallery
	{ config_id = 1075002, name = "VARIABLE_CHANGE_75002", event = EventType.EVENT_VARIABLE_CHANGE, source = "start", condition = "condition_EVENT_VARIABLE_CHANGE_75002", action = "action_EVENT_VARIABLE_CHANGE_75002", trigger_count = 0 },
	{ config_id = 1075012, name = "TIME_AXIS_PASS_75012", event = EventType.EVENT_TIME_AXIS_PASS, source = "monster", condition = "condition_EVENT_TIME_AXIS_PASS_75012", action = "action_EVENT_TIME_AXIS_PASS_75012", trigger_count = 0 },
	{ config_id = 1075013, name = "TIME_AXIS_PASS_75013", event = EventType.EVENT_TIME_AXIS_PASS, source = "monster1", condition = "condition_EVENT_TIME_AXIS_PASS_75013", action = "action_EVENT_TIME_AXIS_PASS_75013", trigger_count = 0 },
	{ config_id = 1075014, name = "GADGET_STATE_CHANGE_75014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75014", action = "action_EVENT_GADGET_STATE_CHANGE_75014", trigger_count = 0 },
	{ config_id = 1075015, name = "TIME_AXIS_PASS_75015", event = EventType.EVENT_TIME_AXIS_PASS, source = "add", condition = "condition_EVENT_TIME_AXIS_PASS_75015", action = "action_EVENT_TIME_AXIS_PASS_75015", trigger_count = 0 },
	{ config_id = 1075016, name = "GADGET_STATE_CHANGE_75016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75016", action = "action_EVENT_GADGET_STATE_CHANGE_75016", trigger_count = 0 },
	{ config_id = 1075017, name = "GADGET_STATE_CHANGE_75017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75017", action = "action_EVENT_GADGET_STATE_CHANGE_75017", trigger_count = 0 },
	{ config_id = 1075021, name = "TIME_AXIS_PASS_75021", event = EventType.EVENT_TIME_AXIS_PASS, source = "trap", condition = "condition_EVENT_TIME_AXIS_PASS_75021", action = "action_EVENT_TIME_AXIS_PASS_75021", trigger_count = 0 },
	{ config_id = 1075023, name = "TIME_AXIS_PASS_75023", event = EventType.EVENT_TIME_AXIS_PASS, source = "trap", condition = "condition_EVENT_TIME_AXIS_PASS_75023", action = "action_EVENT_TIME_AXIS_PASS_75023", trigger_count = 0 },
	{ config_id = 1075026, name = "TIME_AXIS_PASS_75026", event = EventType.EVENT_TIME_AXIS_PASS, source = "trap", condition = "condition_EVENT_TIME_AXIS_PASS_75026", action = "action_EVENT_TIME_AXIS_PASS_75026", trigger_count = 0 },
	{ config_id = 1075029, name = "TIME_AXIS_PASS_75029", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75029", action = "action_EVENT_TIME_AXIS_PASS_75029", trigger_count = 0 },
	{ config_id = 1075031, name = "TIME_AXIS_PASS_75031", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75031", action = "action_EVENT_TIME_AXIS_PASS_75031", trigger_count = 0 },
	{ config_id = 1075032, name = "TIME_AXIS_PASS_75032", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75032", action = "action_EVENT_TIME_AXIS_PASS_75032", trigger_count = 0 },
	{ config_id = 1075035, name = "TIME_AXIS_PASS_75035", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75035", action = "action_EVENT_TIME_AXIS_PASS_75035", trigger_count = 0 },
	{ config_id = 1075038, name = "TIME_AXIS_PASS_75038", event = EventType.EVENT_TIME_AXIS_PASS, source = "Snow", condition = "condition_EVENT_TIME_AXIS_PASS_75038", action = "action_EVENT_TIME_AXIS_PASS_75038", trigger_count = 0 },
	{ config_id = 1075042, name = "TIME_AXIS_PASS_75042", event = EventType.EVENT_TIME_AXIS_PASS, source = "Snow", condition = "condition_EVENT_TIME_AXIS_PASS_75042", action = "action_EVENT_TIME_AXIS_PASS_75042", trigger_count = 0 },
	{ config_id = 1075043, name = "TIME_AXIS_PASS_75043", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75043", action = "action_EVENT_TIME_AXIS_PASS_75043", trigger_count = 0 },
	{ config_id = 1075045, name = "TIME_AXIS_PASS_75045", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75045", action = "action_EVENT_TIME_AXIS_PASS_75045", trigger_count = 0 },
	{ config_id = 1075046, name = "TIME_AXIS_PASS_75046", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75046", action = "action_EVENT_TIME_AXIS_PASS_75046", trigger_count = 0 },
	{ config_id = 1075047, name = "TIME_AXIS_PASS_75047", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75047", action = "action_EVENT_TIME_AXIS_PASS_75047", trigger_count = 0 },
	{ config_id = 1075048, name = "TIME_AXIS_PASS_75048", event = EventType.EVENT_TIME_AXIS_PASS, source = "trap", condition = "condition_EVENT_TIME_AXIS_PASS_75048", action = "action_EVENT_TIME_AXIS_PASS_75048", trigger_count = 0 },
	{ config_id = 1075049, name = "TIME_AXIS_PASS_75049", event = EventType.EVENT_TIME_AXIS_PASS, source = "trap", condition = "condition_EVENT_TIME_AXIS_PASS_75049", action = "action_EVENT_TIME_AXIS_PASS_75049", trigger_count = 0 },
	{ config_id = 1075050, name = "TIME_AXIS_PASS_75050", event = EventType.EVENT_TIME_AXIS_PASS, source = "trap", condition = "condition_EVENT_TIME_AXIS_PASS_75050", action = "action_EVENT_TIME_AXIS_PASS_75050", trigger_count = 0 },
	{ config_id = 1075051, name = "ANY_MONSTER_DIE_75051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75051", action = "action_EVENT_ANY_MONSTER_DIE_75051", trigger_count = 0 },
	{ config_id = 1075076, name = "TIME_AXIS_PASS_75076", event = EventType.EVENT_TIME_AXIS_PASS, source = "addSnow", condition = "condition_EVENT_TIME_AXIS_PASS_75076", action = "action_EVENT_TIME_AXIS_PASS_75076", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 75028, pos = { x = 1779.924, y = 247.316, z = -784.943 }, rot = { x = 0.000, y = 233.414, z = 0.000 }, area_id = 3 }
}

-- 变量
variables = {
	{ config_id = 3, name = "BoarSuite", value = 1, no_refresh = false },
	{ config_id = 11, name = "start", value = 0, no_refresh = false },
	{ config_id = 12, name = "change", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 75052, gadget_id = 70310148, pos = { x = 1762.614, y = 249.192, z = -798.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 75054, gadget_id = 70310148, pos = { x = 1759.413, y = 255.851, z = -830.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 75058, gadget_id = 70310148, pos = { x = 1749.701, y = 253.079, z = -813.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 75059, gadget_id = 70310148, pos = { x = 1772.195, y = 247.946, z = -797.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 75060, gadget_id = 70310148, pos = { x = 1776.005, y = 251.074, z = -809.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 75061, gadget_id = 70310148, pos = { x = 1763.431, y = 254.903, z = -827.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
	},
	triggers = {
		{ config_id = 1075030, name = "TIME_AXIS_PASS_75030", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75030", action = "action_EVENT_TIME_AXIS_PASS_75030", trigger_count = 0 },
		{ config_id = 1075041, name = "TIME_AXIS_PASS_75041", event = EventType.EVENT_TIME_AXIS_PASS, source = "Snow", condition = "condition_EVENT_TIME_AXIS_PASS_75041", action = "action_EVENT_TIME_AXIS_PASS_75041", trigger_count = 0 },
		{ config_id = 1075044, name = "TIME_AXIS_PASS_75044", event = EventType.EVENT_TIME_AXIS_PASS, source = "Reinforce", condition = "condition_EVENT_TIME_AXIS_PASS_75044", action = "action_EVENT_TIME_AXIS_PASS_75044", trigger_count = 0 }
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
		gadgets = { 75001, 75018, 75022 },
		regions = { 75011 },
		triggers = { "VARIABLE_CHANGE_75002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 时间轴监测用Suite 挑战开始加载,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_75012", "TIME_AXIS_PASS_75013", "GADGET_STATE_CHANGE_75014", "TIME_AXIS_PASS_75015", "GADGET_STATE_CHANGE_75016", "GADGET_STATE_CHANGE_75017", "TIME_AXIS_PASS_75021", "TIME_AXIS_PASS_75023", "TIME_AXIS_PASS_75026", "TIME_AXIS_PASS_75029", "TIME_AXIS_PASS_75031", "TIME_AXIS_PASS_75032", "TIME_AXIS_PASS_75035", "TIME_AXIS_PASS_75038", "TIME_AXIS_PASS_75042", "TIME_AXIS_PASS_75043", "TIME_AXIS_PASS_75045", "TIME_AXIS_PASS_75046", "TIME_AXIS_PASS_75047", "TIME_AXIS_PASS_75048", "TIME_AXIS_PASS_75049", "TIME_AXIS_PASS_75050", "ANY_MONSTER_DIE_75051", "TIME_AXIS_PASS_75076" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 空气墙,
		monsters = { },
		gadgets = { 75055, 75056, 75057, 75062, 75066, 75067, 75074, 75138, 75139, 75140, 75141, 75142, 75143, 75144, 75145, 75146 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 护盾球 一波,
		monsters = { },
		gadgets = { 75063, 75064, 75065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 护盾球 二波,
		monsters = { },
		gadgets = { 75068, 75069, 75070 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 75036, 75039, 75040 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 75053, 75075, 75077 },
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
function condition_EVENT_VARIABLE_CHANGE_75002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_75002(context, evt)
	-- 创建标识为"monster"，时间节点为{10}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monster", {10}, true)
	
	
	-- 创建标识为"monster1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monster1", {3}, false)
	
	
	-- 创建标识为"trap"，时间节点为{27,30,57,60,87,90}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "trap", {27,30,57,60,87,90}, false)
	
	
	-- 创建标识为"Reinforce"，时间节点为{7,12,20,25,37,42,67,72,97,102}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Reinforce", {7,12,20,25,37,42,67,72,97,102}, false)
	
	
	-- 创建标识为"Snow"，时间节点为{33,60,93}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Snow", {33,60,93}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75012(context, evt)
	if "monster" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75012(context, evt)
	-- 将本组内变量名为 "create_monster_1" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "create_monster_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75013(context, evt)
	if "monster1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75013(context, evt)
	-- 将本组内变量名为 "create_monster_1" 的变量设置为 10
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_1", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "create_monster_2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_75014(context, evt)
	if 75001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_75014(context, evt)
	-- 创建标识为"add"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "add", {5}, false)
	
	
	-- 暂停标识为"monster"的时间轴
	ScriptLib.PauseTimeAxis(context, "monster")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75015(context, evt)
	if "add" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75015(context, evt)
	-- 将本组内变量名为 "create_monster_1" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_1", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "create_monster_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 重启标识为"monster"的时间轴
	ScriptLib.ContinueTimeAxis(context, "monster")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_75016(context, evt)
	if 75018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_75016(context, evt)
	-- 创建标识为"add"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "add", {5}, false)
	
	
	-- 暂停标识为"monster"的时间轴
	ScriptLib.PauseTimeAxis(context, "monster")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_75017(context, evt)
	if 75022 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_75017(context, evt)
	-- 创建标识为"add"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "add", {5}, false)
	
	
	-- 暂停标识为"monster"的时间轴
	ScriptLib.PauseTimeAxis(context, "monster")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75021(context, evt)
	if "trap" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75021(context, evt)
	math.randomseed(os.time())
	local t = math.random(3)
	if t == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,75001,201)
	end
	if t == 2 then
		ScriptLib.SetGadgetStateByConfigId(context,75018,201)
	end
	if t == 3 then
		ScriptLib.SetGadgetStateByConfigId(context,75022,201)
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75023(context, evt)
	if "trap" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75023(context, evt)
	math.randomseed(os.time())
	local t = math.random(3)
	if t == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,75001,201)
	end
	if t == 2 then
		ScriptLib.SetGadgetStateByConfigId(context,75018,201)
	end
	if t == 3 then
		ScriptLib.SetGadgetStateByConfigId(context,75022,201)
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75026(context, evt)
	if "trap" ~= evt.source_name or 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75026(context, evt)
	math.randomseed(os.time())
	local t = math.random(3)
	if t == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,75001,201)
		ScriptLib.SetGadgetStateByConfigId(context,75018,201)
	end
	if t == 2 then
		ScriptLib.SetGadgetStateByConfigId(context,75018,201)
		ScriptLib.SetGadgetStateByConfigId(context,75022,201)
	end
	if t == 3 then
		ScriptLib.SetGadgetStateByConfigId(context,75022,201)
		ScriptLib.SetGadgetStateByConfigId(context,75001,201)
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75029(context, evt)
	if "Reinforce" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75029(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133002075, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002075, 6)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75031(context, evt)
	if "Reinforce" ~= evt.source_name or 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75031(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133002075, 4)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002075, 7)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75032(context, evt)
	if "Reinforce" ~= evt.source_name or 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002075, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75035(context, evt)
	if "Reinforce" ~= evt.source_name or 10 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75035(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133002075, 4)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002075, 7)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75038(context, evt)
	if "Snow" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75038(context, evt)
	-- 调用提示id为 400187 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_monster_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75042(context, evt)
	if "Snow" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75042(context, evt)
	-- 调用提示id为 400187 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_monster_3" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "change" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75043(context, evt)
	if "Reinforce" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75043(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75045(context, evt)
	if "Reinforce" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75045(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75046(context, evt)
	if "Reinforce" ~= evt.source_name or 7 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75046(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75047(context, evt)
	if "Reinforce" ~= evt.source_name or 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75047(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002075, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75048(context, evt)
	if "trap" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75048(context, evt)
	-- 调用提示id为 400189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75049(context, evt)
	if "trap" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75049(context, evt)
	-- 调用提示id为 400189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75050(context, evt)
	if "trap" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75050(context, evt)
	-- 调用提示id为 400189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_75051(context, evt)
	if 75010 ~= evt.param1 and 75079 ~= evt.param1 and 75083 ~= evt.param1 and 75071 ~= evt.param1 and 75072 ~= evt.param1 and 75073 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_75051(context, evt)
	-- 创建标识为"addSnow"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "addSnow", {15}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_75076(context, evt)
	if "addSnow" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change"为0
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_75076(context, evt)
	-- 调用提示id为 400187 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_monster_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_monster_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/Activity_Hunt_Stage_2"