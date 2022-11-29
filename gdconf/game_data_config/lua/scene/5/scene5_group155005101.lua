-- 基础信息
local base_info = {
	group_id = 155005101
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 155005101,
	collectable_sum = 11
}

-- DEFS_MISCS


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
	{ config_id = 101001, gadget_id = 70211111, pos = { x = 199.890, y = 300.492, z = 354.522 }, rot = { x = 359.666, y = 215.750, z = 0.004 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 101002, gadget_id = 70350093, pos = { x = 193.967, y = 300.492, z = 346.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 101003, gadget_id = 70360001, pos = { x = 193.967, y = 301.457, z = 346.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 101004, gadget_id = 70290150, pos = { x = 197.642, y = 298.907, z = 343.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101005, gadget_id = 70290150, pos = { x = 194.417, y = 298.907, z = 339.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101006, gadget_id = 70290150, pos = { x = 187.408, y = 298.907, z = 345.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101007, gadget_id = 70290150, pos = { x = 190.484, y = 298.907, z = 349.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101008, gadget_id = 70290150, pos = { x = 192.807, y = 298.907, z = 352.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101009, gadget_id = 70290150, pos = { x = 196.154, y = 298.907, z = 356.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101010, gadget_id = 70290150, pos = { x = 199.010, y = 298.907, z = 360.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101011, gadget_id = 70290150, pos = { x = 203.129, y = 298.907, z = 358.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 101019, gadget_id = 70290150, pos = { x = 206.472, y = 298.907, z = 355.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 101020, gadget_id = 70290150, pos = { x = 203.818, y = 298.907, z = 351.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 101021, gadget_id = 70290150, pos = { x = 200.870, y = 298.907, z = 347.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101012, name = "CHALLENGE_SUCCESS_101012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_101012", trigger_count = 0 },
	{ config_id = 1101013, name = "CHALLENGE_FAIL_101013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_101013", trigger_count = 0 },
	{ config_id = 1101014, name = "GADGET_STATE_CHANGE_101014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101014", action = "action_EVENT_GADGET_STATE_CHANGE_101014", trigger_count = 0 },
	{ config_id = 1101015, name = "ANY_GADGET_DIE_101015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1101016, name = "GADGET_CREATE_101016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_101016", action = "action_EVENT_GADGET_CREATE_101016", trigger_count = 0 },
	{ config_id = 1101017, name = "SELECT_OPTION_101017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_101017", action = "action_EVENT_SELECT_OPTION_101017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1101018, name = "GROUP_LOAD_101018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_101018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 101022, gadget_id = 70290229, pos = { x = 193.786, y = 302.231, z = 346.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
	}
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
		gadgets = { 101002, 101003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_101012", "CHALLENGE_FAIL_101013", "GADGET_STATE_CHANGE_101014", "ANY_GADGET_DIE_101015", "GADGET_CREATE_101016", "SELECT_OPTION_101017", "GROUP_LOAD_101018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 101004, 101005, 101006, 101007, 101008, 101009, 101010, 101011, 101019, 101020, 101021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 101001, 101002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_CHALLENGE_SUCCESS_101012(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 155005101, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为101001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005101, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_101013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155005101, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为101003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101014(context, evt)
	if 101002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101014(context, evt)
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
function condition_EVENT_GADGET_CREATE_101016(context, evt)
	if 101003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_101016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005101, 101003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_101017(context, evt)
	-- 判断是gadgetid 101003 option_id 177
	if 101003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_101017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 101003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 101002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.GearStart) then
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
function action_EVENT_GROUP_LOAD_101018(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为101003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155005101, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end