-- 基础信息
local base_info = {
	group_id = 199003022
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
	{ config_id = 22001, gadget_id = 70310011, pos = { x = -718.108, y = 125.168, z = -7.591 }, rot = { x = 0.000, y = 67.721, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 22002, gadget_id = 70310011, pos = { x = -716.080, y = 125.771, z = -12.857 }, rot = { x = 0.000, y = 67.721, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 22003, gadget_id = 70310011, pos = { x = -709.781, y = 125.744, z = -11.797 }, rot = { x = 0.000, y = 67.721, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 22004, gadget_id = 70310397, pos = { x = -718.502, y = 126.129, z = -7.023 }, rot = { x = 0.000, y = 166.821, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 22005, gadget_id = 70310397, pos = { x = -715.983, y = 127.126, z = -12.831 }, rot = { x = 0.000, y = 81.415, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 22012, gadget_id = 70350006, pos = { x = -710.031, y = 130.424, z = -6.566 }, rot = { x = 0.000, y = 59.570, z = 182.205 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 403 },
	{ config_id = 22021, gadget_id = 70310240, pos = { x = -710.720, y = 130.021, z = -6.559 }, rot = { x = 0.000, y = 234.051, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
	-- 开始时降下大门
	{ config_id = 22013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -713.686, y = 126.381, z = -11.055 }, area_id = 403 },
	-- 离开区域改变量
	{ config_id = 22016, shape = RegionShape.SPHERE, radius = 15, pos = { x = -713.845, y = 126.461, z = -9.990 }, area_id = 403 },
	-- 开门保底
	{ config_id = 22025, shape = RegionShape.SPHERE, radius = 5, pos = { x = -703.565, y = 127.398, z = -4.204 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1022006, name = "GADGET_STATE_CHANGE_22006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22006", action = "action_EVENT_GADGET_STATE_CHANGE_22006", trigger_count = 0 },
	{ config_id = 1022007, name = "GADGET_STATE_CHANGE_22007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22007", action = "action_EVENT_GADGET_STATE_CHANGE_22007", trigger_count = 0 },
	{ config_id = 1022008, name = "GADGET_STATE_CHANGE_22008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22008", action = "action_EVENT_GADGET_STATE_CHANGE_22008", trigger_count = 0 },
	{ config_id = 1022009, name = "VARIABLE_CHANGE_22009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_22009", action = "action_EVENT_VARIABLE_CHANGE_22009", trigger_count = 0 },
	-- 开始时降下大门
	{ config_id = 1022013, name = "ENTER_REGION_22013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22013", action = "action_EVENT_ENTER_REGION_22013", trigger_count = 0 },
	-- 7901329开始时把group变完成
	{ config_id = 1022014, name = "QUEST_START_22014", event = EventType.EVENT_QUEST_START, source = "7901329", condition = "", action = "action_EVENT_QUEST_START_22014", trigger_count = 0 },
	-- 7901305开始时重置大门
	{ config_id = 1022015, name = "QUEST_START_22015", event = EventType.EVENT_QUEST_START, source = "7901305", condition = "", action = "action_EVENT_QUEST_START_22015", trigger_count = 0 },
	-- 离开区域改变量
	{ config_id = 1022016, name = "LEAVE_REGION_22016", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_22016", action = "action_EVENT_LEAVE_REGION_22016", trigger_count = 0 },
	-- 进入变量，重置大门7901902开始
	{ config_id = 1022017, name = "QUEST_START_22017", event = EventType.EVENT_QUEST_START, source = "7901902", condition = "", action = "action_EVENT_QUEST_START_22017" },
	-- 失败过就改变量
	{ config_id = 1022018, name = "QUEST_START_22018", event = EventType.EVENT_QUEST_START, source = "7901906", condition = "", action = "action_EVENT_QUEST_START_22018" },
	{ config_id = 1022020, name = "GROUP_LOAD_22020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_22020", trigger_count = 0 },
	{ config_id = 1022022, name = "GADGET_STATE_CHANGE_22022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22022", action = "action_EVENT_GADGET_STATE_CHANGE_22022", trigger_count = 0 },
	{ config_id = 1022023, name = "GADGET_STATE_CHANGE_22023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22023", action = "action_EVENT_GADGET_STATE_CHANGE_22023", trigger_count = 0 },
	{ config_id = 1022024, name = "GADGET_STATE_CHANGE_22024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22024", action = "action_EVENT_GADGET_STATE_CHANGE_22024", trigger_count = 0 },
	-- 开门保底
	{ config_id = 1022025, name = "ENTER_REGION_22025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22025", action = "action_EVENT_ENTER_REGION_22025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "times", value = 0, no_refresh = true },
	{ config_id = 2, name = "key", value = 0, no_refresh = true },
	{ config_id = 3, name = "beenhere", value = 0, no_refresh = true },
	{ config_id = 4, name = "finish", value = 0, no_refresh = true },
	{ config_id = 5, name = "once", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 22019, shape = RegionShape.SPHERE, radius = 5, pos = { x = -713.686, y = 126.381, z = -11.055 }, area_id = 403 }
	},
	triggers = {
		{ config_id = 1022010, name = "QUEST_START_22010", event = EventType.EVENT_QUEST_START, source = "7901306", condition = "condition_EVENT_QUEST_START_22010", action = "action_EVENT_QUEST_START_22010" },
		{ config_id = 1022011, name = "QUEST_START_22011", event = EventType.EVENT_QUEST_START, source = "7901306", condition = "condition_EVENT_QUEST_START_22011", action = "action_EVENT_QUEST_START_22011" },
		{ config_id = 1022019, name = "ENTER_REGION_22019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22019", action = "action_EVENT_ENTER_REGION_22019", trigger_count = 0 }
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
		gadgets = { 22001, 22002, 22003, 22004, 22005, 22012 },
		regions = { 22013, 22016, 22025 },
		triggers = { "GADGET_STATE_CHANGE_22006", "GADGET_STATE_CHANGE_22007", "GADGET_STATE_CHANGE_22008", "VARIABLE_CHANGE_22009", "ENTER_REGION_22013", "QUEST_START_22014", "QUEST_START_22015", "LEAVE_REGION_22016", "QUEST_START_22017", "QUEST_START_22018", "GROUP_LOAD_22020", "GADGET_STATE_CHANGE_22022", "GADGET_STATE_CHANGE_22023", "GADGET_STATE_CHANGE_22024", "ENTER_REGION_22025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22006(context, evt)
	if 22001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22006(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_22007(context, evt)
	if 22002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_22008(context, evt)
	if 22003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22008(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_22009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为3
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_22009(context, evt)
	
	 ScriptLib.SetGadgetStateByConfigId(context, 22001, GadgetState.Default)
		
	ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.Default)
		
		 ScriptLib.SetGadgetStateByConfigId(context, 22003, GadgetState.Default) 
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "key", 199003022) == 321 then
	
	ScriptLib.SetGadgetStateByConfigId(context, 22012, GadgetState.GearStart) 
	ScriptLib.AddQuestProgress(context, "7901306finish") 
	
	else
	if ScriptLib.GetGroupVariableValue(context, "finish")==0 then
	--提示解谜reminder
	ScriptLib.ShowReminder(context, 1110751)	
	
	end
	
	end
	
		 ScriptLib.SetGroupVariableValue(context, "times", 0) 
		ScriptLib.SetGroupVariableValue(context, "key", 0) 
		
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22013(context, evt)
	if evt.param1 ~= 22013 then return false end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003022, 22012) then
		return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"once"为0
	if ScriptLib.GetGroupVariableValue(context, "once") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22013(context, evt)
	 ScriptLib.AddQuestProgress(context, "7901305finish") 
	ScriptLib.SetGadgetStateByConfigId(context, 22012, GadgetState.Default) 
	
	local pos = {x=-709, y=128, z=-6.39}
	 local pos_follow = {x=0, y=0, z=0}
	ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
		                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
		                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
	
		if ScriptLib.GetHostQuestState(context,7901306)==2 or ScriptLib.GetHostQuestState(context,7901305)==2 then
			if ScriptLib.GetGroupVariableValue(context, "beenhere")==1
				then ScriptLib.ShowReminder(context, 1110749) 
	
				
			else
	
				ScriptLib.ShowReminder(context, 1110745) 
			end
		
		else
		ScriptLib.ShowReminder(context, 1110747) 
			end
		ScriptLib.SetGroupVariableValue(context, "beenhere", 1)
	ScriptLib.SetGroupVariableValue(context, "once", 1)
	
	return 0
		
end

-- 触发操作
function action_EVENT_QUEST_START_22014(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_22015(context, evt)
	-- 将configid为 22012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_22016(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_22016(context, evt)
	-- 将本组内变量名为 "beenhere" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "beenhere", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_22017(context, evt)
	-- 将configid为 22012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_22018(context, evt)
	-- 将本组内变量名为 "beenhere" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "beenhere", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_22020(context, evt)
	-- 将本组内变量名为 "times" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "key" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "once" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "once", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 22001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 22002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 22003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22022(context, evt)
	if 22012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22022(context, evt)
	-- 创建id为22021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22023(context, evt)
	if 22012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22023(context, evt)
	-- 创建id为22021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22024(context, evt)
	if 22012 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22024(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003022, EntityType.GADGET, 22021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22025(context, evt)
	if evt.param1 ~= 22025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22025(context, evt)
	-- 将configid为 22012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end