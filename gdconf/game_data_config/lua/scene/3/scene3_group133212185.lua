-- 基础信息
local base_info = {
	group_id = 133212185
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 185003, monster_id = 20011001, pos = { x = -3979.201, y = 201.397, z = -2282.598 }, rot = { x = 0.000, y = 191.877, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
	{ config_id = 185004, monster_id = 20011001, pos = { x = -3976.687, y = 201.232, z = -2283.327 }, rot = { x = 0.000, y = 191.877, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
	{ config_id = 185005, monster_id = 20010801, pos = { x = -4007.176, y = 223.080, z = -2313.577 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
	{ config_id = 185006, monster_id = 20010801, pos = { x = -4009.572, y = 222.865, z = -2311.198 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
	{ config_id = 185067, monster_id = 20010801, pos = { x = -4009.463, y = 223.107, z = -2314.917 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
	{ config_id = 185068, monster_id = 20010801, pos = { x = -4011.573, y = 223.243, z = -2313.187 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
	{ config_id = 185069, monster_id = 20011001, pos = { x = -3979.651, y = 201.280, z = -2285.033 }, rot = { x = 0.000, y = 191.877, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
	{ config_id = 185070, monster_id = 20011001, pos = { x = -3976.903, y = 201.381, z = -2285.817 }, rot = { x = 0.000, y = 191.877, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 185007, gadget_id = 70350083, pos = { x = -3944.704, y = 200.227, z = -2257.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 185008, gadget_id = 70360025, pos = { x = -3976.652, y = 200.161, z = -2443.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185009, gadget_id = 70710126, pos = { x = -3972.346, y = 202.167, z = -2245.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185010, gadget_id = 70290150, pos = { x = -3977.211, y = 215.056, z = -2280.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185011, gadget_id = 70710126, pos = { x = -3977.620, y = 201.191, z = -2284.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185012, gadget_id = 70290150, pos = { x = -3978.083, y = 212.963, z = -2283.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185013, gadget_id = 70710126, pos = { x = -4008.945, y = 223.428, z = -2313.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185014, gadget_id = 70290150, pos = { x = -3978.083, y = 209.987, z = -2283.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185016, gadget_id = 70290150, pos = { x = -3973.257, y = 214.731, z = -2274.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185017, gadget_id = 70360024, pos = { x = -3972.346, y = 202.167, z = -2245.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185025, gadget_id = 70900380, pos = { x = -3968.148, y = 213.300, z = -2266.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185027, gadget_id = 70900380, pos = { x = -3984.651, y = 207.963, z = -2291.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185029, gadget_id = 70900380, pos = { x = -4012.120, y = 226.020, z = -2322.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185030, gadget_id = 70900380, pos = { x = -3951.855, y = 205.911, z = -2258.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185031, gadget_id = 70290150, pos = { x = -3978.083, y = 205.394, z = -2283.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185032, gadget_id = 70900380, pos = { x = -3960.916, y = 209.199, z = -2259.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185033, gadget_id = 70290150, pos = { x = -3989.327, y = 214.239, z = -2292.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185034, gadget_id = 70290150, pos = { x = -3996.627, y = 222.817, z = -2302.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185035, gadget_id = 70290150, pos = { x = -4003.043, y = 229.110, z = -2308.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185036, gadget_id = 70290150, pos = { x = -4008.946, y = 226.455, z = -2313.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185037, gadget_id = 70900380, pos = { x = -3974.065, y = 213.781, z = -2275.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185038, gadget_id = 70290150, pos = { x = -4013.986, y = 227.729, z = -2323.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185039, gadget_id = 70290150, pos = { x = -4017.436, y = 229.499, z = -2331.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185040, gadget_id = 70290150, pos = { x = -4014.224, y = 231.951, z = -2336.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185041, gadget_id = 70290150, pos = { x = -4017.038, y = 235.642, z = -2346.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185042, gadget_id = 70900380, pos = { x = -3992.519, y = 215.216, z = -2294.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185043, gadget_id = 70290150, pos = { x = -4017.945, y = 235.477, z = -2355.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185044, gadget_id = 70900380, pos = { x = -3996.453, y = 221.548, z = -2301.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185045, gadget_id = 70290150, pos = { x = -4011.644, y = 229.956, z = -2373.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185046, gadget_id = 70290150, pos = { x = -4004.585, y = 231.469, z = -2393.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185047, gadget_id = 70290150, pos = { x = -3995.371, y = 227.908, z = -2399.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185048, gadget_id = 70900380, pos = { x = -4016.034, y = 231.222, z = -2335.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185049, gadget_id = 70290150, pos = { x = -3991.740, y = 225.407, z = -2404.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185050, gadget_id = 70290150, pos = { x = -3984.081, y = 217.025, z = -2420.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185052, gadget_id = 70900380, pos = { x = -4017.182, y = 235.027, z = -2348.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185053, gadget_id = 70290150, pos = { x = -3996.254, y = 217.694, z = -2296.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185054, gadget_id = 70290150, pos = { x = -4016.713, y = 234.587, z = -2358.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185055, gadget_id = 70290150, pos = { x = -4015.439, y = 233.487, z = -2361.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185056, gadget_id = 70290150, pos = { x = -4014.342, y = 232.523, z = -2365.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185057, gadget_id = 70290150, pos = { x = -4000.791, y = 230.232, z = -2396.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185058, gadget_id = 70290150, pos = { x = -3983.643, y = 215.436, z = -2424.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185062, gadget_id = 70900380, pos = { x = -4004.023, y = 229.201, z = -2388.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185065, gadget_id = 70900380, pos = { x = -3990.895, y = 224.428, z = -2406.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185073, gadget_id = 70900380, pos = { x = -4000.977, y = 227.770, z = -2306.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185074, gadget_id = 70330064, pos = { x = -3977.230, y = 201.695, z = -2288.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 13 },
	{ config_id = 185075, gadget_id = 70330064, pos = { x = -4000.548, y = 227.371, z = -2383.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 13 },
	{ config_id = 185076, gadget_id = 70290150, pos = { x = -3985.722, y = 218.753, z = -2416.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185077, gadget_id = 70900380, pos = { x = -3981.505, y = 210.281, z = -2431.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185080, gadget_id = 70290150, pos = { x = -3956.188, y = 207.760, z = -2256.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185081, gadget_id = 70710126, pos = { x = -3972.346, y = 202.167, z = -2245.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185082, gadget_id = 70290150, pos = { x = -3962.363, y = 211.393, z = -2261.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185083, gadget_id = 70290150, pos = { x = -3967.160, y = 213.534, z = -2265.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185084, gadget_id = 70290150, pos = { x = -3970.787, y = 214.973, z = -2269.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 185085, gadget_id = 70330064, pos = { x = -3944.877, y = 200.421, z = -2262.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 13 },
	{ config_id = 185086, gadget_id = 70330064, pos = { x = -3976.119, y = 201.046, z = -2250.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 13 },
	{ config_id = 185087, gadget_id = 70330064, pos = { x = -4005.333, y = 223.530, z = -2319.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 185023, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3976.687, y = 200.158, z = -2443.260 }, area_id = 13 },
	{ config_id = 185024, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3972.346, y = 202.167, z = -2245.833 }, area_id = 13 },
	{ config_id = 185026, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3977.634, y = 201.191, z = -2284.602 }, area_id = 13 },
	{ config_id = 185028, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4008.964, y = 223.428, z = -2313.472 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1185020, name = "SELECT_OPTION_185020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_185020", action = "action_EVENT_SELECT_OPTION_185020", trigger_count = 0 },
	{ config_id = 1185021, name = "CHALLENGE_SUCCESS_185021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_185021" },
	{ config_id = 1185022, name = "CHALLENGE_FAIL_185022", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_185022", trigger_count = 0 },
	{ config_id = 1185023, name = "ENTER_REGION_185023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185023", action = "action_EVENT_ENTER_REGION_185023", trigger_count = 0, tag = "888" },
	{ config_id = 1185024, name = "ENTER_REGION_185024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185024", action = "action_EVENT_ENTER_REGION_185024" },
	{ config_id = 1185026, name = "ENTER_REGION_185026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185026", action = "action_EVENT_ENTER_REGION_185026" },
	{ config_id = 1185028, name = "ENTER_REGION_185028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185028", action = "action_EVENT_ENTER_REGION_185028" },
	{ config_id = 1185051, name = "ANY_GADGET_DIE_185051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_185051", action = "action_EVENT_ANY_GADGET_DIE_185051", trigger_count = 0 },
	{ config_id = 1185078, name = "GADGET_CREATE_185078", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_185078", action = "action_EVENT_GADGET_CREATE_185078", trigger_count = 0 },
	{ config_id = 1185079, name = "ANY_MONSTER_DIE_185079", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_185079", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 185001, monster_id = 20011201, pos = { x = -3970.200, y = 201.939, z = -2246.866 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
		{ config_id = 185002, monster_id = 20011201, pos = { x = -3971.431, y = 202.639, z = -2243.845 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
		{ config_id = 185071, monster_id = 20011201, pos = { x = -3973.673, y = 201.529, z = -2247.942 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 },
		{ config_id = 185072, monster_id = 20011201, pos = { x = -3974.911, y = 202.158, z = -2244.922 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 13 }
	},
	gadgets = {
		{ config_id = 185015, gadget_id = 70710126, pos = { x = -3976.652, y = 200.161, z = -2443.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 185018, gadget_id = 70360024, pos = { x = -3977.620, y = 201.191, z = -2284.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 185019, gadget_id = 70360024, pos = { x = -4008.945, y = 223.428, z = -2313.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 }
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
	end_suite = 3,
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
		-- description = 起点,
		monsters = { },
		gadgets = { 185007 },
		regions = { },
		triggers = { "SELECT_OPTION_185020", "CHALLENGE_SUCCESS_185021", "CHALLENGE_FAIL_185022", "ANY_GADGET_DIE_185051", "GADGET_CREATE_185078", "ANY_MONSTER_DIE_185079" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 185008, 185029, 185038, 185039, 185040, 185041, 185043, 185045, 185046, 185047, 185048, 185049, 185050, 185052, 185054, 185055, 185056, 185057, 185058, 185062, 185065, 185075, 185076, 185077, 185087 },
		regions = { 185023 },
		triggers = { "ENTER_REGION_185023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点1,
		monsters = { },
		gadgets = { 185016, 185030, 185032, 185080, 185082, 185083, 185085 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { },
		gadgets = { 185010, 185011, 185012, 185014, 185025, 185031, 185037, 185084 },
		regions = { 185026 },
		triggers = { "ENTER_REGION_185026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 185013, 185027, 185033, 185034, 185035, 185036, 185042, 185044, 185053, 185073, 185074 },
		regions = { 185028 },
		triggers = { "ENTER_REGION_185028" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = monster1,
		monsters = { 185003, 185004, 185069, 185070 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = monster2,
		monsters = { 185005, 185006, 185067, 185068 },
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
function condition_EVENT_SELECT_OPTION_185020(context, evt)
	-- 判断是gadgetid 185007 option_id 175
	if 185007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_185020(context, evt)
	-- 开启操作台时确认当前有没有其他稻妻试炼的飞雷核挑战在进行
	if 0 ~= ScriptLib.GetGroupTempValue(context, "ElectricCorePlayHasStarted", {}) then
	    ScriptLib.ShowReminder(context, 400046)
	    return 0
	end
	
	        if true == ScriptLib.CheckIsInMpMode(context) then
	                ScriptLib.ShowReminder(context, 400053)
	                return -1
	        end
	
	
	-- 删除指定group： 133220053 ；指定config：53025；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212185, 185007, 175) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		  return -1
	  end
	  
	  -- 将configid为 53025 的物件更改为状态 GadgetState.GearStart
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185007, GadgetState.GearStart) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			  return -1
		  end 
	
	
	-- 创建编号为111167父挑战，indexID为101
	if 0 ~= ScriptLib.CreateFatherChallenge(context, 101, 111167, 60, {success = 1, fail = 1, fail_on_wipe=true}) then
		return -1
	end
	
	
	-- 创建编号为201的子挑战：无用子挑战
	if 0 ~= ScriptLib.AttachChildChallenge(context, 101, 201, 111172, {999,4,53024,1},{},{success=0,fail=0}) then
		return -1
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 101) then
		return -1
	end
	
	-- 挑战开启将'ElectricCorePlayHasStarted'改为1
	local challenge_groups = {133220053,133220172,133212361,133212185,133212183,133212033}
	    for k,grp_id in pairs(challenge_groups) do
	                ScriptLib.SetGroupTempValue(context, "ElectricCorePlayHasStarted", 1, {group_id = grp_id})
	    end
	
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetGroupTempValue(context, "optimize_"..uid_list[1], 1, { group_id = 133212185})
	ScriptLib.SetPlayerGroupVisionType(context, {uid_list[1]}, {0})
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200531") then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	return -1
	end
	
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212185, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212185, 5)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212185, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_185021(context, evt)
	-- 挑战结束将'ElectricCorePlayHasStarted'改为0
	local challenge_groups = {133220053,133220172,133212361,133212185,133212183,133212033}
	    for k,grp_id in pairs(challenge_groups) do
	                ScriptLib.SetGroupTempValue(context, "ElectricCorePlayHasStarted", 0, {group_id = grp_id})
	    end
	
	
	local uid_list = ScriptLib.GetSceneUidList(context)
	        ScriptLib.SetGroupTempValue(context, "optimize_"..uid_list[1], 0, { group_id = 133212185})
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212185, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_185022(context, evt)
	-- 挑战结束将'ElectricCorePlayHasStarted'改为0
	local challenge_groups = {133220053,133220172,133212361,133212185,133212183,133212033}
	    for k,grp_id in pairs(challenge_groups) do
	                ScriptLib.SetGroupTempValue(context, "ElectricCorePlayHasStarted", 0, {group_id = grp_id})
	    end
	
	
	local uid_list = ScriptLib.GetSceneUidList(context)
	        ScriptLib.SetGroupTempValue(context, "optimize_"..uid_list[1], 0, { group_id = 133212185})
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212185, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185023(context, evt)
	if evt.param1 ~= 185023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185023(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185024(context, evt)
	if evt.param1 ~= 185024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 185009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 185017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212185, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212185, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185026(context, evt)
	if evt.param1 ~= 185026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185026(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212185, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212185, 8)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212185, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212185, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185028(context, evt)
	if evt.param1 ~= 185028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185028(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212185, 2)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212185, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_185051(context, evt)
	
	if (185083~= evt.param1) and (185084~= evt.param1) and (185050~= evt.param1) and (185080~= evt.param1) and (185082~= evt.param1) and (185038~= evt.param1) and (185039~= evt.param1) and (185040~= evt.param1) and (185034~= evt.param1) and (185035~= evt.param1) and (185036~= evt.param1) and (185046~= evt.param1) and (185047~= evt.param1) and (185049~= evt.param1) and (185041~= evt.param1) and (185043~= evt.param1) and (185045~= evt.param1) and (185016~= evt.param1) and (185031~= evt.param1) and (185033~= evt.param1) and (185010~= evt.param1) and (185012~= evt.param1) and (185014~= evt.param1) and (185054~= evt.param1) and (185056~= evt.param1) and (185053~= evt.param1) and (185057~= evt.param1) and (185058~= evt.param1) and (185055~= evt.param1) and (185076~= evt.param1)
	
	then
	  return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_185051(context, evt)
	-- 增加时间
	  ScriptLib.ModifyFatherChallengeProperty(context, 101, FatherChallengeProperty.DURATION, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_185078(context, evt)
	if 185007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_185078(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212185, 185007, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_185079(context, evt)
	-- 增加时间
	  ScriptLib.ModifyFatherChallengeProperty(context, 101, FatherChallengeProperty.DURATION, 5)
	
	return 0
end

require "V2_0/ElectricCore"