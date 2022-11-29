-- 基础信息
local base_info = {
	group_id = 133210354
}

-- Trigger变量
local defs = {
	duration = 60,
	sum = 12,
	group_id = 133210354
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
	{ config_id = 354001, gadget_id = 70350083, pos = { x = -3862.104, y = 147.873, z = -758.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354002, gadget_id = 70360001, pos = { x = -3862.089, y = 148.863, z = -758.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354009, gadget_id = 70330064, pos = { x = -3861.106, y = 148.223, z = -765.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 354010, gadget_id = 70900380, pos = { x = -3854.303, y = 150.504, z = -759.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354011, gadget_id = 70290150, pos = { x = -3842.935, y = 152.254, z = -757.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354012, gadget_id = 70290150, pos = { x = -3847.884, y = 153.027, z = -758.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354013, gadget_id = 70900380, pos = { x = -3831.365, y = 155.826, z = -751.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354014, gadget_id = 70290150, pos = { x = -3836.942, y = 151.040, z = -755.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354015, gadget_id = 70900380, pos = { x = -3830.940, y = 164.025, z = -745.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354016, gadget_id = 70290150, pos = { x = -3829.257, y = 160.865, z = -748.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354017, gadget_id = 70290150, pos = { x = -3832.743, y = 168.647, z = -741.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354018, gadget_id = 70330064, pos = { x = -3828.992, y = 171.006, z = -732.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 354019, gadget_id = 70900380, pos = { x = -3832.464, y = 179.355, z = -733.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354020, gadget_id = 70290150, pos = { x = -3840.846, y = 180.693, z = -729.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354021, gadget_id = 70290150, pos = { x = -3841.756, y = 179.487, z = -724.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354022, gadget_id = 70290150, pos = { x = -3841.782, y = 177.999, z = -717.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354023, gadget_id = 70290150, pos = { x = -3841.424, y = 177.064, z = -711.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354024, gadget_id = 70330064, pos = { x = -3844.166, y = 175.047, z = -707.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 354025, gadget_id = 70900380, pos = { x = -3842.263, y = 182.575, z = -704.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354026, gadget_id = 70900380, pos = { x = -3842.263, y = 192.520, z = -704.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354027, gadget_id = 70290150, pos = { x = -3838.090, y = 195.308, z = -698.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354028, gadget_id = 70290150, pos = { x = -3838.090, y = 189.611, z = -698.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354029, gadget_id = 70290150, pos = { x = -3838.090, y = 183.967, z = -698.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354030, gadget_id = 70290150, pos = { x = -3826.084, y = 170.877, z = -742.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354031, gadget_id = 70290150, pos = { x = -3835.868, y = 173.460, z = -739.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354032, gadget_id = 70290150, pos = { x = -3836.907, y = 180.970, z = -734.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354033, gadget_id = 70290150, pos = { x = -3839.441, y = 181.564, z = -732.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 354034, gadget_id = 70290150, pos = { x = -3827.386, y = 174.573, z = -736.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1354003, name = "GADGET_CREATE_354003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_354003", action = "action_EVENT_GADGET_CREATE_354003", trigger_count = 0 },
	{ config_id = 1354004, name = "SELECT_OPTION_354004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_354004", action = "action_EVENT_SELECT_OPTION_354004", trigger_count = 0 },
	{ config_id = 1354005, name = "GADGET_STATE_CHANGE_354005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_354005", action = "action_EVENT_GADGET_STATE_CHANGE_354005", trigger_count = 0 },
	{ config_id = 1354006, name = "CHALLENGE_SUCCESS_354006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_354006", trigger_count = 0 },
	{ config_id = 1354007, name = "CHALLENGE_FAIL_354007", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_354007", trigger_count = 0 },
	{ config_id = 1354008, name = "ANY_GADGET_DIE_354008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "999" }
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
	end_suite = 3,
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
		gadgets = { 354001, 354002, 354009 },
		regions = { },
		triggers = { "GADGET_CREATE_354003", "SELECT_OPTION_354004", "GADGET_STATE_CHANGE_354005", "CHALLENGE_SUCCESS_354006", "CHALLENGE_FAIL_354007", "ANY_GADGET_DIE_354008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 354010, 354011, 354012, 354013, 354014, 354015, 354016, 354017, 354018, 354019, 354020, 354021, 354022, 354023, 354024, 354025, 354026, 354027, 354028, 354029, 354030, 354031, 354032, 354033, 354034 },
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
function condition_EVENT_GADGET_CREATE_354003(context, evt)
	if 354002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_354003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210354, 354002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_354004(context, evt)
	-- 判断是gadgetid 354002 option_id 7
	if 354002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_354004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 354002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 354001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-3849.314，152.2794，-759.3177），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3849.314, y=152.2794, z=-759.3177}
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
function condition_EVENT_GADGET_STATE_CHANGE_354005(context, evt)
	if 354001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_354005(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 77, defs.duration, 2, 999, defs.sum) then
	return -1
	end
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_354006(context, evt)
	-- 将configid为 354001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210354, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 354009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210354, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_354007(context, evt)
	-- 将configid为 354001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为354002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 354002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210354, 2)
	
	return 0
end

require "V2_0/ElectricCore"