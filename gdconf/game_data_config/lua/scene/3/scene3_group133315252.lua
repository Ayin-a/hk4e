-- 基础信息
local base_info = {
	group_id = 133315252
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
	{ config_id = 252001, gadget_id = 70290579, pos = { x = 314.701, y = 407.025, z = 2459.955 }, rot = { x = 0.000, y = 285.773, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 252002, gadget_id = 70310214, pos = { x = 322.892, y = 405.338, z = 2462.286 }, rot = { x = 0.000, y = 301.387, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 252003, gadget_id = 70900050, pos = { x = 322.892, y = 405.338, z = 2462.286 }, rot = { x = 0.000, y = 301.387, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1252004, name = "GADGET_STATE_CHANGE_252004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_252004", action = "action_EVENT_GADGET_STATE_CHANGE_252004" },
	{ config_id = 1252005, name = "GADGET_STATE_CHANGE_252005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_252005", action = "action_EVENT_GADGET_STATE_CHANGE_252005" },
	{ config_id = 1252007, name = "GROUP_LOAD_252007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_252007", action = "action_EVENT_GROUP_LOAD_252007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1252006, name = "GROUP_LOAD_252006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_252006", action = "action_EVENT_GROUP_LOAD_252006", trigger_count = 0 }
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
		gadgets = { 252001, 252002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_252004", "GADGET_STATE_CHANGE_252005", "GROUP_LOAD_252007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_252004(context, evt)
	if 252002 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_252004(context, evt)
	-- 创建id为252003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 252003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_252005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315252, 252003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_252005(context, evt)
	-- 将configid为 252001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 252001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=314.7013, y=408.2248, z=2459.955}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=314.7013, y=408.2248, z=2459.955}
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
function condition_EVENT_GROUP_LOAD_252007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315252, 252003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_252007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 252001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end