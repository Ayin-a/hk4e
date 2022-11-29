-- 基础信息
local base_info = {
	group_id = 133310454
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133310454,
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
	{ config_id = 454001, gadget_id = 70211101, pos = { x = -2209.657, y = 228.416, z = 4525.809 }, rot = { x = 354.011, y = 156.644, z = 4.140 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 454002, gadget_id = 70330343, pos = { x = -2136.848, y = 240.055, z = 4399.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 454003, gadget_id = 70360001, pos = { x = -2136.766, y = 241.158, z = 4399.123 }, rot = { x = 6.576, y = 359.338, z = 348.519 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 454004, gadget_id = 70290501, pos = { x = -2149.624, y = 242.327, z = 4396.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454005, gadget_id = 70290501, pos = { x = -2166.180, y = 242.064, z = 4399.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454006, gadget_id = 70290501, pos = { x = -2177.951, y = 239.941, z = 4411.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454007, gadget_id = 70290501, pos = { x = -2196.852, y = 229.970, z = 4507.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454008, gadget_id = 70290501, pos = { x = -2182.362, y = 237.533, z = 4426.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454009, gadget_id = 70290501, pos = { x = -2185.606, y = 232.455, z = 4460.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454010, gadget_id = 70290501, pos = { x = -2187.546, y = 230.269, z = 4496.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454011, gadget_id = 70290501, pos = { x = -2208.814, y = 228.909, z = 4520.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454019, gadget_id = 70220103, pos = { x = -2185.071, y = 234.017, z = 4450.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454020, gadget_id = 70220103, pos = { x = -2186.347, y = 229.509, z = 4471.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454021, gadget_id = 70220103, pos = { x = -2187.593, y = 229.117, z = 4496.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 454022, gadget_id = 70220103, pos = { x = -2206.662, y = 230.371, z = 4518.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1454012, name = "CHALLENGE_SUCCESS_454012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_454012", trigger_count = 0 },
	{ config_id = 1454013, name = "CHALLENGE_FAIL_454013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_454013", trigger_count = 0 },
	{ config_id = 1454014, name = "GADGET_STATE_CHANGE_454014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_454014", action = "action_EVENT_GADGET_STATE_CHANGE_454014", trigger_count = 0 },
	{ config_id = 1454015, name = "ANY_GADGET_DIE_454015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1454016, name = "GADGET_CREATE_454016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_454016", action = "action_EVENT_GADGET_CREATE_454016", trigger_count = 0 },
	{ config_id = 1454017, name = "SELECT_OPTION_454017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_454017", action = "action_EVENT_SELECT_OPTION_454017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1454018, name = "GROUP_LOAD_454018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_454018", trigger_count = 0 }
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
		gadgets = { 454002, 454003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_454012", "CHALLENGE_FAIL_454013", "GADGET_STATE_CHANGE_454014", "ANY_GADGET_DIE_454015", "GADGET_CREATE_454016", "SELECT_OPTION_454017", "GROUP_LOAD_454018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 454004, 454005, 454006, 454007, 454008, 454009, 454010, 454011, 454019, 454020, 454021, 454022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 454002 },
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
function action_EVENT_CHALLENGE_SUCCESS_454012(context, evt)
	-- 将configid为 454002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310454, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310454, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为454001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_454013(context, evt)
	-- 将configid为 454002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为454003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310454, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_454014(context, evt)
	if 454002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_454014(context, evt)
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
function condition_EVENT_GADGET_CREATE_454016(context, evt)
	if 454003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_454016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310454, 454003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_454017(context, evt)
	-- 判断是gadgetid 454003 option_id 177
	if 454003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_454017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 454003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 454002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2166，245，4399），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2166, y=245, z=4399}
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
function action_EVENT_GROUP_LOAD_454018(context, evt)
	-- 将configid为 454002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为454003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310454, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end