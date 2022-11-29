-- 基础信息
local base_info = {
	group_id = 133302490
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133302490,
	collectable_sum = 7
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
	{ config_id = 490001, gadget_id = 70211101, pos = { x = -262.569, y = 219.995, z = 3080.460 }, rot = { x = 355.030, y = 195.966, z = 2.656 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 490002, gadget_id = 70350093, pos = { x = -2.891, y = 250.130, z = 3058.617 }, rot = { x = 0.000, y = 261.647, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 490003, gadget_id = 70360001, pos = { x = -2.886, y = 251.154, z = 3058.613 }, rot = { x = 0.000, y = 316.956, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 490004, gadget_id = 70290501, pos = { x = -57.581, y = 250.675, z = 3062.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490005, gadget_id = 70290501, pos = { x = -88.682, y = 248.084, z = 3078.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490006, gadget_id = 70290501, pos = { x = -119.672, y = 248.722, z = 3085.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490007, gadget_id = 70290501, pos = { x = -154.795, y = 244.386, z = 3087.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490008, gadget_id = 70290501, pos = { x = -189.716, y = 243.728, z = 3080.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490009, gadget_id = 70290501, pos = { x = -223.034, y = 237.225, z = 3083.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490010, gadget_id = 70290501, pos = { x = -261.579, y = 237.119, z = 3078.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490011, gadget_id = 70290501, pos = { x = -263.328, y = 220.379, z = 3078.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490019, gadget_id = 70220103, pos = { x = -57.595, y = 250.000, z = 3062.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490020, gadget_id = 70220103, pos = { x = -88.684, y = 249.000, z = 3078.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490021, gadget_id = 70220103, pos = { x = -119.673, y = 248.000, z = 3085.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490022, gadget_id = 70220103, pos = { x = -154.848, y = 245.000, z = 3087.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490023, gadget_id = 70220103, pos = { x = -189.717, y = 243.000, z = 3080.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490024, gadget_id = 70220103, pos = { x = -223.034, y = 238.000, z = 3083.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490025, gadget_id = 70220103, pos = { x = -261.579, y = 236.319, z = 3078.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 490026, gadget_id = 70220103, pos = { x = -29.792, y = 253.623, z = 3066.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1490012, name = "CHALLENGE_SUCCESS_490012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_490012", trigger_count = 0 },
	{ config_id = 1490013, name = "CHALLENGE_FAIL_490013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_490013", trigger_count = 0 },
	{ config_id = 1490014, name = "GADGET_STATE_CHANGE_490014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490014", action = "action_EVENT_GADGET_STATE_CHANGE_490014", trigger_count = 0 },
	{ config_id = 1490015, name = "ANY_GADGET_DIE_490015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1490016, name = "GADGET_CREATE_490016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_490016", action = "action_EVENT_GADGET_CREATE_490016", trigger_count = 0 },
	{ config_id = 1490017, name = "SELECT_OPTION_490017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_490017", action = "action_EVENT_SELECT_OPTION_490017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1490018, name = "GROUP_LOAD_490018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_490018", trigger_count = 0 }
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
		gadgets = { 490002, 490003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_490012", "CHALLENGE_FAIL_490013", "GADGET_STATE_CHANGE_490014", "ANY_GADGET_DIE_490015", "GADGET_CREATE_490016", "SELECT_OPTION_490017", "GROUP_LOAD_490018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 490004, 490005, 490006, 490007, 490008, 490009, 490010, 490011, 490019, 490020, 490021, 490022, 490023, 490024, 490025, 490026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 490002 },
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
function action_EVENT_CHALLENGE_SUCCESS_490012(context, evt)
	-- 将configid为 490002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 490002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133302490, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302490, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为490001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 490001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_490013(context, evt)
	-- 将configid为 490002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 490002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为490003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 490003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302490, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490014(context, evt)
	if 490002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490014(context, evt)
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
function condition_EVENT_GADGET_CREATE_490016(context, evt)
	if 490003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_490016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302490, 490003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_490017(context, evt)
	-- 判断是gadgetid 490003 option_id 177
	if 490003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_490017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 490003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 490002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 490002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-29.79235, y=253.6234, z=3066.062}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-29.79235, y=253.6234, z=3066.062}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_490018(context, evt)
	-- 将configid为 490002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 490002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为490003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 490003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302490, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end