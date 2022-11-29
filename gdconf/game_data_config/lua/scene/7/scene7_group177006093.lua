-- 基础信息
local base_info = {
	group_id = 177006093
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 177006093,
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
	{ config_id = 93001, gadget_id = 70211160, pos = { x = 449.101, y = 141.055, z = -144.588 }, rot = { x = 0.000, y = 344.234, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 93002, gadget_id = 70350093, pos = { x = 456.253, y = 159.843, z = -32.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 93003, gadget_id = 70360001, pos = { x = 456.253, y = 160.808, z = -32.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 93004, gadget_id = 70290150, pos = { x = 449.436, y = 161.031, z = -35.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 93005, gadget_id = 70290150, pos = { x = 439.566, y = 156.620, z = -43.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 93006, gadget_id = 70290150, pos = { x = 437.424, y = 156.602, z = -64.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 93007, gadget_id = 70290150, pos = { x = 437.983, y = 153.517, z = -78.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 93008, gadget_id = 70290150, pos = { x = 441.039, y = 149.267, z = -94.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 93009, gadget_id = 70290150, pos = { x = 441.311, y = 147.532, z = -107.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 93010, gadget_id = 70290150, pos = { x = 441.311, y = 145.942, z = -124.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 93011, gadget_id = 70290150, pos = { x = 447.064, y = 142.207, z = -141.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1093012, name = "CHALLENGE_SUCCESS_93012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_93012", trigger_count = 0 },
	{ config_id = 1093013, name = "CHALLENGE_FAIL_93013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_93013", trigger_count = 0 },
	{ config_id = 1093014, name = "GADGET_STATE_CHANGE_93014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93014", action = "action_EVENT_GADGET_STATE_CHANGE_93014", trigger_count = 0 },
	{ config_id = 1093015, name = "ANY_GADGET_DIE_93015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1093016, name = "GADGET_CREATE_93016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93016", action = "action_EVENT_GADGET_CREATE_93016", trigger_count = 0 },
	{ config_id = 1093017, name = "SELECT_OPTION_93017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93017", action = "action_EVENT_SELECT_OPTION_93017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1093018, name = "GROUP_LOAD_93018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_93018", trigger_count = 0 }
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
		gadgets = { 93002, 93003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_93012", "CHALLENGE_FAIL_93013", "GADGET_STATE_CHANGE_93014", "ANY_GADGET_DIE_93015", "GADGET_CREATE_93016", "SELECT_OPTION_93017", "GROUP_LOAD_93018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 93004, 93005, 93006, 93007, 93008, 93009, 93010, 93011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 93002 },
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
function action_EVENT_CHALLENGE_SUCCESS_93012(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177006093, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177006093, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为93001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 93001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_93013(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为93003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 93003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006093, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93014(context, evt)
	if 93002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93014(context, evt)
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
function condition_EVENT_GADGET_CREATE_93016(context, evt)
	if 93003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177006093, 93003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93017(context, evt)
	-- 判断是gadgetid 93003 option_id 177
	if 93003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 93003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=449.4358, y=161.0306, z=-35.12334}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=449.4358, y=161.0306, z=-35.12334}
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
function action_EVENT_GROUP_LOAD_93018(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为93003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 93003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177006093, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end