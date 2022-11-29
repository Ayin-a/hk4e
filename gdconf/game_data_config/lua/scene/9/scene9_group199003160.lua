-- 基础信息
local base_info = {
	group_id = 199003160
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
	{ config_id = 160001, gadget_id = 70500000, pos = { x = -671.498, y = 202.265, z = 5.178 }, rot = { x = 0.000, y = 305.278, z = 0.000 }, level = 1, point_type = 2001, area_id = 403 },
	{ config_id = 160002, gadget_id = 70500000, pos = { x = -724.677, y = 209.256, z = 31.587 }, rot = { x = 0.000, y = 270.484, z = 0.000 }, level = 1, point_type = 2004, area_id = 403 },
	{ config_id = 160003, gadget_id = 70500000, pos = { x = -627.780, y = 206.088, z = 22.874 }, rot = { x = 0.000, y = 43.047, z = 0.000 }, level = 1, point_type = 2004, area_id = 403 },
	{ config_id = 160004, gadget_id = 70500000, pos = { x = -726.844, y = 197.775, z = -43.483 }, rot = { x = 0.000, y = 305.358, z = 0.000 }, level = 1, point_type = 2001, area_id = 403 },
	{ config_id = 160005, gadget_id = 70290011, pos = { x = -652.865, y = 207.487, z = 39.702 }, rot = { x = 0.000, y = 45.575, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160006, gadget_id = 70500000, pos = { x = -652.865, y = 207.487, z = 39.702 }, rot = { x = 0.000, y = 45.575, z = 0.000 }, level = 1, point_type = 3009, owner = 160005, area_id = 403 },
	{ config_id = 160007, gadget_id = 70290011, pos = { x = -655.305, y = 207.151, z = 37.645 }, rot = { x = 0.000, y = 300.300, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160008, gadget_id = 70500000, pos = { x = -655.305, y = 207.151, z = 37.645 }, rot = { x = 0.000, y = 300.301, z = 0.000 }, level = 1, point_type = 3009, owner = 160007, area_id = 403 },
	{ config_id = 160009, gadget_id = 70500000, pos = { x = -753.019, y = 189.904, z = -16.349 }, rot = { x = 0.000, y = 306.704, z = 0.000 }, level = 1, point_type = 2001, area_id = 403 },
	{ config_id = 160010, gadget_id = 70500000, pos = { x = -704.748, y = 191.097, z = -42.804 }, rot = { x = 0.000, y = 167.237, z = 0.000 }, level = 1, point_type = 2001, area_id = 403 },
	{ config_id = 160011, gadget_id = 70290003, pos = { x = -743.442, y = 184.619, z = -48.028 }, rot = { x = 0.000, y = 301.851, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160012, gadget_id = 70500000, pos = { x = -743.442, y = 184.722, z = -48.119 }, rot = { x = 0.000, y = 301.851, z = 0.000 }, level = 1, point_type = 3003, owner = 160011, area_id = 403 },
	{ config_id = 160013, gadget_id = 70500000, pos = { x = -743.442, y = 184.722, z = -47.927 }, rot = { x = 0.000, y = 301.851, z = 0.000 }, level = 1, point_type = 3003, owner = 160011, area_id = 403 },
	{ config_id = 160014, gadget_id = 70290011, pos = { x = -690.581, y = 191.821, z = -27.387 }, rot = { x = 0.000, y = 314.871, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160015, gadget_id = 70500000, pos = { x = -690.581, y = 191.821, z = -27.387 }, rot = { x = 0.000, y = 314.873, z = 0.000 }, level = 1, point_type = 3009, owner = 160014, area_id = 403 },
	{ config_id = 160016, gadget_id = 70290011, pos = { x = -698.466, y = 191.567, z = -26.204 }, rot = { x = 0.000, y = 318.502, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160017, gadget_id = 70500000, pos = { x = -698.466, y = 191.567, z = -26.204 }, rot = { x = 0.000, y = 318.502, z = 0.000 }, level = 1, point_type = 3009, owner = 160016, area_id = 403 },
	{ config_id = 160018, gadget_id = 70290011, pos = { x = -698.916, y = 191.666, z = -29.557 }, rot = { x = 0.000, y = 289.891, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160019, gadget_id = 70500000, pos = { x = -698.916, y = 191.666, z = -29.557 }, rot = { x = 0.000, y = 289.891, z = 0.000 }, level = 1, point_type = 3009, owner = 160018, area_id = 403 },
	{ config_id = 160020, gadget_id = 70290011, pos = { x = -781.098, y = 186.606, z = 29.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160021, gadget_id = 70500000, pos = { x = -781.098, y = 186.606, z = 29.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3009, owner = 160020, area_id = 403 },
	{ config_id = 160022, gadget_id = 70290001, pos = { x = -728.880, y = 192.139, z = 19.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 160023, gadget_id = 70500000, pos = { x = -728.863, y = 192.708, z = 19.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 160022, area_id = 403 },
	{ config_id = 160024, gadget_id = 70500000, pos = { x = -728.945, y = 192.994, z = 18.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 160022, area_id = 403 },
	{ config_id = 160025, gadget_id = 70500000, pos = { x = -728.612, y = 193.406, z = 19.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 160022, area_id = 403 },
	{ config_id = 160026, gadget_id = 70500000, pos = { x = -728.242, y = 180.529, z = 5.547 }, rot = { x = 0.000, y = 53.815, z = 0.000 }, level = 1, point_type = 9104, area_id = 403 },
	{ config_id = 160027, gadget_id = 70500000, pos = { x = -728.554, y = 180.525, z = 5.640 }, rot = { x = 0.000, y = 268.321, z = 0.000 }, level = 1, point_type = 9104, area_id = 403 },
	{ config_id = 160028, gadget_id = 70500000, pos = { x = -728.184, y = 180.556, z = 5.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9104, area_id = 403 },
	{ config_id = 160029, gadget_id = 70500000, pos = { x = -648.515, y = 119.393, z = 43.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2033, area_id = 403 },
	{ config_id = 160030, gadget_id = 70500000, pos = { x = -647.641, y = 119.423, z = 42.279 }, rot = { x = 0.000, y = 80.387, z = 0.000 }, level = 1, point_type = 2033, area_id = 403 },
	{ config_id = 160031, gadget_id = 70500000, pos = { x = -646.017, y = 119.694, z = 31.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2033, area_id = 403 },
	{ config_id = 160032, gadget_id = 70500000, pos = { x = -670.543, y = 193.714, z = 60.066 }, rot = { x = 0.000, y = 352.458, z = 0.000 }, level = 1, point_type = 2004, area_id = 403 },
	{ config_id = 160033, gadget_id = 70500000, pos = { x = -776.667, y = 125.172, z = 20.532 }, rot = { x = 0.000, y = 265.700, z = 0.000 }, level = 1, point_type = 2004, area_id = 403 },
	{ config_id = 160034, gadget_id = 70500000, pos = { x = -736.445, y = 190.151, z = 8.519 }, rot = { x = 0.000, y = 154.956, z = 0.000 }, level = 1, point_type = 2004, area_id = 403 },
	{ config_id = 160035, gadget_id = 70500000, pos = { x = -693.069, y = 193.497, z = 38.777 }, rot = { x = 0.000, y = 352.755, z = 0.000 }, level = 1, point_type = 2004, area_id = 403 },
	{ config_id = 160036, gadget_id = 70500000, pos = { x = -766.420, y = 188.065, z = 39.944 }, rot = { x = 0.000, y = 89.902, z = 0.000 }, level = 1, point_type = 2004, area_id = 403 },
	{ config_id = 160037, gadget_id = 70290001, pos = { x = -721.945, y = 124.281, z = -48.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 160038, gadget_id = 70500000, pos = { x = -721.928, y = 124.850, z = -47.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 160037, area_id = 403 },
	{ config_id = 160039, gadget_id = 70500000, pos = { x = -722.010, y = 125.136, z = -48.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 160037, area_id = 403 },
	{ config_id = 160040, gadget_id = 70500000, pos = { x = -721.677, y = 125.548, z = -48.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 160037, area_id = 403 },
	{ config_id = 160041, gadget_id = 70500000, pos = { x = -692.548, y = 124.329, z = -55.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2001, area_id = 403 }
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
		gadgets = { 160001, 160002, 160003, 160004, 160005, 160006, 160007, 160008, 160009, 160010, 160011, 160012, 160013, 160014, 160015, 160016, 160017, 160018, 160019, 160020, 160021, 160022, 160023, 160024, 160025, 160026, 160027, 160028, 160029, 160030, 160031, 160032, 160033, 160034, 160035, 160036, 160037, 160038, 160039, 160040, 160041 },
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