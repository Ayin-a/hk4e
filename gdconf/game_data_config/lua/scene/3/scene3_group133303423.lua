-- 基础信息
local base_info = {
	group_id = 133303423
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
	{ config_id = 423001, gadget_id = 70330238, pos = { x = -1171.356, y = 254.609, z = 3926.848 }, rot = { x = 0.000, y = 209.701, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
	-- beta反馈增加宝箱奖励
	{ config_id = 423002, gadget_id = 70211101, pos = { x = -1173.149, y = 256.136, z = 3934.412 }, rot = { x = 18.366, y = 196.580, z = 352.998 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 423006, gadget_id = 70290556, pos = { x = -1172.366, y = 256.398, z = 3934.276 }, rot = { x = 0.000, y = 33.115, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 删除执行
	{ config_id = 1423003, name = "GADGET_STATE_CHANGE_423003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423003", action = "action_EVENT_GADGET_STATE_CHANGE_423003", trigger_count = 0 },
	{ config_id = 1423004, name = "GROUP_LOAD_423004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_423004", action = "action_EVENT_GROUP_LOAD_423004", trigger_count = 0 },
	{ config_id = 1423005, name = "GADGET_STATE_CHANGE_423005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423005", action = "action_EVENT_GADGET_STATE_CHANGE_423005" }
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
		gadgets = { 423001, 423006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_423003", "GROUP_LOAD_423004", "GADGET_STATE_CHANGE_423005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 423001, 423002 },
		regions = { },
		triggers = { "GROUP_LOAD_423004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423003(context, evt)
	if 423001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423003(context, evt)
	-- 将configid为 423006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为423002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 423002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_423004(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303423, 423001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_423004(context, evt)
	-- 创建id为423002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 423002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423005(context, evt)
	if 423001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423005(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1172.244, y=256.3984, z=3934.197}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1172.244, y=256.3984, z=3934.197}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end