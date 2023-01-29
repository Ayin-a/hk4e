-- 基础信息
local base_info = {
	group_id = 133314138
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133314138,
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
	{ config_id = 138001, gadget_id = 70211101, pos = { x = -206.452, y = -39.303, z = 4746.418 }, rot = { x = 0.000, y = 194.737, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 138002, gadget_id = 70350093, pos = { x = -276.254, y = -39.668, z = 4650.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 138003, gadget_id = 70360001, pos = { x = -276.254, y = -38.703, z = 4650.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 138004, gadget_id = 70290501, pos = { x = -261.414, y = -38.800, z = 4656.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 138005, gadget_id = 70290501, pos = { x = -256.504, y = -38.800, z = 4668.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 138006, gadget_id = 70290501, pos = { x = -252.494, y = -38.800, z = 4680.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 138007, gadget_id = 70290501, pos = { x = -240.808, y = -38.800, z = 4691.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 138008, gadget_id = 70290501, pos = { x = -233.713, y = -38.800, z = 4704.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 138009, gadget_id = 70290501, pos = { x = -231.730, y = -38.800, z = 4717.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 138010, gadget_id = 70290501, pos = { x = -218.079, y = -38.800, z = 4731.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 138011, gadget_id = 70290501, pos = { x = -206.996, y = -38.800, z = 4743.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138012, name = "CHALLENGE_SUCCESS_138012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_138012", trigger_count = 0 },
	{ config_id = 1138013, name = "CHALLENGE_FAIL_138013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_138013", trigger_count = 0 },
	{ config_id = 1138014, name = "GADGET_STATE_CHANGE_138014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138014", action = "action_EVENT_GADGET_STATE_CHANGE_138014", trigger_count = 0 },
	{ config_id = 1138015, name = "ANY_GADGET_DIE_138015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1138016, name = "GADGET_CREATE_138016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_138016", action = "action_EVENT_GADGET_CREATE_138016", trigger_count = 0 },
	{ config_id = 1138017, name = "SELECT_OPTION_138017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_138017", action = "action_EVENT_SELECT_OPTION_138017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1138018, name = "GROUP_LOAD_138018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_138018", trigger_count = 0 }
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
		gadgets = { 138002, 138003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_138012", "CHALLENGE_FAIL_138013", "GADGET_STATE_CHANGE_138014", "ANY_GADGET_DIE_138015", "GADGET_CREATE_138016", "SELECT_OPTION_138017", "GROUP_LOAD_138018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 138004, 138005, 138006, 138007, 138008, 138009, 138010, 138011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 138002 },
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
function action_EVENT_CHALLENGE_SUCCESS_138012(context, evt)
	-- 将configid为 138002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133314138, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314138, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为138001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_138013(context, evt)
	-- 将configid为 138002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为138003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314138, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_138014(context, evt)
	if 138002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138014(context, evt)
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
function condition_EVENT_GADGET_CREATE_138016(context, evt)
	if 138003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_138016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314138, 138003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_138017(context, evt)
	-- 判断是gadgetid 138003 option_id 177
	if 138003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_138017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 138003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 138002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-261.4142, y=-38, z=4656.932}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-261.4142, y=-38, z=4656.932}
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
function action_EVENT_GROUP_LOAD_138018(context, evt)
	-- 将configid为 138002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为138003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314138, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end