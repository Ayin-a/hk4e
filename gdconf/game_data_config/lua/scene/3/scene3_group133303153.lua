-- 基础信息
local base_info = {
	group_id = 133303153
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
	{ config_id = 153001, gadget_id = 70230112, pos = { x = -1360.013, y = 264.491, z = 3304.755 }, rot = { x = 3.805, y = 85.155, z = 162.871 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 153002, gadget_id = 70230112, pos = { x = -1355.829, y = 262.205, z = 3306.315 }, rot = { x = 30.166, y = 297.963, z = 63.510 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 153003, gadget_id = 70230112, pos = { x = -1356.313, y = 263.390, z = 3305.728 }, rot = { x = 27.159, y = 81.572, z = 174.865 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 153004, gadget_id = 70230112, pos = { x = -1357.487, y = 263.029, z = 3305.749 }, rot = { x = 299.532, y = 111.415, z = 157.490 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 153005, gadget_id = 70230112, pos = { x = -1358.587, y = 263.475, z = 3305.074 }, rot = { x = 19.858, y = 244.667, z = 324.572 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 153006, gadget_id = 70230112, pos = { x = -1359.853, y = 262.896, z = 3305.109 }, rot = { x = 84.224, y = 256.157, z = 34.602 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 153007, gadget_id = 70230112, pos = { x = -1354.870, y = 262.967, z = 3305.934 }, rot = { x = 52.809, y = 34.877, z = 165.328 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 153008, gadget_id = 70211131, pos = { x = -1355.830, y = 260.989, z = 3313.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	-- 注目创宝箱
	{ config_id = 153009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1356.300, y = 261.040, z = 3315.056 }, area_id = 23 },
	-- 靠近涂鸦注目
	{ config_id = 153019, shape = RegionShape.SPHERE, radius = 6, pos = { x = -1354.432, y = 261.021, z = 3310.540 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 注目创宝箱
	{ config_id = 1153009, name = "ENTER_REGION_153009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153009", action = "action_EVENT_ENTER_REGION_153009" },
	-- No_1改变涂鸦1亮
	{ config_id = 1153010, name = "VARIABLE_CHANGE_153010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153010", action = "action_EVENT_VARIABLE_CHANGE_153010" },
	-- No_2改变涂鸦2亮
	{ config_id = 1153011, name = "VARIABLE_CHANGE_153011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153011", action = "action_EVENT_VARIABLE_CHANGE_153011" },
	-- No_3改变涂鸦3亮
	{ config_id = 1153012, name = "VARIABLE_CHANGE_153012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153012", action = "action_EVENT_VARIABLE_CHANGE_153012" },
	-- No_4改变涂鸦4亮
	{ config_id = 1153013, name = "VARIABLE_CHANGE_153013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153013", action = "action_EVENT_VARIABLE_CHANGE_153013" },
	-- No_5改变涂鸦5亮
	{ config_id = 1153014, name = "VARIABLE_CHANGE_153014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153014", action = "action_EVENT_VARIABLE_CHANGE_153014" },
	-- No_6改变涂鸦6亮
	{ config_id = 1153015, name = "VARIABLE_CHANGE_153015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153015", action = "action_EVENT_VARIABLE_CHANGE_153015" },
	-- No_7改变涂鸦7亮
	{ config_id = 1153016, name = "VARIABLE_CHANGE_153016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153016", action = "action_EVENT_VARIABLE_CHANGE_153016" },
	-- 全亮则创suite2
	{ config_id = 1153017, name = "GADGET_STATE_CHANGE_153017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153017", action = "action_EVENT_GADGET_STATE_CHANGE_153017" },
	-- count==1保底创注目region
	{ config_id = 1153018, name = "GROUP_LOAD_153018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153018", action = "action_EVENT_GROUP_LOAD_153018", trigger_count = 0 },
	-- 靠近涂鸦注目
	{ config_id = 1153019, name = "ENTER_REGION_153019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153019", action = "action_EVENT_ENTER_REGION_153019" },
	-- count==2保底创宝箱
	{ config_id = 1153020, name = "GROUP_LOAD_153020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153020", action = "action_EVENT_GROUP_LOAD_153020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "No_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "No_2", value = 0, no_refresh = true },
	{ config_id = 3, name = "No_3", value = 0, no_refresh = true },
	{ config_id = 4, name = "No_4", value = 0, no_refresh = true },
	{ config_id = 5, name = "No_5", value = 0, no_refresh = true },
	{ config_id = 6, name = "No_6", value = 0, no_refresh = true },
	{ config_id = 7, name = "No_7", value = 0, no_refresh = true },
	{ config_id = 8, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 153001, 153002, 153003, 153004, 153005, 153006, 153007 },
		regions = { 153019 },
		triggers = { "VARIABLE_CHANGE_153010", "VARIABLE_CHANGE_153011", "VARIABLE_CHANGE_153012", "VARIABLE_CHANGE_153013", "VARIABLE_CHANGE_153014", "VARIABLE_CHANGE_153015", "VARIABLE_CHANGE_153016", "GADGET_STATE_CHANGE_153017", "GROUP_LOAD_153018", "ENTER_REGION_153019", "GROUP_LOAD_153020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 153009 },
		triggers = { "ENTER_REGION_153009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_153009(context, evt)
	if evt.param1 ~= 153009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153009(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为153008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 153008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1355.83, y=260.9886, z=3313.716}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1355.83, y=260.9886, z=3313.716}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"No_1"为1
	if ScriptLib.GetGroupVariableValue(context, "No_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153010(context, evt)
	-- 将configid为 153001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"No_2"为1
	if ScriptLib.GetGroupVariableValue(context, "No_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153011(context, evt)
	-- 将configid为 153002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"No_3"为1
	if ScriptLib.GetGroupVariableValue(context, "No_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153012(context, evt)
	-- 将configid为 153003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"No_4"为1
	if ScriptLib.GetGroupVariableValue(context, "No_4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153013(context, evt)
	-- 将configid为 153004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"No_5"为1
	if ScriptLib.GetGroupVariableValue(context, "No_5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153014(context, evt)
	-- 将configid为 153005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"No_6"为1
	if ScriptLib.GetGroupVariableValue(context, "No_6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153015(context, evt)
	-- 将configid为 153006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"No_7"为1
	if ScriptLib.GetGroupVariableValue(context, "No_7") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153016(context, evt)
	-- 将configid为 153007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303153, 153001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303153, 153002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303153, 153003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303153, 153004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303153, 153005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303153, 153006) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303153, 153007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153017(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303153, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153018(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303153, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_153019(context, evt)
	if evt.param1 ~= 153019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153019(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1356.313, y=263.3896, z=3305.728}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1356.313, y=263.3896, z=3305.728}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153020(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153020(context, evt)
	-- 创建id为153008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 153008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end