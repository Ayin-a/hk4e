-- 基础信息
local base_info = {
	group_id = 133213059
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133213059
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
	{ config_id = 59001, gadget_id = 70211111, pos = { x = -3869.603, y = 359.022, z = -3150.087 }, rot = { x = 0.086, y = 49.991, z = 359.843 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 59002, gadget_id = 70350083, pos = { x = -3629.952, y = 279.467, z = -3069.399 }, rot = { x = 0.000, y = 53.939, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 59003, gadget_id = 70360001, pos = { x = -3630.010, y = 280.424, z = -3069.436 }, rot = { x = 0.000, y = 53.939, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 59004, gadget_id = 70900380, pos = { x = -3805.798, y = 341.130, z = -3105.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59005, gadget_id = 70900380, pos = { x = -3645.316, y = 289.825, z = -3068.003 }, rot = { x = 0.000, y = 43.263, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59006, gadget_id = 70900380, pos = { x = -3658.743, y = 300.440, z = -3073.003 }, rot = { x = 0.000, y = 38.691, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59007, gadget_id = 70900380, pos = { x = -3689.668, y = 303.756, z = -3069.366 }, rot = { x = 0.000, y = 328.726, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59008, gadget_id = 70900380, pos = { x = -3713.719, y = 310.019, z = -3071.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59016, gadget_id = 70900380, pos = { x = -3738.209, y = 317.612, z = -3071.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59018, gadget_id = 70900380, pos = { x = -3757.717, y = 325.091, z = -3075.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59020, gadget_id = 70900380, pos = { x = -3776.947, y = 333.889, z = -3082.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59021, gadget_id = 70900380, pos = { x = -3791.625, y = 337.730, z = -3092.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59022, gadget_id = 70900380, pos = { x = -3818.303, y = 346.226, z = -3111.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59023, gadget_id = 70900380, pos = { x = -3837.094, y = 356.729, z = -3118.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59024, gadget_id = 70900380, pos = { x = -3844.552, y = 364.740, z = -3123.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59025, gadget_id = 70900380, pos = { x = -3852.260, y = 373.164, z = -3126.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59026, gadget_id = 70900380, pos = { x = -3864.353, y = 373.049, z = -3138.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 59027, gadget_id = 70900380, pos = { x = -3879.598, y = 370.874, z = -3149.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059009, name = "CHALLENGE_SUCCESS_59009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_59009", trigger_count = 0 },
	{ config_id = 1059010, name = "CHALLENGE_FAIL_59010", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_59010", trigger_count = 0 },
	{ config_id = 1059011, name = "GADGET_STATE_CHANGE_59011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59011", action = "action_EVENT_GADGET_STATE_CHANGE_59011", trigger_count = 0 },
	{ config_id = 1059012, name = "GADGET_STATE_CHANGE_59012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59012", action = "", tag = "202" },
	{ config_id = 1059013, name = "GADGET_CREATE_59013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59013", action = "action_EVENT_GADGET_CREATE_59013", trigger_count = 0 },
	{ config_id = 1059014, name = "SELECT_OPTION_59014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_59014", action = "action_EVENT_SELECT_OPTION_59014", trigger_count = 0 },
	-- 保底
	{ config_id = 1059015, name = "GROUP_LOAD_59015", event = EventType.EVENT_GROUP_LOAD, source = "666", condition = "", action = "action_EVENT_GROUP_LOAD_59015", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 59002, 59003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_59009", "CHALLENGE_FAIL_59010", "GADGET_STATE_CHANGE_59011", "GADGET_STATE_CHANGE_59012", "GADGET_CREATE_59013", "SELECT_OPTION_59014", "GROUP_LOAD_59015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 59001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 59002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 59004, 59005, 59006, 59007, 59008, 59016, 59018, 59020, 59021, 59022, 59023, 59024, 59025, 59026, 59027 },
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
function action_EVENT_CHALLENGE_SUCCESS_59009(context, evt)
	-- 将configid为 59002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213059, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213059, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213059, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_59010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213059, 2)
	
	-- 将configid为 59002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为59003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 59003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213059, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59011(context, evt)
	if 59002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59011(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_59012(context, evt)
	if 59001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_59013(context, evt)
	if 59003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213059, 59003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_59014(context, evt)
	-- 判断是gadgetid 59003 option_id 177
	if 59003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_59014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 59003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 59002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213059, 4)
	
	-- 触发镜头注目，注目位置为坐标（-3645.316，289.8253，-3068.003），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3645.316, y=289.8253, z=-3068.003}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_59015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213059, 2)
	
	-- 将configid为 59002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为59003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 59003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213059, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"