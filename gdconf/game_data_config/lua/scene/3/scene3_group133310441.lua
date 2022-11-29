-- 基础信息
local base_info = {
	group_id = 133310441
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133310441,
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
	{ config_id = 441001, gadget_id = 70211101, pos = { x = -2888.500, y = 13.574, z = 4334.525 }, rot = { x = 13.265, y = 161.204, z = 347.446 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 441002, gadget_id = 70330343, pos = { x = -2816.839, y = 29.767, z = 4341.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 441003, gadget_id = 70360001, pos = { x = -2816.959, y = 30.503, z = 4341.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 441004, gadget_id = 70290501, pos = { x = -2820.381, y = 31.029, z = 4340.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441005, gadget_id = 70290501, pos = { x = -2824.891, y = 30.950, z = 4340.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441006, gadget_id = 70290501, pos = { x = -2853.527, y = 23.296, z = 4349.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441007, gadget_id = 70290501, pos = { x = -2856.600, y = 23.120, z = 4349.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441008, gadget_id = 70290501, pos = { x = -2860.167, y = 22.953, z = 4348.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441009, gadget_id = 70290501, pos = { x = -2873.867, y = 16.298, z = 4322.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441010, gadget_id = 70290501, pos = { x = -2878.264, y = 14.318, z = 4321.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441012, gadget_id = 70290501, pos = { x = -2882.157, y = 12.793, z = 4321.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441013, gadget_id = 70290501, pos = { x = -2886.116, y = 11.536, z = 4322.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 441015, gadget_id = 70220103, pos = { x = -2849.602, y = 24.737, z = 4350.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 441016, gadget_id = 70220103, pos = { x = -2869.886, y = 18.255, z = 4325.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1441018, name = "CHALLENGE_SUCCESS_441018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_441018", trigger_count = 0 },
	{ config_id = 1441019, name = "CHALLENGE_FAIL_441019", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_441019", trigger_count = 0 },
	{ config_id = 1441020, name = "GADGET_STATE_CHANGE_441020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_441020", action = "action_EVENT_GADGET_STATE_CHANGE_441020", trigger_count = 0 },
	{ config_id = 1441021, name = "ANY_GADGET_DIE_441021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1441022, name = "GADGET_CREATE_441022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_441022", action = "action_EVENT_GADGET_CREATE_441022", trigger_count = 0 },
	{ config_id = 1441023, name = "SELECT_OPTION_441023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_441023", action = "action_EVENT_SELECT_OPTION_441023", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1441024, name = "GROUP_LOAD_441024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_441024", trigger_count = 0 }
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
		gadgets = { 441002, 441003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_441018", "CHALLENGE_FAIL_441019", "GADGET_STATE_CHANGE_441020", "ANY_GADGET_DIE_441021", "GADGET_CREATE_441022", "SELECT_OPTION_441023", "GROUP_LOAD_441024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 441004, 441005, 441006, 441007, 441008, 441009, 441010, 441012, 441013, 441015, 441016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 441002 },
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
function action_EVENT_CHALLENGE_SUCCESS_441018(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310441, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310441, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为441001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 441001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_441019(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为441003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 441003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310441, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_441020(context, evt)
	if 441002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_441020(context, evt)
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
function condition_EVENT_GADGET_CREATE_441022(context, evt)
	if 441003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_441022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310441, 441003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_441023(context, evt)
	-- 判断是gadgetid 441003 option_id 177
	if 441003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_441023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 441003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 441002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-2820.381, y=31.02938, z=4340.903}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2820.381, y=31.02938, z=4340.903}
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
function action_EVENT_GROUP_LOAD_441024(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为441003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 441003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310441, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end