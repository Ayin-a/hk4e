-- 基础信息
local base_info = {
	group_id = 155006163
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 155006163,
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
	{ config_id = 163001, gadget_id = 70211101, pos = { x = 209.748, y = 243.768, z = -363.630 }, rot = { x = 357.421, y = 342.005, z = 340.327 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163002, gadget_id = 70350093, pos = { x = 197.685, y = 211.370, z = -257.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 163003, gadget_id = 70360001, pos = { x = 198.639, y = 211.022, z = -258.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 163004, gadget_id = 70290150, pos = { x = 204.008, y = 207.943, z = -275.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 163005, gadget_id = 70290150, pos = { x = 205.040, y = 208.584, z = -288.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 163006, gadget_id = 70290150, pos = { x = 207.830, y = 213.401, z = -291.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 163007, gadget_id = 70290150, pos = { x = 212.455, y = 212.995, z = -304.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 163008, gadget_id = 70290150, pos = { x = 216.669, y = 216.442, z = -317.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 163009, gadget_id = 70290150, pos = { x = 213.128, y = 230.797, z = -334.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 163010, gadget_id = 70290150, pos = { x = 211.312, y = 239.132, z = -345.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 163011, gadget_id = 70290150, pos = { x = 211.386, y = 242.664, z = -348.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163012, name = "CHALLENGE_SUCCESS_163012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_163012", trigger_count = 0 },
	{ config_id = 1163013, name = "CHALLENGE_FAIL_163013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_163013", trigger_count = 0 },
	{ config_id = 1163014, name = "GADGET_STATE_CHANGE_163014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163014", action = "action_EVENT_GADGET_STATE_CHANGE_163014", trigger_count = 0 },
	{ config_id = 1163015, name = "ANY_GADGET_DIE_163015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1163016, name = "GADGET_CREATE_163016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_163016", action = "action_EVENT_GADGET_CREATE_163016", trigger_count = 0 },
	{ config_id = 1163017, name = "SELECT_OPTION_163017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_163017", action = "action_EVENT_SELECT_OPTION_163017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1163018, name = "GROUP_LOAD_163018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_163018", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 163002, 163003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_163012", "CHALLENGE_FAIL_163013", "GADGET_STATE_CHANGE_163014", "ANY_GADGET_DIE_163015", "GADGET_CREATE_163016", "SELECT_OPTION_163017", "GROUP_LOAD_163018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 163004, 163005, 163006, 163007, 163008, 163009, 163010, 163011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 163002 },
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
function action_EVENT_CHALLENGE_SUCCESS_163012(context, evt)
	-- 将configid为 163002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 155006163, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006163, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为163001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_163013(context, evt)
	-- 将configid为 163002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为163003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155006163, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163014(context, evt)
	if 163002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163014(context, evt)
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
function condition_EVENT_GADGET_CREATE_163016(context, evt)
	if 163003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_163016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155006163, 163003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_163017(context, evt)
	-- 判断是gadgetid 163003 option_id 177
	if 163003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_163017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 163003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 163002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（207，213，-292），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=207, y=213, z=-292}
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
function action_EVENT_GROUP_LOAD_163018(context, evt)
	-- 将configid为 163002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为163003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155006163, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end