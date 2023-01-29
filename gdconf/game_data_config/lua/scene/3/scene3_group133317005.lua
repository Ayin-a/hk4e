-- 基础信息
local base_info = {
	group_id = 133317005
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133317005,
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
	{ config_id = 5001, gadget_id = 70211111, pos = { x = 857.000, y = 225.172, z = 5721.540 }, rot = { x = 0.000, y = 329.851, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 },
	{ config_id = 5002, gadget_id = 70350093, pos = { x = 779.178, y = 235.685, z = 5951.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 30 },
	{ config_id = 5003, gadget_id = 70360001, pos = { x = 779.178, y = 236.650, z = 5951.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 30 },
	{ config_id = 5004, gadget_id = 70290501, pos = { x = 803.595, y = 237.728, z = 5922.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5005, gadget_id = 70290501, pos = { x = 830.821, y = 249.414, z = 5912.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5006, gadget_id = 70290501, pos = { x = 847.164, y = 263.097, z = 5866.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5007, gadget_id = 70290501, pos = { x = 828.703, y = 263.097, z = 5809.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5008, gadget_id = 70290501, pos = { x = 837.327, y = 262.253, z = 5779.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5009, gadget_id = 70290501, pos = { x = 841.550, y = 234.431, z = 5757.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5010, gadget_id = 70290501, pos = { x = 848.258, y = 232.166, z = 5739.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5011, gadget_id = 70290501, pos = { x = 857.004, y = 226.807, z = 5721.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 5019, gadget_id = 70220103, pos = { x = 803.595, y = 245.050, z = 5922.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 5020, gadget_id = 70220103, pos = { x = 847.164, y = 270.242, z = 5866.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 5021, gadget_id = 70220103, pos = { x = 837.327, y = 272.428, z = 5779.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 5022, gadget_id = 70220103, pos = { x = 841.550, y = 234.741, z = 5757.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 5023, gadget_id = 70220103, pos = { x = 857.004, y = 228.270, z = 5721.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005012, name = "CHALLENGE_SUCCESS_5012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5012", trigger_count = 0 },
	{ config_id = 1005013, name = "CHALLENGE_FAIL_5013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5013", trigger_count = 0 },
	{ config_id = 1005014, name = "GADGET_STATE_CHANGE_5014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5014", action = "action_EVENT_GADGET_STATE_CHANGE_5014", trigger_count = 0 },
	{ config_id = 1005015, name = "ANY_GADGET_DIE_5015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1005016, name = "GADGET_CREATE_5016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5016", action = "action_EVENT_GADGET_CREATE_5016", trigger_count = 0 },
	{ config_id = 1005017, name = "SELECT_OPTION_5017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5017", action = "action_EVENT_SELECT_OPTION_5017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1005018, name = "GROUP_LOAD_5018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5018", trigger_count = 0 }
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
		gadgets = { 5002, 5003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5012", "CHALLENGE_FAIL_5013", "GADGET_STATE_CHANGE_5014", "ANY_GADGET_DIE_5015", "GADGET_CREATE_5016", "SELECT_OPTION_5017", "GROUP_LOAD_5018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5004, 5005, 5006, 5007, 5008, 5009, 5010, 5011, 5019, 5020, 5021, 5022, 5023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 5002 },
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
function action_EVENT_CHALLENGE_SUCCESS_5012(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133317005, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133317005, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为5001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5013(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为5003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317005, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5014(context, evt)
	if 5002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5014(context, evt)
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
function condition_EVENT_GADGET_CREATE_5016(context, evt)
	if 5003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133317005, 5003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5017(context, evt)
	-- 判断是gadgetid 5003 option_id 177
	if 5003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（1320，345，-744），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1320, y=345, z=-744}
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
function action_EVENT_GROUP_LOAD_5018(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为5003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317005, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end