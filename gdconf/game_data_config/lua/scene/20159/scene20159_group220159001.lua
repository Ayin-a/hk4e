-- 基础信息
local base_info = {
	group_id = 220159001
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 220159001,
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
	{ config_id = 1001, gadget_id = 70211101, pos = { x = 478.737, y = 97.755, z = 521.239 }, rot = { x = 0.596, y = 305.587, z = 6.896 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true },
	{ config_id = 1002, gadget_id = 70290526, pos = { x = 448.763, y = 84.750, z = 479.908 }, rot = { x = 359.639, y = 159.988, z = 0.240 }, level = 30, persistent = true },
	{ config_id = 1003, gadget_id = 70360001, pos = { x = 448.985, y = 85.731, z = 480.032 }, rot = { x = 352.519, y = 189.091, z = 352.101 }, level = 30, persistent = true },
	{ config_id = 1004, gadget_id = 70290501, pos = { x = 432.917, y = 88.802, z = 498.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1005, gadget_id = 70290501, pos = { x = 442.967, y = 91.795, z = 496.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1006, gadget_id = 70290501, pos = { x = 441.454, y = 91.248, z = 496.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1007, gadget_id = 70290501, pos = { x = 444.382, y = 92.377, z = 496.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1008, gadget_id = 70290501, pos = { x = 439.989, y = 90.512, z = 496.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1009, gadget_id = 70290501, pos = { x = 431.529, y = 89.131, z = 500.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1010, gadget_id = 70290501, pos = { x = 436.131, y = 98.801, z = 519.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1011, gadget_id = 70290501, pos = { x = 437.173, y = 98.464, z = 521.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 1024, gadget_id = 70290501, pos = { x = 438.321, y = 98.355, z = 522.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70290501, pos = { x = 453.624, y = 98.697, z = 532.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70290501, pos = { x = 456.000, y = 97.404, z = 532.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70290501, pos = { x = 458.036, y = 97.271, z = 532.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70290501, pos = { x = 461.270, y = 97.217, z = 533.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70290501, pos = { x = 463.993, y = 97.146, z = 533.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70900201, pos = { x = 480.718, y = 100.000, z = 517.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70350456, pos = { x = 470.668, y = 94.685, z = 528.815 }, rot = { x = 15.489, y = 305.256, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 423.557, y = 73.092, z = 476.133 } }
}

-- 触发器
triggers = {
	{ config_id = 1001012, name = "CHALLENGE_SUCCESS_1012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "CHALLENGE_FAIL_1013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "GADGET_STATE_CHANGE_1014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1014", action = "action_EVENT_GADGET_STATE_CHANGE_1014", trigger_count = 0 },
	{ config_id = 1001015, name = "ANY_GADGET_DIE_1015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1001016, name = "GADGET_CREATE_1016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1016", action = "action_EVENT_GADGET_CREATE_1016", trigger_count = 0 },
	{ config_id = 1001017, name = "SELECT_OPTION_1017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1017", action = "action_EVENT_SELECT_OPTION_1017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1001018, name = "GROUP_LOAD_1018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1018", trigger_count = 0 },
	{ config_id = 1001019, name = "ENTER_REGION_1019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1019", action = "action_EVENT_ENTER_REGION_1019" }
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
		gadgets = { 1002, 1003, 1034 },
		regions = { 1019 },
		triggers = { "CHALLENGE_SUCCESS_1012", "CHALLENGE_FAIL_1013", "GADGET_STATE_CHANGE_1014", "ANY_GADGET_DIE_1015", "GADGET_CREATE_1016", "SELECT_OPTION_1017", "GROUP_LOAD_1018", "ENTER_REGION_1019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1024, 1025, 1026, 1027, 1028, 1029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1002 },
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
function action_EVENT_CHALLENGE_SUCCESS_1012(context, evt)
	-- 改变指定group组220159003中， configid为3018的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220159003, 3018, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 1002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220159001, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220159001, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为1001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1033的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1033 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1013(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为1003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220159001, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1014(context, evt)
	if 1002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1014(context, evt)
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
function condition_EVENT_GADGET_CREATE_1016(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220159001, 1003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1017(context, evt)
	-- 判断是gadgetid 1003 option_id 177
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 1002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（447，86，482.5），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=447, y=86, z=482.5}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220159002, EntityType.GADGET, 2014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1018(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为1003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220159001, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1019(context, evt)
	if evt.param1 ~= 1019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1019(context, evt)
	-- 将configid为 1034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end