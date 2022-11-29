-- 基础信息
local base_info = {
	group_id = 133301076
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
	{ config_id = 76003, gadget_id = 70400001, pos = { x = -1085.179, y = 273.305, z = 3837.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1076001, name = "GADGET_CREATE_76001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_76001", action = "action_EVENT_GADGET_CREATE_76001", trigger_count = 0 },
	{ config_id = 1076002, name = "GADGET_CREATE_76002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_76002", action = "action_EVENT_GADGET_CREATE_76002", trigger_count = 0 },
	{ config_id = 1076004, name = "TIME_AXIS_PASS_76004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_76004", action = "action_EVENT_TIME_AXIS_PASS_76004", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 76003 },
		regions = { },
		triggers = { "GADGET_CREATE_76001", "GADGET_CREATE_76002", "TIME_AXIS_PASS_76004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_76001(context, evt)
	if 76003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_76001(context, evt)
	-- 创建标识为"timeStart"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timeStart", {20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_76002(context, evt)
	if 76003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_76002(context, evt)
	-- 触发镜头注目，注目位置为坐标（-1085，272，3838），持续时间为8秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1085, y=272, z=3838}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 8, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_76004(context, evt)
	if "timeStart" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_76004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301076, EntityType.GADGET, 76003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end