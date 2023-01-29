-- 基础信息
local base_info = {
	group_id = 133317075
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133317075,
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
	{ config_id = 75001, gadget_id = 70211101, pos = { x = 599.814, y = 311.032, z = 5832.719 }, rot = { x = 0.000, y = 270.304, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 },
	{ config_id = 75002, gadget_id = 70350093, pos = { x = 578.792, y = 309.866, z = 5832.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 30 },
	{ config_id = 75003, gadget_id = 70360001, pos = { x = 578.792, y = 310.831, z = 5832.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 30 },
	{ config_id = 75004, gadget_id = 70290501, pos = { x = 583.612, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 75005, gadget_id = 70290501, pos = { x = 585.361, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 75006, gadget_id = 70290501, pos = { x = 586.892, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 75007, gadget_id = 70290501, pos = { x = 588.526, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 75008, gadget_id = 70290501, pos = { x = 590.026, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 75009, gadget_id = 70290501, pos = { x = 591.924, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 75010, gadget_id = 70290501, pos = { x = 593.815, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 },
	{ config_id = 75011, gadget_id = 70290501, pos = { x = 595.508, y = 311.830, z = 5832.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1075012, name = "CHALLENGE_SUCCESS_75012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_75012", trigger_count = 0 },
	{ config_id = 1075013, name = "CHALLENGE_FAIL_75013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_75013", trigger_count = 0 },
	{ config_id = 1075014, name = "GADGET_STATE_CHANGE_75014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75014", action = "action_EVENT_GADGET_STATE_CHANGE_75014", trigger_count = 0 },
	{ config_id = 1075015, name = "ANY_GADGET_DIE_75015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1075016, name = "GADGET_CREATE_75016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_75016", action = "action_EVENT_GADGET_CREATE_75016", trigger_count = 0 },
	{ config_id = 1075017, name = "SELECT_OPTION_75017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_75017", action = "action_EVENT_SELECT_OPTION_75017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1075018, name = "GROUP_LOAD_75018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_75018", trigger_count = 0 }
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
		gadgets = { 75002, 75003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_75012", "CHALLENGE_FAIL_75013", "GADGET_STATE_CHANGE_75014", "ANY_GADGET_DIE_75015", "GADGET_CREATE_75016", "SELECT_OPTION_75017", "GROUP_LOAD_75018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 75004, 75005, 75006, 75007, 75008, 75009, 75010, 75011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 75002 },
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

-- 创建指定gadget
function TLA_create_gadget(context, evt, config_id)
	-- 创建id为config_id的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = config_id }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	return 0
end

-- 创建指定suite的内容并修改group进度
function TLA_goto_groupsuite(context, evt, group_id, suite_id)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, group_id, suite_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	return 0
end

-- 杀死suite内所有内容
function TLA_kill_groupsuite(context, evt, group_id, suite_id)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, group_id, suite_id)
	return 0
end

-- 设置指定gadget的state
function TLA_set_gadget_state_by_configid(context, evt, config_id, state)
	-- 将configid为 config_id 的物件更改为状态 state
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, config_id, state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_75012(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 75002, GadgetState.GearStop)
	
	TLA_kill_groupsuite(context, evt, 133317075, 2)
	
	TLA_goto_groupsuite(context, evt, 133317075, 3)
	
	TLA_create_gadget(context, evt, 75001)
	
	ScriptLib.AddQuestProgress(context, "7332202")
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_75013(context, evt)
	-- 将configid为 75002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为75003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 75003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317075, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_75014(context, evt)
	if 75002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_75014(context, evt)
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
function condition_EVENT_GADGET_CREATE_75016(context, evt)
	if 75003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_75016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133317075, 75003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_75017(context, evt)
	-- 判断是gadgetid 75003 option_id 177
	if 75003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_75017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 75003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 75002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（1320，345，-744），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1320, y=345, z=-744}
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
function action_EVENT_GROUP_LOAD_75018(context, evt)
	-- 将configid为 75002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为75003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 75003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317075, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end