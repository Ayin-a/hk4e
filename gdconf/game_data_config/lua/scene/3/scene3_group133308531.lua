-- 基础信息
local base_info = {
	group_id = 133308531
}

-- Trigger变量
local defs = {
	duration = 80,
	group_id = 133308531
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
	{ config_id = 531001, gadget_id = 70211111, pos = { x = -1839.215, y = 350.660, z = 4448.014 }, rot = { x = 355.457, y = 231.783, z = 356.248 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 531002, gadget_id = 70330343, pos = { x = -1875.981, y = 289.629, z = 4432.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 26 },
	{ config_id = 531003, gadget_id = 70360001, pos = { x = -1876.022, y = 290.647, z = 4432.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 26 },
	{ config_id = 531004, gadget_id = 70330392, pos = { x = -1843.044, y = 322.067, z = 4429.706 }, rot = { x = 0.000, y = 323.157, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 531012, gadget_id = 70220103, pos = { x = -1845.855, y = 326.920, z = 4430.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 531013, gadget_id = 70220103, pos = { x = -1856.936, y = 338.939, z = 4427.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 531014, gadget_id = 70330392, pos = { x = -1857.325, y = 334.998, z = 4423.438 }, rot = { x = 0.000, y = 307.062, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 531015, gadget_id = 70330410, pos = { x = -1847.266, y = 350.060, z = 4438.253 }, rot = { x = 304.985, y = 20.668, z = 131.215 }, level = 32, area_id = 26 },
	{ config_id = 531016, gadget_id = 70330410, pos = { x = -1854.716, y = 343.159, z = 4429.121 }, rot = { x = 25.094, y = 60.148, z = 92.932 }, level = 32, area_id = 26 },
	{ config_id = 531017, gadget_id = 70330410, pos = { x = -1850.947, y = 345.928, z = 4433.361 }, rot = { x = 37.423, y = 61.539, z = 97.116 }, level = 32, area_id = 26 },
	{ config_id = 531018, gadget_id = 70330392, pos = { x = -1843.908, y = 343.688, z = 4437.299 }, rot = { x = 0.000, y = 355.855, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 531019, gadget_id = 70220103, pos = { x = -1863.601, y = 308.450, z = 4425.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1531005, name = "CHALLENGE_SUCCESS_531005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_531005", trigger_count = 0 },
	{ config_id = 1531006, name = "CHALLENGE_FAIL_531006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_531006", trigger_count = 0 },
	{ config_id = 1531007, name = "GADGET_STATE_CHANGE_531007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_531007", action = "action_EVENT_GADGET_STATE_CHANGE_531007", trigger_count = 0 },
	{ config_id = 1531008, name = "GADGET_STATE_CHANGE_531008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_531008", action = "", tag = "202" },
	{ config_id = 1531009, name = "GADGET_CREATE_531009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_531009", action = "action_EVENT_GADGET_CREATE_531009", trigger_count = 0 },
	{ config_id = 1531010, name = "SELECT_OPTION_531010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_531010", action = "action_EVENT_SELECT_OPTION_531010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1531011, name = "GROUP_LOAD_531011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_531011", trigger_count = 0 }
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
		gadgets = { 531002, 531003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_531005", "CHALLENGE_FAIL_531006", "GADGET_STATE_CHANGE_531007", "GADGET_STATE_CHANGE_531008", "GADGET_CREATE_531009", "SELECT_OPTION_531010", "GROUP_LOAD_531011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 531001, 531004, 531012, 531013, 531014, 531015, 531016, 531017, 531018, 531019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 531002 },
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
function action_EVENT_CHALLENGE_SUCCESS_531005(context, evt)
	-- 将configid为 531002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 531002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133308531, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308531, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_531006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308531, 2)
	
	-- 将configid为 531002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 531002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为531003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 531003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_531007(context, evt)
	if 531002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_531007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_531008(context, evt)
	if 531001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_531009(context, evt)
	if 531003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_531009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308531, 531003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_531010(context, evt)
	-- 判断是gadgetid 531003 option_id 177
	if 531003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_531010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 531003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 531002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 531002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1844.214, y=357.3597, z=4436.93}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1844.214, y=357.3597, z=4436.93}
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
function action_EVENT_GROUP_LOAD_531011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308531, 2)
	
	-- 将configid为 531002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 531002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为531003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 531003 }) then
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