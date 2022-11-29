-- 基础信息
local base_info = {
	group_id = 133223421
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 421009, monster_id = 22040101, pos = { x = -6214.820, y = 230.314, z = -2443.917 }, rot = { x = 0.000, y = 200.061, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 421023, monster_id = 22050201, pos = { x = -6272.685, y = 242.597, z = -2478.702 }, rot = { x = 0.000, y = 95.534, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 421024, monster_id = 22040201, pos = { x = -6266.096, y = 239.630, z = -2476.098 }, rot = { x = 0.000, y = 131.827, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 421042, monster_id = 22040201, pos = { x = -6201.492, y = 224.845, z = -2567.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 421057, monster_id = 22040101, pos = { x = -6211.146, y = 229.964, z = -2446.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 421058, monster_id = 22040201, pos = { x = -6195.767, y = 224.746, z = -2572.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 421001, gadget_id = 70217011, pos = { x = -6215.178, y = 231.632, z = -2447.605 }, rot = { x = 347.831, y = 232.506, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 421002, gadget_id = 70217011, pos = { x = -6276.553, y = 247.255, z = -2471.000 }, rot = { x = 0.000, y = 71.447, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 421011, gadget_id = 70710247, pos = { x = -6218.094, y = 231.441, z = -2445.532 }, rot = { x = 10.045, y = 358.205, z = 341.802 }, level = 1, area_id = 18 },
	{ config_id = 421012, gadget_id = 70710246, pos = { x = -6222.255, y = 231.489, z = -2443.069 }, rot = { x = 0.000, y = 359.818, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421013, gadget_id = 70310001, pos = { x = -6218.974, y = 231.262, z = -2443.038 }, rot = { x = 2.700, y = 0.094, z = 350.262 }, level = 1, area_id = 18 },
	{ config_id = 421014, gadget_id = 70220067, pos = { x = -6212.875, y = 231.152, z = -2450.095 }, rot = { x = 6.029, y = 336.375, z = 337.262 }, level = 1, area_id = 18 },
	{ config_id = 421015, gadget_id = 70220067, pos = { x = -6211.760, y = 230.808, z = -2451.045 }, rot = { x = 7.428, y = 39.587, z = 4.961 }, level = 1, area_id = 18 },
	{ config_id = 421016, gadget_id = 70710246, pos = { x = -6217.482, y = 231.330, z = -2445.250 }, rot = { x = 10.139, y = 136.597, z = 17.768 }, level = 1, area_id = 18 },
	{ config_id = 421017, gadget_id = 70710247, pos = { x = -6214.738, y = 231.379, z = -2448.749 }, rot = { x = 32.820, y = 48.388, z = 357.576 }, level = 1, area_id = 18 },
	{ config_id = 421019, gadget_id = 70220066, pos = { x = -6221.330, y = 232.317, z = -2445.808 }, rot = { x = 0.000, y = 359.818, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421020, gadget_id = 70220066, pos = { x = -6220.301, y = 232.098, z = -2446.179 }, rot = { x = 0.000, y = 359.818, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421021, gadget_id = 70220066, pos = { x = -6224.773, y = 231.338, z = -2442.162 }, rot = { x = 0.000, y = 359.818, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421022, gadget_id = 70300088, pos = { x = -6225.515, y = 231.936, z = -2444.661 }, rot = { x = 343.914, y = 288.205, z = 0.595 }, level = 1, area_id = 18 },
	{ config_id = 421027, gadget_id = 70710078, pos = { x = -6271.154, y = 240.944, z = -2473.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421028, gadget_id = 70710078, pos = { x = -6278.491, y = 242.589, z = -2471.056 }, rot = { x = 0.000, y = 280.331, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421029, gadget_id = 70710078, pos = { x = -6278.700, y = 242.289, z = -2460.736 }, rot = { x = 0.000, y = 68.143, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421030, gadget_id = 70710078, pos = { x = -6261.278, y = 237.292, z = -2464.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421031, gadget_id = 70710246, pos = { x = -6270.678, y = 240.842, z = -2473.787 }, rot = { x = 0.000, y = 45.880, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421032, gadget_id = 70710247, pos = { x = -6274.459, y = 242.161, z = -2471.910 }, rot = { x = 0.000, y = 8.825, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421033, gadget_id = 70710247, pos = { x = -6280.519, y = 242.614, z = -2474.249 }, rot = { x = 0.000, y = 8.825, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421034, gadget_id = 70710247, pos = { x = -6277.527, y = 242.235, z = -2461.248 }, rot = { x = 0.000, y = 8.825, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421035, gadget_id = 70330105, pos = { x = -6207.503, y = 224.263, z = -2550.824 }, rot = { x = 0.000, y = 132.190, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 421036, gadget_id = 70300088, pos = { x = -6283.350, y = 242.961, z = -2484.444 }, rot = { x = 11.631, y = 337.344, z = 347.663 }, level = 1, area_id = 18 },
	{ config_id = 421037, gadget_id = 70300088, pos = { x = -6276.219, y = 241.882, z = -2488.910 }, rot = { x = 13.176, y = 264.815, z = 2.729 }, level = 1, area_id = 18 },
	{ config_id = 421038, gadget_id = 70300088, pos = { x = -6272.099, y = 240.903, z = -2488.761 }, rot = { x = 341.165, y = 275.315, z = 356.021 }, level = 1, area_id = 18 },
	{ config_id = 421039, gadget_id = 70330064, pos = { x = -6230.864, y = 229.727, z = -2512.946 }, rot = { x = 0.000, y = 254.210, z = 0.000 }, level = 1, interact_id = 35, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 421007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6215.291, y = 231.281, z = -2447.924 }, area_id = 18 },
	{ config_id = 421040, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6199.007, y = 224.770, z = -2569.719 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1421004, name = "GADGET_STATE_CHANGE_421004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_421004", action = "action_EVENT_GADGET_STATE_CHANGE_421004" },
	{ config_id = 1421005, name = "GADGET_STATE_CHANGE_421005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_421005", action = "action_EVENT_GADGET_STATE_CHANGE_421005" },
	{ config_id = 1421007, name = "ENTER_REGION_421007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_421007" },
	{ config_id = 1421040, name = "ENTER_REGION_421040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_421040" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 421003, monster_id = 22050201, pos = { x = -6199.275, y = 225.162, z = -2572.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 421008, monster_id = 22050101, pos = { x = -6212.379, y = 230.313, z = -2446.937 }, rot = { x = 0.000, y = 275.608, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 421010, monster_id = 22040101, pos = { x = -6220.913, y = 231.037, z = -2440.656 }, rot = { x = 0.000, y = 135.887, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 421025, monster_id = 22040201, pos = { x = -6257.523, y = 237.749, z = -2483.139 }, rot = { x = 0.000, y = 93.787, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 421041, monster_id = 22040201, pos = { x = -6197.224, y = 224.570, z = -2569.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
	},
	gadgets = {
		{ config_id = 421006, gadget_id = 70330114, pos = { x = -6203.424, y = 229.570, z = -2443.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421018, gadget_id = 70310004, pos = { x = -6222.052, y = 231.150, z = -2441.265 }, rot = { x = 8.855, y = 358.478, z = 358.881 }, level = 1, area_id = 18 },
		{ config_id = 421026, gadget_id = 70330114, pos = { x = -6203.205, y = 237.557, z = -2442.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421043, gadget_id = 70330114, pos = { x = -6201.318, y = 232.321, z = -2441.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421044, gadget_id = 70330114, pos = { x = -6204.662, y = 237.410, z = -2439.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421045, gadget_id = 70330114, pos = { x = -6200.182, y = 230.929, z = -2443.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421046, gadget_id = 70330114, pos = { x = -6227.625, y = 236.555, z = -2458.778 }, rot = { x = 0.000, y = 243.621, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421047, gadget_id = 70330114, pos = { x = -6252.492, y = 235.727, z = -2448.158 }, rot = { x = 0.000, y = 238.876, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421048, gadget_id = 70330114, pos = { x = -6242.918, y = 238.366, z = -2464.864 }, rot = { x = 0.000, y = 259.278, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421049, gadget_id = 70330114, pos = { x = -6252.703, y = 238.358, z = -2465.354 }, rot = { x = 0.000, y = 244.970, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421050, gadget_id = 70330114, pos = { x = -6254.845, y = 237.682, z = -2453.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421051, gadget_id = 70330114, pos = { x = -6265.199, y = 238.801, z = -2468.434 }, rot = { x = 329.159, y = 268.800, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421052, gadget_id = 70330114, pos = { x = -6255.539, y = 241.034, z = -2455.125 }, rot = { x = 0.000, y = 294.761, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421053, gadget_id = 70330114, pos = { x = -6219.943, y = 237.463, z = -2456.536 }, rot = { x = 0.000, y = 24.350, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421054, gadget_id = 70330114, pos = { x = -6225.419, y = 233.792, z = -2463.092 }, rot = { x = 0.000, y = 161.614, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421055, gadget_id = 70330114, pos = { x = -6223.069, y = 232.339, z = -2479.212 }, rot = { x = 0.000, y = 178.565, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 421056, gadget_id = 70330114, pos = { x = -6224.524, y = 230.384, z = -2495.462 }, rot = { x = 0.000, y = 174.542, z = 0.000 }, level = 1, area_id = 18 }
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
		monsters = { 421023, 421024 },
		gadgets = { 421001, 421002, 421011, 421012, 421013, 421014, 421015, 421016, 421017, 421019, 421020, 421021, 421022, 421027, 421028, 421029, 421030, 421031, 421032, 421033, 421034, 421035, 421036, 421037, 421038, 421039 },
		regions = { 421007, 421040 },
		triggers = { "GADGET_STATE_CHANGE_421004", "GADGET_STATE_CHANGE_421005", "ENTER_REGION_421007", "ENTER_REGION_421040" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 421009, 421057 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 421042, 421058 },
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
function condition_EVENT_GADGET_STATE_CHANGE_421004(context, evt)
	if 421001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_421004(context, evt)
	-- 针对当前group内变量名为 "FeatherCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FeatherCount", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223519) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_421005(context, evt)
	if 421002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_421005(context, evt)
	-- 针对当前group内变量名为 "FeatherCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FeatherCount", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223517) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_421007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223421, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_421040(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223421, 3)
	
	return 0
end