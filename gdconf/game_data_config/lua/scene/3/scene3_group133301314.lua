-- 基础信息
local base_info = {
	group_id = 133301314
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
	{ config_id = 314001, gadget_id = 70310198, pos = { x = -882.158, y = 192.904, z = 3315.167 }, rot = { x = 343.748, y = 212.540, z = 12.500 }, level = 30, area_id = 23 },
	{ config_id = 314002, gadget_id = 70290544, pos = { x = -865.139, y = 208.539, z = 3286.930 }, rot = { x = 9.067, y = 17.237, z = 0.237 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 314003, gadget_id = 70330219, pos = { x = -858.068, y = 196.715, z = 3306.952 }, rot = { x = 9.854, y = 264.720, z = 355.477 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 314004, gadget_id = 70900050, pos = { x = -857.991, y = 196.825, z = 3306.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1314005, name = "ANY_GADGET_DIE_314005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_314005", action = "action_EVENT_ANY_GADGET_DIE_314005", trigger_count = 0 },
	{ config_id = 1314006, name = "GADGET_STATE_CHANGE_314006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_314006", action = "action_EVENT_GADGET_STATE_CHANGE_314006", trigger_count = 0 }
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
		gadgets = { 314001, 314002, 314003, 314004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_314005", "GADGET_STATE_CHANGE_314006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_314005(context, evt)
	if 314003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_314005(context, evt)
	-- 将configid为 314004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_314006(context, evt)
	if 314004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_314006(context, evt)
	-- 将configid为 314002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-865.1392, y=208.5389, z=3286.93}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-865.1392, y=208.5389, z=3286.93}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end