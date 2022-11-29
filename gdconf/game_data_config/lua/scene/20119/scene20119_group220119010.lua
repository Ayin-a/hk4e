-- 基础信息
local base_info = {
	group_id = 220119010
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
	{ config_id = 10001, gadget_id = 70360170, pos = { x = 13.687, y = -0.130, z = -13.490 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 10002, gadget_id = 70360001, pos = { x = 13.687, y = 0.240, z = -13.490 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 10005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1.628, y = 0.938, z = -22.153 } }
}

-- 触发器
triggers = {
	{ config_id = 1010004, name = "GADGET_CREATE_10004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10004", action = "action_EVENT_GADGET_CREATE_10004" },
	{ config_id = 1010005, name = "ENTER_REGION_10005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1010006, name = "SELECT_OPTION_10006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10006", action = "action_EVENT_SELECT_OPTION_10006", trigger_count = 0 },
	{ config_id = 1010007, name = "SELECT_OPTION_10007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10007", action = "action_EVENT_SELECT_OPTION_10007" },
	{ config_id = 1010008, name = "TIMER_EVENT_10008", event = EventType.EVENT_TIMER_EVENT, source = "rotationtime", condition = "", action = "action_EVENT_TIMER_EVENT_10008", trigger_count = 0 }
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
		gadgets = { 10001 },
		regions = { 10005 },
		triggers = { "GADGET_CREATE_10004", "ENTER_REGION_10005", "SELECT_OPTION_10006", "SELECT_OPTION_10007", "TIMER_EVENT_10008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_10004(context, evt)
	if 10002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119010, 10002, {324}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10006(context, evt)
	-- 判断是gadgetid 10002 option_id 324
	if 10002 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10006(context, evt)
	
	--操作楼梯1升降
	if ScriptLib.GetGroupVariableValueByGroup(context, "stairs1", 220119002)  == 1 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs1", 3, 220119002)
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "stairs1", 220119002) == 3 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs1", 1, 220119002)
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "stairs1", 220119002) == 2 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs1", 4, 220119002)
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "stairs1", 220119002) == 4 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs1", 2, 220119002)
	end
	
	--操作楼梯2升降
	if ScriptLib.GetGroupVariableValueByGroup(context, "stairs2", 220119003) == 1 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs2", 3, 220119003)
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "stairs2", 220119003) == 3 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs2", 1, 220119003)
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "stairs2", 220119003) == 2 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs2", 4, 220119003)
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "stairs2", 220119003) == 4 then
	  ScriptLib.SetGroupVariableValueByGroup(context, "stairs2", 2, 220119003)
	end
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, 220119010, 10002, 324)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220119010, 10001, GadgetState.GearStart)
	--加计时器回滚操作选项
	ScriptLib.CreateGroupTimerEvent(context, 220119010, "rotationtime", 3)
	--注目镜头
	-- 触发镜头注目，注目位置为坐标（1，1，1），持续时间为2秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=32, y=-4, z=-19}
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
function condition_EVENT_SELECT_OPTION_10007(context, evt)
	-- 判断是gadgetid 10002 option_id 324
	if 10002 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119010, 10002, {324}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 10001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end