-- 基础信息
local base_info = {
	group_id = 133223458
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 3,
	group_id = 133223458,
	gadget_controller_id = 458004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 458001, monster_id = 24010101, pos = { x = -5993.455, y = 151.538, z = -2717.696 }, rot = { x = 0.000, y = 58.862, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 458010, monster_id = 24010101, pos = { x = -5972.055, y = 151.651, z = -2711.469 }, rot = { x = 0.000, y = 233.629, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 458011, monster_id = 24010301, pos = { x = -5976.988, y = 151.590, z = -2705.793 }, rot = { x = 0.456, y = 200.194, z = 358.761 }, level = 33, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 458002, gadget_id = 70350082, pos = { x = -5981.852, y = 151.437, z = -2714.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 458003, gadget_id = 70211021, pos = { x = -5971.200, y = 151.420, z = -2728.168 }, rot = { x = 0.000, y = 299.325, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 458004, gadget_id = 70360001, pos = { x = -5981.862, y = 151.906, z = -2714.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1458005, name = "GROUP_LOAD_458005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_458005", action = "action_EVENT_GROUP_LOAD_458005", trigger_count = 0 },
	-- 开门
	{ config_id = 1458006, name = "CHALLENGE_SUCCESS_458006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_458006", trigger_count = 0 },
	{ config_id = 1458007, name = "CHALLENGE_FAIL_458007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_458007", trigger_count = 0 },
	{ config_id = 1458008, name = "GADGET_CREATE_458008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_458008", action = "action_EVENT_GADGET_CREATE_458008", trigger_count = 0 },
	{ config_id = 1458009, name = "SELECT_OPTION_458009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_458009", action = "action_EVENT_SELECT_OPTION_458009", trigger_count = 0 },
	{ config_id = 1458012, name = "ANY_MONSTER_DIE_458012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_458012", action = "action_EVENT_ANY_MONSTER_DIE_458012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 458002, 458004 },
		regions = { },
		triggers = { "GROUP_LOAD_458005", "CHALLENGE_SUCCESS_458006", "CHALLENGE_FAIL_458007", "GADGET_CREATE_458008", "SELECT_OPTION_458009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 458001, 458010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_458012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 458011 },
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_458005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_458005(context, evt)
	-- 将configid为 458002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为458004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 458004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223458, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223458, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_458006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 458002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为458003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 458003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133223345) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 触发镜头注目，注目位置为坐标（-5973.723，153，-2726.891），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5973.723, y=153, z=-2726.891}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_458007(context, evt)
	-- 将configid为 458002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为458004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 458004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223458, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223458, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_458008(context, evt)
	if 458004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_458008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223458, 458004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_458009(context, evt)
	-- 判断是gadgetid 458004 option_id 177
	if 458004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_458009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_458012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_458012(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223458, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223458, 3)
	
	return 0
end