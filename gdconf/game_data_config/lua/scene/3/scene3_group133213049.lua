-- 基础信息
local base_info = {
	group_id = 133213049
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133213049
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
	{ config_id = 49001, gadget_id = 70211111, pos = { x = -3621.372, y = 280.139, z = -3049.533 }, rot = { x = 10.090, y = 105.267, z = 357.177 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 49002, gadget_id = 70350083, pos = { x = -3490.266, y = 223.079, z = -3088.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 49003, gadget_id = 70360001, pos = { x = -3490.137, y = 224.089, z = -3088.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 49004, gadget_id = 70900380, pos = { x = -3515.473, y = 239.545, z = -3084.053 }, rot = { x = 0.000, y = 43.263, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 49005, gadget_id = 70900380, pos = { x = -3530.583, y = 246.451, z = -3083.207 }, rot = { x = 0.000, y = 43.263, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 49006, gadget_id = 70900380, pos = { x = -3504.370, y = 229.491, z = -3082.903 }, rot = { x = 0.000, y = 43.263, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 49007, gadget_id = 70900380, pos = { x = -3548.239, y = 250.193, z = -3080.105 }, rot = { x = 0.000, y = 38.691, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 49008, gadget_id = 70900380, pos = { x = -3581.358, y = 264.176, z = -3066.824 }, rot = { x = 0.000, y = 328.726, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 49015, gadget_id = 70900380, pos = { x = -3591.532, y = 277.500, z = -3062.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 49016, gadget_id = 70900380, pos = { x = -3567.935, y = 256.526, z = -3078.077 }, rot = { x = 0.000, y = 38.691, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 49017, gadget_id = 70900380, pos = { x = -3605.153, y = 288.024, z = -3054.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1049009, name = "CHALLENGE_SUCCESS_49009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_49009", trigger_count = 0 },
	{ config_id = 1049010, name = "CHALLENGE_FAIL_49010", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_49010", trigger_count = 0 },
	{ config_id = 1049011, name = "GADGET_STATE_CHANGE_49011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49011", action = "action_EVENT_GADGET_STATE_CHANGE_49011", trigger_count = 0 },
	{ config_id = 1049012, name = "GADGET_STATE_CHANGE_49012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49012", action = "", tag = "202" },
	{ config_id = 1049013, name = "GADGET_CREATE_49013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_49013", action = "action_EVENT_GADGET_CREATE_49013", trigger_count = 0 },
	{ config_id = 1049014, name = "SELECT_OPTION_49014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_49014", action = "action_EVENT_SELECT_OPTION_49014", trigger_count = 0 },
	-- 保底
	{ config_id = 1049018, name = "GROUP_LOAD_49018", event = EventType.EVENT_GROUP_LOAD, source = "666", condition = "", action = "action_EVENT_GROUP_LOAD_49018", trigger_count = 0 }
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
		gadgets = { 49002, 49003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_49009", "CHALLENGE_FAIL_49010", "GADGET_STATE_CHANGE_49011", "GADGET_STATE_CHANGE_49012", "GADGET_CREATE_49013", "SELECT_OPTION_49014", "GROUP_LOAD_49018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 49001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 49002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 49004, 49005, 49006, 49007, 49008, 49015, 49016, 49017 },
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
function action_EVENT_CHALLENGE_SUCCESS_49009(context, evt)
	-- 将configid为 49002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213049, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213049, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213049, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_49010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213049, 2)
	
	-- 将configid为 49002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为49003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 49003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213049, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_49011(context, evt)
	if 49002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49011(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_49012(context, evt)
	if 49001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_49013(context, evt)
	if 49003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_49013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213049, 49003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_49014(context, evt)
	-- 判断是gadgetid 49003 option_id 177
	if 49003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_49014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 49003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 49002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213049, 4)
	
	-- 触发镜头注目，注目位置为坐标（-3504.37，229.491，-3082.903），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3504.37, y=229.491, z=-3082.903}
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
function action_EVENT_GROUP_LOAD_49018(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213049, 2)
	
	-- 将configid为 49002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为49003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 49003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213049, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"