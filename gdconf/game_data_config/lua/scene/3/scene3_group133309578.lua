-- 基础信息
local base_info = {
	group_id = 133309578
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133309578,
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
	{ config_id = 578001, gadget_id = 70211101, pos = { x = -2390.740, y = 171.051, z = 5854.776 }, rot = { x = 0.000, y = 91.356, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 578002, gadget_id = 70330343, pos = { x = -2492.681, y = 189.896, z = 5960.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 578003, gadget_id = 70360001, pos = { x = -2492.681, y = 190.085, z = 5960.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 27 },
	-- 1
	{ config_id = 578004, gadget_id = 70290501, pos = { x = -2477.164, y = 196.482, z = 5946.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 27 },
	-- 1
	{ config_id = 578005, gadget_id = 70220103, pos = { x = -2475.410, y = 196.463, z = 5944.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2
	{ config_id = 578006, gadget_id = 70290501, pos = { x = -2462.063, y = 194.424, z = 5928.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 2
	{ config_id = 578007, gadget_id = 70220103, pos = { x = -2459.254, y = 193.724, z = 5924.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3
	{ config_id = 578008, gadget_id = 70290501, pos = { x = -2449.023, y = 194.424, z = 5913.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 3
	{ config_id = 578009, gadget_id = 70220103, pos = { x = -2446.214, y = 193.724, z = 5910.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 4
	{ config_id = 578010, gadget_id = 70290501, pos = { x = -2436.130, y = 188.780, z = 5892.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 4
	{ config_id = 578011, gadget_id = 70220103, pos = { x = -2433.322, y = 188.080, z = 5889.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 5
	{ config_id = 578019, gadget_id = 70290501, pos = { x = -2419.838, y = 187.147, z = 5870.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 5
	{ config_id = 578020, gadget_id = 70220103, pos = { x = -2417.153, y = 186.447, z = 5868.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 6
	{ config_id = 578021, gadget_id = 70290501, pos = { x = -2393.612, y = 189.361, z = 5849.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1578012, name = "CHALLENGE_SUCCESS_578012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_578012", trigger_count = 0 },
	{ config_id = 1578013, name = "CHALLENGE_FAIL_578013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_578013", trigger_count = 0 },
	{ config_id = 1578014, name = "GADGET_STATE_CHANGE_578014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_578014", action = "action_EVENT_GADGET_STATE_CHANGE_578014", trigger_count = 0 },
	{ config_id = 1578015, name = "ANY_GADGET_DIE_578015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1578016, name = "GADGET_CREATE_578016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_578016", action = "action_EVENT_GADGET_CREATE_578016", trigger_count = 0 },
	{ config_id = 1578017, name = "SELECT_OPTION_578017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_578017", action = "action_EVENT_SELECT_OPTION_578017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1578018, name = "GROUP_LOAD_578018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_578018", trigger_count = 0 }
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
		gadgets = { 578002, 578003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_578012", "CHALLENGE_FAIL_578013", "GADGET_STATE_CHANGE_578014", "ANY_GADGET_DIE_578015", "GADGET_CREATE_578016", "SELECT_OPTION_578017", "GROUP_LOAD_578018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 578004, 578005, 578006, 578007, 578008, 578009, 578010, 578011, 578019, 578020, 578021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 578002, 578005, 578007, 578009, 578011, 578020 },
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
function action_EVENT_CHALLENGE_SUCCESS_578012(context, evt)
	-- 将configid为 578002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133309578, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309578, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为578001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 578001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_578013(context, evt)
	-- 将configid为 578002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为578003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 578003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309578, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_578014(context, evt)
	if 578002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_578014(context, evt)
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
function condition_EVENT_GADGET_CREATE_578016(context, evt)
	if 578003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_578016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309578, 578003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_578017(context, evt)
	-- 判断是gadgetid 578003 option_id 177
	if 578003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_578017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 578003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 578002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2477.164，196.4816，5946.497），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2477.164, y=196.4816, z=5946.497}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_578018(context, evt)
	-- 将configid为 578002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为578003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 578003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309578, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end