-- 基础信息
local base_info = {
	group_id = 133303422
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
	{ config_id = 422001, gadget_id = 70330238, pos = { x = -1282.462, y = 229.860, z = 3807.600 }, rot = { x = 0.000, y = 353.957, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
	{ config_id = 422002, gadget_id = 70217020, pos = { x = -1270.780, y = 231.268, z = 3806.756 }, rot = { x = 0.000, y = 296.649, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 422006, gadget_id = 70290558, pos = { x = -1272.053, y = 231.219, z = 3808.727 }, rot = { x = 41.944, y = 322.429, z = 339.751 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 删除执行
	{ config_id = 1422003, name = "GADGET_STATE_CHANGE_422003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_422003", action = "action_EVENT_GADGET_STATE_CHANGE_422003", trigger_count = 0 },
	{ config_id = 1422004, name = "GROUP_LOAD_422004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_422004", action = "action_EVENT_GROUP_LOAD_422004", trigger_count = 0 },
	{ config_id = 1422005, name = "GADGET_STATE_CHANGE_422005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_422005", action = "action_EVENT_GADGET_STATE_CHANGE_422005" }
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
		gadgets = { 422001, 422006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_422003", "GROUP_LOAD_422004", "GADGET_STATE_CHANGE_422005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 422001, 422002 },
		regions = { },
		triggers = { "GROUP_LOAD_422004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_422003(context, evt)
	if 422001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_422003(context, evt)
	-- 将configid为 422006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为422002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 422002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_422004(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303422, 422001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_422004(context, evt)
	-- 创建id为422002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 422002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_422005(context, evt)
	if 422001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_422005(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1272.389, y=231.3622, z=3808.724}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1272.389, y=231.3622, z=3808.724}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end