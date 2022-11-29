-- 基础信息
local base_info = {
	group_id = 155007116
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 155007116,
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
	{ config_id = 116001, gadget_id = 70211101, pos = { x = -1.272, y = 215.221, z = 1380.735 }, rot = { x = 2.379, y = 272.401, z = 358.651 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 116002, gadget_id = 70350093, pos = { x = -7.359, y = 203.575, z = 1382.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 116003, gadget_id = 70360001, pos = { x = -7.359, y = 203.574, z = 1382.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 116004, gadget_id = 70290150, pos = { x = -27.117, y = 213.181, z = 1377.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 116005, gadget_id = 70290150, pos = { x = -28.938, y = 216.608, z = 1384.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 116006, gadget_id = 70290150, pos = { x = -32.759, y = 216.996, z = 1392.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 116007, gadget_id = 70290150, pos = { x = -16.832, y = 216.996, z = 1402.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 116008, gadget_id = 70290150, pos = { x = -16.223, y = 216.261, z = 1389.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 116009, gadget_id = 70290150, pos = { x = -5.175, y = 215.807, z = 1385.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 116010, gadget_id = 70290150, pos = { x = -9.114, y = 215.126, z = 1373.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 116011, gadget_id = 70290150, pos = { x = -16.707, y = 215.528, z = 1380.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1116012, name = "CHALLENGE_SUCCESS_116012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_116012", trigger_count = 0 },
	{ config_id = 1116013, name = "CHALLENGE_FAIL_116013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_116013", trigger_count = 0 },
	{ config_id = 1116014, name = "GADGET_STATE_CHANGE_116014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116014", action = "action_EVENT_GADGET_STATE_CHANGE_116014", trigger_count = 0 },
	{ config_id = 1116015, name = "ANY_GADGET_DIE_116015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1116016, name = "GADGET_CREATE_116016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_116016", action = "action_EVENT_GADGET_CREATE_116016", trigger_count = 0 },
	{ config_id = 1116017, name = "SELECT_OPTION_116017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_116017", action = "action_EVENT_SELECT_OPTION_116017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1116018, name = "GROUP_LOAD_116018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_116018", trigger_count = 0 }
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
		gadgets = { 116002, 116003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_116012", "CHALLENGE_FAIL_116013", "GADGET_STATE_CHANGE_116014", "ANY_GADGET_DIE_116015", "GADGET_CREATE_116016", "SELECT_OPTION_116017", "GROUP_LOAD_116018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 116004, 116005, 116006, 116007, 116008, 116009, 116010, 116011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 116002 },
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
function action_EVENT_CHALLENGE_SUCCESS_116012(context, evt)
	-- 将configid为 116002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 155007116, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155007116, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为116001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_116013(context, evt)
	-- 将configid为 116002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为116003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155007116, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_116014(context, evt)
	if 116002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116014(context, evt)
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
function condition_EVENT_GADGET_CREATE_116016(context, evt)
	if 116003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_116016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155007116, 116003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_116017(context, evt)
	-- 判断是gadgetid 116003 option_id 177
	if 116003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_116017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 116003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 116002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-27.11695，213.1809，1377.522），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-27.11695, y=213.1809, z=1377.522}
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
function action_EVENT_GROUP_LOAD_116018(context, evt)
	-- 将configid为 116002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为116003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155007116, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end