-- 基础信息
local base_info = {
	group_id = 133307232
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 133307232,
	collectable_sum = 10
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
	{ config_id = 232001, gadget_id = 70211101, pos = { x = -640.316, y = 186.340, z = 5441.140 }, rot = { x = 10.604, y = 269.464, z = 358.142 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 232002, gadget_id = 70350093, pos = { x = -615.136, y = 186.667, z = 5526.646 }, rot = { x = 10.985, y = 42.362, z = 14.871 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 232003, gadget_id = 70360001, pos = { x = -615.136, y = 186.667, z = 5526.646 }, rot = { x = 10.985, y = 42.362, z = 14.871 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 232004, gadget_id = 70290501, pos = { x = -610.271, y = 190.133, z = 5518.427 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232005, gadget_id = 70290501, pos = { x = -605.341, y = 190.133, z = 5509.669 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232006, gadget_id = 70290501, pos = { x = -600.250, y = 190.133, z = 5500.977 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232007, gadget_id = 70290501, pos = { x = -594.603, y = 193.315, z = 5492.469 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232008, gadget_id = 70290501, pos = { x = -588.870, y = 196.271, z = 5484.474 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232009, gadget_id = 70290501, pos = { x = -579.833, y = 196.272, z = 5489.342 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232010, gadget_id = 70290501, pos = { x = -580.577, y = 196.272, z = 5501.089 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232011, gadget_id = 70290501, pos = { x = -585.652, y = 196.272, z = 5509.508 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 232019, gadget_id = 70330473, pos = { x = -610.123, y = 189.619, z = 5518.075 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232020, gadget_id = 70330473, pos = { x = -604.959, y = 189.619, z = 5509.587 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232021, gadget_id = 70330473, pos = { x = -599.769, y = 189.619, z = 5501.057 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232022, gadget_id = 70330393, pos = { x = -594.145, y = 193.239, z = 5491.603 }, rot = { x = 0.000, y = 238.378, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232023, gadget_id = 70330473, pos = { x = -588.310, y = 195.758, z = 5484.428 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232024, gadget_id = 70330473, pos = { x = -579.758, y = 195.758, z = 5489.632 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232025, gadget_id = 70330473, pos = { x = -581.994, y = 195.758, z = 5500.004 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232026, gadget_id = 70330473, pos = { x = -587.218, y = 195.758, z = 5508.535 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232027, gadget_id = 70330473, pos = { x = -595.743, y = 195.758, z = 5503.348 }, rot = { x = 0.000, y = 328.681, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232028, gadget_id = 70290501, pos = { x = -642.449, y = 197.493, z = 5437.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232029, gadget_id = 70290501, pos = { x = -642.449, y = 202.153, z = 5437.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232030, gadget_id = 70220103, pos = { x = -610.255, y = 193.055, z = 5518.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 232031, gadget_id = 70220103, pos = { x = -595.985, y = 198.864, z = 5503.871 }, rot = { x = 0.000, y = 197.013, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1232012, name = "CHALLENGE_SUCCESS_232012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_232012", trigger_count = 0 },
	{ config_id = 1232013, name = "CHALLENGE_FAIL_232013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_232013", trigger_count = 0 },
	{ config_id = 1232014, name = "GADGET_STATE_CHANGE_232014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_232014", action = "action_EVENT_GADGET_STATE_CHANGE_232014", trigger_count = 0 },
	{ config_id = 1232015, name = "ANY_GADGET_DIE_232015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1232016, name = "GADGET_CREATE_232016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232016", action = "action_EVENT_GADGET_CREATE_232016", trigger_count = 0 },
	{ config_id = 1232017, name = "SELECT_OPTION_232017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_232017", action = "action_EVENT_SELECT_OPTION_232017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1232018, name = "GROUP_LOAD_232018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_232018", trigger_count = 0 }
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
		gadgets = { 232002, 232003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_232012", "CHALLENGE_FAIL_232013", "GADGET_STATE_CHANGE_232014", "ANY_GADGET_DIE_232015", "GADGET_CREATE_232016", "SELECT_OPTION_232017", "GROUP_LOAD_232018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 232004, 232005, 232006, 232007, 232008, 232009, 232010, 232011, 232028, 232029, 232030, 232031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 232002, 232019, 232020, 232021, 232022, 232023, 232024, 232025, 232026, 232027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_CHALLENGE_SUCCESS_232012(context, evt)
	-- 将configid为 232002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133307232, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307232, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为232001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 232001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_232013(context, evt)
	-- 将configid为 232002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为232003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 232003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307232, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_232014(context, evt)
	if 232002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_232014(context, evt)
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
function condition_EVENT_GADGET_CREATE_232016(context, evt)
	if 232003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_232016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307232, 232003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_232017(context, evt)
	-- 判断是gadgetid 232003 option_id 177
	if 232003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_232017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 232003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 232002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-620.2232，188.673，5517.814），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-620.2232, y=188.673, z=5517.814}
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
function action_EVENT_GROUP_LOAD_232018(context, evt)
	-- 将configid为 232002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为232003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 232003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307232, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end