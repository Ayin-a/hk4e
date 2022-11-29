-- 基础信息
local base_info = {
	group_id = 133220276
}

-- Trigger变量
local defs = {
	duration = 25,
	group_id = 133220276
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
	{ config_id = 276001, gadget_id = 70211111, pos = { x = -2486.636, y = 327.969, z = -4506.582 }, rot = { x = 348.212, y = 210.771, z = 359.352 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 276002, gadget_id = 70350093, pos = { x = -2572.947, y = 320.139, z = -4543.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 276003, gadget_id = 70360001, pos = { x = -2572.947, y = 321.104, z = -4543.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 276004, gadget_id = 70290150, pos = { x = -2549.198, y = 333.280, z = -4549.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276005, gadget_id = 70290150, pos = { x = -2546.135, y = 333.683, z = -4549.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276006, gadget_id = 70290150, pos = { x = -2526.636, y = 330.992, z = -4545.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276007, gadget_id = 70290150, pos = { x = -2523.524, y = 331.466, z = -4544.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276008, gadget_id = 70290150, pos = { x = -2510.284, y = 336.205, z = -4537.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276009, gadget_id = 70290150, pos = { x = -2507.634, y = 336.683, z = -4535.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276010, gadget_id = 70290150, pos = { x = -2496.449, y = 335.405, z = -4524.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276011, gadget_id = 70290150, pos = { x = -2495.365, y = 335.203, z = -4522.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 276018, gadget_id = 70900380, pos = { x = -2558.612, y = 327.523, z = -4548.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 276019, gadget_id = 70900380, pos = { x = -2536.306, y = 330.368, z = -4549.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 276020, gadget_id = 70900380, pos = { x = -2516.205, y = 332.706, z = -4541.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 276021, gadget_id = 70900380, pos = { x = -2500.889, y = 335.120, z = -4529.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1276012, name = "CHALLENGE_SUCCESS_276012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_276012", trigger_count = 0 },
	{ config_id = 1276013, name = "CHALLENGE_FAIL_276013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_276013", trigger_count = 0 },
	{ config_id = 1276014, name = "GADGET_STATE_CHANGE_276014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_276014", action = "action_EVENT_GADGET_STATE_CHANGE_276014", trigger_count = 0 },
	{ config_id = 1276015, name = "ANY_GADGET_DIE_276015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1276016, name = "GADGET_CREATE_276016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_276016", action = "action_EVENT_GADGET_CREATE_276016", trigger_count = 0 },
	{ config_id = 1276017, name = "SELECT_OPTION_276017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_276017", action = "action_EVENT_SELECT_OPTION_276017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1276022, name = "GROUP_LOAD_276022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_276022", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 276002, 276003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_276012", "CHALLENGE_FAIL_276013", "GADGET_STATE_CHANGE_276014", "ANY_GADGET_DIE_276015", "GADGET_CREATE_276016", "SELECT_OPTION_276017", "GROUP_LOAD_276022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 276004, 276005, 276006, 276007, 276008, 276009, 276010, 276011, 276018, 276019, 276020, 276021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 276002 },
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
function action_EVENT_CHALLENGE_SUCCESS_276012(context, evt)
	-- 将configid为 276002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220276, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220276, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为276001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 276001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_276013(context, evt)
	-- 将configid为 276002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为276003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 276003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220276, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_276014(context, evt)
	if 276002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_276014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, 8) then
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
function condition_EVENT_GADGET_CREATE_276016(context, evt)
	if 276003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_276016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220276, 276003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_276017(context, evt)
	-- 判断是gadgetid 276003 option_id 177
	if 276003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_276017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 276003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 276002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2558.6，327.523，-4548），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2558.6, y=327.523, z=-4548}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_276022(context, evt)
	-- 将configid为 276002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为276003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 276003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220276, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"