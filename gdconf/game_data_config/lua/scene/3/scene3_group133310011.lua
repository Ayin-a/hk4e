-- 基础信息
local base_info = {
	group_id = 133310011
}

-- Trigger变量
local defs = {
	duration = 35,
	group_id = 133310011,
	collectable_sum = 6
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
	{ config_id = 11001, gadget_id = 70211101, pos = { x = -2855.162, y = 251.217, z = 4618.353 }, rot = { x = 19.647, y = 61.603, z = 338.236 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 11002, gadget_id = 70330343, pos = { x = -2780.091, y = 231.795, z = 4645.671 }, rot = { x = 356.625, y = 158.345, z = 1.052 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 11003, gadget_id = 70360001, pos = { x = -2780.094, y = 232.422, z = 4645.708 }, rot = { x = 356.625, y = 158.345, z = 1.052 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 11004, gadget_id = 70290501, pos = { x = -2789.771, y = 233.913, z = 4646.617 }, rot = { x = 0.000, y = 161.169, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 11005, gadget_id = 70290501, pos = { x = -2806.216, y = 233.905, z = 4647.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 11006, gadget_id = 70290501, pos = { x = -2818.714, y = 237.740, z = 4640.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 11007, gadget_id = 70290501, pos = { x = -2829.086, y = 240.947, z = 4625.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 11008, gadget_id = 70290501, pos = { x = -2839.559, y = 247.607, z = 4632.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 11009, gadget_id = 70290501, pos = { x = -2847.338, y = 249.236, z = 4622.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011012, name = "CHALLENGE_SUCCESS_11012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_11012", trigger_count = 0 },
	{ config_id = 1011013, name = "CHALLENGE_FAIL_11013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11013", trigger_count = 0 },
	{ config_id = 1011014, name = "GADGET_STATE_CHANGE_11014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11014", action = "action_EVENT_GADGET_STATE_CHANGE_11014", trigger_count = 0 },
	{ config_id = 1011015, name = "ANY_GADGET_DIE_11015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1011016, name = "GADGET_CREATE_11016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11016", action = "action_EVENT_GADGET_CREATE_11016", trigger_count = 0 },
	{ config_id = 1011017, name = "SELECT_OPTION_11017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11017", action = "action_EVENT_SELECT_OPTION_11017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1011018, name = "GROUP_LOAD_11018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_11018", trigger_count = 0 }
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
		gadgets = { 11002, 11003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_11012", "CHALLENGE_FAIL_11013", "GADGET_STATE_CHANGE_11014", "ANY_GADGET_DIE_11015", "GADGET_CREATE_11016", "SELECT_OPTION_11017", "GROUP_LOAD_11018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11004, 11005, 11006, 11007, 11008, 11009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 11002 },
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
function action_EVENT_CHALLENGE_SUCCESS_11012(context, evt)
	-- 将configid为 11002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310011, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310011, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为11001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11013(context, evt)
	-- 将configid为 11002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为11003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310011, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11014(context, evt)
	if 11002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11014(context, evt)
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
function condition_EVENT_GADGET_CREATE_11016(context, evt)
	if 11003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310011, 11003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11017(context, evt)
	-- 判断是gadgetid 11003 option_id 177
	if 11003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 11003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 11002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2795，232，4644），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2795, y=232, z=4644}
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
function action_EVENT_GROUP_LOAD_11018(context, evt)
	-- 将configid为 11002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为11003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310011, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end