-- 基础信息
local base_info = {
	group_id = 133310237
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133310237,
	collectable_sum = 11
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
	{ config_id = 237001, gadget_id = 70211101, pos = { x = -2665.013, y = 306.260, z = 4157.551 }, rot = { x = 6.962, y = 97.199, z = 0.730 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 237002, gadget_id = 70330343, pos = { x = -2685.805, y = 307.847, z = 4159.521 }, rot = { x = 0.000, y = 254.842, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 237003, gadget_id = 70360001, pos = { x = -2685.797, y = 308.440, z = 4159.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 237004, gadget_id = 70290501, pos = { x = -2659.883, y = 305.997, z = 4165.435 }, rot = { x = 0.000, y = 90.794, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237005, gadget_id = 70290501, pos = { x = -2655.178, y = 302.638, z = 4164.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237006, gadget_id = 70290501, pos = { x = -2650.454, y = 301.290, z = 4165.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237007, gadget_id = 70290501, pos = { x = -2635.596, y = 305.118, z = 4165.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237008, gadget_id = 70290501, pos = { x = -2624.640, y = 307.171, z = 4174.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237009, gadget_id = 70290501, pos = { x = -2614.554, y = 309.054, z = 4161.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237010, gadget_id = 70290501, pos = { x = -2614.603, y = 309.054, z = 4157.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237011, gadget_id = 70290501, pos = { x = -2624.667, y = 307.422, z = 4146.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 237019, gadget_id = 70330392, pos = { x = -2635.093, y = 303.697, z = 4165.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237020, gadget_id = 70330393, pos = { x = -2646.437, y = 301.350, z = 4164.430 }, rot = { x = 0.000, y = 0.000, z = 51.283 }, level = 32, area_id = 26 },
	{ config_id = 237021, gadget_id = 70330392, pos = { x = -2635.093, y = 303.697, z = 4175.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237023, gadget_id = 70330393, pos = { x = -2625.311, y = 305.378, z = 4174.093 }, rot = { x = 0.000, y = 0.000, z = 51.799 }, level = 32, area_id = 26 },
	{ config_id = 237024, gadget_id = 70330393, pos = { x = -2625.357, y = 305.678, z = 4145.318 }, rot = { x = 0.000, y = 0.000, z = 48.814 }, level = 32, area_id = 26 },
	{ config_id = 237025, gadget_id = 70330392, pos = { x = -2613.927, y = 307.740, z = 4175.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237026, gadget_id = 70330392, pos = { x = -2613.927, y = 307.740, z = 4165.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237027, gadget_id = 70330393, pos = { x = -2636.036, y = 302.353, z = 4145.318 }, rot = { x = 0.000, y = 0.000, z = 48.814 }, level = 32, area_id = 26 },
	{ config_id = 237028, gadget_id = 70330393, pos = { x = -2645.837, y = 299.300, z = 4145.318 }, rot = { x = 0.000, y = 0.000, z = 48.814 }, level = 32, area_id = 26 },
	{ config_id = 237029, gadget_id = 70330392, pos = { x = -2613.927, y = 307.740, z = 4155.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237030, gadget_id = 70330392, pos = { x = -2613.927, y = 307.740, z = 4145.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237031, gadget_id = 70290501, pos = { x = -2627.899, y = 306.323, z = 4146.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237032, gadget_id = 70290501, pos = { x = -2652.827, y = 301.416, z = 4146.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 237034, gadget_id = 70290501, pos = { x = -2649.948, y = 299.431, z = 4145.275 }, rot = { x = 0.000, y = 312.255, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1237012, name = "CHALLENGE_SUCCESS_237012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_237012", trigger_count = 0 },
	{ config_id = 1237013, name = "CHALLENGE_FAIL_237013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_237013", trigger_count = 0 },
	{ config_id = 1237014, name = "GADGET_STATE_CHANGE_237014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_237014", action = "action_EVENT_GADGET_STATE_CHANGE_237014", trigger_count = 0 },
	{ config_id = 1237015, name = "ANY_GADGET_DIE_237015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1237016, name = "GADGET_CREATE_237016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_237016", action = "action_EVENT_GADGET_CREATE_237016", trigger_count = 0 },
	{ config_id = 1237017, name = "SELECT_OPTION_237017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_237017", action = "action_EVENT_SELECT_OPTION_237017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1237018, name = "GROUP_LOAD_237018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_237018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 237022, gadget_id = 70330392, pos = { x = -2693.096, y = 306.630, z = 4221.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 237033, gadget_id = 70330264, pos = { x = -2629.748, y = 307.442, z = 4165.092 }, rot = { x = 0.000, y = 271.498, z = 0.000 }, level = 32, area_id = 26 }
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
		-- description = ,
		monsters = { },
		gadgets = { 237002, 237003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_237012", "CHALLENGE_FAIL_237013", "GADGET_STATE_CHANGE_237014", "ANY_GADGET_DIE_237015", "GADGET_CREATE_237016", "SELECT_OPTION_237017", "GROUP_LOAD_237018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 237004, 237005, 237006, 237007, 237008, 237009, 237010, 237011, 237019, 237020, 237021, 237023, 237024, 237025, 237026, 237027, 237028, 237029, 237030, 237031, 237032, 237034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 237002 },
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
function action_EVENT_CHALLENGE_SUCCESS_237012(context, evt)
	-- 将configid为 237002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310237, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310237, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为237001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 237001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_237013(context, evt)
	-- 将configid为 237002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为237003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 237003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310237, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_237014(context, evt)
	if 237002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_237014(context, evt)
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
function condition_EVENT_GADGET_CREATE_237016(context, evt)
	if 237003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_237016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310237, 237003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_237017(context, evt)
	-- 判断是gadgetid 237003 option_id 177
	if 237003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_237017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 237003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 237002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-2659.883, y=305.9965, z=4165.435}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2659.883, y=305.9965, z=4165.435}
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
function action_EVENT_GROUP_LOAD_237018(context, evt)
	-- 将configid为 237002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为237003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 237003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310237, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end