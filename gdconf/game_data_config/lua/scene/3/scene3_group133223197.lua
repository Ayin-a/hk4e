-- 基础信息
local base_info = {
	group_id = 133223197
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133223197
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
	{ config_id = 197001, gadget_id = 70211111, pos = { x = -6039.920, y = 235.973, z = -2516.036 }, rot = { x = 0.000, y = 296.034, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 197002, gadget_id = 70350083, pos = { x = -6114.377, y = 220.661, z = -2466.260 }, rot = { x = 355.567, y = 0.407, z = 354.749 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 197003, gadget_id = 70360001, pos = { x = -6114.284, y = 221.678, z = -2466.344 }, rot = { x = 355.567, y = 0.407, z = 354.749 }, level = 2, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1197005, name = "CHALLENGE_SUCCESS_197005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_197005", trigger_count = 0 },
	{ config_id = 1197006, name = "CHALLENGE_FAIL_197006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_197006", trigger_count = 0 },
	{ config_id = 1197007, name = "GADGET_STATE_CHANGE_197007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197007", action = "action_EVENT_GADGET_STATE_CHANGE_197007", trigger_count = 0 },
	{ config_id = 1197008, name = "GADGET_STATE_CHANGE_197008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197008", action = "", tag = "202" },
	{ config_id = 1197009, name = "GADGET_CREATE_197009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_197009", action = "action_EVENT_GADGET_CREATE_197009", trigger_count = 0 },
	{ config_id = 1197010, name = "SELECT_OPTION_197010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_197010", action = "action_EVENT_SELECT_OPTION_197010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1197019, name = "GROUP_LOAD_197019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_197019", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 197004, gadget_id = 70330064, pos = { x = -6038.342, y = 227.691, z = -2504.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, interact_id = 35, area_id = 18 },
		{ config_id = 197011, gadget_id = 70900380, pos = { x = -6032.776, y = 232.756, z = -2509.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 197012, gadget_id = 70900380, pos = { x = -6028.174, y = 238.266, z = -2516.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 197013, gadget_id = 70900380, pos = { x = -6023.735, y = 242.299, z = -2527.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 197014, gadget_id = 70900380, pos = { x = -6025.874, y = 248.508, z = -2539.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 197015, gadget_id = 70900380, pos = { x = -6029.211, y = 258.633, z = -2546.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 197016, gadget_id = 70900380, pos = { x = -6028.958, y = 264.968, z = -2551.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 197017, gadget_id = 70900380, pos = { x = -6028.192, y = 273.767, z = -2559.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 197018, gadget_id = 70900380, pos = { x = -6025.063, y = 280.791, z = -2564.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 197002, 197003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_197005", "CHALLENGE_FAIL_197006", "GADGET_STATE_CHANGE_197007", "GADGET_STATE_CHANGE_197008", "GADGET_CREATE_197009", "SELECT_OPTION_197010", "GROUP_LOAD_197019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 197001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 197002 },
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
function action_EVENT_CHALLENGE_SUCCESS_197005(context, evt)
	-- 将configid为 197002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133223197, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223197, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_197006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223197, 2)
	
	-- 将configid为 197002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为197003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 197003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_197007(context, evt)
	if 197002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_197007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_197008(context, evt)
	if 197001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_197009(context, evt)
	if 197003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_197009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223197, 197003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_197010(context, evt)
	-- 判断是gadgetid 197003 option_id 177
	if 197003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_197010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 197003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 197002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-6005.49，282.2686，-2567.619），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6005.49, y=282.2686, z=-2567.619}
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
function action_EVENT_GROUP_LOAD_197019(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223197, 2)
	
	-- 将configid为 197002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为197003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 197003 }) then
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

require "V2_0/ElectricCore"