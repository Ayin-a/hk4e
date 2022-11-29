-- 基础信息
local base_info = {
	group_id = 133315290
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 26010201, pos = { x = 160.071, y = 383.821, z = 2138.312 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 290003, gadget_id = 70330218, pos = { x = 160.115, y = 383.904, z = 2138.249 }, rot = { x = 19.044, y = 4.186, z = 5.101 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290004, gadget_id = 70310198, pos = { x = 160.106, y = 381.404, z = 2145.715 }, rot = { x = 0.000, y = 241.350, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 290005, gadget_id = 70290484, pos = { x = 160.071, y = 384.478, z = 2138.312 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290007, gadget_id = 70220103, pos = { x = 166.163, y = 395.000, z = 2165.459 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290008, gadget_id = 70220103, pos = { x = 188.971, y = 400.000, z = 2214.814 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290009, gadget_id = 70220103, pos = { x = 242.164, y = 400.000, z = 2330.401 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290010, gadget_id = 70220103, pos = { x = 257.673, y = 400.000, z = 2353.915 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290011, gadget_id = 70220103, pos = { x = 301.497, y = 407.511, z = 2451.056 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290012, gadget_id = 70220103, pos = { x = 197.763, y = 400.000, z = 2240.515 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290013, gadget_id = 70211131, pos = { x = 303.302, y = 406.891, z = 2460.276 }, rot = { x = 0.000, y = 30.298, z = 0.000 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 290014, gadget_id = 70220103, pos = { x = 178.041, y = 400.000, z = 2191.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290015, gadget_id = 70220103, pos = { x = 230.821, y = 400.000, z = 2303.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290016, gadget_id = 70220103, pos = { x = 271.704, y = 400.000, z = 2378.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290017, gadget_id = 70220103, pos = { x = 212.197, y = 400.000, z = 2270.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290018, gadget_id = 70220103, pos = { x = 283.588, y = 405.000, z = 2403.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290019, gadget_id = 70220103, pos = { x = 295.429, y = 405.000, z = 2433.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290020, gadget_id = 70310200, pos = { x = 152.600, y = 385.000, z = 2143.541 }, rot = { x = 0.000, y = 127.448, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290021, gadget_id = 70310200, pos = { x = 168.833, y = 385.000, z = 2142.020 }, rot = { x = 0.000, y = 245.951, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 290025, gadget_id = 70510014, pos = { x = 160.071, y = 383.821, z = 2138.312 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, isOneoff = true, persistent = true, worktop_config = { init_options = { 174 } }, area_id = 20 },
	-- 大的死了创小的
	{ config_id = 290046, gadget_id = 70330219, pos = { x = 160.162, y = 383.377, z = 2137.887 }, rot = { x = 20.019, y = 8.553, z = 3.630 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 小的炸了 addsuite2和3
	{ config_id = 1290026, name = "ANY_GADGET_DIE_290026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_290026", action = "action_EVENT_ANY_GADGET_DIE_290026" },
	-- 俩织梦网都激活，干掉罩子
	{ config_id = 1290031, name = "GADGET_STATE_CHANGE_290031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290031", action = "action_EVENT_GADGET_STATE_CHANGE_290031", trigger_count = 0 },
	-- 骗骗花
	{ config_id = 1290032, name = "GADGET_STATE_CHANGE_290032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290032", action = "action_EVENT_GADGET_STATE_CHANGE_290032", trigger_count = 0 },
	-- 骗骗花死了  刷钩爪和宝箱
	{ config_id = 1290033, name = "ANY_MONSTER_DIE_290033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_290033", action = "action_EVENT_ANY_MONSTER_DIE_290033" },
	-- 骗骗花
	{ config_id = 1290034, name = "GADGET_CREATE_290034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_290034", action = "action_EVENT_GADGET_CREATE_290034", trigger_count = 0 },
	-- 骗骗花
	{ config_id = 1290035, name = "SELECT_OPTION_290035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_290035", action = "action_EVENT_SELECT_OPTION_290035", trigger_count = 0 },
	-- 完成之后 清理现场 只保留宝箱suite
	{ config_id = 1290038, name = "GROUP_LOAD_290038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_290038", action = "action_EVENT_GROUP_LOAD_290038", trigger_count = 0 },
	-- 开宝箱之后，干掉钩爪
	{ config_id = 1290041, name = "GADGET_STATE_CHANGE_290041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290041", action = "action_EVENT_GADGET_STATE_CHANGE_290041" },
	-- 大的炸了创小的
	{ config_id = 1290044, name = "ANY_GADGET_DIE_290044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_290044", action = "action_EVENT_ANY_GADGET_DIE_290044" },
	-- 俩织梦网都激活，干掉罩子
	{ config_id = 1290045, name = "GROUP_LOAD_290045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_290045", action = "action_EVENT_GROUP_LOAD_290045", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "create", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 290002, gadget_id = 70330199, pos = { x = 159.542, y = 383.440, z = 2137.180 }, rot = { x = 10.854, y = 10.698, z = 1.044 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
		{ config_id = 290006, gadget_id = 70310200, pos = { x = 160.948, y = 385.000, z = 2152.927 }, rot = { x = 0.000, y = 182.424, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 290022, gadget_id = 70330255, pos = { x = 160.948, y = 385.000, z = 2152.927 }, rot = { x = 0.000, y = 182.424, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 290023, gadget_id = 70330255, pos = { x = 152.600, y = 385.825, z = 2143.541 }, rot = { x = 0.000, y = 127.448, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 290024, gadget_id = 70330255, pos = { x = 168.833, y = 385.825, z = 2142.020 }, rot = { x = 0.000, y = 245.951, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 290036, gadget_id = 70310198, pos = { x = 136.230, y = 400.364, z = 2092.521 }, rot = { x = 0.000, y = 22.311, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 290037, gadget_id = 70330218, pos = { x = 156.771, y = 395.701, z = 2118.395 }, rot = { x = 331.527, y = 236.029, z = 339.542 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 290040, gadget_id = 70290009, pos = { x = 160.948, y = 383.543, z = 2139.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 290042, gadget_id = 70500000, pos = { x = 160.948, y = 383.543, z = 2139.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3005, owner = 290040, area_id = 20 }
	},
	triggers = {
		{ config_id = 1290027, name = "VARIABLE_CHANGE_290027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_290027", action = "action_EVENT_VARIABLE_CHANGE_290027" },
		{ config_id = 1290028, name = "GADGET_STATE_CHANGE_290028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290028", action = "action_EVENT_GADGET_STATE_CHANGE_290028", trigger_count = 0 },
		{ config_id = 1290029, name = "GADGET_STATE_CHANGE_290029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290029", action = "action_EVENT_GADGET_STATE_CHANGE_290029", trigger_count = 0 },
		{ config_id = 1290030, name = "GADGET_STATE_CHANGE_290030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290030", action = "action_EVENT_GADGET_STATE_CHANGE_290030", trigger_count = 0 },
		{ config_id = 1290039, name = "GADGET_STATE_CHANGE_290039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290039", action = "action_EVENT_GADGET_STATE_CHANGE_290039", trigger_count = 0 },
		{ config_id = 1290043, name = "GADGET_STATE_CHANGE_290043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290043", action = "action_EVENT_GADGET_STATE_CHANGE_290043", trigger_count = 0 }
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
	end_suite = 6,
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
		gadgets = { 290003, 290004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_290026", "GROUP_LOAD_290038", "ANY_GADGET_DIE_290044", "GROUP_LOAD_290045" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 290005, 290020, 290021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_290031" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 290025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_290032", "GADGET_CREATE_290034", "SELECT_OPTION_290035" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 290001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_290033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 290007, 290008, 290009, 290010, 290011, 290012, 290014, 290015, 290016, 290017, 290018, 290019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 290013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_290041" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_290026(context, evt)
	if 290046 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_290026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315290, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315290, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290031(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315290, 290020) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315290, 290021) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290031(context, evt)
	-- 将configid为 290005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290032(context, evt)
	if 290025 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315290, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_290033(context, evt)
	if 290001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_290033(context, evt)
	-- 将本组内变量名为 "create" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isfinish", 1, 133315297) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315290, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315290, 6)
	
	-- 触发镜头注目，注目位置为坐标{x=185.9818, y=398.8679, z=2185.062}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=185.9818, y=398.8679, z=2185.062}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_290034(context, evt)
	if 290025 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_290034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315290, 290025, {174}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_290035(context, evt)
	-- 判断是gadgetid 290025 option_id 174
	if 290025 ~= evt.param1 then
		return false	
	end
	
	if 174 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_290035(context, evt)
	-- 将configid为 290025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133315290 ；指定config：290025；物件身上指定option：174；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133315290, 290025, 174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_290038(context, evt)
	-- 判断变量"create"为1
	if ScriptLib.GetGroupVariableValue(context, "create") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_290038(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315290, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290041(context, evt)
	if 290013 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290041(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315290, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_290044(context, evt)
	if 290003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_290044(context, evt)
	-- 创建id为290046的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290046 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_290045(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315290, 290020) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315290, 290021) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_290045(context, evt)
	-- 将configid为 290005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end