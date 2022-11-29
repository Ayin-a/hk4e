-- 基础信息
local base_info = {
	group_id = 199003053
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
	{ config_id = 53001, gadget_id = 70310011, pos = { x = -729.728, y = 196.112, z = -51.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 53002, gadget_id = 70310011, pos = { x = -734.334, y = 195.902, z = -50.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 53003, gadget_id = 70310011, pos = { x = -737.940, y = 195.617, z = -48.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 53004, gadget_id = 70310011, pos = { x = -741.933, y = 194.994, z = -48.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 53010, gadget_id = 70211001, pos = { x = -740.311, y = 196.922, z = -39.076 }, rot = { x = 0.000, y = 89.810, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1053005, name = "GADGET_STATE_CHANGE_53005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53005", action = "action_EVENT_GADGET_STATE_CHANGE_53005", trigger_count = 0 },
	{ config_id = 1053006, name = "GADGET_STATE_CHANGE_53006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53006", action = "action_EVENT_GADGET_STATE_CHANGE_53006", trigger_count = 0 },
	{ config_id = 1053007, name = "GADGET_STATE_CHANGE_53007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53007", action = "action_EVENT_GADGET_STATE_CHANGE_53007", trigger_count = 0 },
	{ config_id = 1053008, name = "GADGET_STATE_CHANGE_53008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53008", action = "action_EVENT_GADGET_STATE_CHANGE_53008", trigger_count = 0 },
	{ config_id = 1053009, name = "VARIABLE_CHANGE_53009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53009", action = "action_EVENT_VARIABLE_CHANGE_53009", trigger_count = 0 },
	{ config_id = 1053011, name = "GROUP_LOAD_53011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_53011", action = "action_EVENT_GROUP_LOAD_53011", trigger_count = 0 },
	{ config_id = 1053012, name = "GADGET_STATE_CHANGE_53012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53012", action = "action_EVENT_GADGET_STATE_CHANGE_53012", trigger_count = 0 },
	-- 一次性镜头
	{ config_id = 1053013, name = "GADGET_STATE_CHANGE_53013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53013", action = "action_EVENT_GADGET_STATE_CHANGE_53013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "key", value = 0, no_refresh = true },
	{ config_id = 3, name = "times", value = 0, no_refresh = true },
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 4, name = "camera", value = 0, no_refresh = true }
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
		gadgets = { 53001, 53002, 53003, 53004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53005", "GADGET_STATE_CHANGE_53006", "GADGET_STATE_CHANGE_53007", "GADGET_STATE_CHANGE_53008", "VARIABLE_CHANGE_53009", "GROUP_LOAD_53011", "GADGET_STATE_CHANGE_53012", "GADGET_STATE_CHANGE_53013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 53010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_53005(context, evt)
	if 53001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53005(context, evt)
	
	local k=0
	local t=0
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52001, GadgetState.GearStart)
	k=ScriptLib.GetGroupVariableValue(context, "key")
	t=ScriptLib.GetGroupVariableValue(context, "times")
	  
		 k=k+1*10^t
		t=t+1
	  
	 if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
				  return -1
				end
	  
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_t")
				  return -1
				end
		  return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	if 53002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	
	local k=0
	local t=0
	  
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52002, GadgetState.GearStart)
	k=ScriptLib.GetGroupVariableValue(context, "key")
	t=ScriptLib.GetGroupVariableValue(context, "times")
	  
		 k=k+2*10^t
		t=t+1
	  
	 if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
				  return -1
				end
	  
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_t")
				  return -1
				end
		  return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53007(context, evt)
	if 53003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53007(context, evt)
	
	local k=0
	local t=0
	  
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52003, GadgetState.GearStart)
	k=ScriptLib.GetGroupVariableValue(context, "key")
	t=ScriptLib.GetGroupVariableValue(context, "times")
	  
		 k=k+3*10^t
		t=t+1
	  
	 if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
				  return -1
				end
	  
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_t")
				  return -1
				end
		  return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53008(context, evt)
	if 53004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53008(context, evt)
	
	local k=0
	local t=0
	  
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52004, GadgetState.GearStart)
	k=ScriptLib.GetGroupVariableValue(context, "key")
	t=ScriptLib.GetGroupVariableValue(context, "times")
	  
		 k=k+4*10^t
		t=t+1
	  
	 if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
				  return -1
				end
	  
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_t")
				  return -1
				end
		  return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_53009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53009(context, evt)
	if 
	ScriptLib.GetGroupVariableValueByGroup(context, "key", 199003053) == 1342 
	then
	
	--创建id为53010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	else
	
				ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.Default) 
	ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 53003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 53004, GadgetState.Default)
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52001, GadgetState.Default)
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52002, GadgetState.Default)		
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52003, GadgetState.Default)		
	 
	ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52004, GadgetState.Default)					ScriptLib.SetGroupVariableValue(context, "times", 0) 
	 ScriptLib.SetGroupVariableValue(context, "key", 0)
	end
	
				
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_53011(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_53011(context, evt)
	-- 变量"key"赋值为0
	ScriptLib.SetGroupVariableValue(context, "key", 0)
	
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 将configid为 53001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组199003052中， configid为52001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003052中， configid为52002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003052中， configid为52003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003052中， configid为52004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003052, 52004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53012(context, evt)
	if 53010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53012(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53013(context, evt)
	-- 判断变量"camera"为0
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53013(context, evt)
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-747，228，-106），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-747, y=228, z=-106}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end