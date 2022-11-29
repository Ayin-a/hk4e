-- 基础信息
local base_info = {
	group_id = 133301691
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133301691,
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
	{ config_id = 691001, gadget_id = 70211101, pos = { x = -551.463, y = 198.586, z = 3413.492 }, rot = { x = 345.078, y = 139.182, z = 346.179 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 691002, gadget_id = 70350093, pos = { x = -580.321, y = 203.438, z = 3310.424 }, rot = { x = 350.977, y = 77.422, z = 8.122 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 691003, gadget_id = 70360001, pos = { x = -580.335, y = 204.488, z = 3310.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 691004, gadget_id = 70290501, pos = { x = -571.328, y = 206.094, z = 3311.219 }, rot = { x = 9.788, y = 351.481, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691005, gadget_id = 70290501, pos = { x = -555.806, y = 208.597, z = 3314.231 }, rot = { x = 10.827, y = 336.019, z = 6.589 }, level = 33, area_id = 22 },
	{ config_id = 691006, gadget_id = 70290501, pos = { x = -541.877, y = 211.201, z = 3316.092 }, rot = { x = 0.000, y = 336.096, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 691007, gadget_id = 70290501, pos = { x = -532.865, y = 207.614, z = 3324.865 }, rot = { x = 9.788, y = 335.971, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691008, gadget_id = 70290501, pos = { x = -529.272, y = 211.580, z = 3340.198 }, rot = { x = 9.788, y = 335.971, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691009, gadget_id = 70290501, pos = { x = -524.559, y = 210.298, z = 3356.172 }, rot = { x = 9.788, y = 335.971, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691010, gadget_id = 70290501, pos = { x = -514.443, y = 210.862, z = 3373.213 }, rot = { x = 9.788, y = 335.971, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691011, gadget_id = 70290501, pos = { x = -517.839, y = 210.993, z = 3383.646 }, rot = { x = 9.788, y = 335.971, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691019, gadget_id = 70290501, pos = { x = -526.828, y = 209.299, z = 3386.814 }, rot = { x = 9.788, y = 351.481, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691020, gadget_id = 70290501, pos = { x = -532.857, y = 206.950, z = 3393.915 }, rot = { x = 9.788, y = 351.481, z = 358.541 }, level = 33, area_id = 22 },
	{ config_id = 691021, gadget_id = 70290501, pos = { x = -543.794, y = 202.861, z = 3404.149 }, rot = { x = 9.788, y = 351.481, z = 358.541 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1691012, name = "CHALLENGE_SUCCESS_691012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_691012", trigger_count = 0 },
	{ config_id = 1691013, name = "CHALLENGE_FAIL_691013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_691013", trigger_count = 0 },
	{ config_id = 1691014, name = "GADGET_STATE_CHANGE_691014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_691014", action = "action_EVENT_GADGET_STATE_CHANGE_691014", trigger_count = 0 },
	{ config_id = 1691015, name = "ANY_GADGET_DIE_691015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1691016, name = "GADGET_CREATE_691016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_691016", action = "action_EVENT_GADGET_CREATE_691016", trigger_count = 0 },
	{ config_id = 1691017, name = "SELECT_OPTION_691017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_691017", action = "action_EVENT_SELECT_OPTION_691017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1691018, name = "GROUP_LOAD_691018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_691018", trigger_count = 0 }
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
		gadgets = { 691002, 691003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_691012", "CHALLENGE_FAIL_691013", "GADGET_STATE_CHANGE_691014", "ANY_GADGET_DIE_691015", "GADGET_CREATE_691016", "SELECT_OPTION_691017", "GROUP_LOAD_691018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 691004, 691005, 691006, 691007, 691008, 691009, 691010, 691011, 691019, 691020, 691021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 691002 },
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
function action_EVENT_CHALLENGE_SUCCESS_691012(context, evt)
	-- 将configid为 691002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 691002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133301691, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301691, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为691001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 691001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_691013(context, evt)
	-- 将configid为 691002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 691002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为691003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 691003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301691, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_691014(context, evt)
	if 691002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_691014(context, evt)
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
function condition_EVENT_GADGET_CREATE_691016(context, evt)
	if 691003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_691016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301691, 691003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_691017(context, evt)
	-- 判断是gadgetid 691003 option_id 177
	if 691003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_691017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 691003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 691002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 691002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-555.8063, y=208.5968, z=3314.231}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-555.8063, y=208.5968, z=3314.231}
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
function action_EVENT_GROUP_LOAD_691018(context, evt)
	-- 将configid为 691002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 691002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为691003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 691003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301691, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end