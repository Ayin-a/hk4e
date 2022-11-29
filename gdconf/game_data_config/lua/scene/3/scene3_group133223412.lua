-- 基础信息
local base_info = {
	group_id = 133223412
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 412008, monster_id = 22040201, pos = { x = -6076.010, y = 210.570, z = -2846.952 }, rot = { x = 0.000, y = 154.787, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 412010, monster_id = 22040201, pos = { x = -6069.858, y = 210.582, z = -2846.294 }, rot = { x = 0.000, y = 184.549, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 412001, gadget_id = 70217011, pos = { x = -6056.870, y = 198.258, z = -2902.857 }, rot = { x = 331.556, y = 118.842, z = 354.546 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 412002, gadget_id = 70217011, pos = { x = -6072.734, y = 210.604, z = -2847.478 }, rot = { x = 354.053, y = 152.446, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 412003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6072.834, y = 210.573, z = -2847.018 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1412003, name = "ENTER_REGION_412003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_412003" },
	{ config_id = 1412004, name = "GADGET_STATE_CHANGE_412004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412004", action = "action_EVENT_GADGET_STATE_CHANGE_412004", trigger_count = 0 },
	{ config_id = 1412005, name = "GADGET_STATE_CHANGE_412005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412005", action = "action_EVENT_GADGET_STATE_CHANGE_412005", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 412006, monster_id = 24020101, pos = { x = -6070.965, y = 210.587, z = -2845.446 }, rot = { x = 0.000, y = 13.312, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
		{ config_id = 412007, monster_id = 24020201, pos = { x = -6075.126, y = 210.554, z = -2846.287 }, rot = { x = 0.000, y = 154.764, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
		{ config_id = 412009, monster_id = 22040201, pos = { x = -6073.372, y = 210.586, z = -2844.332 }, rot = { x = 0.000, y = 178.984, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
	},
	gadgets = {
		{ config_id = 412011, gadget_id = 70330114, pos = { x = -6007.771, y = 215.345, z = -2916.363 }, rot = { x = 0.000, y = 295.089, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412012, gadget_id = 70330114, pos = { x = -6019.103, y = 207.531, z = -2906.081 }, rot = { x = 0.000, y = 286.769, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412013, gadget_id = 70330114, pos = { x = -6019.980, y = 204.836, z = -2890.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412014, gadget_id = 70330114, pos = { x = -6021.386, y = 208.693, z = -2891.835 }, rot = { x = 0.000, y = 241.180, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412015, gadget_id = 70330114, pos = { x = -6039.823, y = 211.638, z = -2907.543 }, rot = { x = 0.000, y = 247.892, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412016, gadget_id = 70330114, pos = { x = -6051.409, y = 208.916, z = -2911.235 }, rot = { x = 6.991, y = 312.904, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412017, gadget_id = 70330114, pos = { x = -6057.283, y = 207.476, z = -2918.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412018, gadget_id = 70330114, pos = { x = -6057.882, y = 208.262, z = -2904.208 }, rot = { x = 62.381, y = 307.227, z = 0.002 }, level = 1, area_id = 18 },
		{ config_id = 412019, gadget_id = 70330114, pos = { x = -6058.207, y = 207.256, z = -2917.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412020, gadget_id = 70330114, pos = { x = -6071.562, y = 211.637, z = -2897.722 }, rot = { x = 0.000, y = 342.127, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412021, gadget_id = 70330114, pos = { x = -6082.957, y = 212.016, z = -2895.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412022, gadget_id = 70330114, pos = { x = -6076.034, y = 210.799, z = -2887.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412023, gadget_id = 70330114, pos = { x = -6076.502, y = 210.216, z = -2877.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412024, gadget_id = 70330114, pos = { x = -6076.573, y = 209.717, z = -2866.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412025, gadget_id = 70330114, pos = { x = -6074.346, y = 211.943, z = -2856.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412026, gadget_id = 70330114, pos = { x = -6080.624, y = 210.806, z = -2850.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412027, gadget_id = 70330114, pos = { x = -6071.353, y = 211.363, z = -2841.925 }, rot = { x = 0.000, y = 48.818, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412028, gadget_id = 70330114, pos = { x = -6059.059, y = 207.958, z = -2834.793 }, rot = { x = 0.000, y = 69.086, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412029, gadget_id = 70330114, pos = { x = -6047.137, y = 209.546, z = -2832.027 }, rot = { x = 331.808, y = 88.485, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412030, gadget_id = 70330114, pos = { x = -6032.606, y = 214.313, z = -2833.898 }, rot = { x = 338.722, y = 130.417, z = 344.664 }, level = 1, area_id = 18 },
		{ config_id = 412031, gadget_id = 70330114, pos = { x = -6022.545, y = 215.134, z = -2843.815 }, rot = { x = 333.591, y = 129.458, z = 0.001 }, level = 1, area_id = 18 },
		{ config_id = 412032, gadget_id = 70330114, pos = { x = -6003.920, y = 222.285, z = -2875.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 412033, gadget_id = 70330114, pos = { x = -6006.401, y = 220.406, z = -2865.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
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
		gadgets = { 412001, 412002 },
		regions = { 412003 },
		triggers = { "ENTER_REGION_412003", "GADGET_STATE_CHANGE_412004", "GADGET_STATE_CHANGE_412005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 412008, 412010 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_412003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223412, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_412004(context, evt)
	if 412001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_412004(context, evt)
	-- 针对当前group内变量名为 "FeatherCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FeatherCount", 1, 133223123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223513) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_412005(context, evt)
	if 412002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_412005(context, evt)
	-- 针对当前group内变量名为 "FeatherCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FeatherCount", 1, 133223123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223514) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end