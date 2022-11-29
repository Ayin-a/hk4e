-- 基础信息
local base_info = {
	group_id = 133216003
}

-- Trigger变量
local defs = {
	duration = 120,
	group_id = 133216003
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
	{ config_id = 3001, gadget_id = 70211121, pos = { x = -5009.328, y = 202.655, z = -2439.440 }, rot = { x = 355.989, y = 342.112, z = 1.191 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 3002, gadget_id = 70350093, pos = { x = -5015.444, y = 202.725, z = -2439.562 }, rot = { x = 345.072, y = 353.395, z = 3.673 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 3003, gadget_id = 70360001, pos = { x = -5015.477, y = 203.654, z = -2439.820 }, rot = { x = 345.072, y = 353.395, z = 3.673 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 3004, gadget_id = 70290150, pos = { x = -5018.762, y = 214.554, z = -2426.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3005, gadget_id = 70290150, pos = { x = -5032.739, y = 217.936, z = -2419.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3006, gadget_id = 70290150, pos = { x = -5054.563, y = 220.273, z = -2400.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3007, gadget_id = 70290150, pos = { x = -5046.718, y = 204.967, z = -2372.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3008, gadget_id = 70290150, pos = { x = -5026.619, y = 205.583, z = -2375.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3009, gadget_id = 70290150, pos = { x = -4984.713, y = 209.171, z = -2396.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3010, gadget_id = 70290150, pos = { x = -4966.381, y = 215.940, z = -2391.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3011, gadget_id = 70290150, pos = { x = -4996.995, y = 223.619, z = -2404.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 3018, gadget_id = 70900380, pos = { x = -5017.131, y = 211.131, z = -2429.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3019, gadget_id = 70900380, pos = { x = -5028.688, y = 216.389, z = -2421.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3020, gadget_id = 70900380, pos = { x = -5041.625, y = 217.239, z = -2414.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3021, gadget_id = 70900380, pos = { x = -5053.969, y = 220.685, z = -2405.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3022, gadget_id = 70900380, pos = { x = -5065.057, y = 213.309, z = -2393.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3024, gadget_id = 70900380, pos = { x = -4984.169, y = 206.636, z = -2390.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3025, gadget_id = 70900380, pos = { x = -4973.265, y = 213.306, z = -2396.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3026, gadget_id = 70900380, pos = { x = -4967.148, y = 220.621, z = -2383.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3027, gadget_id = 70900380, pos = { x = -4991.687, y = 226.106, z = -2394.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3028, gadget_id = 70290150, pos = { x = -5001.311, y = 217.640, z = -2416.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 3029, gadget_id = 70900380, pos = { x = -4981.394, y = 222.868, z = -2385.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	-- 创建2组飞雷核
	{ config_id = 3023, shape = RegionShape.SPHERE, radius = 9, pos = { x = -4982.249, y = 200.204, z = -2381.480 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1003012, name = "CHALLENGE_SUCCESS_3012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3012" },
	{ config_id = 1003013, name = "CHALLENGE_FAIL_3013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3013", trigger_count = 0 },
	{ config_id = 1003014, name = "GADGET_STATE_CHANGE_3014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3014", action = "action_EVENT_GADGET_STATE_CHANGE_3014", trigger_count = 0 },
	{ config_id = 1003015, name = "ANY_GADGET_DIE_3015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "247" },
	{ config_id = 1003016, name = "GADGET_CREATE_3016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3016", action = "action_EVENT_GADGET_CREATE_3016", trigger_count = 0 },
	{ config_id = 1003017, name = "SELECT_OPTION_3017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3017", action = "action_EVENT_SELECT_OPTION_3017", trigger_count = 0 },
	-- 创建2组飞雷核
	{ config_id = 1003023, name = "ENTER_REGION_3023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3023", action = "action_EVENT_ENTER_REGION_3023", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1003030, name = "GROUP_LOAD_3030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3030", trigger_count = 0 },
	-- 增加地城保底
	{ config_id = 1003031, name = "GROUP_LOAD_3031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CameraActive", value = 0, no_refresh = false }
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
		gadgets = { 3002, 3003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3012", "CHALLENGE_FAIL_3013", "GADGET_STATE_CHANGE_3014", "ANY_GADGET_DIE_3015", "GADGET_CREATE_3016", "SELECT_OPTION_3017", "GROUP_LOAD_3030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3002 },
		regions = { },
		triggers = { "GROUP_LOAD_3031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 创建飞雷核,
		monsters = { },
		gadgets = { 3018, 3019, 3020, 3021, 3022 },
		regions = { 3023 },
		triggers = { "ENTER_REGION_3023" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 飞雷核2,
		monsters = { },
		gadgets = { 3024, 3025, 3026, 3027, 3029 },
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
function action_EVENT_CHALLENGE_SUCCESS_3012(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133216003, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133216003, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133216003, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为3001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "challenge_finish_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "challenge_finish_1", 1, 133216006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3013(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为3003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216003, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216003, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216003, 5)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3014(context, evt)
	if 3002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 247, 9) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3016(context, evt)
	if 3003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133216003, 3003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3017(context, evt)
	-- 判断是gadgetid 3003 option_id 177
	if 3003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "CameraActive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CameraActive", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-5018.762，214.5535，-2426.998），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5018.762, y=214.5535, z=-2426.998}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3023(context, evt)
	if evt.param1 ~= 3023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"CameraActive"为0
	if ScriptLib.GetGroupVariableValue(context, "CameraActive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3023(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133216003, 5)
	
	-- 将本组内变量名为 "CameraActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CameraActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-4984.713，209.1706，-2396.319），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4984.713, y=209.1706, z=-2396.319}
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
function action_EVENT_GROUP_LOAD_3030(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为3003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216003, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216003, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216003, 5)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3031(context, evt)
	-- 将本组内变量名为 "challenge_finish_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "challenge_finish_1", 1, 133216006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_0/ElectricCore"