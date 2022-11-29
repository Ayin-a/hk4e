-- 基础信息
local base_info = {
	group_id = 220131010
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
	{ config_id = 10001, gadget_id = 70350005, pos = { x = 80.900, y = -6.544, z = -0.075 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 10003, gadget_id = 70800196, pos = { x = 82.741, y = 4.472, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10009, gadget_id = 70800211, pos = { x = 108.743, y = -3.297, z = -4.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010002, name = "VARIABLE_CHANGE_10002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10002", action = "action_EVENT_VARIABLE_CHANGE_10002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Open", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 10004, gadget_id = 70310001, pos = { x = 82.554, y = 4.472, z = -2.000 }, rot = { x = 0.000, y = 20.000, z = 270.000 }, level = 1, state = GadgetState.GearStart },
		{ config_id = 10005, gadget_id = 70310001, pos = { x = 82.554, y = 4.472, z = 2.000 }, rot = { x = 0.000, y = 340.000, z = 270.000 }, level = 1, state = GadgetState.GearStart },
		{ config_id = 10006, gadget_id = 70360025, pos = { x = 102.730, y = -3.425, z = 6.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 10007, gadget_id = 70360025, pos = { x = 102.691, y = -3.425, z = 0.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 10008, gadget_id = 70360025, pos = { x = 102.748, y = -3.425, z = -6.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	}
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
		gadgets = { 10001, 10003, 10009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_10002" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Open"为1
	if ScriptLib.GetGroupVariableValue(context, "Open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10002(context, evt)
	-- 将configid为 10001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（82.74147，1.472011，0），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=82.74147, y=1.472011, z=0}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end