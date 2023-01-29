-- 基础信息
local base_info = {
	group_id = 133314001
}

-- Trigger变量
local defs = {
	alert_max_value = 1000,
	normal_sandworm_id = 1030,
	direct_sandworm_id = 1035
}

-- DEFS_MISCS
--沙虫区域的参数配置
local special_sandworm_region_defs = 
{
    [1005] = {alert_by_tick_normal = {20,50},alert_by_tick_sandstorm = {200,300}, sandworm_params_config_id = 11}
}

local default_sandworm_region_defs = 
{
    alert_by_tick_normal = {20,50},
	alert_by_tick_sandstorm = {200,300},
    sandworm_params_config_id = 1
}



local MetaRegions = 
{
    ["SandStorm_InnerRegion"] = {1003},
    ["SandStorm_MiddleRegion"] = {1002},
    ["SandStorm_OuterRegion"] = {1001,1007,1008,1031,1032},
    ["SandwormRegion"]  = {},
    ["SandwormHoleRegion"] = {}
}




local weather_region_config = 
{
    ["SandStorm_InnerRegion"] = {weather = 4205},
    ["SandStorm_MiddleRegion"] = {weather = 4204},
    ["SandStorm_OuterRegion"] = {weather = 4203}
}

local time_configs = 
{
    --玩家生涯第一次的沙尘暴启动cd
    ["SANDSTORM_START_CD_AXIS"] = 
    {
        ["SandStorm_InnerRegion"] = {min = 60,  max = 120},
        ["SandStorm_MiddleRegion"] ={min = 120, max = 180},
        ["SandStorm_OuterRegion"] = {min = 180, max = 240},
    },
    --沙尘暴时间配置
    ["SANDSTORM_TIME_AXIS"] = 
    {
        ["SandStorm_InnerRegion"] = {min = 240, max = 420},
        ["SandStorm_MiddleRegion"] ={min = 240, max = 360},
        ["SandStorm_OuterRegion"] = {min = 180, max = 300},
    },
    --沙尘暴CD配置
    ["SANDSTORM_CD_AXIS"] = 
    {
        ["SandStorm_InnerRegion"] = {min = 160, max = 300},
        ["SandStorm_MiddleRegion"] ={min = 160, max = 300},
        ["SandStorm_OuterRegion"] = {min = 180, max = 240},
    },
    --每次沙尘暴开启后的第一次沙虫启动cd
    ["SANDWORM_START_CD_AXIS"] = 
    {
        ["SandStorm_InnerRegion"] = {min = 1, max = 5},
        ["SandStorm_MiddleRegion"] ={min = 1, max = 10},
        ["SandStorm_OuterRegion"] = {min = 1, max = 15},
    },
    --沙虫的常规cd
    ["SANDWORM_CD_AXIS"] = 
    {
        ["SandStorm_InnerRegion"] = {min = 5, max = 10},
        ["SandStorm_MiddleRegion"] ={min = 10, max = 15},
        ["SandStorm_OuterRegion"] = {min = 15, max = 20},
    },
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
}

-- 区域
regions = {
	-- 外圈-1
	{ config_id = 1001, shape = RegionShape.POLYGON, pos = { x = -508.123, y = 255.000, z = 4857.147 }, height = 490.000, point_array = { { x = -855.811, y = 4508.596 }, { x = -646.434, y = 4522.203 }, { x = -499.270, y = 4562.880 }, { x = -407.981, y = 4580.635 }, { x = -278.129, y = 4639.046 }, { x = -213.770, y = 4760.750 }, { x = -160.436, y = 4933.895 }, { x = -166.096, y = 5007.681 }, { x = -266.055, y = 5205.699 } }, area_id = 32 },
	-- 中圈
	{ config_id = 1002, shape = RegionShape.POLYGON, pos = { x = -880.473, y = 168.115, z = 5194.771 }, height = 463.770, point_array = { { x = -1046.960, y = 4979.555 }, { x = -968.680, y = 4908.391 }, { x = -888.187, y = 4759.264 }, { x = -619.525, y = 4906.214 }, { x = -569.449, y = 4802.277 }, { x = -410.324, y = 5080.143 }, { x = -413.415, y = 5349.221 }, { x = -508.374, y = 5551.298 }, { x = -674.185, y = 5628.352 }, { x = -937.565, y = 5630.280 }, { x = -1134.270, y = 5523.702 }, { x = -1314.031, y = 5370.771 }, { x = -1350.622, y = 5252.869 }, { x = -1218.657, y = 5018.870 } }, area_id = 32 },
	-- 内圈
	{ config_id = 1003, shape = RegionShape.POLYGON, pos = { x = -860.994, y = 230.000, z = 5308.081 }, height = 340.000, point_array = { { x = -1069.840, y = 5104.756 }, { x = -1196.730, y = 5266.130 }, { x = -1097.417, y = 5511.977 }, { x = -812.375, y = 5605.940 }, { x = -573.290, y = 5512.756 }, { x = -525.257, y = 5215.729 }, { x = -631.836, y = 5035.077 }, { x = -913.967, y = 5010.221 } }, area_id = 32 },
	-- 外圈-2
	{ config_id = 1007, shape = RegionShape.POLYGON, pos = { x = -624.045, y = 265.000, z = 5027.310 }, height = 470.000, point_array = { { x = -1009.939, y = 4613.547 }, { x = -987.284, y = 4652.240 }, { x = -973.734, y = 4714.909 }, { x = -340.973, y = 5545.284 }, { x = -327.149, y = 5457.866 }, { x = -300.757, y = 5378.631 }, { x = -243.966, y = 5225.940 }, { x = -238.150, y = 5156.507 }, { x = -844.308, y = 4509.335 }, { x = -953.099, y = 4527.995 }, { x = -998.338, y = 4566.564 } }, area_id = 32 },
	-- 外圈-3
	{ config_id = 1008, shape = RegionShape.POLYGON, pos = { x = -748.309, y = 265.000, z = 5227.342 }, height = 470.000, point_array = { { x = -411.317, y = 5632.546 }, { x = -333.351, y = 5536.157 }, { x = -923.129, y = 4717.618 }, { x = -958.052, y = 4792.950 }, { x = -1017.419, y = 4806.103 }, { x = -1055.053, y = 4751.013 }, { x = -1111.246, y = 4739.393 }, { x = -1156.114, y = 4775.218 }, { x = -1163.268, y = 4819.556 }, { x = -982.719, y = 5721.248 }, { x = -857.110, y = 5737.065 }, { x = -636.775, y = 5729.088 } }, area_id = 32 },
	-- 外圈-4
	{ config_id = 1031, shape = RegionShape.POLYGON, pos = { x = -1159.342, y = 265.000, z = 5449.542 }, height = 470.000, point_array = { { x = -1093.660, y = 5830.167 }, { x = -855.070, y = 5634.970 }, { x = -1120.601, y = 5068.917 }, { x = -1463.614, y = 5181.556 }, { x = -1438.642, y = 5210.041 }, { x = -1452.191, y = 5274.783 }, { x = -1448.848, y = 5334.277 }, { x = -1427.661, y = 5444.188 }, { x = -1403.604, y = 5525.343 }, { x = -1378.550, y = 5587.546 }, { x = -1304.950, y = 5669.209 } }, area_id = 32 },
	-- 外圈-5
	{ config_id = 1032, shape = RegionShape.POLYGON, pos = { x = -1278.372, y = 265.000, z = 5018.829 }, height = 470.000, point_array = { { x = -1444.646, y = 5202.772 }, { x = -1025.912, y = 5073.185 }, { x = -1154.349, y = 4820.468 }, { x = -1239.166, y = 4830.190 }, { x = -1355.691, y = 4855.810 }, { x = -1472.362, y = 4949.248 }, { x = -1498.405, y = 4989.080 }, { x = -1496.094, y = 5030.316 }, { x = -1507.237, y = 5096.196 }, { x = -1530.831, y = 5139.600 }, { x = -1513.089, y = 5176.415 }, { x = -1513.244, y = 5201.298 }, { x = -1478.770, y = 5217.190 } }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 外圈-1
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 中圈
	{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 内圈
	{ config_id = 1001003, name = "ENTER_REGION_1003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 外圈-2
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 外圈-3
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 外圈-4
	{ config_id = 1001031, name = "ENTER_REGION_1031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 外圈-5
	{ config_id = 1001032, name = "ENTER_REGION_1032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 1001, 1002, 1003, 1007, 1008, 1031, 1032 },
		triggers = { "ENTER_REGION_1001", "ENTER_REGION_1002", "ENTER_REGION_1003", "ENTER_REGION_1007", "ENTER_REGION_1008", "ENTER_REGION_1031", "ENTER_REGION_1032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_4/SandstormControl"
require "V3_4/MetaRegion"
require "V3_4/WeatherWizardControl"
require "V3_4/SandwormManager"