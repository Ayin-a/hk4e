-- 基础信息
local base_info = {
	group_id = 133309662
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133309662,
	collectable_sum = 20,
	point_camera = 662039,
	gadget_lookEntity = 662038,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[662001] = { config_id = 662001, gadget_id = 70330392, pos = { x = -2513.731, y = 200.056, z = 6061.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[662002] = { config_id = 662002, gadget_id = 70330439, pos = { x = -2507.320, y = 199.811, z = 6078.899 }, rot = { x = 0.000, y = 356.005, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	[662003] = { config_id = 662003, gadget_id = 70360001, pos = { x = -2507.320, y = 200.776, z = 6078.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	[662004] = { config_id = 662004, gadget_id = 70290501, pos = { x = -2513.339, y = 201.344, z = 6077.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[662005] = { config_id = 662005, gadget_id = 70290501, pos = { x = -2520.350, y = 201.247, z = 6075.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[662006] = { config_id = 662006, gadget_id = 70290501, pos = { x = -2531.631, y = 201.063, z = 6072.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[662007] = { config_id = 662007, gadget_id = 70290501, pos = { x = -2533.513, y = 199.889, z = 6064.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[662008] = { config_id = 662008, gadget_id = 70290501, pos = { x = -2522.885, y = 199.017, z = 6060.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[662009] = { config_id = 662009, gadget_id = 70290501, pos = { x = -2521.240, y = 199.712, z = 6050.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[662010] = { config_id = 662010, gadget_id = 70290501, pos = { x = -2506.917, y = 200.374, z = 6052.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[662019] = { config_id = 662019, gadget_id = 70330392, pos = { x = -2513.731, y = 194.756, z = 6066.396 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[662020] = { config_id = 662020, gadget_id = 70330392, pos = { x = -2513.731, y = 194.756, z = 6055.796 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[662021] = { config_id = 662021, gadget_id = 70330392, pos = { x = -2508.431, y = 194.756, z = 6061.096 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[662022] = { config_id = 662022, gadget_id = 70290501, pos = { x = -2516.939, y = 201.298, z = 6076.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662023] = { config_id = 662023, gadget_id = 70290501, pos = { x = -2524.050, y = 201.139, z = 6075.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662024] = { config_id = 662024, gadget_id = 70290501, pos = { x = -2527.850, y = 201.029, z = 6073.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662025] = { config_id = 662025, gadget_id = 70290501, pos = { x = -2533.231, y = 200.616, z = 6069.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662026] = { config_id = 662026, gadget_id = 70290501, pos = { x = -2533.931, y = 200.272, z = 6066.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662027] = { config_id = 662027, gadget_id = 70290501, pos = { x = -2531.113, y = 199.403, z = 6061.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662028] = { config_id = 662028, gadget_id = 70290501, pos = { x = -2528.013, y = 199.177, z = 6061.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662029] = { config_id = 662029, gadget_id = 70290501, pos = { x = -2525.913, y = 199.130, z = 6061.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662030] = { config_id = 662030, gadget_id = 70290501, pos = { x = -2522.785, y = 198.861, z = 6057.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662031] = { config_id = 662031, gadget_id = 70290501, pos = { x = -2522.785, y = 199.158, z = 6053.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662032] = { config_id = 662032, gadget_id = 70290501, pos = { x = -2517.640, y = 200.458, z = 6050.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662033] = { config_id = 662033, gadget_id = 70290501, pos = { x = -2514.240, y = 201.370, z = 6050.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662034] = { config_id = 662034, gadget_id = 70290501, pos = { x = -2510.124, y = 201.200, z = 6050.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[662038] = { config_id = 662038, gadget_id = 70290196, pos = { x = -2512.937, y = 197.627, z = 6060.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1662012, name = "CHALLENGE_SUCCESS_662012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_662012", trigger_count = 0 },
	{ config_id = 1662013, name = "CHALLENGE_FAIL_662013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_662013", trigger_count = 0 },
	{ config_id = 1662014, name = "GADGET_STATE_CHANGE_662014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_662014", action = "action_EVENT_GADGET_STATE_CHANGE_662014", trigger_count = 0 },
	{ config_id = 1662015, name = "ANY_GADGET_DIE_662015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1662016, name = "GADGET_CREATE_662016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_662016", action = "action_EVENT_GADGET_CREATE_662016", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1662017, name = "SELECT_OPTION_662017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_662017", action = "action_EVENT_SELECT_OPTION_662017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1662018, name = "GROUP_LOAD_662018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_662018", trigger_count = 0 },
	{ config_id = 1662040, name = "GROUP_LOAD_662040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_662040", trigger_count = 0 }
}

-- 点位
points = {
	[662039] = { config_id = 662039, pos = { x = -2492.799, y = 218.266, z = 6056.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 662011, gadget_id = 70290501, pos = { x = -2505.670, y = 199.887, z = 6060.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
		{ config_id = 662035, gadget_id = 70290501, pos = { x = -2506.078, y = 200.078, z = 6055.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
	},
	triggers = {
		{ config_id = 1662036, name = "GADGET_STATE_CHANGE_662036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_662036", action = "action_EVENT_GADGET_STATE_CHANGE_662036" },
		{ config_id = 1662037, name = "TIME_AXIS_PASS_662037", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_662037", action = "action_EVENT_TIME_AXIS_PASS_662037" }
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
		gadgets = { 662001, 662002, 662003, 662019, 662020, 662021, 662038 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_662012", "CHALLENGE_FAIL_662013", "GADGET_STATE_CHANGE_662014", "ANY_GADGET_DIE_662015", "GADGET_CREATE_662016", "SELECT_OPTION_662017", "GROUP_LOAD_662018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 662004, 662005, 662006, 662007, 662008, 662009, 662010, 662022, 662023, 662024, 662025, 662026, 662027, 662028, 662029, 662030, 662031, 662032, 662033, 662034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 662002 },
		regions = { },
		triggers = { "GROUP_LOAD_662040" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_662012(context, evt)
	LF_PointLook(context)
	
	-- 改变指定group组133309091中， configid为91002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309091, 91002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 662002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 662002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133309662, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309662, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_662013(context, evt)
	-- 将configid为 662002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 662002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为662003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 662003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309662, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_662014(context, evt)
	if 662002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_662014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_662016(context, evt)
	if 662003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_662016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309662, 662003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_662017(context, evt)
	-- 判断是gadgetid 662003 option_id 177
	if 662003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_662017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 662002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 662002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2513.339，199.8438，6077.317），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2513.339, y=199.8438, z=6077.317}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_662018(context, evt)
	-- 将configid为 662002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 662002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为662003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 662003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309662, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_662040(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 662021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
	return 0
end

require "V3_0/CameraLook"