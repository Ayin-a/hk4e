-- 基础信息
local base_info = {
	group_id = 133222301
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133222301,
	collectable_sum = 9
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
	{ config_id = 301001, gadget_id = 70211121, pos = { x = -4492.345, y = 367.416, z = -4247.422 }, rot = { x = 350.307, y = 266.269, z = 7.607 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 301002, gadget_id = 70350093, pos = { x = -4492.148, y = 367.268, z = -4249.229 }, rot = { x = 0.000, y = 273.958, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 301003, gadget_id = 70360001, pos = { x = -4491.748, y = 368.373, z = -4249.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 301004, gadget_id = 70290150, pos = { x = -4480.542, y = 374.520, z = -4254.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301005, gadget_id = 70290150, pos = { x = -4470.786, y = 382.258, z = -4257.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301006, gadget_id = 70290150, pos = { x = -4460.538, y = 391.431, z = -4260.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301007, gadget_id = 70290150, pos = { x = -4465.867, y = 403.317, z = -4253.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301008, gadget_id = 70290150, pos = { x = -4467.738, y = 404.431, z = -4251.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301009, gadget_id = 70290150, pos = { x = -4472.325, y = 400.256, z = -4247.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301010, gadget_id = 70290150, pos = { x = -4472.325, y = 396.365, z = -4247.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301011, gadget_id = 70290150, pos = { x = -4472.325, y = 390.432, z = -4247.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301019, gadget_id = 70290150, pos = { x = -4482.967, y = 376.580, z = -4241.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301020, gadget_id = 70900380, pos = { x = -4483.578, y = 371.952, z = -4253.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301021, gadget_id = 70900380, pos = { x = -4472.901, y = 379.999, z = -4256.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301022, gadget_id = 70900380, pos = { x = -4463.214, y = 388.431, z = -4259.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301023, gadget_id = 70900380, pos = { x = -4463.594, y = 401.356, z = -4255.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301024, gadget_id = 70900380, pos = { x = -4479.753, y = 379.701, z = -4242.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 301025, gadget_id = 70900380, pos = { x = -4493.395, y = 372.182, z = -4241.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1301012, name = "CHALLENGE_SUCCESS_301012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_301012", trigger_count = 0 },
	{ config_id = 1301013, name = "CHALLENGE_FAIL_301013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_301013", trigger_count = 0 },
	{ config_id = 1301014, name = "GADGET_STATE_CHANGE_301014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_301014", action = "action_EVENT_GADGET_STATE_CHANGE_301014", trigger_count = 0 },
	{ config_id = 1301015, name = "ANY_GADGET_DIE_301015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1301016, name = "GADGET_CREATE_301016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_301016", action = "action_EVENT_GADGET_CREATE_301016", trigger_count = 0 },
	{ config_id = 1301017, name = "SELECT_OPTION_301017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_301017", action = "action_EVENT_SELECT_OPTION_301017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1301018, name = "GROUP_LOAD_301018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_301018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
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
		gadgets = { 301002, 301003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_301012", "CHALLENGE_FAIL_301013", "GADGET_STATE_CHANGE_301014", "ANY_GADGET_DIE_301015", "GADGET_CREATE_301016", "SELECT_OPTION_301017", "GROUP_LOAD_301018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 301004, 301005, 301006, 301007, 301008, 301009, 301010, 301011, 301019, 301020, 301021, 301022, 301023, 301024, 301025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 301002 },
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
function action_EVENT_CHALLENGE_SUCCESS_301012(context, evt)
	-- 将configid为 301002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133222301, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133222301, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为301001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 301001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_301013(context, evt)
	-- 将configid为 301002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为301003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 301003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222301, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_301014(context, evt)
	if 301002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_301014(context, evt)
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
function condition_EVENT_GADGET_CREATE_301016(context, evt)
	if 301003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_301016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222301, 301003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_301017(context, evt)
	-- 判断是gadgetid 301003 option_id 177
	if 301003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_301017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 301002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-4480.542，374.5204，-4254.49），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4480.542, y=374.5204, z=-4254.49}
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
function action_EVENT_GROUP_LOAD_301018(context, evt)
	-- 将configid为 301002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为301003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 301003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222301, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"