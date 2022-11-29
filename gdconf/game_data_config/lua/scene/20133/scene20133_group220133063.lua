-- 基础信息
local base_info = {
	group_id = 220133063
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
	{ config_id = 63002, gadget_id = 70900055, pos = { x = 4306.157, y = 542.361, z = 279.225 }, rot = { x = 1.911, y = 336.444, z = 347.306 }, level = 1, state = GadgetState.GearStop, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- load时判state和isfinish，保底方碑解锁
	{ config_id = 1063001, name = "GROUP_LOAD_63001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_63001", action = "action_EVENT_GROUP_LOAD_63001", trigger_count = 0 },
	{ config_id = 1063003, name = "GADGET_STATE_CHANGE_63003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63003", action = "action_EVENT_GADGET_STATE_CHANGE_63003", trigger_count = 0 }
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
		gadgets = { 63002 },
		regions = { },
		triggers = { "GROUP_LOAD_63001", "GADGET_STATE_CHANGE_63003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_63001(context, evt)
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinished", 220133035) ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220133063, 63002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_63001(context, evt)
	-- 将configid为 63002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_63003(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133063, 63002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_63003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133103, 2)
	
	-- 将本组内变量名为 "DoorCreated" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "DoorCreated", 1, 220133103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（4302.32，542.1581，290.11），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=4302.32, y=542.1581, z=290.11}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end