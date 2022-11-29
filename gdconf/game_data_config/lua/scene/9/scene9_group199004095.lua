-- 基础信息
local base_info = {
	group_id = 199004095
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
	{ config_id = 95001, gadget_id = 70290011, pos = { x = -304.067, y = 250.464, z = -695.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 95002, gadget_id = 70290001, pos = { x = -331.355, y = 230.119, z = -640.261 }, rot = { x = 0.000, y = 324.239, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 95003, gadget_id = 70500000, pos = { x = -331.338, y = 230.688, z = -639.860 }, rot = { x = 0.000, y = 324.239, z = 0.000 }, level = 1, point_type = 3002, owner = 95002, area_id = 400 },
	{ config_id = 95004, gadget_id = 70500000, pos = { x = -331.420, y = 230.974, z = -640.657 }, rot = { x = 0.000, y = 324.239, z = 0.000 }, level = 1, point_type = 3002, owner = 95002, area_id = 400 },
	{ config_id = 95005, gadget_id = 70500000, pos = { x = -331.087, y = 231.386, z = -640.364 }, rot = { x = 0.000, y = 324.239, z = 0.000 }, level = 1, point_type = 3002, owner = 95002, area_id = 400 },
	{ config_id = 95006, gadget_id = 70290003, pos = { x = -312.615, y = 243.883, z = -660.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 95007, gadget_id = 70500000, pos = { x = -312.615, y = 243.986, z = -660.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 95006, area_id = 400 },
	{ config_id = 95008, gadget_id = 70500000, pos = { x = -312.615, y = 243.986, z = -660.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 95006, area_id = 400 },
	{ config_id = 95009, gadget_id = 70500000, pos = { x = -304.067, y = 250.464, z = -695.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3009, owner = 95001, area_id = 400 },
	{ config_id = 95010, gadget_id = 70500000, pos = { x = -294.737, y = 120.811, z = -624.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2001, area_id = 400 },
	{ config_id = 95011, gadget_id = 70290008, pos = { x = -275.852, y = 119.778, z = -684.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 95012, gadget_id = 70500000, pos = { x = -275.852, y = 119.778, z = -684.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3008, owner = 95011, area_id = 400 },
	{ config_id = 95013, gadget_id = 70290008, pos = { x = -291.011, y = 120.000, z = -704.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 95014, gadget_id = 70500000, pos = { x = -291.011, y = 120.000, z = -704.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3008, owner = 95013, area_id = 400 },
	{ config_id = 95015, gadget_id = 70500000, pos = { x = -318.710, y = 120.967, z = -714.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 400 },
	{ config_id = 95016, gadget_id = 70500000, pos = { x = -330.599, y = 121.721, z = -711.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 400 },
	{ config_id = 95017, gadget_id = 70500000, pos = { x = -344.663, y = 120.696, z = -719.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 400 },
	{ config_id = 95018, gadget_id = 70500000, pos = { x = -350.411, y = 124.561, z = -702.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 1001, area_id = 400 },
	{ config_id = 95019, gadget_id = 70500000, pos = { x = -347.808, y = 124.192, z = -702.308 }, rot = { x = 0.000, y = 62.968, z = 0.000 }, level = 20, point_type = 1001, area_id = 400 },
	{ config_id = 95020, gadget_id = 70500000, pos = { x = -375.556, y = 124.277, z = -681.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2001, area_id = 400 },
	{ config_id = 95021, gadget_id = 70290001, pos = { x = -368.770, y = 122.128, z = -703.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 95022, gadget_id = 70500000, pos = { x = -368.753, y = 122.697, z = -703.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95021, area_id = 400 },
	{ config_id = 95023, gadget_id = 70500000, pos = { x = -368.835, y = 122.983, z = -704.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95021, area_id = 400 },
	{ config_id = 95024, gadget_id = 70500000, pos = { x = -368.502, y = 123.395, z = -703.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95021, area_id = 400 },
	{ config_id = 95025, gadget_id = 70290001, pos = { x = -365.424, y = 157.898, z = -667.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 95026, gadget_id = 70500000, pos = { x = -365.407, y = 158.467, z = -667.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95025, area_id = 400 },
	{ config_id = 95027, gadget_id = 70500000, pos = { x = -365.489, y = 158.753, z = -668.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95025, area_id = 400 },
	{ config_id = 95028, gadget_id = 70500000, pos = { x = -365.156, y = 159.165, z = -667.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95025, area_id = 400 },
	{ config_id = 95029, gadget_id = 70290001, pos = { x = -301.423, y = 250.509, z = -692.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 95030, gadget_id = 70500000, pos = { x = -301.406, y = 251.078, z = -692.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95029, area_id = 400 },
	{ config_id = 95031, gadget_id = 70500000, pos = { x = -301.488, y = 251.364, z = -693.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95029, area_id = 400 },
	{ config_id = 95032, gadget_id = 70500000, pos = { x = -301.155, y = 251.776, z = -692.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 95029, area_id = 400 },
	{ config_id = 95033, gadget_id = 70540011, pos = { x = -305.601, y = 177.007, z = -668.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 95034, gadget_id = 70500000, pos = { x = -305.601, y = 177.007, z = -668.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2011, owner = 95033, area_id = 400 },
	{ config_id = 95035, gadget_id = 70500000, pos = { x = -305.815, y = 176.749, z = -668.443 }, rot = { x = 348.727, y = 341.756, z = 340.760 }, level = 20, point_type = 2011, owner = 95033, area_id = 400 },
	{ config_id = 95036, gadget_id = 70500000, pos = { x = -305.501, y = 176.736, z = -668.289 }, rot = { x = 348.515, y = 87.775, z = 340.020 }, level = 20, point_type = 2011, owner = 95033, area_id = 400 },
	{ config_id = 95037, gadget_id = 70500000, pos = { x = -305.589, y = 176.734, z = -668.649 }, rot = { x = 344.486, y = 149.827, z = 4.688 }, level = 20, point_type = 2011, owner = 95033, area_id = 400 },
	{ config_id = 95038, gadget_id = 70500000, pos = { x = -306.330, y = 170.934, z = -647.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2001, area_id = 400 }
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
		gadgets = { 95001, 95002, 95003, 95004, 95005, 95006, 95007, 95008, 95009, 95010, 95011, 95012, 95013, 95014, 95015, 95016, 95017, 95018, 95019, 95020, 95021, 95022, 95023, 95024, 95025, 95026, 95027, 95028, 95029, 95030, 95031, 95032, 95033, 95034, 95035, 95036, 95037, 95038 },
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