-- 基础信息
local base_info = {
	group_id = 240052005
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
	{ config_id = 5001, gadget_id = 70310198, pos = { x = 757.994, y = 91.504, z = 355.541 }, rot = { x = 0.000, y = 260.261, z = 0.000 }, level = 30 },
	{ config_id = 5002, gadget_id = 70310200, pos = { x = 755.438, y = 93.489, z = 365.877 }, rot = { x = 0.000, y = 6.709, z = 0.000 }, level = 30 },
	{ config_id = 5003, gadget_id = 70290531, pos = { x = 759.411, y = 99.549, z = 378.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 1 },
	{ config_id = 5004, gadget_id = 70290485, pos = { x = 757.503, y = 91.259, z = 373.687 }, rot = { x = 0.000, y = 76.291, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1005005, name = "GADGET_STATE_CHANGE_5005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5005", action = "action_EVENT_GADGET_STATE_CHANGE_5005", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1005006, name = "GADGET_STATE_CHANGE_5006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5006", action = "action_EVENT_GADGET_STATE_CHANGE_5006", trigger_count = 0 }
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
		gadgets = { 5001, 5002, 5004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_5006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_5005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5005(context, evt)
	if 5003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5005(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 5003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=757.5031, y=92.25862, z=373.6869}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=757.5031, y=92.25862, z=373.6869}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 5004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5006(context, evt)
	if 5002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052005, 2)
	
	return 0
end