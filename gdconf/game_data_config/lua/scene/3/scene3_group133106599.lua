-- 基础信息
local base_info = {
	group_id = 133106599
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133106599,
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
	{ config_id = 599001, gadget_id = 70211111, pos = { x = -843.267, y = 257.738, z = 1556.850 }, rot = { x = 20.900, y = 304.307, z = 353.308 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 599002, gadget_id = 70350093, pos = { x = -946.966, y = 213.069, z = 1649.678 }, rot = { x = 15.706, y = 0.160, z = 1.157 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 599003, gadget_id = 70360001, pos = { x = -946.966, y = 214.034, z = 1649.672 }, rot = { x = 15.706, y = 0.160, z = 1.157 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 599004, gadget_id = 70290352, pos = { x = -937.179, y = 214.624, z = 1643.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599005, gadget_id = 70290352, pos = { x = -926.418, y = 216.382, z = 1634.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599006, gadget_id = 70290352, pos = { x = -927.819, y = 222.617, z = 1621.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599007, gadget_id = 70290352, pos = { x = -897.788, y = 248.695, z = 1591.391 }, rot = { x = 0.000, y = 136.358, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599008, gadget_id = 70290352, pos = { x = -881.673, y = 247.691, z = 1579.306 }, rot = { x = 0.000, y = 121.265, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599009, gadget_id = 70290352, pos = { x = -865.447, y = 249.245, z = 1569.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599010, gadget_id = 70290352, pos = { x = -861.726, y = 250.543, z = 1567.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599011, gadget_id = 70290352, pos = { x = -851.538, y = 253.936, z = 1561.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599019, gadget_id = 70290200, pos = { x = -927.782, y = 221.347, z = 1621.007 }, rot = { x = 338.776, y = 216.464, z = 351.382 }, level = 36, area_id = 19 },
	{ config_id = 599020, gadget_id = 70690011, pos = { x = -928.052, y = 222.505, z = 1619.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599021, gadget_id = 70690001, pos = { x = -918.382, y = 249.170, z = 1612.985 }, rot = { x = 0.000, y = 136.358, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599022, gadget_id = 70690001, pos = { x = -889.777, y = 247.691, z = 1584.226 }, rot = { x = 0.000, y = 121.265, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599023, gadget_id = 70690001, pos = { x = -872.866, y = 247.691, z = 1573.958 }, rot = { x = 0.000, y = 121.265, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 599024, gadget_id = 70690001, pos = { x = -911.014, y = 249.170, z = 1605.260 }, rot = { x = 0.000, y = 136.358, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1599012, name = "CHALLENGE_SUCCESS_599012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_599012", trigger_count = 0 },
	{ config_id = 1599013, name = "CHALLENGE_FAIL_599013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_599013", trigger_count = 0 },
	{ config_id = 1599014, name = "GADGET_STATE_CHANGE_599014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_599014", action = "action_EVENT_GADGET_STATE_CHANGE_599014", trigger_count = 0 },
	{ config_id = 1599015, name = "ANY_GADGET_DIE_599015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1599016, name = "GADGET_CREATE_599016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_599016", action = "action_EVENT_GADGET_CREATE_599016", trigger_count = 0 },
	{ config_id = 1599017, name = "SELECT_OPTION_599017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_599017", action = "action_EVENT_SELECT_OPTION_599017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1599018, name = "GROUP_LOAD_599018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_599018", trigger_count = 0 }
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
		gadgets = { 599002, 599003, 599019, 599020 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_599012", "CHALLENGE_FAIL_599013", "GADGET_STATE_CHANGE_599014", "ANY_GADGET_DIE_599015", "GADGET_CREATE_599016", "SELECT_OPTION_599017", "GROUP_LOAD_599018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 599004, 599005, 599006, 599007, 599008, 599009, 599010, 599011, 599021, 599022, 599023, 599024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 599002, 599003, 599019 },
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
function action_EVENT_CHALLENGE_SUCCESS_599012(context, evt)
	-- 将configid为 599002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133106599, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106599, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为599001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_599013(context, evt)
	-- 将configid为 599002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为599003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106599, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_599014(context, evt)
	if 599002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_599014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 259, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_599016(context, evt)
	if 599003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_599016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106599, 599003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_599017(context, evt)
	-- 判断是gadgetid 599003 option_id 177
	if 599003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_599017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 599003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 599002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-937.1794，214.6241，1643.026），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-937.1794, y=214.6241, z=1643.026}
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
function action_EVENT_GROUP_LOAD_599018(context, evt)
	-- 将configid为 599002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为599003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106599, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end