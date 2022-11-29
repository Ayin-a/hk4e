-- 基础信息
local base_info = {
	group_id = 133309668
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 133309668,
	collectable_sum = 16
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
	[668001] = { config_id = 668001, gadget_id = 70211101, pos = { x = -2370.374, y = 0.633, z = 5728.242 }, rot = { x = 18.279, y = 286.078, z = 5.165 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	[668002] = { config_id = 668002, gadget_id = 70330343, pos = { x = -2333.092, y = -52.768, z = 5731.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	[668003] = { config_id = 668003, gadget_id = 70360001, pos = { x = -2333.096, y = -52.769, z = 5731.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	[668004] = { config_id = 668004, gadget_id = 70290501, pos = { x = -2336.900, y = -52.333, z = 5731.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[668005] = { config_id = 668005, gadget_id = 70290501, pos = { x = -2361.636, y = -44.867, z = 5721.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[668006] = { config_id = 668006, gadget_id = 70290501, pos = { x = -2372.629, y = -33.536, z = 5716.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	[668020] = { config_id = 668020, gadget_id = 70330392, pos = { x = -2376.228, y = -37.345, z = 5713.009 }, rot = { x = 0.000, y = 53.408, z = 0.000 }, level = 32, area_id = 27 },
	[668021] = { config_id = 668021, gadget_id = 70330392, pos = { x = -2384.257, y = -37.345, z = 5707.048 }, rot = { x = 0.000, y = 53.408, z = 0.000 }, level = 32, area_id = 27 },
	[668022] = { config_id = 668022, gadget_id = 70330392, pos = { x = -2392.286, y = -37.345, z = 5701.087 }, rot = { x = 0.000, y = 53.408, z = 0.000 }, level = 32, area_id = 27 },
	[668023] = { config_id = 668023, gadget_id = 70330393, pos = { x = -2398.247, y = -33.345, z = 5709.116 }, rot = { x = 0.000, y = 53.408, z = 0.000 }, level = 32, area_id = 27 },
	[668024] = { config_id = 668024, gadget_id = 70330393, pos = { x = -2404.208, y = -27.345, z = 5717.145 }, rot = { x = 0.000, y = 53.408, z = 0.000 }, level = 32, area_id = 27 },
	[668026] = { config_id = 668026, gadget_id = 70330392, pos = { x = -2404.578, y = -14.397, z = 5729.614 }, rot = { x = 0.000, y = 171.391, z = 0.000 }, level = 32, area_id = 27 },
	[668027] = { config_id = 668027, gadget_id = 70290501, pos = { x = -2376.835, y = -35.736, z = 5713.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668028] = { config_id = 668028, gadget_id = 70330393, pos = { x = -2384.736, y = -5.319, z = 5732.533 }, rot = { x = 0.000, y = 171.391, z = 0.000 }, level = 32, area_id = 27 },
	[668029] = { config_id = 668029, gadget_id = 70330393, pos = { x = -2393.632, y = -10.694, z = 5731.187 }, rot = { x = 0.000, y = 171.391, z = 0.000 }, level = 32, area_id = 27 },
	[668030] = { config_id = 668030, gadget_id = 70290501, pos = { x = -2382.404, y = -35.736, z = 5709.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668031] = { config_id = 668031, gadget_id = 70290501, pos = { x = -2386.620, y = -35.736, z = 5706.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668032] = { config_id = 668032, gadget_id = 70290501, pos = { x = -2392.222, y = -35.736, z = 5702.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668033] = { config_id = 668033, gadget_id = 70290501, pos = { x = -2395.765, y = -33.710, z = 5706.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668034] = { config_id = 668034, gadget_id = 70290501, pos = { x = -2400.501, y = -29.133, z = 5712.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668035] = { config_id = 668035, gadget_id = 70290501, pos = { x = -2386.842, y = -3.521, z = 5732.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668039] = { config_id = 668039, gadget_id = 70290501, pos = { x = -2408.684, y = -10.242, z = 5725.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668040] = { config_id = 668040, gadget_id = 70290501, pos = { x = -2404.168, y = -21.948, z = 5718.281 }, rot = { x = 0.000, y = 207.756, z = 0.000 }, level = 32, area_id = 27 },
	[668041] = { config_id = 668041, gadget_id = 70290501, pos = { x = -2375.806, y = 0.016, z = 5733.228 }, rot = { x = 0.000, y = 207.756, z = 0.000 }, level = 32, area_id = 27 },
	[668042] = { config_id = 668042, gadget_id = 70290501, pos = { x = -2391.495, y = -6.835, z = 5731.916 }, rot = { x = 0.000, y = 207.756, z = 0.000 }, level = 32, area_id = 27 },
	[668043] = { config_id = 668043, gadget_id = 70290501, pos = { x = -2405.420, y = -12.740, z = 5729.622 }, rot = { x = 0.000, y = 207.756, z = 0.000 }, level = 32, area_id = 27 },
	[668044] = { config_id = 668044, gadget_id = 70220103, pos = { x = -2361.636, y = -46.275, z = 5721.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668045] = { config_id = 668045, gadget_id = 70220103, pos = { x = -2372.568, y = -34.448, z = 5716.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668046] = { config_id = 668046, gadget_id = 70220103, pos = { x = -2408.684, y = -11.653, z = 5725.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[668047] = { config_id = 668047, gadget_id = 70330392, pos = { x = -2409.573, y = -24.345, z = 5724.371 }, rot = { x = 0.000, y = 53.408, z = 0.000 }, level = 32, area_id = 27 },
	[668048] = { config_id = 668048, gadget_id = 70330392, pos = { x = -2415.534, y = -24.345, z = 5732.400 }, rot = { x = 0.000, y = 53.408, z = 0.000 }, level = 32, area_id = 27 },
	[668050] = { config_id = 668050, gadget_id = 70330392, pos = { x = -2414.465, y = -14.397, z = 5728.118 }, rot = { x = 0.000, y = 171.391, z = 0.000 }, level = 32, area_id = 27 },
	[668051] = { config_id = 668051, gadget_id = 70290501, pos = { x = -2396.367, y = -10.864, z = 5730.982 }, rot = { x = 0.000, y = 207.756, z = 0.000 }, level = 32, area_id = 27 },
	[668052] = { config_id = 668052, gadget_id = 70220103, pos = { x = -2404.168, y = -23.047, z = 5718.281 }, rot = { x = 0.000, y = 207.756, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1668012, name = "CHALLENGE_SUCCESS_668012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_668012", trigger_count = 0 },
	{ config_id = 1668013, name = "CHALLENGE_FAIL_668013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_668013", trigger_count = 0 },
	{ config_id = 1668014, name = "GADGET_STATE_CHANGE_668014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_668014", action = "action_EVENT_GADGET_STATE_CHANGE_668014", trigger_count = 0 },
	{ config_id = 1668015, name = "ANY_GADGET_DIE_668015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1668016, name = "GADGET_CREATE_668016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_668016", action = "action_EVENT_GADGET_CREATE_668016", trigger_count = 0 },
	{ config_id = 1668017, name = "SELECT_OPTION_668017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_668017", action = "action_EVENT_SELECT_OPTION_668017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1668018, name = "GROUP_LOAD_668018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_668018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 668007, gadget_id = 70290501, pos = { x = -2359.662, y = -59.727, z = 5719.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
		{ config_id = 668008, gadget_id = 70290501, pos = { x = -2367.927, y = -59.508, z = 5718.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
		{ config_id = 668009, gadget_id = 70290501, pos = { x = -2369.378, y = -51.441, z = 5718.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
		{ config_id = 668010, gadget_id = 70290501, pos = { x = -2369.378, y = -40.416, z = 5718.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
		{ config_id = 668011, gadget_id = 70290501, pos = { x = -2373.298, y = -36.832, z = 5715.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
		{ config_id = 668019, gadget_id = 70330434, pos = { x = -2369.262, y = -62.393, z = 5705.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 668025, gadget_id = 70330434, pos = { x = -2410.514, y = -43.073, z = 5725.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 668036, gadget_id = 70290501, pos = { x = -2409.426, y = -33.696, z = 5724.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 668037, gadget_id = 70290501, pos = { x = -2409.891, y = -27.715, z = 5725.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 668038, gadget_id = 70290501, pos = { x = -2409.891, y = -21.108, z = 5725.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 668049, gadget_id = 70330393, pos = { x = -2386.551, y = -3.668, z = 5733.277 }, rot = { x = 0.000, y = 171.391, z = 0.000 }, level = 32, area_id = 27 }
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
		gadgets = { 668002, 668003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_668012", "CHALLENGE_FAIL_668013", "GADGET_STATE_CHANGE_668014", "ANY_GADGET_DIE_668015", "GADGET_CREATE_668016", "SELECT_OPTION_668017", "GROUP_LOAD_668018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 668004, 668005, 668006, 668020, 668021, 668022, 668023, 668024, 668026, 668027, 668028, 668029, 668030, 668031, 668032, 668033, 668034, 668035, 668039, 668040, 668041, 668042, 668043, 668044, 668045, 668046, 668047, 668048, 668050, 668051, 668052 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 668002 },
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
function action_EVENT_CHALLENGE_SUCCESS_668012(context, evt)
	-- 将configid为 668002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 668002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133309668, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309668, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为668001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 668001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_668013(context, evt)
	-- 将configid为 668002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 668002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为668003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 668003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309668, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_668014(context, evt)
	if 668002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_668014(context, evt)
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
function condition_EVENT_GADGET_CREATE_668016(context, evt)
	if 668003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_668016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309668, 668003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_668017(context, evt)
	-- 判断是gadgetid 668003 option_id 177
	if 668003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_668017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 668003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 668002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 668002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2336.9，-51.33308，5731.112），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2336.9, y=-51.33308, z=5731.112}
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
function action_EVENT_GROUP_LOAD_668018(context, evt)
	-- 将configid为 668002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 668002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为668003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 668003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309668, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end