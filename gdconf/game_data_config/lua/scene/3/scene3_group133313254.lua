-- 基础信息
local base_info = {
	group_id = 133313254
}

-- Trigger变量
local defs = {
	gadget_id = 254004
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
	{ config_id = 254001, gadget_id = 70330404, pos = { x = -329.416, y = 127.674, z = 5936.807 }, rot = { x = 332.304, y = 54.573, z = 15.037 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 254002, gadget_id = 70330404, pos = { x = -377.520, y = 117.978, z = 5909.521 }, rot = { x = 349.066, y = 37.647, z = 336.624 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 254003, gadget_id = 70330404, pos = { x = -356.662, y = 103.931, z = 5840.399 }, rot = { x = 6.655, y = 32.507, z = 42.237 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 254004, gadget_id = 70211121, pos = { x = -310.528, y = 137.791, z = 5906.364 }, rot = { x = 24.338, y = 257.055, z = 358.945 }, level = 26, drop_tag = "解谜高级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254005, name = "GADGET_STATE_CHANGE_254005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254005", action = "action_EVENT_GADGET_STATE_CHANGE_254005", trigger_count = 0 },
	{ config_id = 1254006, name = "GADGET_STATE_CHANGE_254006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_254006" },
	{ config_id = 1254007, name = "GADGET_CREATE_254007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_254007", action = "action_EVENT_GADGET_CREATE_254007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 254001, 254002, 254003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_254005", "GADGET_STATE_CHANGE_254006", "GADGET_CREATE_254007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_254007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_254007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 触发镜头注目，注目位置为坐标{x=-310, y=138, z=5906}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-310, y=138, z=5906}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end