-- 基础信息
local base_info = {
	group_id = 177005143
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 177005143,
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
	{ config_id = 143001, gadget_id = 70211161, pos = { x = 557.115, y = 200.902, z = 666.043 }, rot = { x = 358.951, y = 299.518, z = 2.923 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 143002, gadget_id = 70350093, pos = { x = 591.706, y = 210.600, z = 674.129 }, rot = { x = 355.787, y = 359.864, z = 3.315 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 143003, gadget_id = 70360001, pos = { x = 591.706, y = 210.600, z = 674.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 143004, gadget_id = 70290150, pos = { x = 556.448, y = 202.180, z = 674.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 143005, gadget_id = 70290150, pos = { x = 555.591, y = 206.481, z = 684.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 143006, gadget_id = 70290150, pos = { x = 575.758, y = 219.764, z = 693.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 143007, gadget_id = 70290150, pos = { x = 587.576, y = 222.221, z = 699.456 }, rot = { x = 309.076, y = 43.593, z = 158.876 }, level = 35, area_id = 210 },
	{ config_id = 143008, gadget_id = 70290150, pos = { x = 596.665, y = 223.350, z = 696.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 143009, gadget_id = 70290150, pos = { x = 600.169, y = 223.182, z = 689.938 }, rot = { x = 334.356, y = 40.372, z = 164.656 }, level = 35, area_id = 210 },
	{ config_id = 143010, gadget_id = 70290150, pos = { x = 600.314, y = 220.043, z = 685.526 }, rot = { x = 325.671, y = 40.941, z = 164.656 }, level = 35, area_id = 210 },
	{ config_id = 143011, gadget_id = 70290150, pos = { x = 599.011, y = 215.302, z = 679.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143012, name = "CHALLENGE_SUCCESS_143012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_143012", trigger_count = 0 },
	{ config_id = 1143013, name = "CHALLENGE_FAIL_143013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_143013", trigger_count = 0 },
	{ config_id = 1143014, name = "GADGET_STATE_CHANGE_143014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_143014", action = "action_EVENT_GADGET_STATE_CHANGE_143014", trigger_count = 0 },
	{ config_id = 1143015, name = "ANY_GADGET_DIE_143015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1143016, name = "GADGET_CREATE_143016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_143016", action = "action_EVENT_GADGET_CREATE_143016", trigger_count = 0 },
	{ config_id = 1143017, name = "SELECT_OPTION_143017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_143017", action = "action_EVENT_SELECT_OPTION_143017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1143018, name = "GROUP_LOAD_143018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_143018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 143019, gadget_id = 70690011, pos = { x = 562.386, y = 195.331, z = 692.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 143020, gadget_id = 70290150, pos = { x = 557.355, y = 201.919, z = 669.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 143021, gadget_id = 70290150, pos = { x = 565.947, y = 205.168, z = 659.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 143002, 143003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_143012", "CHALLENGE_FAIL_143013", "GADGET_STATE_CHANGE_143014", "ANY_GADGET_DIE_143015", "GADGET_CREATE_143016", "SELECT_OPTION_143017", "GROUP_LOAD_143018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 143004, 143005, 143006, 143007, 143008, 143009, 143010, 143011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 143002 },
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
function action_EVENT_CHALLENGE_SUCCESS_143012(context, evt)
	-- 将configid为 143002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177005143, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005143, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为143001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 143001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组177005129中， configid为129002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177005129, 129002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_143013(context, evt)
	-- 将configid为 143002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为143003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 143003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005143, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_143014(context, evt)
	if 143002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_143014(context, evt)
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
function condition_EVENT_GADGET_CREATE_143016(context, evt)
	if 143003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_143016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177005143, 143003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_143017(context, evt)
	-- 判断是gadgetid 143003 option_id 177
	if 143003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_143017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 143003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 143002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（599，215，679），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=599, y=215, z=679}
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
function action_EVENT_GROUP_LOAD_143018(context, evt)
	-- 将configid为 143002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为143003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 143003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005143, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end