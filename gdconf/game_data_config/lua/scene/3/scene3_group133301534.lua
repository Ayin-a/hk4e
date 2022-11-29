-- 基础信息
local base_info = {
	group_id = 133301534
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133301534,
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
	{ config_id = 534001, gadget_id = 70211101, pos = { x = -691.417, y = 252.647, z = 3681.374 }, rot = { x = 12.709, y = 177.662, z = 354.324 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 534002, gadget_id = 70350093, pos = { x = -682.585, y = 213.046, z = 3570.458 }, rot = { x = 0.000, y = 319.452, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 534003, gadget_id = 70360001, pos = { x = -682.579, y = 213.779, z = 3570.458 }, rot = { x = 0.000, y = 319.452, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 534004, gadget_id = 70290501, pos = { x = -681.000, y = 213.885, z = 3578.573 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 534005, gadget_id = 70290501, pos = { x = -679.875, y = 214.211, z = 3585.535 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 534006, gadget_id = 70290501, pos = { x = -684.473, y = 215.255, z = 3594.794 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 534007, gadget_id = 70290501, pos = { x = -685.647, y = 217.703, z = 3614.034 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 534008, gadget_id = 70290501, pos = { x = -693.565, y = 227.858, z = 3643.583 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 534009, gadget_id = 70290501, pos = { x = -686.179, y = 236.089, z = 3653.382 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 534010, gadget_id = 70290501, pos = { x = -693.355, y = 252.537, z = 3668.223 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 534011, gadget_id = 70290501, pos = { x = -691.243, y = 252.768, z = 3677.741 }, rot = { x = 0.000, y = 243.360, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1534012, name = "CHALLENGE_SUCCESS_534012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_534012", trigger_count = 0 },
	{ config_id = 1534013, name = "CHALLENGE_FAIL_534013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_534013", trigger_count = 0 },
	{ config_id = 1534014, name = "GADGET_STATE_CHANGE_534014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_534014", action = "action_EVENT_GADGET_STATE_CHANGE_534014", trigger_count = 0 },
	{ config_id = 1534015, name = "ANY_GADGET_DIE_534015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1534016, name = "GADGET_CREATE_534016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_534016", action = "action_EVENT_GADGET_CREATE_534016", trigger_count = 0 },
	{ config_id = 1534017, name = "SELECT_OPTION_534017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_534017", action = "action_EVENT_SELECT_OPTION_534017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1534018, name = "GROUP_LOAD_534018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_534018", trigger_count = 0 }
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
		gadgets = { 534002, 534003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_534012", "CHALLENGE_FAIL_534013", "GADGET_STATE_CHANGE_534014", "ANY_GADGET_DIE_534015", "GADGET_CREATE_534016", "SELECT_OPTION_534017", "GROUP_LOAD_534018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 534004, 534005, 534006, 534007, 534008, 534009, 534010, 534011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 534002 },
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
function action_EVENT_CHALLENGE_SUCCESS_534012(context, evt)
	-- 将configid为 534002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133301534, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301534, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为534001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 534001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_534013(context, evt)
	-- 将configid为 534002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为534003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 534003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301534, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_534014(context, evt)
	if 534002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_534014(context, evt)
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
function condition_EVENT_GADGET_CREATE_534016(context, evt)
	if 534003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_534016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301534, 534003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_534017(context, evt)
	-- 判断是gadgetid 534003 option_id 177
	if 534003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_534017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 534003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 534002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-680.9576，215.6318，3587.288），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-680.9576, y=215.6318, z=3587.288}
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
function action_EVENT_GROUP_LOAD_534018(context, evt)
	-- 将configid为 534002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为534003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 534003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301534, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end