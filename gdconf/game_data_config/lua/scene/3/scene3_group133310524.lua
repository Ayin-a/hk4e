-- 基础信息
local base_info = {
	group_id = 133310524
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133310524,
	collectable_sum = 24
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
	{ config_id = 524001, gadget_id = 70211101, pos = { x = -3307.898, y = 256.845, z = 4608.247 }, rot = { x = 21.293, y = 130.632, z = 10.212 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 524002, gadget_id = 70330343, pos = { x = -3309.388, y = 256.631, z = 4605.547 }, rot = { x = 0.000, y = 72.015, z = 0.000 }, level = 30, persistent = true, area_id = 28 },
	{ config_id = 524003, gadget_id = 70360001, pos = { x = -3309.388, y = 256.631, z = 4605.547 }, rot = { x = 0.000, y = 72.015, z = 0.000 }, level = 30, persistent = true, area_id = 28 },
	{ config_id = 524004, gadget_id = 70290501, pos = { x = -3311.670, y = 259.319, z = 4600.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 524005, gadget_id = 70290501, pos = { x = -3313.938, y = 259.634, z = 4594.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524006, gadget_id = 70290501, pos = { x = -3314.509, y = 259.894, z = 4584.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524007, gadget_id = 70290501, pos = { x = -3313.480, y = 257.592, z = 4577.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524008, gadget_id = 70290501, pos = { x = -3309.076, y = 254.879, z = 4569.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524009, gadget_id = 70290501, pos = { x = -3303.584, y = 253.166, z = 4564.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524010, gadget_id = 70290501, pos = { x = -3298.953, y = 249.811, z = 4561.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524011, gadget_id = 70290501, pos = { x = -3291.942, y = 246.611, z = 4559.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524019, gadget_id = 70290501, pos = { x = -3282.843, y = 243.804, z = 4558.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524020, gadget_id = 70290501, pos = { x = -3276.462, y = 240.204, z = 4560.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524021, gadget_id = 70290501, pos = { x = -3270.406, y = 238.084, z = 4564.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524022, gadget_id = 70290501, pos = { x = -3264.185, y = 237.317, z = 4571.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524023, gadget_id = 70290501, pos = { x = -3260.655, y = 235.489, z = 4578.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524024, gadget_id = 70290501, pos = { x = -3259.590, y = 235.744, z = 4585.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524025, gadget_id = 70290501, pos = { x = -3258.069, y = 237.157, z = 4594.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524026, gadget_id = 70290501, pos = { x = -3260.368, y = 237.764, z = 4601.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524027, gadget_id = 70290501, pos = { x = -3263.602, y = 239.681, z = 4606.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524028, gadget_id = 70290501, pos = { x = -3268.723, y = 243.713, z = 4613.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524029, gadget_id = 70290501, pos = { x = -3275.719, y = 245.954, z = 4617.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524030, gadget_id = 70290501, pos = { x = -3282.797, y = 249.112, z = 4618.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524031, gadget_id = 70290501, pos = { x = -3289.695, y = 253.148, z = 4619.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524032, gadget_id = 70290501, pos = { x = -3295.619, y = 254.468, z = 4618.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524033, gadget_id = 70290501, pos = { x = -3302.098, y = 256.665, z = 4613.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 524034, gadget_id = 70290501, pos = { x = -3305.336, y = 257.416, z = 4607.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1524012, name = "CHALLENGE_SUCCESS_524012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_524012", trigger_count = 0 },
	{ config_id = 1524013, name = "CHALLENGE_FAIL_524013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_524013", trigger_count = 0 },
	{ config_id = 1524014, name = "GADGET_STATE_CHANGE_524014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_524014", action = "action_EVENT_GADGET_STATE_CHANGE_524014", trigger_count = 0 },
	{ config_id = 1524015, name = "ANY_GADGET_DIE_524015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1524016, name = "GADGET_CREATE_524016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_524016", action = "action_EVENT_GADGET_CREATE_524016", trigger_count = 0 },
	{ config_id = 1524017, name = "SELECT_OPTION_524017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_524017", action = "action_EVENT_SELECT_OPTION_524017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1524018, name = "GROUP_LOAD_524018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_524018", trigger_count = 0 }
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
		gadgets = { 524002, 524003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_524012", "CHALLENGE_FAIL_524013", "GADGET_STATE_CHANGE_524014", "ANY_GADGET_DIE_524015", "GADGET_CREATE_524016", "SELECT_OPTION_524017", "GROUP_LOAD_524018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 524004, 524005, 524006, 524007, 524008, 524009, 524010, 524011, 524019, 524020, 524021, 524022, 524023, 524024, 524025, 524026, 524027, 524028, 524029, 524030, 524031, 524032, 524033, 524034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 524002 },
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
function action_EVENT_CHALLENGE_SUCCESS_524012(context, evt)
	-- 将configid为 524002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 524002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310524, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310524, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为524001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 524001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_524013(context, evt)
	-- 将configid为 524002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 524002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为524003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 524003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310524, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_524014(context, evt)
	if 524002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_524014(context, evt)
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
function condition_EVENT_GADGET_CREATE_524016(context, evt)
	if 524003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_524016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310524, 524003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_524017(context, evt)
	-- 判断是gadgetid 524003 option_id 177
	if 524003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_524017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 524003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 524002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 524002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-3311.67, y=259.3187, z=4600.54}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3311.67, y=259.3187, z=4600.54}
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
function action_EVENT_GROUP_LOAD_524018(context, evt)
	-- 将configid为 524002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 524002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为524003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 524003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310524, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end