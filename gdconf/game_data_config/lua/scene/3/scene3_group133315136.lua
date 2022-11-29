-- 基础信息
local base_info = {
	group_id = 133315136
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
	{ config_id = 136003, gadget_id = 70310198, pos = { x = 526.461, y = 134.103, z = 2385.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 20 },
	{ config_id = 136004, gadget_id = 70230113, pos = { x = 525.140, y = 133.685, z = 2386.648 }, rot = { x = 338.917, y = 39.021, z = 102.106 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 136005, gadget_id = 70230113, pos = { x = 524.643, y = 133.579, z = 2386.054 }, rot = { x = 16.263, y = 286.395, z = 97.693 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 136006, gadget_id = 70310216, pos = { x = 515.029, y = 128.851, z = 2392.118 }, rot = { x = 19.399, y = 181.932, z = 2.604 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 136007, gadget_id = 70310217, pos = { x = 515.416, y = 129.750, z = 2391.930 }, rot = { x = 0.000, y = 354.602, z = 0.000 }, level = 27, state = GadgetState.GatherDrop, persistent = true, area_id = 20 },
	{ config_id = 136008, gadget_id = 70310217, pos = { x = 515.874, y = 134.962, z = 2373.004 }, rot = { x = 0.000, y = 33.232, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 136009, gadget_id = 70230113, pos = { x = 524.865, y = 134.047, z = 2383.473 }, rot = { x = 8.059, y = 303.089, z = 104.246 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 136010, gadget_id = 70230113, pos = { x = 525.464, y = 134.377, z = 2383.057 }, rot = { x = 10.765, y = 192.392, z = 86.102 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 136011, gadget_id = 70230112, pos = { x = 526.097, y = 134.539, z = 2384.041 }, rot = { x = 354.904, y = 140.435, z = 81.249 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 136012, gadget_id = 70230112, pos = { x = 526.001, y = 134.361, z = 2385.532 }, rot = { x = 333.117, y = 118.252, z = 66.049 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 136014, gadget_id = 70230113, pos = { x = 525.432, y = 134.301, z = 2383.617 }, rot = { x = 3.303, y = 158.191, z = 71.316 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 136015, gadget_id = 70230113, pos = { x = 525.159, y = 133.804, z = 2386.152 }, rot = { x = 20.145, y = 246.218, z = 88.074 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 注目
	{ config_id = 1136001, name = "QUEST_FINISH_136001", event = EventType.EVENT_QUEST_FINISH, source = "7306644", condition = "", action = "action_EVENT_QUEST_FINISH_136001", trigger_count = 0 },
	-- 石块碎了创石碑
	{ config_id = 1136002, name = "ANY_GADGET_DIE_136002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_136002", action = "action_EVENT_ANY_GADGET_DIE_136002" },
	-- 方碑一亮 涂鸦06亮
	{ config_id = 1136016, name = "GADGET_STATE_CHANGE_136016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136016", action = "action_EVENT_GADGET_STATE_CHANGE_136016" },
	-- 方碑亮全  通知仙灵继续走
	{ config_id = 1136017, name = "GROUP_LOAD_136017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_136017", action = "action_EVENT_GROUP_LOAD_136017", trigger_count = 0 },
	-- 方碑二亮 涂鸦06亮
	{ config_id = 1136018, name = "GADGET_STATE_CHANGE_136018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136018", action = "action_EVENT_GADGET_STATE_CHANGE_136018" },
	-- 方碑亮全  通知仙灵继续走
	{ config_id = 1136020, name = "GADGET_STATE_CHANGE_136020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136020", action = "action_EVENT_GADGET_STATE_CHANGE_136020" }
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
		gadgets = { 136003, 136004, 136005, 136006, 136008, 136009, 136010, 136011, 136012, 136014, 136015 },
		regions = { },
		triggers = { "QUEST_FINISH_136001", "ANY_GADGET_DIE_136002", "GADGET_STATE_CHANGE_136016", "GROUP_LOAD_136017", "GADGET_STATE_CHANGE_136018", "GADGET_STATE_CHANGE_136020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_136001(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=462.9963, y=156.2501, z=2339.657}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=462.9963, y=156.2501, z=2339.657}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_136002(context, evt)
	if 136006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_136002(context, evt)
	-- 创建id为136007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 136007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315136, 136008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136016(context, evt)
	-- 将configid为 136010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 136009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 136014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 136011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_136017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315136, 136007) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315136, 136008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_136017(context, evt)
	-- 将configid为 136003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315136, 136007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136018(context, evt)
	-- 将configid为 136004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 136005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 136012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 136015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136020(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315136, 136007) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315136, 136008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136020(context, evt)
	-- 将configid为 136003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"