-- 基础信息
local base_info = {
	group_id = 133313074
}

-- Trigger变量
local defs = {
	duration = 55,
	group_id = 133313074,
	collectable_sum = 10
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
	{ config_id = 74001, gadget_id = 70211111, pos = { x = -865.726, y = -12.648, z = 5829.638 }, rot = { x = 0.000, y = 125.335, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 74002, gadget_id = 70350093, pos = { x = -896.088, y = -39.619, z = 5825.758 }, rot = { x = 358.755, y = 346.459, z = 26.885 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 74003, gadget_id = 70360001, pos = { x = -896.066, y = -39.572, z = 5825.837 }, rot = { x = 351.495, y = 356.633, z = 43.137 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 74004, gadget_id = 70290501, pos = { x = -887.834, y = -34.157, z = 5816.798 }, rot = { x = 4.678, y = 2.737, z = 60.645 }, level = 32, area_id = 32 },
	{ config_id = 74005, gadget_id = 70290501, pos = { x = -879.967, y = -30.565, z = 5817.350 }, rot = { x = 354.625, y = 2.021, z = 318.812 }, level = 32, area_id = 32 },
	{ config_id = 74006, gadget_id = 70290501, pos = { x = -873.678, y = -27.604, z = 5811.115 }, rot = { x = 325.893, y = 6.463, z = 339.141 }, level = 32, area_id = 32 },
	{ config_id = 74007, gadget_id = 70290501, pos = { x = -854.352, y = -1.654, z = 5807.636 }, rot = { x = 324.576, y = 6.550, z = 339.684 }, level = 32, area_id = 32 },
	{ config_id = 74008, gadget_id = 70290501, pos = { x = -846.530, y = 5.576, z = 5823.229 }, rot = { x = 348.449, y = 359.770, z = 2.275 }, level = 32, area_id = 32 },
	{ config_id = 74009, gadget_id = 70290501, pos = { x = -851.383, y = 2.879, z = 5826.408 }, rot = { x = 348.669, y = 359.707, z = 2.957 }, level = 32, area_id = 32 },
	{ config_id = 74010, gadget_id = 70290501, pos = { x = -860.705, y = -3.031, z = 5831.269 }, rot = { x = 336.201, y = 358.630, z = 6.495 }, level = 32, area_id = 32 },
	{ config_id = 74011, gadget_id = 70290501, pos = { x = -866.571, y = -11.893, z = 5830.081 }, rot = { x = 347.486, y = 359.036, z = 8.777 }, level = 32, area_id = 32 },
	{ config_id = 74012, gadget_id = 70220103, pos = { x = -862.782, y = -9.299, z = 5807.965 }, rot = { x = 346.667, y = 4.962, z = 319.323 }, level = 32, area_id = 32 },
	{ config_id = 74013, gadget_id = 70220103, pos = { x = -856.619, y = -0.734, z = 5806.347 }, rot = { x = 346.202, y = 359.529, z = 3.895 }, level = 32, area_id = 32 },
	{ config_id = 74014, gadget_id = 70220103, pos = { x = -860.706, y = -1.607, z = 5831.552 }, rot = { x = 318.578, y = 7.538, z = 340.232 }, level = 32, area_id = 32 },
	{ config_id = 74015, gadget_id = 70290501, pos = { x = -863.079, y = -9.690, z = 5808.112 }, rot = { x = 350.503, y = 359.287, z = 8.569 }, level = 32, area_id = 32 },
	{ config_id = 74016, gadget_id = 70290501, pos = { x = -848.809, y = 1.194, z = 5810.009 }, rot = { x = 357.205, y = 359.381, z = 24.973 }, level = 32, area_id = 32 },
	{ config_id = 74024, gadget_id = 70220103, pos = { x = -845.246, y = 6.059, z = 5822.626 }, rot = { x = 318.578, y = 7.538, z = 340.232 }, level = 32, area_id = 32 },
	{ config_id = 74025, gadget_id = 70220103, pos = { x = -868.486, y = -18.874, z = 5809.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074017, name = "CHALLENGE_SUCCESS_74017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_74017", trigger_count = 0 },
	{ config_id = 1074018, name = "CHALLENGE_FAIL_74018", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_74018", trigger_count = 0 },
	{ config_id = 1074019, name = "GADGET_STATE_CHANGE_74019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74019", action = "action_EVENT_GADGET_STATE_CHANGE_74019", trigger_count = 0 },
	{ config_id = 1074020, name = "ANY_GADGET_DIE_74020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1074021, name = "GADGET_CREATE_74021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_74021", action = "action_EVENT_GADGET_CREATE_74021", trigger_count = 0 },
	{ config_id = 1074022, name = "SELECT_OPTION_74022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_74022", action = "action_EVENT_SELECT_OPTION_74022", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1074023, name = "GROUP_LOAD_74023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_74023", trigger_count = 0 }
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
		gadgets = { 74002, 74003, 74025 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_74017", "CHALLENGE_FAIL_74018", "GADGET_STATE_CHANGE_74019", "ANY_GADGET_DIE_74020", "GADGET_CREATE_74021", "SELECT_OPTION_74022", "GROUP_LOAD_74023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 74004, 74005, 74006, 74007, 74008, 74009, 74010, 74011, 74012, 74013, 74014, 74015, 74016, 74024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 74002, 74012, 74013, 74014, 74024 },
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
function action_EVENT_CHALLENGE_SUCCESS_74017(context, evt)
	-- 将configid为 74002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133313074, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133313074, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为74001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 74001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_74018(context, evt)
	-- 将configid为 74002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为74003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 74003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313074, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_74019(context, evt)
	if 74002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_74019(context, evt)
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
function condition_EVENT_GADGET_CREATE_74021(context, evt)
	if 74003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_74021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313074, 74003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_74022(context, evt)
	-- 判断是gadgetid 74003 option_id 177
	if 74003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_74022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 74003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 74002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-887，-34，5816），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-887, y=-34, z=5816}
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
function action_EVENT_GROUP_LOAD_74023(context, evt)
	-- 将configid为 74002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为74003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 74003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313074, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end