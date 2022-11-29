-- 基础信息
local base_info = {
	group_id = 133221059
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
	-- 线路1-1
	{ config_id = 59001, gadget_id = 70690001, pos = { x = -3189.921, y = 256.315, z = -4442.829 }, rot = { x = 357.190, y = 5.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 线路2-1
	{ config_id = 59002, gadget_id = 70690001, pos = { x = -3184.976, y = 256.129, z = -4449.812 }, rot = { x = 0.000, y = 72.390, z = 0.000 }, level = 27, area_id = 11 },
	-- 线路2-2
	{ config_id = 59003, gadget_id = 70690001, pos = { x = -3179.937, y = 255.806, z = -4447.993 }, rot = { x = 0.000, y = 89.100, z = 0.000 }, level = 27, area_id = 11 },
	-- 线路2-3
	{ config_id = 59004, gadget_id = 70690001, pos = { x = -3174.888, y = 255.364, z = -4447.463 }, rot = { x = 16.100, y = 101.310, z = 0.000 }, level = 27, area_id = 11 },
	-- 垂直风场
	{ config_id = 59006, gadget_id = 70690012, pos = { x = -3197.514, y = 252.500, z = -4401.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 线路1-2
	{ config_id = 59007, gadget_id = 70690001, pos = { x = -3189.488, y = 256.939, z = -4436.884 }, rot = { x = 0.380, y = 356.868, z = 0.000 }, level = 27, area_id = 11 },
	-- 线路1-3
	{ config_id = 59008, gadget_id = 70690001, pos = { x = -3189.853, y = 257.107, z = -4431.007 }, rot = { x = 0.670, y = 356.012, z = 0.000 }, level = 27, area_id = 11 },
	-- 线路1-4
	{ config_id = 59009, gadget_id = 70690001, pos = { x = -3190.947, y = 257.175, z = -4425.221 }, rot = { x = 359.100, y = 349.099, z = 0.000 }, level = 27, area_id = 11 },
	-- 线路3-1
	{ config_id = 59010, gadget_id = 70690001, pos = { x = -3189.360, y = 267.962, z = -4400.368 }, rot = { x = 31.294, y = 93.134, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路3-3
	{ config_id = 59012, gadget_id = 70690001, pos = { x = -3179.121, y = 261.729, z = -4400.928 }, rot = { x = 31.294, y = 93.134, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路3-5
	{ config_id = 59014, gadget_id = 70690001, pos = { x = -3169.502, y = 254.702, z = -4400.813 }, rot = { x = 44.357, y = 70.900, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路3-7
	{ config_id = 59016, gadget_id = 70690001, pos = { x = -3163.012, y = 247.556, z = -4394.604 }, rot = { x = 20.200, y = 16.500, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路5-1
	{ config_id = 59017, gadget_id = 70690001, pos = { x = -3161.663, y = 252.543, z = -4365.982 }, rot = { x = 7.725, y = 110.103, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路4-1
	{ config_id = 59019, gadget_id = 70690001, pos = { x = -3197.976, y = 268.452, z = -4393.743 }, rot = { x = 346.612, y = 18.358, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路4-3
	{ config_id = 59021, gadget_id = 70690001, pos = { x = -3193.370, y = 270.163, z = -4383.997 }, rot = { x = 4.198, y = 44.883, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路4-5
	{ config_id = 59023, gadget_id = 70690001, pos = { x = -3183.876, y = 268.987, z = -4377.660 }, rot = { x = 8.693, y = 81.445, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路4-7
	{ config_id = 59025, gadget_id = 70690001, pos = { x = -3172.146, y = 267.173, z = -4375.895 }, rot = { x = 11.833, y = 104.596, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路4-9
	{ config_id = 59027, gadget_id = 70690001, pos = { x = -3161.304, y = 264.675, z = -4379.719 }, rot = { x = 12.590, y = 114.107, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路4-11
	{ config_id = 59029, gadget_id = 70690001, pos = { x = -3151.112, y = 260.965, z = -4384.180 }, rot = { x = 28.300, y = 132.697, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路4-13
	{ config_id = 59031, gadget_id = 70690001, pos = { x = -3144.050, y = 254.071, z = -4390.696 }, rot = { x = 40.833, y = 132.692, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路3-10
	{ config_id = 59032, gadget_id = 70690001, pos = { x = -3161.113, y = 244.675, z = -4380.723 }, rot = { x = 5.000, y = 346.700, z = 0.000 }, level = 1, area_id = 11 },
	-- 垂直风场2
	{ config_id = 59034, gadget_id = 70690012, pos = { x = -3171.442, y = 238.578, z = -4363.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路5-2
	{ config_id = 59036, gadget_id = 70690001, pos = { x = -3150.496, y = 250.930, z = -4370.069 }, rot = { x = 5.515, y = 120.016, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路5-4
	{ config_id = 59038, gadget_id = 70690001, pos = { x = -3140.632, y = 249.969, z = -4376.662 }, rot = { x = 3.737, y = 127.448, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路6-1
	{ config_id = 59040, gadget_id = 70690001, pos = { x = -3165.054, y = 252.543, z = -4355.927 }, rot = { x = 5.594, y = 63.845, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路6-3
	{ config_id = 59042, gadget_id = 70690001, pos = { x = -3154.334, y = 251.373, z = -4350.663 }, rot = { x = 5.594, y = 73.600, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路6-5
	{ config_id = 59044, gadget_id = 70690001, pos = { x = -3143.609, y = 250.046, z = -4348.798 }, rot = { x = 7.922, y = 107.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路6-7
	{ config_id = 59046, gadget_id = 70690001, pos = { x = -3132.351, y = 248.392, z = -4352.628 }, rot = { x = 7.922, y = 110.543, z = 0.000 }, level = 1, area_id = 11 },
	-- 线路6-9
	{ config_id = 59048, gadget_id = 70690001, pos = { x = -3122.320, y = 246.040, z = -4357.659 }, rot = { x = 29.712, y = 155.188, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	-- 撤掉赛道1，加载赛道2
	{ config_id = 59050, shape = RegionShape.CUBIC, size = { x = 6.000, y = 20.000, z = 6.000 }, pos = { x = -3197.627, y = 262.519, z = -4401.179 }, area_id = 11 },
	-- 撤掉赛道2，加载赛道3
	{ config_id = 59051, shape = RegionShape.CUBIC, size = { x = 8.000, y = 25.000, z = 8.000 }, pos = { x = -3171.790, y = 250.909, z = -4363.042 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 撤掉赛道1，加载赛道2
	{ config_id = 1059050, name = "ENTER_REGION_59050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_59050" },
	-- 撤掉赛道2，加载赛道3
	{ config_id = 1059051, name = "ENTER_REGION_59051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_59051" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 59005, gadget_id = 70690001, pos = { x = -3169.590, y = 253.777, z = -4448.075 }, rot = { x = 19.110, y = 106.940, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 59011, gadget_id = 70690001, pos = { x = -3184.240, y = 264.846, z = -4400.648 }, rot = { x = 31.293, y = 93.128, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59013, gadget_id = 70690001, pos = { x = -3174.001, y = 258.613, z = -4401.208 }, rot = { x = 41.242, y = 79.944, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59015, gadget_id = 70690001, pos = { x = -3165.936, y = 251.168, z = -4399.281 }, rot = { x = 34.400, y = 43.700, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59018, gadget_id = 70690001, pos = { x = -3161.515, y = 245.407, z = -4387.684 }, rot = { x = 9.000, y = 1.600, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59020, gadget_id = 70690001, pos = { x = -3196.370, y = 269.665, z = -4388.903 }, rot = { x = 355.051, y = 31.451, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59022, gadget_id = 70690001, pos = { x = -3189.147, y = 269.724, z = -4379.757 }, rot = { x = 7.409, y = 68.303, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59024, gadget_id = 70690001, pos = { x = -3178.011, y = 268.080, z = -4376.777 }, rot = { x = 8.693, y = 81.445, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59026, gadget_id = 70690001, pos = { x = -3166.649, y = 265.983, z = -4377.327 }, rot = { x = 12.589, y = 114.110, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59028, gadget_id = 70690001, pos = { x = -3155.959, y = 263.367, z = -4382.110 }, rot = { x = 14.099, y = 114.888, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59030, gadget_id = 70690001, pos = { x = -3147.386, y = 257.994, z = -4387.618 }, rot = { x = 40.833, y = 132.692, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59033, gadget_id = 70690001, pos = { x = -3163.300, y = 244.025, z = -4374.554 }, rot = { x = 0.000, y = 327.300, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59035, gadget_id = 70690001, pos = { x = -3156.080, y = 251.736, z = -4368.026 }, rot = { x = 7.724, y = 110.102, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59037, gadget_id = 70690001, pos = { x = -3145.385, y = 250.360, z = -4373.022 }, rot = { x = 3.737, y = 127.445, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59039, gadget_id = 70690001, pos = { x = -3135.878, y = 249.578, z = -4380.303 }, rot = { x = 3.737, y = 127.448, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59041, gadget_id = 70690001, pos = { x = -3159.694, y = 251.958, z = -4353.295 }, rot = { x = 5.594, y = 63.848, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59043, gadget_id = 70690001, pos = { x = -3148.889, y = 250.788, z = -4349.274 }, rot = { x = 7.669, y = 85.100, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59045, gadget_id = 70690001, pos = { x = -3137.916, y = 249.219, z = -4350.543 }, rot = { x = 7.923, y = 110.540, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59047, gadget_id = 70690001, pos = { x = -3126.786, y = 247.565, z = -4354.713 }, rot = { x = 15.913, y = 123.403, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 59049, gadget_id = 70690001, pos = { x = -3120.133, y = 243.066, z = -4362.389 }, rot = { x = 29.712, y = 155.188, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 59001, 59002, 59003, 59004, 59006, 59007, 59008, 59009 },
		regions = { 59050 },
		triggers = { "ENTER_REGION_59050" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 59006, 59010, 59012, 59014, 59016, 59019, 59021, 59023, 59025, 59027, 59029, 59031, 59032, 59034 },
		regions = { 59051 },
		triggers = { "ENTER_REGION_59051" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 59017, 59034, 59036, 59038, 59040, 59042, 59044, 59046, 59048 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_59050(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221059, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_59051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221059, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end