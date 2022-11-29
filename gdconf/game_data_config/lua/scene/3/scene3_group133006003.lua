-- 基础信息
local base_info = {
	group_id = 133006003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20020101, pos = { x = 2630.322, y = 200.401, z = -2356.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_tag = "元素之核", affix = { 1008, 1011 }, isElite = true, isOneoff = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70690001, pos = { x = 2614.999, y = 380.000, z = -2335.676 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3003, gadget_id = 70690001, pos = { x = 2595.824, y = 380.000, z = -2309.519 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3004, gadget_id = 70690001, pos = { x = 2605.499, y = 380.000, z = -2323.326 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3005, gadget_id = 70710129, pos = { x = 2630.224, y = 198.284, z = -2356.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3006, gadget_id = 70690001, pos = { x = 2585.180, y = 380.000, z = -2295.039 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3008, gadget_id = 70690001, pos = { x = 2569.252, y = 380.000, z = -2273.710 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3010, gadget_id = 70690001, pos = { x = 2553.797, y = 380.000, z = -2252.545 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3011, gadget_id = 70710171, pos = { x = 2630.230, y = 200.207, z = -2356.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3012, gadget_id = 70690001, pos = { x = 2537.777, y = 380.000, z = -2230.415 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3013, gadget_id = 70710090, pos = { x = 2627.006, y = 200.029, z = -2351.906 }, rot = { x = 0.000, y = 148.914, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3014, gadget_id = 70690001, pos = { x = 2522.278, y = 380.000, z = -2209.812 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3015, gadget_id = 70710090, pos = { x = 2625.809, y = 200.030, z = -2359.474 }, rot = { x = 0.000, y = 47.195, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3016, gadget_id = 70690001, pos = { x = 2507.741, y = 380.000, z = -2189.961 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3017, gadget_id = 70710090, pos = { x = 2633.572, y = 199.924, z = -2360.730 }, rot = { x = 0.000, y = 320.225, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3018, gadget_id = 70690001, pos = { x = 2493.756, y = 380.000, z = -2170.923 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3019, gadget_id = 70710090, pos = { x = 2634.510, y = 200.042, z = -2352.998 }, rot = { x = 0.000, y = 229.033, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3020, gadget_id = 70690001, pos = { x = 2479.583, y = 380.000, z = -2151.936 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3021, gadget_id = 70710090, pos = { x = 2629.610, y = 200.136, z = -2360.575 }, rot = { x = 359.987, y = 7.582, z = 0.273 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3022, gadget_id = 70690001, pos = { x = 2465.530, y = 380.000, z = -2132.556 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3023, gadget_id = 70710090, pos = { x = 2625.822, y = 200.180, z = -2355.604 }, rot = { x = 359.954, y = 96.834, z = -0.003 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3024, gadget_id = 70690001, pos = { x = 2452.558, y = 380.000, z = -2114.949 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3025, gadget_id = 70710090, pos = { x = 2630.739, y = 200.166, z = -2351.806 }, rot = { x = 0.000, y = 189.014, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3026, gadget_id = 70690001, pos = { x = 2440.442, y = 380.000, z = -2098.750 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3027, gadget_id = 70710090, pos = { x = 2634.821, y = 200.245, z = -2356.789 }, rot = { x = 0.000, y = 274.185, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3028, gadget_id = 70690001, pos = { x = 2428.970, y = 380.000, z = -2083.358 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3030, gadget_id = 70690001, pos = { x = 2416.098, y = 380.000, z = -2066.083 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3032, gadget_id = 70690001, pos = { x = 2401.730, y = 380.000, z = -2046.237 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3033, gadget_id = 70690010, pos = { x = 2614.867, y = 380.006, z = -2335.429 }, rot = { x = 28.173, y = 53.456, z = 89.600 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3034, gadget_id = 70690001, pos = { x = 2387.952, y = 380.000, z = -2027.465 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3035, gadget_id = 70690010, pos = { x = 2522.940, y = 379.816, z = -2210.322 }, rot = { x = 359.453, y = 53.386, z = 90.005 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3036, gadget_id = 70690001, pos = { x = 2374.665, y = 380.000, z = -2008.921 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3037, gadget_id = 70690010, pos = { x = 2480.705, y = 379.990, z = -2153.511 }, rot = { x = 28.717, y = 53.337, z = 89.139 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3038, gadget_id = 70690001, pos = { x = 2362.464, y = 380.000, z = -1992.723 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3039, gadget_id = 70690010, pos = { x = 2440.607, y = 380.125, z = -2098.904 }, rot = { x = 30.122, y = 54.423, z = 91.349 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3040, gadget_id = 70690001, pos = { x = 2350.348, y = 380.000, z = -1975.998 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3041, gadget_id = 70690010, pos = { x = 2569.215, y = 380.047, z = -2273.546 }, rot = { x = 28.173, y = 53.456, z = 89.600 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3042, gadget_id = 70690001, pos = { x = 2338.370, y = 380.000, z = -1959.728 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3043, gadget_id = 70690010, pos = { x = 2401.845, y = 379.973, z = -2046.352 }, rot = { x = 30.122, y = 54.423, z = 91.349 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3044, gadget_id = 40200001, pos = { x = 2630.246, y = 198.929, z = -2356.191 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3045, gadget_id = 70690010, pos = { x = 2362.625, y = 380.051, z = -1992.893 }, rot = { x = 30.122, y = 54.423, z = 91.349 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3047, gadget_id = 70350080, pos = { x = 2630.221, y = 199.665, z = -2356.195 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 3049, gadget_id = 70690001, pos = { x = 2327.003, y = 380.000, z = -1944.179 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3050, gadget_id = 70690001, pos = { x = 2630.281, y = 237.102, z = -2356.059 }, rot = { x = 270.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3051, gadget_id = 70690001, pos = { x = 2630.281, y = 252.646, z = -2356.059 }, rot = { x = 270.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3052, gadget_id = 70690001, pos = { x = 2630.281, y = 269.338, z = -2356.059 }, rot = { x = 270.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3053, gadget_id = 70690001, pos = { x = 2630.281, y = 282.894, z = -2356.059 }, rot = { x = 270.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3054, gadget_id = 70690001, pos = { x = 2630.281, y = 295.138, z = -2356.059 }, rot = { x = 270.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3055, gadget_id = 70690001, pos = { x = 2630.281, y = 305.130, z = -2356.059 }, rot = { x = 270.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3056, gadget_id = 70690001, pos = { x = 2316.039, y = 380.000, z = -1929.464 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3057, gadget_id = 70690010, pos = { x = 2327.250, y = 380.151, z = -1944.627 }, rot = { x = 30.122, y = 54.423, z = 91.349 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3058, gadget_id = 70690010, pos = { x = 2292.945, y = 380.052, z = -1898.218 }, rot = { x = 30.122, y = 54.423, z = 91.349 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3059, gadget_id = 70690010, pos = { x = 2266.672, y = 380.250, z = -1860.659 }, rot = { x = 30.122, y = 54.423, z = 91.349 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3061, gadget_id = 70690001, pos = { x = 2303.859, y = 380.000, z = -1913.883 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3062, gadget_id = 70690001, pos = { x = 2292.933, y = 380.000, z = -1898.154 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3063, gadget_id = 70690001, pos = { x = 2283.229, y = 380.000, z = -1884.392 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3064, gadget_id = 70690001, pos = { x = 2274.827, y = 380.000, z = -1872.367 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3065, gadget_id = 70690001, pos = { x = 2266.607, y = 380.000, z = -1860.748 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3066, gadget_id = 70690001, pos = { x = 2258.346, y = 380.000, z = -1848.974 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3067, gadget_id = 70690001, pos = { x = 2250.149, y = 380.000, z = -1837.250 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3068, gadget_id = 70690001, pos = { x = 2241.929, y = 380.000, z = -1825.697 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 3069, gadget_id = 70690001, pos = { x = 2234.424, y = 380.000, z = -1815.247 }, rot = { x = 0.000, y = 324.980, z = 0.000 }, level = 30, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003007, name = "VARIABLE_CHANGE_3007", event = EventType.EVENT_VARIABLE_CHANGE, source = "count1", condition = "condition_EVENT_VARIABLE_CHANGE_3007", action = "action_EVENT_VARIABLE_CHANGE_3007" },
	{ config_id = 1003009, name = "ANY_GADGET_DIE_3009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3009", action = "action_EVENT_ANY_GADGET_DIE_3009" },
	{ config_id = 1003029, name = "GADGET_CREATE_3029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3029", action = "action_EVENT_GADGET_CREATE_3029" },
	{ config_id = 1003031, name = "TIMER_EVENT_3031", event = EventType.EVENT_TIMER_EVENT, source = "CSTIME", condition = "", action = "action_EVENT_TIMER_EVENT_3031" },
	{ config_id = 1003046, name = "VARIABLE_CHANGE_3046", event = EventType.EVENT_VARIABLE_CHANGE, source = "windcore1", condition = "condition_EVENT_VARIABLE_CHANGE_3046", action = "action_EVENT_VARIABLE_CHANGE_3046" },
	{ config_id = 1003048, name = "SPECIFIC_MONSTER_HP_CHANGE_3048", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "3001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3048", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3048" }
}

-- 变量
variables = {
	{ config_id = 1, name = "windcore1", value = 0, no_refresh = true },
	{ config_id = 2, name = "count1", value = 0, no_refresh = true }
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
		gadgets = { 3041, 3043, 3045, 3047, 3057, 3058, 3059 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_3007", "ANY_GADGET_DIE_3009", "GADGET_CREATE_3029", "TIMER_EVENT_3031", "VARIABLE_CHANGE_3046", "SPECIFIC_MONSTER_HP_CHANGE_3048" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3002, 3003, 3004, 3006, 3008, 3010, 3012, 3014, 3016, 3018, 3020, 3022, 3024, 3026, 3028, 3030, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039, 3040, 3042, 3044, 3049, 3050, 3051, 3052, 3053, 3054, 3055, 3056, 3061, 3062, 3063, 3064, 3065, 3066, 3067, 3068, 3069 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3001 },
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
function condition_EVENT_VARIABLE_CHANGE_3007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count1"为4
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3007(context, evt)
	-- 创建id为3005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3009(context, evt)
	if 3005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3009(context, evt)
	-- 将本组内变量名为 "big" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "big", 1, 133006001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101211_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3029(context, evt)
	if 3011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3029(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 0, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3031(context, evt)
	-- 触发镜头注目，注目位置为坐标（2630，219，-2356），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2630, y=219, z=-2356}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 31020856 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020856) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"windcore1"为1
	if ScriptLib.GetGroupVariableValue(context, "windcore1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3046(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3048(context, evt)
	--[[判断指定configid的怪物的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3048(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133006003, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101208_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "dead" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "dead", 1, 133006001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133006003, 3)
	
	-- 延迟15秒后,向groupId为：133006003的对象,请求一次调用,并将string参数："CSTIME" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133006003, "CSTIME", 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end