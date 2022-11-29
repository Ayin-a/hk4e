-- 基础信息
local base_info = {
	group_id = 133304398
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133304398,
	collectable_sum = 8
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
	{ config_id = 398001, gadget_id = 70211101, pos = { x = -1564.039, y = 296.777, z = 3036.506 }, rot = { x = 341.440, y = 87.493, z = 358.742 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 398002, gadget_id = 70350093, pos = { x = -1475.793, y = 277.371, z = 3046.385 }, rot = { x = 354.970, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 398003, gadget_id = 70360001, pos = { x = -1476.206, y = 278.692, z = 3046.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 398004, gadget_id = 70290501, pos = { x = -1489.825, y = 278.199, z = 3045.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 398005, gadget_id = 70290501, pos = { x = -1498.915, y = 279.871, z = 3050.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 398006, gadget_id = 70290501, pos = { x = -1509.389, y = 282.620, z = 3050.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 398007, gadget_id = 70290501, pos = { x = -1521.479, y = 283.250, z = 3045.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 398008, gadget_id = 70290501, pos = { x = -1528.873, y = 286.650, z = 3031.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 398009, gadget_id = 70290501, pos = { x = -1542.118, y = 292.293, z = 3020.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 398010, gadget_id = 70290501, pos = { x = -1556.192, y = 294.098, z = 3016.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 398011, gadget_id = 70290501, pos = { x = -1559.321, y = 297.325, z = 3029.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1398012, name = "CHALLENGE_SUCCESS_398012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_398012", trigger_count = 0 },
	{ config_id = 1398013, name = "CHALLENGE_FAIL_398013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_398013", trigger_count = 0 },
	{ config_id = 1398014, name = "GADGET_STATE_CHANGE_398014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_398014", action = "action_EVENT_GADGET_STATE_CHANGE_398014", trigger_count = 0 },
	{ config_id = 1398015, name = "ANY_GADGET_DIE_398015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1398016, name = "GADGET_CREATE_398016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_398016", action = "action_EVENT_GADGET_CREATE_398016", trigger_count = 0 },
	{ config_id = 1398017, name = "SELECT_OPTION_398017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_398017", action = "action_EVENT_SELECT_OPTION_398017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1398018, name = "GROUP_LOAD_398018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_398018", trigger_count = 0 }
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
		gadgets = { 398002, 398003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_398012", "CHALLENGE_FAIL_398013", "GADGET_STATE_CHANGE_398014", "ANY_GADGET_DIE_398015", "GADGET_CREATE_398016", "SELECT_OPTION_398017", "GROUP_LOAD_398018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 398004, 398005, 398006, 398007, 398008, 398009, 398010, 398011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 398002 },
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
function action_EVENT_CHALLENGE_SUCCESS_398012(context, evt)
	-- 将configid为 398002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 398002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133304398, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304398, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为398001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 398001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_398013(context, evt)
	-- 将configid为 398002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 398002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为398003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 398003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304398, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_398014(context, evt)
	if 398002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_398014(context, evt)
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
function condition_EVENT_GADGET_CREATE_398016(context, evt)
	if 398003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_398016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304398, 398003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_398017(context, evt)
	-- 判断是gadgetid 398003 option_id 177
	if 398003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_398017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 398003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 398002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 398002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-1489.825，279，3045.581），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1489.825, y=279, z=3045.581}
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
function action_EVENT_GROUP_LOAD_398018(context, evt)
	-- 将configid为 398002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 398002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为398003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 398003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304398, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end