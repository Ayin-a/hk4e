-- 基础信息
local base_info = {
	group_id = 220132001
}

-- Trigger变量
local defs = {
	target_x = 469.4,
	target_y = 61,
	target_z = 325.9,
	camera_x = 439.8357,
	camera_y = 67.01164,
	camera_z = 372.4916
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
	{ config_id = 1002, gadget_id = 70360001, pos = { x = 463.980, y = 65.601, z = 385.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70290137, pos = { x = 449.461, y = 65.730, z = 401.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1008, gadget_id = 70290576, pos = { x = 439.836, y = 67.012, z = 372.492 }, rot = { x = 6.253, y = 147.532, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70290137, pos = { x = 463.980, y = 65.601, z = 385.739 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70360282, pos = { x = 478.378, y = 66.508, z = 385.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1011, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 478.378, y = 66.508, z = 385.827 } }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "TIMER_EVENT_1001", event = EventType.EVENT_TIMER_EVENT, source = "2", condition = "", action = "action_EVENT_TIMER_EVENT_1001" },
	{ config_id = 1001004, name = "QUEST_FINISH_1004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1004", action = "action_EVENT_QUEST_FINISH_1004" },
	{ config_id = 1001007, name = "TIMER_EVENT_1007", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_1007" },
	{ config_id = 1001011, name = "ENTER_REGION_1011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1011", action = "action_EVENT_ENTER_REGION_1011" }
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
		gadgets = { 1008 },
		regions = { },
		triggers = { "TIMER_EVENT_1001", "QUEST_FINISH_1004", "TIMER_EVENT_1007" },
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
		gadgets = { 1010 },
		regions = { 1011 },
		triggers = { "ENTER_REGION_1011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1003, 1009 },
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

-- 触发操作
function action_EVENT_TIMER_EVENT_1001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132001, 3)
	
	-- 将configid为 1009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_1004(context, evt)
	--检查ID为300321的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 300321 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1004(context, evt)
	local pos = { x=defs.target_x, y=defs.target_y, z=defs.target_z}
	
	local pos_follow = { x=defs.camera_x, y=defs.camera_y, z=defs.camera_z}
	
	if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_set_follow_pos = true, is_abs_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false }) then
	    ScriptLib.PrintContextLog(context, "@@Lua_warning : active_cameralook_begin")
	    return -1
	end
	
	-- 延迟3秒后,向groupId为：220132001的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220132001, "1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟8秒后,向groupId为：220132001的对象,请求一次调用,并将string参数："2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220132001, "2", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220132011, EntityType.GADGET, 11012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1007(context, evt)
	-- 将configid为 1008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1011(context, evt)
	if evt.param1 ~= 1011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1011(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 1010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1010, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end