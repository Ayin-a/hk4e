-- 基础信息
local base_info = {
	group_id = 199003004
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
	-- 1
	[4001] = { config_id = 4001, gadget_id = 70900009, pos = { x = -705.146, y = 127.152, z = 15.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 403 },
	-- 2
	[4002] = { config_id = 4002, gadget_id = 70900039, pos = { x = -724.919, y = 120.682, z = 2.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 403 },
	-- 3
	[4003] = { config_id = 4003, gadget_id = 70900007, pos = { x = -732.967, y = 150.961, z = -10.869 }, rot = { x = 339.165, y = 359.213, z = 350.545 }, level = 1, persistent = true, area_id = 403 },
	-- 4
	[4004] = { config_id = 4004, gadget_id = 70900049, pos = { x = -689.323, y = 153.480, z = -18.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 403 },
	[4010] = { config_id = 4010, gadget_id = 70110003, pos = { x = -705.586, y = 159.195, z = -16.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- 冰的星
	[4019] = { config_id = 4019, gadget_id = 70220119, pos = { x = -705.146, y = 130.570, z = 15.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 403 },
	-- 风的星
	[4020] = { config_id = 4020, gadget_id = 70220119, pos = { x = -724.919, y = 124.093, z = 2.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 403 },
	-- 火的星
	[4021] = { config_id = 4021, gadget_id = 70220119, pos = { x = -732.397, y = 154.069, z = -12.044 }, rot = { x = 339.165, y = 359.213, z = 350.545 }, level = 1, persistent = true, area_id = 403 },
	-- 水的星
	[4022] = { config_id = 4022, gadget_id = 70220119, pos = { x = -689.323, y = 156.792, z = -18.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 403 }
}

-- 区域
regions = {
	[4011] = { config_id = 4011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -705.586, y = 159.195, z = -16.027 }, area_id = 403 },
	-- kelidao
	[4017] = { config_id = 4017, shape = RegionShape.SPHERE, radius = 5, pos = { x = -705.586, y = 159.195, z = -16.027 }, area_id = 403 }
}

-- 触发器
triggers = {
	-- 冰方碑激活改雾天
	{ config_id = 1004005, name = "GADGET_STATE_CHANGE_4005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4005", action = "action_EVENT_GADGET_STATE_CHANGE_4005", trigger_count = 0 },
	-- 火方碑变晴天
	{ config_id = 1004006, name = "GADGET_STATE_CHANGE_4006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4006", action = "action_EVENT_GADGET_STATE_CHANGE_4006", trigger_count = 0 },
	-- 水方碑变雨天
	{ config_id = 1004007, name = "GADGET_STATE_CHANGE_4007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4007", action = "action_EVENT_GADGET_STATE_CHANGE_4007", trigger_count = 0 },
	-- 风元素方碑变风天
	{ config_id = 1004008, name = "GADGET_STATE_CHANGE_4008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4008", action = "action_EVENT_GADGET_STATE_CHANGE_4008", trigger_count = 0 },
	-- groupload去传送门
	{ config_id = 1004009, name = "GROUP_LOAD_4009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4009", trigger_count = 0 },
	{ config_id = 1004011, name = "ENTER_REGION_4011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4011", action = "action_EVENT_ENTER_REGION_4011", trigger_count = 0 },
	-- 冰方碑激活加变量
	{ config_id = 1004012, name = "GADGET_STATE_CHANGE_4012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4012", action = "action_EVENT_GADGET_STATE_CHANGE_4012", trigger_count = 0 },
	-- 风方碑激活加变量
	{ config_id = 1004013, name = "GADGET_STATE_CHANGE_4013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4013", action = "action_EVENT_GADGET_STATE_CHANGE_4013", trigger_count = 0 },
	-- 火方碑激活加变量
	{ config_id = 1004014, name = "GADGET_STATE_CHANGE_4014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4014", action = "action_EVENT_GADGET_STATE_CHANGE_4014", trigger_count = 0 },
	-- 水方碑激活加变量
	{ config_id = 1004015, name = "GADGET_STATE_CHANGE_4015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4015", action = "action_EVENT_GADGET_STATE_CHANGE_4015", trigger_count = 0 },
	-- times=4的时候判断参数
	{ config_id = 1004016, name = "VARIABLE_CHANGE_4016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4016", action = "action_EVENT_VARIABLE_CHANGE_4016", trigger_count = 0 },
	-- kelidao
	{ config_id = 1004017, name = "ENTER_REGION_4017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4017", action = "action_EVENT_ENTER_REGION_4017", trigger_count = 0 },
	-- 保底times为0重置方碑--》改为重置星星
	{ config_id = 1004018, name = "GROUP_LOAD_4018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4018", action = "action_EVENT_GROUP_LOAD_4018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "times", value = 0, no_refresh = true },
	{ config_id = 2, name = "key", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1004023, name = "GROUP_LOAD_4023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4023", trigger_count = 0 }
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
		gadgets = { 4001, 4002, 4003, 4004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4005", "GADGET_STATE_CHANGE_4006", "GADGET_STATE_CHANGE_4007", "GADGET_STATE_CHANGE_4008", "GROUP_LOAD_4009", "GADGET_STATE_CHANGE_4012", "GADGET_STATE_CHANGE_4013", "GADGET_STATE_CHANGE_4014", "GADGET_STATE_CHANGE_4015", "VARIABLE_CHANGE_4016", "GROUP_LOAD_4018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雨天suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4010 },
		regions = { 4011 },
		triggers = { "ENTER_REGION_4011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4010 },
		regions = { 4017 },
		triggers = { "ENTER_REGION_4017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 1, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9007, 1)
	ScriptLib.SetWeatherAreaState(context, 9005, 0)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	
	
	
	--风
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 2 })
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 4019 })
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4006(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4006(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 3, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	
	--风
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 2 })
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 4021 })
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 4, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9006, 1)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	ScriptLib.SetWeatherAreaState(context, 9005, 0)
	
	--风
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 2 })
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 4022 })
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	--改变量
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 2, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	
	--风
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 1 })
	
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 4020 })
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4009(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003004, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4011(context, evt)
	if evt.param1 ~= 4011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4011(context, evt)
	
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-660, y=334, z=-43}, radius = 2, rot = {x=0, y=0, z=1}, is_skip_ui=true, scene_id =9} ) 
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans9")
	return 0
	 
	
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4012(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4012(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+1*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4013(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4013(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+2*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4014(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4014(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+3*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4015(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4015(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+4*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为1243
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 199003004) < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4016(context, evt)
					ScriptLib.SetGroupVariableValue(context, "times", 0) 
	ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4019 )
	ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4020 )
	ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4021 )
	ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4022 )
	
	ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default)
	
	ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default)
			
				if ScriptLib.GetGroupVariableValueByGroup(context, "key", 199003004) == 4321 then
					ScriptLib.SetGroupVariableValue(context, "key", 0) 
		    ScriptLib.RemoveExtraGroupSuite(context, 199003004, 3)
			    ScriptLib.AddExtraGroupSuite(context, 199003004, 4)
		ScriptLib.AddQuestProgress(context, "quest7902305finish")
		
		
		
		local pos = {x=-705, y=159, z=-16}
		  local pos_follow = {x=0, y=0, z=0}
		    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
		                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
		                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
						ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
		        return -1
					end 
		
				
				end
		
				if ScriptLib.GetGroupVariableValueByGroup(context, "key", 199003004) == 4123 then
					ScriptLib.SetGroupVariableValue(context, "key", 0) 
		   ScriptLib.RemoveExtraGroupSuite(context, 199003004, 4)
					ScriptLib.AddExtraGroupSuite(context, 199003004, 3)
					local pos = {x=-705, y=159, z=-16}
					local pos_follow = {x=0, y=0, z=0}
					  if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
																		is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
																		is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
								  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
						  return -1
							  end 
				  
						  end
					  
					ScriptLib.SetGroupVariableValue(context, "key", 0)	  
						
					return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4017(context, evt)
	if evt.param1 ~= 4017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4017(context, evt)
	ScriptLib.AddQuestProgress(context, "quest7902306finish")
	
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = { x=-276.9, y=120, z=495.2}, radius = 2, rot = {x=0, y=0, z=1}, is_skip_ui=false, scene_id =9} )
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans3")
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4018(context, evt)
	-- 判断变量"times"为0
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4018(context, evt)
	 ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4019 ) 
	 ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4020 ) 
	 ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4021 )
	ScriptLib.RemoveEntityByConfigId(context, 199003004, EntityType.GADGET, 4022 ) 
	
	
	return 0
end