-- 基础信息
local base_info = {
	group_id = 177006077
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 177006077,
	collectable_sum = 8
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
	{ config_id = 77001, gadget_id = 70211160, pos = { x = 505.452, y = 136.787, z = -241.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 77002, gadget_id = 70350093, pos = { x = 474.226, y = 142.899, z = -156.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 77003, gadget_id = 70360001, pos = { x = 474.226, y = 142.899, z = -156.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 77004, gadget_id = 70290150, pos = { x = 489.938, y = 145.733, z = -157.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 77005, gadget_id = 70290150, pos = { x = 501.799, y = 146.045, z = -165.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 77006, gadget_id = 70290150, pos = { x = 513.077, y = 145.801, z = -174.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 77007, gadget_id = 70290150, pos = { x = 515.013, y = 137.771, z = -201.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 77008, gadget_id = 70290150, pos = { x = 513.728, y = 136.117, z = -220.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 77009, gadget_id = 70290150, pos = { x = 516.083, y = 144.748, z = -183.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 77010, gadget_id = 70290150, pos = { x = 512.578, y = 137.204, z = -226.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 77011, gadget_id = 70290150, pos = { x = 504.148, y = 137.628, z = -235.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1077012, name = "CHALLENGE_SUCCESS_77012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_77012", trigger_count = 0 },
	{ config_id = 1077013, name = "CHALLENGE_FAIL_77013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_77013", trigger_count = 0 },
	{ config_id = 1077014, name = "GADGET_STATE_CHANGE_77014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_77014", action = "action_EVENT_GADGET_STATE_CHANGE_77014", trigger_count = 0 },
	{ config_id = 1077015, name = "ANY_GADGET_DIE_77015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1077016, name = "GADGET_CREATE_77016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_77016", action = "action_EVENT_GADGET_CREATE_77016", trigger_count = 0 },
	{ config_id = 1077017, name = "SELECT_OPTION_77017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_77017", action = "action_EVENT_SELECT_OPTION_77017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1077018, name = "GROUP_LOAD_77018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_77018", trigger_count = 0 }
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
		gadgets = { 77002, 77003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_77012", "CHALLENGE_FAIL_77013", "GADGET_STATE_CHANGE_77014", "ANY_GADGET_DIE_77015", "GADGET_CREATE_77016", "SELECT_OPTION_77017", "GROUP_LOAD_77018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 77004, 77005, 77006, 77007, 77008, 77009, 77010, 77011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 77002 },
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
function action_EVENT_CHALLENGE_SUCCESS_77012(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177006077, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177006077, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为77001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_77013(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为77003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006077, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_77014(context, evt)
	if 77002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_77014(context, evt)
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
function condition_EVENT_GADGET_CREATE_77016(context, evt)
	if 77003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_77016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177006077, 77003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_77017(context, evt)
	-- 判断是gadgetid 77003 option_id 177
	if 77003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_77017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 77003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 77002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=489.9377, y=145.7331, z=-157.1358}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=489.9377, y=145.7331, z=-157.1358}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_77018(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为77003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006077, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end