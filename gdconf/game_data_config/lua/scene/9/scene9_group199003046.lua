-- 基础信息
local base_info = {
	group_id = 199003046
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
	[46001] = { config_id = 46001, gadget_id = 70900009, pos = { x = -713.450, y = 121.480, z = -14.280 }, rot = { x = 17.738, y = 359.080, z = 3.451 }, level = 20, persistent = true, area_id = 403 },
	-- 2
	[46002] = { config_id = 46002, gadget_id = 70900039, pos = { x = -730.555, y = 122.539, z = 13.400 }, rot = { x = 327.935, y = 359.140, z = 347.195 }, level = 20, persistent = true, area_id = 403 },
	-- 3
	[46003] = { config_id = 46003, gadget_id = 70900007, pos = { x = -721.510, y = 121.850, z = 24.055 }, rot = { x = 323.312, y = 356.198, z = 359.917 }, level = 20, persistent = true, area_id = 403 },
	-- 4
	[46004] = { config_id = 46004, gadget_id = 70900049, pos = { x = -736.618, y = 120.413, z = -15.802 }, rot = { x = 359.659, y = 0.000, z = 334.775 }, level = 20, persistent = true, area_id = 403 },
	[46006] = { config_id = 46006, gadget_id = 70110003, pos = { x = -716.742, y = 149.901, z = -7.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	-- 冰星
	[46020] = { config_id = 46020, gadget_id = 70220119, pos = { x = -713.651, y = 124.408, z = -13.346 }, rot = { x = 17.738, y = 359.080, z = 3.451 }, level = 1, persistent = true, area_id = 403 },
	-- 风星
	[46021] = { config_id = 46021, gadget_id = 70220119, pos = { x = -729.772, y = 125.360, z = 11.645 }, rot = { x = 327.935, y = 359.140, z = 347.195 }, level = 1, persistent = true, area_id = 403 },
	-- 火星
	[46022] = { config_id = 46022, gadget_id = 70220119, pos = { x = -721.373, y = 124.615, z = 22.062 }, rot = { x = 323.312, y = 356.198, z = 359.917 }, level = 1, persistent = true, area_id = 403 },
	-- 水星
	[46023] = { config_id = 46023, gadget_id = 70220119, pos = { x = -735.254, y = 123.307, z = -15.819 }, rot = { x = 359.659, y = 0.000, z = 334.775 }, level = 1, persistent = true, area_id = 403 }
}

-- 区域
regions = {
	[46011] = { config_id = 46011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -716.742, y = 149.901, z = -7.489 }, area_id = 403 },
	[46017] = { config_id = 46017, shape = RegionShape.SPHERE, radius = 5, pos = { x = -716.742, y = 149.901, z = -7.489 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1046005, name = "GROUP_LOAD_46005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_46005", trigger_count = 0 },
	-- 冰方碑激活改雾天
	{ config_id = 1046007, name = "GADGET_STATE_CHANGE_46007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46007", action = "action_EVENT_GADGET_STATE_CHANGE_46007", trigger_count = 0 },
	-- 火方碑变晴天
	{ config_id = 1046008, name = "GADGET_STATE_CHANGE_46008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46008", action = "action_EVENT_GADGET_STATE_CHANGE_46008", trigger_count = 0 },
	-- 水方碑变雨天
	{ config_id = 1046009, name = "GADGET_STATE_CHANGE_46009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46009", action = "action_EVENT_GADGET_STATE_CHANGE_46009", trigger_count = 0 },
	-- 风元素方碑变风天
	{ config_id = 1046010, name = "GADGET_STATE_CHANGE_46010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46010", action = "action_EVENT_GADGET_STATE_CHANGE_46010", trigger_count = 0 },
	{ config_id = 1046011, name = "ENTER_REGION_46011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46011", action = "action_EVENT_ENTER_REGION_46011", trigger_count = 0 },
	-- 冰方碑激活加变量
	{ config_id = 1046012, name = "GADGET_STATE_CHANGE_46012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46012", action = "action_EVENT_GADGET_STATE_CHANGE_46012", trigger_count = 0 },
	-- 风方碑激活加变量
	{ config_id = 1046013, name = "GADGET_STATE_CHANGE_46013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46013", action = "action_EVENT_GADGET_STATE_CHANGE_46013", trigger_count = 0 },
	-- 火方碑激活加变量
	{ config_id = 1046014, name = "GADGET_STATE_CHANGE_46014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46014", action = "action_EVENT_GADGET_STATE_CHANGE_46014", trigger_count = 0 },
	-- 水方碑激活加变量
	{ config_id = 1046015, name = "GADGET_STATE_CHANGE_46015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46015", action = "action_EVENT_GADGET_STATE_CHANGE_46015", trigger_count = 0 },
	-- times=4的时候判断参数
	{ config_id = 1046016, name = "VARIABLE_CHANGE_46016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_46016", action = "action_EVENT_VARIABLE_CHANGE_46016", trigger_count = 0 },
	{ config_id = 1046017, name = "ENTER_REGION_46017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46017", action = "action_EVENT_ENTER_REGION_46017", trigger_count = 0 },
	{ config_id = 1046018, name = "GROUP_LOAD_46018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_46018", action = "action_EVENT_GROUP_LOAD_46018", trigger_count = 0 },
	{ config_id = 1046019, name = "QUEST_START_46019", event = EventType.EVENT_QUEST_START, source = "7902305", condition = "", action = "action_EVENT_QUEST_START_46019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "times", value = 0, no_refresh = true },
	{ config_id = 2, name = "key", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1046024, name = "GROUP_LOAD_46024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_46024", trigger_count = 0 }
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
		gadgets = { 46001, 46002, 46003, 46004 },
		regions = { },
		triggers = { "GROUP_LOAD_46005", "GADGET_STATE_CHANGE_46007", "GADGET_STATE_CHANGE_46008", "GADGET_STATE_CHANGE_46009", "GADGET_STATE_CHANGE_46010", "GADGET_STATE_CHANGE_46012", "GADGET_STATE_CHANGE_46013", "GADGET_STATE_CHANGE_46014", "GADGET_STATE_CHANGE_46015", "VARIABLE_CHANGE_46016", "GROUP_LOAD_46018", "QUEST_START_46019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
		gadgets = { 46006 },
		regions = { 46011 },
		triggers = { "ENTER_REGION_46011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 46006 },
		regions = { 46017 },
		triggers = { "ENTER_REGION_46017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_46005(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003046, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003046, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46007(context, evt)
	if 46001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46007(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 1, 199003100)	
	ScriptLib.SetWeatherAreaState(context, 9007, 1)
			
	ScriptLib.SetWeatherAreaState(context, 9005, 0)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)	
	
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46004, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 46020 })
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46008(context, evt)
	if 46003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46008(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 3, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)		
	
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46004, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 46022 })
			
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46009(context, evt)
	if 46004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46009(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 4, 199003100)		
	ScriptLib.SetWeatherAreaState(context, 9006, 1)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	ScriptLib.SetWeatherAreaState(context, 9005, 0)
	
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 46023 })
			
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46010(context, evt)
	if 46002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46010(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 2, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)		
	
	--改重置其他方碑
	ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46004, GadgetState.Default)
	--出星星计数
	ScriptLib.CreateGadget(context, { config_id = 46021 })
			
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46011(context, evt)
	if evt.param1 ~= 46011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46011(context, evt)
	
	
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-660, y=334, z=-43}, radius = 2, rot = {x=0, y=0, z=1}, is_skip_ui=true, scene_id =9} ) 
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans9")
	return 0
	 
	
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46012(context, evt)
	if 46001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46012(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_46013(context, evt)
	if 46002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46013(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_46014(context, evt)
	if 46003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46014(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_46015(context, evt)
	if 46004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46015(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_46016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为1243
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 199003046) <4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_46016(context, evt)
		ScriptLib.SetGroupVariableValue(context, "times", 0)
	ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46020 )
	ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46021 )
	ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46022 )
	ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46023 ) 
	
	ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.Default)
	
	ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 46004, GadgetState.Default)
		
		if ScriptLib.GetGroupVariableValueByGroup(context, "key", 199003046) == 4321 then
			ScriptLib.SetGroupVariableValue(context, "key", 0) 
		    ScriptLib.RemoveExtraGroupSuite(context, 199003046, 3)
			    ScriptLib.AddExtraGroupSuite(context, 199003046, 4)
		ScriptLib.AddQuestProgress(context, "quest7902305finish")
		local pos = {x=-716, y=149, z=-7}
		  local pos_follow = {x=0, y=0, z=0}
		    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
		                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
		                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
						ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
		        return -1
					end 
				
				end
		
				if ScriptLib.GetGroupVariableValueByGroup(context, "key", 199003046) == 4123 then
					ScriptLib.SetGroupVariableValue(context, "key", 0) 
		   ScriptLib.RemoveExtraGroupSuite(context, 199003046, 4)
					ScriptLib.AddExtraGroupSuite(context, 199003046, 3)
		local pos = {x=-716, y=149, z=-7}
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
function condition_EVENT_ENTER_REGION_46017(context, evt)
	if evt.param1 ~= 46017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46017(context, evt)
	
	
	 ScriptLib.AddQuestProgress(context, "quest7902306finish") 
	
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = { x=-276, y=120, z=495.5}, radius = 2, rot = {x=0, y=0, z=1}, is_skip_ui=false, scene_id =9} )
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans3")
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_46018(context, evt)
	-- 判断变量"times"为0
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_46018(context, evt)
	 ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46020 ) 
	
	ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46021 )
	
	 ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46022 )
	
	 ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46023 ) 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_46019(context, evt)
	 ScriptLib.RefreshGroup(context, { group_id = 199003046, suite = 1 }) 
	
	ScriptLib.SetGroupVariableValue(context, "key", 0)
	
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	 ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46020 ) 
	ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46021 )
	
	ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46022 ) 
	
	 ScriptLib.RemoveEntityByConfigId(context, 199003046, EntityType.GADGET, 46023 ) 
	
	ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.Default) 
	
	ScriptLib.SetGadgetStateByConfigId(context, 46004, GadgetState.Default) 
	
	ScriptLib.SetGadgetStateByConfigId(context, 46003, GadgetState.Default) 
	ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default) 
	
	return 0
end