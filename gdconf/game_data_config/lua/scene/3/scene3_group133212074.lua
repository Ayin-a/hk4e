-- 基础信息
local base_info = {
	group_id = 133212074
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
	{ config_id = 74001, gadget_id = 70350006, pos = { x = -3893.045, y = 265.915, z = -2274.224 }, rot = { x = 277.507, y = 333.584, z = 355.861 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074002, name = "VARIABLE_CHANGE_74002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74002", action = "action_EVENT_VARIABLE_CHANGE_74002", trigger_count = 0 },
	{ config_id = 1074003, name = "GROUP_LOAD_74003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_74003", action = "action_EVENT_GROUP_LOAD_74003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "door_open", value = 0, no_refresh = true }
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
		gadgets = { 74001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_74002", "GROUP_LOAD_74003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door_open"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "door_open", 133212074) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74002(context, evt)
	-- 将configid为 74001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-3892.9，267.7869，-2273.854），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3892.9, y=267.7869, z=-2273.854}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_74003(context, evt)
	-- 判断变量"door_open"为2
	if ScriptLib.GetGroupVariableValue(context, "door_open") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_74003(context, evt)
	-- 将configid为 74001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end