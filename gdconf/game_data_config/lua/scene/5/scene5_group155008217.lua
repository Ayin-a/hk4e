-- 基础信息
local base_info = {
	group_id = 155008217
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 155008217,
	collectable_sum = 14
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
	{ config_id = 217001, gadget_id = 70211101, pos = { x = -271.967, y = 224.760, z = 414.983 }, rot = { x = 7.834, y = 79.301, z = 11.224 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 217002, gadget_id = 70350093, pos = { x = -152.679, y = 192.655, z = 364.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 217003, gadget_id = 70360001, pos = { x = -152.679, y = 193.620, z = 364.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 217004, gadget_id = 70290150, pos = { x = -163.421, y = 192.010, z = 372.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217005, gadget_id = 70290150, pos = { x = -171.131, y = 190.789, z = 368.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217006, gadget_id = 70290150, pos = { x = -181.726, y = 190.010, z = 365.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217007, gadget_id = 70290150, pos = { x = -192.262, y = 188.744, z = 368.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217008, gadget_id = 70290150, pos = { x = -199.744, y = 188.744, z = 370.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217009, gadget_id = 70290150, pos = { x = -208.471, y = 191.931, z = 371.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217010, gadget_id = 70290150, pos = { x = -218.240, y = 197.085, z = 373.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217011, gadget_id = 70290150, pos = { x = -225.930, y = 203.142, z = 378.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 217019, gadget_id = 70290150, pos = { x = -231.784, y = 208.436, z = 384.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 217020, gadget_id = 70290150, pos = { x = -236.781, y = 214.631, z = 390.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 217021, gadget_id = 70290150, pos = { x = -241.698, y = 223.100, z = 397.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 217022, gadget_id = 70290150, pos = { x = -245.387, y = 229.661, z = 402.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 217023, gadget_id = 70290150, pos = { x = -248.919, y = 236.488, z = 407.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 217024, gadget_id = 70290150, pos = { x = -253.015, y = 236.488, z = 410.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217012, name = "CHALLENGE_SUCCESS_217012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_217012", trigger_count = 0 },
	{ config_id = 1217013, name = "CHALLENGE_FAIL_217013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_217013", trigger_count = 0 },
	{ config_id = 1217014, name = "GADGET_STATE_CHANGE_217014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217014", action = "action_EVENT_GADGET_STATE_CHANGE_217014", trigger_count = 0 },
	{ config_id = 1217015, name = "ANY_GADGET_DIE_217015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1217016, name = "GADGET_CREATE_217016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_217016", action = "action_EVENT_GADGET_CREATE_217016", trigger_count = 0 },
	{ config_id = 1217017, name = "SELECT_OPTION_217017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_217017", action = "action_EVENT_SELECT_OPTION_217017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1217018, name = "GROUP_LOAD_217018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_217018", trigger_count = 0 }
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
		gadgets = { 217002, 217003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_217012", "CHALLENGE_FAIL_217013", "GADGET_STATE_CHANGE_217014", "ANY_GADGET_DIE_217015", "GADGET_CREATE_217016", "SELECT_OPTION_217017", "GROUP_LOAD_217018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 217004, 217005, 217006, 217007, 217008, 217009, 217010, 217011, 217019, 217020, 217021, 217022, 217023, 217024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 217002 },
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
function action_EVENT_CHALLENGE_SUCCESS_217012(context, evt)
	-- 将configid为 217002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 155008217, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155008217, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为217001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 217001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_217013(context, evt)
	-- 将configid为 217002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为217003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 217003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155008217, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217014(context, evt)
	if 217002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_217016(context, evt)
	if 217003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_217016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155008217, 217003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_217017(context, evt)
	-- 判断是gadgetid 217003 option_id 177
	if 217003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_217017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 217003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 217002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-171，190，368），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-171, y=190, z=368}
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
function action_EVENT_GROUP_LOAD_217018(context, evt)
	-- 将configid为 217002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为217003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 217003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155008217, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end