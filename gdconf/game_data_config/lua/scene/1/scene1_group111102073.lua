-- 基础信息
local base_info = {
	group_id = 111102073
}

-- DEFS_MISCS
local defs = 
{
	
    challenge_id = 2010057,

    starter_option_id = 175,
    dig_option_id = 39,
    energy_ball_suite = 10,

}

local play_stage =
{
    [1] = 
    {
        gallery_id = 26000,
        challenge_time = 180, 
        
        element_target = 3,
        starter_operator_configID = 73010,
        dig_operator_configID = 73014,

        starter_operator_suite = 2,
        level_suite = 3,
        dig_operator_suite = 4,
        treasure_suite = 5,
    },

    [2] = 
    {
        gallery_id = 26002,
        challenge_time = 300, 

        element_target = 2,

        starter_operator_configID = 73025,
        dig_operator_configID = 73028,

        starter_operator_suite = 6,
        level_suite = 7,
        dig_operator_suite = 8,
        treasure_suite = 9,

    }

}

local extra_elements =
{
    73017,73018,73019,73020,73021,73022,73023,73024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 73026, monster_id = 21010101, pos = { x = 1583.363, y = 268.130, z = -1480.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 73027, monster_id = 21010101, pos = { x = 1581.399, y = 267.933, z = -1476.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73001, gadget_id = 70290449, pos = { x = 1576.042, y = 270.837, z = -1492.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73002, gadget_id = 70290449, pos = { x = 1581.060, y = 269.744, z = -1489.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73003, gadget_id = 70290449, pos = { x = 1579.434, y = 268.310, z = -1483.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73004, gadget_id = 70290449, pos = { x = 1585.005, y = 268.898, z = -1486.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73005, gadget_id = 70290449, pos = { x = 1584.439, y = 270.018, z = -1490.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73006, gadget_id = 70290449, pos = { x = 1588.032, y = 270.970, z = -1495.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73007, gadget_id = 70290449, pos = { x = 1589.616, y = 269.282, z = -1487.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73008, gadget_id = 70290449, pos = { x = 1588.025, y = 268.543, z = -1482.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73009, gadget_id = 70290449, pos = { x = 1580.196, y = 267.850, z = -1478.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73010, gadget_id = 70290406, pos = { x = 1576.839, y = 268.413, z = -1483.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73011, gadget_id = 70290408, pos = { x = 1562.982, y = 267.985, z = -1477.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73012, gadget_id = 70290408, pos = { x = 1564.992, y = 267.687, z = -1474.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73013, gadget_id = 70290408, pos = { x = 1559.219, y = 268.307, z = -1481.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73014, gadget_id = 70290450, pos = { x = 1571.114, y = 268.133, z = -1480.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73015, gadget_id = 70210063, pos = { x = 1571.114, y = 268.133, z = -1480.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 73017, gadget_id = 70290408, pos = { x = 1576.513, y = 267.580, z = -1477.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73018, gadget_id = 70290408, pos = { x = 1574.127, y = 267.639, z = -1477.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73019, gadget_id = 70290408, pos = { x = 1575.884, y = 267.555, z = -1476.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73020, gadget_id = 70290408, pos = { x = 1579.307, y = 267.775, z = -1479.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73021, gadget_id = 70290408, pos = { x = 1578.269, y = 267.642, z = -1476.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73022, gadget_id = 70290408, pos = { x = 1580.045, y = 267.771, z = -1475.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73023, gadget_id = 70290408, pos = { x = 1578.989, y = 267.750, z = -1479.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73024, gadget_id = 70290408, pos = { x = 1580.744, y = 267.892, z = -1477.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73025, gadget_id = 70290406, pos = { x = 1580.549, y = 268.034, z = -1481.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73028, gadget_id = 70290450, pos = { x = 1580.440, y = 267.815, z = -1474.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 73029, gadget_id = 70211001, pos = { x = 1580.284, y = 267.797, z = -1474.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 73030, gadget_id = 70290452, pos = { x = 1576.839, y = 268.413, z = -1483.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73031, gadget_id = 70290451, pos = { x = 1576.839, y = 269.413, z = -1483.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73032, gadget_id = 70290452, pos = { x = 1580.549, y = 268.034, z = -1481.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 73033, gadget_id = 70290451, pos = { x = 1580.549, y = 269.034, z = -1481.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 玩法区域 REGION
	{ config_id = 73016, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1569.680, y = 269.199, z = -1486.465 } }
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
		-- description = 基础suite,
		monsters = { },
		gadgets = { },
		regions = { 73016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = A-探查点,
		monsters = { },
		gadgets = { 73010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = A-关卡,
		monsters = { },
		gadgets = { 73011, 73012, 73013, 73030, 73031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = A-挖掘点,
		monsters = { },
		gadgets = { 73014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = A-宝箱,
		monsters = { },
		gadgets = { 73015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = B-探查点,
		monsters = { },
		gadgets = { 73025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = B-关卡,
		monsters = { 73026, 73027 },
		gadgets = { 73032, 73033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = B-挖掘点,
		monsters = { },
		gadgets = { 73028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = B-宝箱,
		monsters = { },
		gadgets = { 73029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 能量球suite,
		monsters = { },
		gadgets = { 73001, 73002, 73003, 73004, 73005, 73006, 73007, 73008, 73009 },
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