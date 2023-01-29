-- 基础信息
local base_info = {
	group_id = 133313091
}

-- Trigger变量
local defs = {
	duration = 120,
	group_id = 133313091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91006, monster_id = 28060512, pos = { x = -846.141, y = 22.924, z = 5828.091 }, rot = { x = 0.000, y = 157.882, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91001, gadget_id = 70211101, pos = { x = -758.419, y = 74.901, z = 5707.411 }, rot = { x = 32.967, y = 344.643, z = 354.592 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 91002, gadget_id = 70350083, pos = { x = -849.554, y = 23.337, z = 5834.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 91003, gadget_id = 70360001, pos = { x = -849.554, y = 23.337, z = 5834.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 91004, gadget_id = 70220103, pos = { x = -758.010, y = 78.343, z = 5709.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 91014, gadget_id = 70330392, pos = { x = -843.242, y = 23.136, z = 5824.979 }, rot = { x = 12.289, y = 331.265, z = 358.922 }, level = 32, area_id = 32 },
	{ config_id = 91015, gadget_id = 70330392, pos = { x = -838.653, y = 24.354, z = 5816.083 }, rot = { x = 2.327, y = 331.452, z = 358.946 }, level = 32, area_id = 32 },
	{ config_id = 91016, gadget_id = 70330392, pos = { x = -833.996, y = 24.750, z = 5807.523 }, rot = { x = 2.327, y = 331.452, z = 358.946 }, level = 32, area_id = 32 },
	{ config_id = 91018, gadget_id = 70330392, pos = { x = -814.759, y = 30.154, z = 5771.766 }, rot = { x = 1.757, y = 331.414, z = 357.899 }, level = 32, area_id = 32 },
	{ config_id = 91019, gadget_id = 70330392, pos = { x = -823.682, y = 29.034, z = 5788.647 }, rot = { x = 1.757, y = 331.414, z = 357.899 }, level = 32, area_id = 32 },
	{ config_id = 91020, gadget_id = 70330392, pos = { x = -819.024, y = 29.435, z = 5780.087 }, rot = { x = 1.757, y = 331.414, z = 357.899 }, level = 32, area_id = 32 },
	{ config_id = 91022, gadget_id = 70330392, pos = { x = -792.946, y = 30.550, z = 5771.110 }, rot = { x = 1.757, y = 331.414, z = 357.899 }, level = 32, area_id = 32 },
	{ config_id = 91023, gadget_id = 70330392, pos = { x = -806.296, y = 30.154, z = 5775.621 }, rot = { x = 1.757, y = 331.414, z = 357.899 }, level = 32, area_id = 32 },
	{ config_id = 91024, gadget_id = 70330392, pos = { x = -797.603, y = 30.154, z = 5779.670 }, rot = { x = 1.757, y = 331.414, z = 357.899 }, level = 32, area_id = 32 },
	{ config_id = 91025, gadget_id = 70330392, pos = { x = -788.239, y = 33.319, z = 5762.662 }, rot = { x = 30.340, y = 330.248, z = 357.566 }, level = 32, area_id = 32 },
	{ config_id = 91026, gadget_id = 70330392, pos = { x = -784.242, y = 38.032, z = 5755.670 }, rot = { x = 30.340, y = 330.248, z = 357.566 }, level = 32, area_id = 32 },
	{ config_id = 91027, gadget_id = 70330392, pos = { x = -779.835, y = 43.230, z = 5747.960 }, rot = { x = 30.340, y = 330.248, z = 357.566 }, level = 32, area_id = 32 },
	{ config_id = 91028, gadget_id = 70330392, pos = { x = -774.140, y = 49.947, z = 5737.996 }, rot = { x = 30.340, y = 330.248, z = 357.566 }, level = 32, area_id = 32 },
	{ config_id = 91029, gadget_id = 70330392, pos = { x = -770.006, y = 54.822, z = 5730.764 }, rot = { x = 30.340, y = 330.248, z = 357.566 }, level = 32, area_id = 32 },
	{ config_id = 91032, gadget_id = 70330392, pos = { x = -777.381, y = 46.125, z = 5743.666 }, rot = { x = 30.340, y = 330.248, z = 357.566 }, level = 32, area_id = 32 },
	{ config_id = 91033, gadget_id = 70330392, pos = { x = -828.343, y = 27.066, z = 5797.072 }, rot = { x = 17.773, y = 330.805, z = 357.795 }, level = 32, area_id = 32 },
	{ config_id = 91034, gadget_id = 70330392, pos = { x = -832.649, y = 24.864, z = 5805.047 }, rot = { x = 2.327, y = 331.452, z = 358.946 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091007, name = "CHALLENGE_SUCCESS_91007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_91007", trigger_count = 0 },
	{ config_id = 1091008, name = "CHALLENGE_FAIL_91008", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_91008", trigger_count = 0 },
	{ config_id = 1091009, name = "GADGET_STATE_CHANGE_91009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91009", action = "action_EVENT_GADGET_STATE_CHANGE_91009", trigger_count = 0 },
	{ config_id = 1091010, name = "GADGET_STATE_CHANGE_91010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91010", action = "", tag = "202" },
	{ config_id = 1091011, name = "GADGET_CREATE_91011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91011", action = "action_EVENT_GADGET_CREATE_91011", trigger_count = 0 },
	{ config_id = 1091012, name = "SELECT_OPTION_91012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_91012", action = "action_EVENT_SELECT_OPTION_91012", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1091013, name = "GROUP_LOAD_91013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_91013", trigger_count = 0 }
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
		gadgets = { 91002, 91003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_91007", "CHALLENGE_FAIL_91008", "GADGET_STATE_CHANGE_91009", "GADGET_STATE_CHANGE_91010", "GADGET_CREATE_91011", "SELECT_OPTION_91012", "GROUP_LOAD_91013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 91006 },
		gadgets = { 91001, 91004, 91014, 91015, 91016, 91018, 91019, 91020, 91022, 91023, 91024, 91025, 91026, 91027, 91028, 91029, 91032, 91033, 91034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 91002 },
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
function action_EVENT_CHALLENGE_SUCCESS_91007(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133313091, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133313091, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_91008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313091, 2)
	
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为91003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91009(context, evt)
	if 91002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91009(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_91010(context, evt)
	if 91001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91011(context, evt)
	if 91003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313091, 91003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_91012(context, evt)
	-- 判断是gadgetid 91003 option_id 177
	if 91003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_91012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 91002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-2321.699, y=367.4146, z=4119.363}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2321.699, y=367.4146, z=4119.363}
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
function action_EVENT_GROUP_LOAD_91013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313091, 2)
	
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为91003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end