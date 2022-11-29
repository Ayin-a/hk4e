-- 基础信息
local base_info = {
	group_id = 201017013
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
	{ config_id = 13001, gadget_id = 70900201, pos = { x = -18.278, y = 112.680, z = 68.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13002, gadget_id = 70690008, pos = { x = -37.833, y = 95.339, z = 56.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13003, gadget_id = 70690008, pos = { x = -76.060, y = 95.339, z = 36.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13004, gadget_id = 70690008, pos = { x = -101.776, y = 95.339, z = 56.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13005, gadget_id = 70690008, pos = { x = -90.604, y = 95.339, z = 87.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13006, gadget_id = 70690008, pos = { x = -69.194, y = 95.339, z = 109.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13007, gadget_id = 70690008, pos = { x = -31.169, y = 95.339, z = 85.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13008, gadget_id = 70690001, pos = { x = -38.598, y = 119.368, z = 92.594 }, rot = { x = 0.000, y = 307.991, z = 0.000 }, level = 1 },
	{ config_id = 13009, gadget_id = 70690001, pos = { x = -52.586, y = 119.368, z = 103.816 }, rot = { x = 0.000, y = 304.694, z = 0.000 }, level = 1 },
	{ config_id = 13010, gadget_id = 70690001, pos = { x = -50.402, y = 119.367, z = 48.111 }, rot = { x = 0.000, y = 245.880, z = 0.000 }, level = 1 },
	{ config_id = 13011, gadget_id = 70690001, pos = { x = -64.345, y = 119.368, z = 40.850 }, rot = { x = 0.000, y = 249.922, z = 0.000 }, level = 1 },
	{ config_id = 13012, gadget_id = 70690001, pos = { x = -93.877, y = 119.368, z = 77.114 }, rot = { x = 0.000, y = 189.529, z = 0.000 }, level = 1 },
	{ config_id = 13013, gadget_id = 70690001, pos = { x = -98.128, y = 119.368, z = 64.569 }, rot = { x = 0.000, y = 193.113, z = 0.000 }, level = 1 },
	{ config_id = 13015, gadget_id = 70360005, pos = { x = -89.947, y = 111.873, z = 35.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13016, gadget_id = 70360005, pos = { x = -78.711, y = 117.599, z = 111.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13020, gadget_id = 70350070, pos = { x = -39.244, y = 117.800, z = 71.630 }, rot = { x = 278.911, y = 86.249, z = 9.285 }, level = 1 },
	{ config_id = 13021, gadget_id = 70350072, pos = { x = -79.360, y = 120.980, z = 94.620 }, rot = { x = 274.456, y = 338.583, z = 350.300 }, level = 1 },
	{ config_id = 13022, gadget_id = 70350061, pos = { x = -84.930, y = 117.460, z = 52.020 }, rot = { x = 270.000, y = 219.210, z = 0.000 }, level = 1 },
	{ config_id = 13023, gadget_id = 70360002, pos = { x = -18.394, y = 111.691, z = 68.548 }, rot = { x = 0.000, y = 99.723, z = 0.000 }, level = 1 },
	{ config_id = 13025, gadget_id = 70360005, pos = { x = -26.196, y = 111.716, z = 62.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13026, gadget_id = 70360005, pos = { x = -21.291, y = 111.735, z = 78.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13029, gadget_id = 70360005, pos = { x = -102.682, y = 111.853, z = 44.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13030, gadget_id = 70360005, pos = { x = -88.464, y = 117.626, z = 100.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 13014, shape = RegionShape.SPHERE, radius = 10, pos = { x = -17.541, y = 116.709, z = 68.223 } }
}

-- 触发器
triggers = {
	{ config_id = 1013014, name = "ENTER_REGION_13014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13014", action = "action_EVENT_ENTER_REGION_13014" },
	{ config_id = 1013017, name = "GADGET_STATE_CHANGE_13017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13017", action = "action_EVENT_GADGET_STATE_CHANGE_13017" },
	{ config_id = 1013018, name = "GADGET_STATE_CHANGE_13018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13018", action = "action_EVENT_GADGET_STATE_CHANGE_13018" },
	{ config_id = 1013019, name = "VARIABLE_CHANGE_13019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_13019", action = "action_EVENT_VARIABLE_CHANGE_13019" },
	{ config_id = 1013027, name = "GADGET_STATE_CHANGE_13027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13027", action = "action_EVENT_GADGET_STATE_CHANGE_13027" },
	{ config_id = 1013028, name = "GADGET_STATE_CHANGE_13028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13028", action = "action_EVENT_GADGET_STATE_CHANGE_13028" },
	{ config_id = 1013031, name = "GADGET_STATE_CHANGE_13031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13031", action = "action_EVENT_GADGET_STATE_CHANGE_13031" },
	{ config_id = 1013032, name = "GADGET_STATE_CHANGE_13032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13032", action = "action_EVENT_GADGET_STATE_CHANGE_13032" },
	{ config_id = 1013036, name = "GADGET_CREATE_13036", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13036", action = "action_EVENT_GADGET_CREATE_13036" },
	{ config_id = 1013037, name = "SELECT_OPTION_13037", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13037", action = "action_EVENT_SELECT_OPTION_13037" }
}

-- 变量
variables = {
	{ config_id = 1, name = "deathCount", value = 0, no_refresh = false }
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
		gadgets = { 13020, 13021, 13022, 13023 },
		regions = { 13014 },
		triggers = { "ENTER_REGION_13014", "GADGET_CREATE_13036", "SELECT_OPTION_13037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 13002, 13003, 13004, 13005, 13006, 13007, 13008, 13009, 13010, 13011, 13012, 13013, 13015, 13016, 13025, 13026, 13029, 13030 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13017", "GADGET_STATE_CHANGE_13018", "VARIABLE_CHANGE_13019", "GADGET_STATE_CHANGE_13027", "GADGET_STATE_CHANGE_13028", "GADGET_STATE_CHANGE_13031", "GADGET_STATE_CHANGE_13032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_13014(context, evt)
	if evt.param1 ~= 13014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13017(context, evt)
	if 13015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13018(context, evt)
	if 13016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deathCount"为2
	if ScriptLib.GetGroupVariableValue(context, "deathCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13019(context, evt)
	-- 将configid为 13020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017016, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13027(context, evt)
	if 13025 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13028(context, evt)
	if 13026 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13028(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13031(context, evt)
	if 13029 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13031(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13032(context, evt)
	if 13030 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13032(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_13036(context, evt)
	if 13023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13036(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201017013, 13023, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_13037(context, evt)
	-- 判断是gadgetid 13023 option_id 7
	if 13023 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_13037(context, evt)
	-- 删除指定group： 201017013 ；指定config：13023；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201017013, 13023, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 13023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 13001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017016, 2)
	
	-- 触发镜头注目，注目位置为坐标（-39，117，71），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-39, y=117, z=71}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end