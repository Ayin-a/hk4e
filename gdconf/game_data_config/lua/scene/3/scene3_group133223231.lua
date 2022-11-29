-- 基础信息
local base_info = {
	group_id = 133223231
}

-- Trigger变量
local defs = {
	duration = 80,
	group_id = 133223231,
	collectable_sum = 9
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
	{ config_id = 231001, gadget_id = 70211101, pos = { x = -6226.631, y = 204.695, z = -2848.690 }, rot = { x = 18.696, y = 336.256, z = 351.505 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 231002, gadget_id = 70350093, pos = { x = -6230.951, y = 216.674, z = -2839.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 231003, gadget_id = 70360001, pos = { x = -6230.951, y = 217.639, z = -2839.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 231004, gadget_id = 70290150, pos = { x = -6240.246, y = 209.104, z = -2855.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231005, gadget_id = 70290150, pos = { x = -6229.601, y = 205.120, z = -2820.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231006, gadget_id = 70290150, pos = { x = -6257.183, y = 208.828, z = -2830.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231007, gadget_id = 70290150, pos = { x = -6216.303, y = 207.001, z = -2846.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231008, gadget_id = 70290150, pos = { x = -6214.244, y = 202.418, z = -2801.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231009, gadget_id = 70290150, pos = { x = -6227.534, y = 204.563, z = -2791.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231010, gadget_id = 70290150, pos = { x = -6217.013, y = 214.261, z = -2860.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231011, gadget_id = 70290150, pos = { x = -6207.078, y = 201.561, z = -2789.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 231019, gadget_id = 70290150, pos = { x = -6239.049, y = 202.719, z = -2804.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1231012, name = "CHALLENGE_SUCCESS_231012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_231012", trigger_count = 0 },
	{ config_id = 1231013, name = "CHALLENGE_FAIL_231013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_231013", trigger_count = 0 },
	{ config_id = 1231014, name = "GADGET_STATE_CHANGE_231014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_231014", action = "action_EVENT_GADGET_STATE_CHANGE_231014", trigger_count = 0 },
	{ config_id = 1231015, name = "ANY_GADGET_DIE_231015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1231016, name = "GADGET_CREATE_231016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_231016", action = "action_EVENT_GADGET_CREATE_231016", trigger_count = 0 },
	{ config_id = 1231017, name = "SELECT_OPTION_231017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_231017", action = "action_EVENT_SELECT_OPTION_231017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1231018, name = "GROUP_LOAD_231018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_231018", trigger_count = 0 }
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
		gadgets = { 231002, 231003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_231012", "CHALLENGE_FAIL_231013", "GADGET_STATE_CHANGE_231014", "ANY_GADGET_DIE_231015", "GADGET_CREATE_231016", "SELECT_OPTION_231017", "GROUP_LOAD_231018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 231004, 231005, 231006, 231007, 231008, 231009, 231010, 231011, 231019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 231002 },
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
function action_EVENT_CHALLENGE_SUCCESS_231012(context, evt)
	-- 将configid为 231002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133223231, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223231, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为231001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_231013(context, evt)
	-- 将configid为 231002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为231003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223231, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_231014(context, evt)
	if 231002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_231014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_231016(context, evt)
	if 231003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_231016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223231, 231003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_231017(context, evt)
	-- 判断是gadgetid 231003 option_id 177
	if 231003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_231017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 231003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 231002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-6216.303，207.0006，-2846.792），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6216.303, y=207.0006, z=-2846.792}
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
function action_EVENT_GROUP_LOAD_231018(context, evt)
	-- 将configid为 231002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为231003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223231, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end