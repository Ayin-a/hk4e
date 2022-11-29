-- 基础信息
local base_info = {
	group_id = 133310176
}

-- Trigger变量
local defs = {
	duration = 180,
	group_id = 133310176,
	collectable_sum = 30
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
	{ config_id = 176001, gadget_id = 70211121, pos = { x = -3005.889, y = 285.682, z = 4728.801 }, rot = { x = 0.000, y = 270.304, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 176002, gadget_id = 70330343, pos = { x = -2985.689, y = 261.762, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 28 },
	{ config_id = 176003, gadget_id = 70360001, pos = { x = -2985.689, y = 261.762, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 28 },
	{ config_id = 176004, gadget_id = 70290501, pos = { x = -2994.419, y = 265.024, z = 4728.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 176005, gadget_id = 70290501, pos = { x = -3006.134, y = 269.082, z = 4728.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 176006, gadget_id = 70290501, pos = { x = -2987.787, y = 280.015, z = 4740.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176007, gadget_id = 70290501, pos = { x = -3007.245, y = 269.819, z = 4735.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 176008, gadget_id = 70290501, pos = { x = -2977.992, y = 281.782, z = 4713.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 176009, gadget_id = 70290501, pos = { x = -2976.063, y = 275.090, z = 4744.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 176010, gadget_id = 70290501, pos = { x = -2966.538, y = 275.782, z = 4728.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 176011, gadget_id = 70290501, pos = { x = -2976.255, y = 275.782, z = 4729.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 176019, gadget_id = 70330393, pos = { x = -2997.089, y = 264.662, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176020, gadget_id = 70330392, pos = { x = -3006.189, y = 267.262, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176021, gadget_id = 70330393, pos = { x = -3007.989, y = 270.662, z = 4739.801 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176022, gadget_id = 70290501, pos = { x = -2988.067, y = 281.782, z = 4748.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176023, gadget_id = 70330392, pos = { x = -2966.389, y = 273.962, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176024, gadget_id = 70330392, pos = { x = -2975.949, y = 273.270, z = 4744.980 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176026, gadget_id = 70330392, pos = { x = -2976.389, y = 273.962, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176027, gadget_id = 70330392, pos = { x = -2986.389, y = 273.962, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176028, gadget_id = 70330393, pos = { x = -2987.589, y = 277.462, z = 4739.801 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176029, gadget_id = 70330392, pos = { x = -2995.889, y = 285.362, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176030, gadget_id = 70330392, pos = { x = -2986.389, y = 279.962, z = 4748.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176031, gadget_id = 70330392, pos = { x = -2976.389, y = 279.962, z = 4748.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176032, gadget_id = 70330393, pos = { x = -2987.589, y = 282.862, z = 4719.601 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176033, gadget_id = 70330392, pos = { x = -3005.889, y = 285.362, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176034, gadget_id = 70220103, pos = { x = -3002.189, y = 288.182, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	-- 钩爪3
	{ config_id = 176035, gadget_id = 70220103, pos = { x = -2990.700, y = 282.782, z = 4710.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	-- 钩爪1
	{ config_id = 176036, gadget_id = 70220103, pos = { x = -2975.949, y = 276.090, z = 4744.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	-- 钩爪2
	{ config_id = 176037, gadget_id = 70220103, pos = { x = -2966.389, y = 276.782, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 176041, gadget_id = 70290501, pos = { x = -2986.149, y = 275.782, z = 4729.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176042, gadget_id = 70290501, pos = { x = -2987.787, y = 277.070, z = 4735.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176043, gadget_id = 70290501, pos = { x = -2979.030, y = 281.782, z = 4748.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176044, gadget_id = 70290501, pos = { x = -2987.867, y = 281.782, z = 4745.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176045, gadget_id = 70290501, pos = { x = -2998.079, y = 267.137, z = 4728.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176046, gadget_id = 70290501, pos = { x = -2995.136, y = 287.182, z = 4729.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176047, gadget_id = 70290501, pos = { x = -3002.929, y = 287.182, z = 4728.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176048, gadget_id = 70290501, pos = { x = -3007.570, y = 273.060, z = 4740.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176049, gadget_id = 70330392, pos = { x = -3009.189, y = 273.205, z = 4748.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176050, gadget_id = 70290501, pos = { x = -3005.180, y = 275.025, z = 4744.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176051, gadget_id = 70330392, pos = { x = -2966.389, y = 279.962, z = 4748.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176052, gadget_id = 70330392, pos = { x = -2966.389, y = 279.962, z = 4738.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176053, gadget_id = 70330392, pos = { x = -2966.389, y = 279.962, z = 4728.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176054, gadget_id = 70330392, pos = { x = -2966.389, y = 279.962, z = 4718.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176055, gadget_id = 70330392, pos = { x = -2976.389, y = 279.962, z = 4718.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176056, gadget_id = 70330392, pos = { x = -2976.389, y = 279.962, z = 4708.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176057, gadget_id = 70330392, pos = { x = -2986.389, y = 279.962, z = 4708.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176058, gadget_id = 70330392, pos = { x = -2985.889, y = 285.362, z = 4728.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176059, gadget_id = 70290501, pos = { x = -2984.867, y = 281.782, z = 4751.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176060, gadget_id = 70290501, pos = { x = -2973.330, y = 281.782, z = 4746.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176061, gadget_id = 70290501, pos = { x = -2969.430, y = 281.782, z = 4743.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176062, gadget_id = 70290501, pos = { x = -2966.130, y = 281.782, z = 4741.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176063, gadget_id = 70290501, pos = { x = -2965.730, y = 281.782, z = 4737.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176064, gadget_id = 70290501, pos = { x = -2967.430, y = 281.782, z = 4732.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176065, gadget_id = 70290501, pos = { x = -2968.430, y = 281.782, z = 4727.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176066, gadget_id = 70290501, pos = { x = -2968.930, y = 281.782, z = 4723.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176067, gadget_id = 70290501, pos = { x = -2973.730, y = 281.782, z = 4717.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176069, gadget_id = 70290501, pos = { x = -2982.525, y = 281.782, z = 4711.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176070, gadget_id = 70290501, pos = { x = -2987.780, y = 283.177, z = 4716.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 176071, gadget_id = 70290501, pos = { x = -2989.165, y = 285.531, z = 4720.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
	-- 钩爪1
	{ config_id = 176038, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3006.189, y = 267.262, z = 4728.801 }, area_id = 28 },
	-- 钩爪2
	{ config_id = 176039, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2975.949, y = 273.590, z = 4744.980 }, area_id = 28 },
	-- 钩爪3
	{ config_id = 176040, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2986.347, y = 280.282, z = 4710.188 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1176012, name = "CHALLENGE_SUCCESS_176012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_176012", trigger_count = 0 },
	{ config_id = 1176013, name = "CHALLENGE_FAIL_176013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_176013", trigger_count = 0 },
	{ config_id = 1176014, name = "GADGET_STATE_CHANGE_176014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_176014", action = "action_EVENT_GADGET_STATE_CHANGE_176014", trigger_count = 0 },
	{ config_id = 1176015, name = "ANY_GADGET_DIE_176015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1176016, name = "GADGET_CREATE_176016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_176016", action = "action_EVENT_GADGET_CREATE_176016", trigger_count = 0 },
	{ config_id = 1176017, name = "SELECT_OPTION_176017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_176017", action = "action_EVENT_SELECT_OPTION_176017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1176018, name = "GROUP_LOAD_176018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_176018", trigger_count = 0 },
	-- 钩爪1
	{ config_id = 1176038, name = "ENTER_REGION_176038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176038", action = "action_EVENT_ENTER_REGION_176038" },
	-- 钩爪2
	{ config_id = 1176039, name = "ENTER_REGION_176039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176039", action = "action_EVENT_ENTER_REGION_176039" },
	-- 钩爪3
	{ config_id = 1176040, name = "ENTER_REGION_176040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176040", action = "action_EVENT_ENTER_REGION_176040" }
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
		-- description = ,
		monsters = { },
		gadgets = { 176002, 176003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_176012", "CHALLENGE_FAIL_176013", "GADGET_STATE_CHANGE_176014", "ANY_GADGET_DIE_176015", "GADGET_CREATE_176016", "SELECT_OPTION_176017", "GROUP_LOAD_176018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 176004, 176005, 176006, 176007, 176008, 176009, 176010, 176011, 176022, 176041, 176042, 176043, 176044, 176045, 176046, 176047, 176048, 176050, 176059, 176060, 176061, 176062, 176063, 176064, 176065, 176066, 176067, 176069, 176070, 176071 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = end_suite,
		monsters = { },
		gadgets = { 176002, 176033, 176034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 176019, 176020, 176021, 176023, 176024, 176026, 176027, 176028, 176029, 176030, 176031, 176032, 176033, 176049, 176051, 176052, 176053, 176054, 176055, 176056, 176057, 176058 },
		regions = { 176038, 176039, 176040 },
		triggers = { "ENTER_REGION_176038", "ENTER_REGION_176039", "ENTER_REGION_176040" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 176035, 176036, 176037 },
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
function action_EVENT_CHALLENGE_SUCCESS_176012(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133310146) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 176002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310176, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310176, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310176, 5)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310176, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为176001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_176013(context, evt)
	-- 将configid为 176002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为176003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310176, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310176, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310176, 5)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_176014(context, evt)
	if 176002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_176014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_176016(context, evt)
	if 176003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_176016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310176, 176003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_176017(context, evt)
	-- 判断是gadgetid 176003 option_id 177
	if 176003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_176017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 176003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 176002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2994.419，265.0237，4728.721），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2994.419, y=265.0237, z=4728.721}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_176018(context, evt)
	-- 将configid为 176002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为176003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310176, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310176, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310176, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_176038(context, evt)
	if evt.param1 ~= 176038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176038(context, evt)
	-- 创建id为176036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_176039(context, evt)
	if evt.param1 ~= 176039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176039(context, evt)
	-- 创建id为176037的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176037 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_176040(context, evt)
	if evt.param1 ~= 176040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176040(context, evt)
	-- 创建id为176035的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176035 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end