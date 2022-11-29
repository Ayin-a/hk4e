-- 基础信息
local base_info = {
	group_id = 133210053
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133210053
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
	{ config_id = 53001, gadget_id = 70211111, pos = { x = -4028.396, y = 207.990, z = -900.455 }, rot = { x = 4.019, y = 169.158, z = 7.919 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 53002, gadget_id = 70350093, pos = { x = -4028.347, y = 207.793, z = -902.855 }, rot = { x = 0.000, y = 359.949, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 53003, gadget_id = 70360001, pos = { x = -4028.344, y = 208.657, z = -902.806 }, rot = { x = 0.000, y = 0.215, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 53004, gadget_id = 70290150, pos = { x = -4018.294, y = 203.490, z = -897.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53005, gadget_id = 70290150, pos = { x = -3999.852, y = 197.917, z = -885.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53006, gadget_id = 70290150, pos = { x = -3991.638, y = 188.325, z = -930.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53007, gadget_id = 70290150, pos = { x = -3986.929, y = 201.565, z = -964.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53008, gadget_id = 70290150, pos = { x = -4012.869, y = 207.667, z = -958.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53009, gadget_id = 70290150, pos = { x = -4021.483, y = 209.836, z = -942.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53010, gadget_id = 70290150, pos = { x = -4033.583, y = 211.561, z = -913.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53019, gadget_id = 70900380, pos = { x = -3988.968, y = 186.558, z = -941.020 }, rot = { x = 0.000, y = 268.183, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53020, gadget_id = 70900380, pos = { x = -3988.957, y = 195.448, z = -954.547 }, rot = { x = 0.000, y = 268.183, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53021, gadget_id = 70900380, pos = { x = -4030.023, y = 210.324, z = -922.028 }, rot = { x = 0.000, y = 268.183, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 53022, gadget_id = 70900380, pos = { x = -4004.493, y = 205.390, z = -965.588 }, rot = { x = 0.000, y = 268.183, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1053011, name = "GROUP_LOAD_53011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_53011", trigger_count = 0 },
	{ config_id = 1053012, name = "CHALLENGE_SUCCESS_53012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_53012", trigger_count = 0 },
	{ config_id = 1053013, name = "CHALLENGE_FAIL_53013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_53013", trigger_count = 0 },
	{ config_id = 1053014, name = "GADGET_STATE_CHANGE_53014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53014", action = "action_EVENT_GADGET_STATE_CHANGE_53014", trigger_count = 0 },
	{ config_id = 1053015, name = "ANY_GADGET_DIE_53015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1053016, name = "GADGET_CREATE_53016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53016", action = "action_EVENT_GADGET_CREATE_53016", trigger_count = 0 },
	{ config_id = 1053017, name = "SELECT_OPTION_53017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_53017", action = "action_EVENT_SELECT_OPTION_53017", trigger_count = 0 }
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
		gadgets = { 53002, 53003 },
		regions = { },
		triggers = { "GROUP_LOAD_53011", "CHALLENGE_SUCCESS_53012", "CHALLENGE_FAIL_53013", "GADGET_STATE_CHANGE_53014", "ANY_GADGET_DIE_53015", "GADGET_CREATE_53016", "SELECT_OPTION_53017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53019, 53020, 53021, 53022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 53002 },
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
function action_EVENT_GROUP_LOAD_53011(context, evt)
	-- 将configid为 53002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为53003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210053, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_53012(context, evt)
	-- 将configid为 53002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210053, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210053, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为53001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_53013(context, evt)
	-- 将configid为 53002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为53003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210053, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53014(context, evt)
	if 53002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, 7) then
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
function condition_EVENT_GADGET_CREATE_53016(context, evt)
	if 53003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210053, 53003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_53017(context, evt)
	-- 判断是gadgetid 53003 option_id 177
	if 53003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_53017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 53002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-4018，202，-897），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4018, y=202, z=-897}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_0/ElectricCore"