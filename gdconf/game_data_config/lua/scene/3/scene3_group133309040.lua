-- 基础信息
local base_info = {
	group_id = 133309040
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133309040
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
	{ config_id = 40001, gadget_id = 70211121, pos = { x = -2350.988, y = 150.432, z = 5004.157 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 40002, gadget_id = 70330343, pos = { x = -2351.076, y = 149.982, z = 4996.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 40003, gadget_id = 70360001, pos = { x = -2351.076, y = 150.947, z = 4996.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 40004, gadget_id = 70290501, pos = { x = -2381.151, y = 149.660, z = 4979.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 40005, gadget_id = 70290501, pos = { x = -2386.161, y = 149.812, z = 4964.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 40006, gadget_id = 70290501, pos = { x = -2410.928, y = 137.254, z = 4913.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 40007, gadget_id = 70290501, pos = { x = -2377.147, y = 117.057, z = 4872.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 40008, gadget_id = 70290501, pos = { x = -2323.900, y = 125.747, z = 4872.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 40009, gadget_id = 70290501, pos = { x = -2291.197, y = 138.444, z = 4914.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 40010, gadget_id = 70290501, pos = { x = -2316.179, y = 150.112, z = 4963.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 40011, gadget_id = 70290501, pos = { x = -2320.757, y = 149.698, z = 4978.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1040012, name = "CHALLENGE_SUCCESS_40012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_40012", trigger_count = 0 },
	{ config_id = 1040013, name = "CHALLENGE_FAIL_40013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_40013", trigger_count = 0 },
	{ config_id = 1040014, name = "GADGET_STATE_CHANGE_40014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40014", action = "action_EVENT_GADGET_STATE_CHANGE_40014", trigger_count = 0 },
	{ config_id = 1040015, name = "ANY_GADGET_DIE_40015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1040016, name = "GADGET_CREATE_40016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40016", action = "action_EVENT_GADGET_CREATE_40016", trigger_count = 0 },
	{ config_id = 1040017, name = "SELECT_OPTION_40017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40017", action = "action_EVENT_SELECT_OPTION_40017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1040018, name = "GROUP_LOAD_40018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_40018", trigger_count = 0 }
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
		gadgets = { 40002, 40003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_40012", "CHALLENGE_FAIL_40013", "GADGET_STATE_CHANGE_40014", "ANY_GADGET_DIE_40015", "GADGET_CREATE_40016", "SELECT_OPTION_40017", "GROUP_LOAD_40018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 40004, 40005, 40006, 40007, 40008, 40009, 40010, 40011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 40002 },
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
function action_EVENT_CHALLENGE_SUCCESS_40012(context, evt)
	-- 将configid为 40002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133309040, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309040, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为40001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 40001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_40013(context, evt)
	-- 将configid为 40002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为40003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 40003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309040, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40014(context, evt)
	if 40002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, 8) then
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
function condition_EVENT_GADGET_CREATE_40016(context, evt)
	if 40003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_40016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309040, 40003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_40017(context, evt)
	-- 判断是gadgetid 40003 option_id 177
	if 40003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_40017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 40002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2381.15，149.66，4979.4），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2381.15, y=149.66, z=4979.4}
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
function action_EVENT_GROUP_LOAD_40018(context, evt)
	-- 将configid为 40002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为40003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 40003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309040, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end