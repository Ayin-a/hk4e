-- 基础信息
local base_info = {
	group_id = 133301556
}

-- Trigger变量
local defs = {
	duration = 55,
	group_id = 133301556,
	collectable_sum = 9,
	target_x = -355.0947,
	target_y = 249.2809,
	target_z = 3692.095,
	camera_x = -287.42,
	camera_y = 294.164,
	camera_z = 3676.518
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
	{ config_id = 556001, gadget_id = 70211101, pos = { x = -440.599, y = 252.055, z = 3713.817 }, rot = { x = 13.157, y = 107.258, z = 8.892 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 556002, gadget_id = 70350093, pos = { x = -289.023, y = 282.653, z = 3676.301 }, rot = { x = 358.516, y = 294.063, z = 4.371 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 556003, gadget_id = 70360001, pos = { x = -289.018, y = 282.653, z = 3676.300 }, rot = { x = 358.516, y = 294.063, z = 4.371 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 556004, gadget_id = 70290501, pos = { x = -295.594, y = 280.210, z = 3672.659 }, rot = { x = 0.000, y = 208.829, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 556005, gadget_id = 70290501, pos = { x = -307.840, y = 277.108, z = 3674.154 }, rot = { x = 0.000, y = 208.829, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 556006, gadget_id = 70290501, pos = { x = -315.528, y = 271.090, z = 3678.639 }, rot = { x = 0.000, y = 208.829, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 556007, gadget_id = 70290501, pos = { x = -317.151, y = 261.872, z = 3681.651 }, rot = { x = 0.000, y = 208.829, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 556008, gadget_id = 70290501, pos = { x = -318.602, y = 250.673, z = 3683.750 }, rot = { x = 0.000, y = 208.829, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 556009, gadget_id = 70290501, pos = { x = -327.589, y = 241.539, z = 3684.084 }, rot = { x = 0.000, y = 208.829, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 556010, gadget_id = 70290501, pos = { x = -355.095, y = 249.281, z = 3692.095 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 556011, gadget_id = 70290501, pos = { x = -399.911, y = 253.737, z = 3697.185 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 556019, gadget_id = 70290501, pos = { x = -421.819, y = 260.534, z = 3707.609 }, rot = { x = 0.000, y = 221.709, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1556012, name = "CHALLENGE_SUCCESS_556012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_556012", trigger_count = 0 },
	{ config_id = 1556013, name = "CHALLENGE_FAIL_556013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_556013", trigger_count = 0 },
	{ config_id = 1556014, name = "GADGET_STATE_CHANGE_556014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_556014", action = "action_EVENT_GADGET_STATE_CHANGE_556014", trigger_count = 0 },
	{ config_id = 1556015, name = "ANY_GADGET_DIE_556015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1556016, name = "GADGET_CREATE_556016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_556016", action = "action_EVENT_GADGET_CREATE_556016", trigger_count = 0 },
	{ config_id = 1556017, name = "SELECT_OPTION_556017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_556017", action = "action_EVENT_SELECT_OPTION_556017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1556018, name = "GROUP_LOAD_556018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_556018", trigger_count = 0 }
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
		gadgets = { 556002, 556003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_556012", "CHALLENGE_FAIL_556013", "GADGET_STATE_CHANGE_556014", "ANY_GADGET_DIE_556015", "GADGET_CREATE_556016", "SELECT_OPTION_556017", "GROUP_LOAD_556018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 556004, 556005, 556006, 556007, 556008, 556009, 556010, 556011, 556019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 556002 },
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
function action_EVENT_CHALLENGE_SUCCESS_556012(context, evt)
	-- 将configid为 556002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133301556, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301556, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为556001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 556001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_556013(context, evt)
	-- 将configid为 556002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为556003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 556003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301556, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_556014(context, evt)
	if 556002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_556014(context, evt)
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
function condition_EVENT_GADGET_CREATE_556016(context, evt)
	if 556003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_556016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301556, 556003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_556017(context, evt)
	-- 判断是gadgetid 556003 option_id 177
	if 556003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_556017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 556003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 556002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-355.0947, y=249.2809, z=3692.095}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-355.0947, y=249.2809, z=3692.095}
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
function action_EVENT_GROUP_LOAD_556018(context, evt)
	-- 将configid为 556002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为556003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 556003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301556, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end