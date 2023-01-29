-- 基础信息
local base_info = {
	group_id = 133313093
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133313093
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
	{ config_id = 93001, gadget_id = 70211111, pos = { x = -831.914, y = 20.534, z = 5835.717 }, rot = { x = 14.376, y = 61.281, z = 348.383 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 93002, gadget_id = 70350083, pos = { x = -619.437, y = 51.171, z = 5873.342 }, rot = { x = 354.922, y = 359.954, z = 1.035 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 93003, gadget_id = 70360001, pos = { x = -619.161, y = 69.854, z = 5873.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 93004, gadget_id = 70220103, pos = { x = -661.528, y = 60.551, z = 5855.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 93012, gadget_id = 70220103, pos = { x = -683.606, y = 58.237, z = 5856.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 93013, gadget_id = 70220103, pos = { x = -705.075, y = 57.231, z = 5858.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 93014, gadget_id = 70690001, pos = { x = -715.841, y = 53.138, z = 5857.280 }, rot = { x = 350.537, y = 80.889, z = 0.898 }, level = 32, area_id = 32 },
	{ config_id = 93015, gadget_id = 70690001, pos = { x = -742.868, y = 46.046, z = 5852.905 }, rot = { x = 350.537, y = 80.889, z = 0.898 }, level = 32, area_id = 32 },
	{ config_id = 93016, gadget_id = 70690001, pos = { x = -772.554, y = 38.901, z = 5848.111 }, rot = { x = 350.537, y = 80.889, z = 0.898 }, level = 32, area_id = 32 },
	{ config_id = 93017, gadget_id = 70690001, pos = { x = -803.446, y = 31.359, z = 5843.120 }, rot = { x = 350.537, y = 80.889, z = 0.898 }, level = 32, area_id = 32 },
	{ config_id = 93018, gadget_id = 70220103, pos = { x = -830.545, y = 23.563, z = 5836.117 }, rot = { x = 343.454, y = 356.154, z = 26.006 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1093005, name = "CHALLENGE_SUCCESS_93005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_93005", trigger_count = 0 },
	{ config_id = 1093006, name = "CHALLENGE_FAIL_93006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_93006", trigger_count = 0 },
	{ config_id = 1093007, name = "GADGET_STATE_CHANGE_93007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93007", action = "action_EVENT_GADGET_STATE_CHANGE_93007", trigger_count = 0 },
	{ config_id = 1093008, name = "GADGET_STATE_CHANGE_93008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93008", action = "", tag = "202" },
	{ config_id = 1093009, name = "GADGET_CREATE_93009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93009", action = "action_EVENT_GADGET_CREATE_93009", trigger_count = 0 },
	{ config_id = 1093010, name = "SELECT_OPTION_93010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93010", action = "action_EVENT_SELECT_OPTION_93010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1093011, name = "GROUP_LOAD_93011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_93011", trigger_count = 0 }
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
		gadgets = { 93002, 93003, 93004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_93005", "CHALLENGE_FAIL_93006", "GADGET_STATE_CHANGE_93007", "GADGET_STATE_CHANGE_93008", "GADGET_CREATE_93009", "SELECT_OPTION_93010", "GROUP_LOAD_93011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 93001, 93012, 93013, 93014, 93015, 93016, 93017, 93018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 93002, 93012, 93013 },
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
function action_EVENT_CHALLENGE_SUCCESS_93005(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133313093, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133313093, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_93006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313093, 2)
	
	-- 将configid为 93002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为93003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 93003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93007(context, evt)
	if 93002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_93008(context, evt)
	if 93001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_93009(context, evt)
	if 93003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313093, 93003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93010(context, evt)
	-- 判断是gadgetid 93003 option_id 177
	if 93003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 93003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-831, y=20, z=5835}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-831, y=20, z=5835}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313093, 2)
	
	-- 将configid为 93002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为93003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 93003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end