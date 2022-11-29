-- 基础信息
local base_info = {
	group_id = 111101180
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 111101180,
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
	{ config_id = 180001, gadget_id = 70211121, pos = { x = 2732.705, y = 233.749, z = -1421.745 }, rot = { x = 18.696, y = 336.256, z = 351.505 }, level = 26, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 180002, gadget_id = 70350093, pos = { x = 2669.223, y = 265.145, z = -1362.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true },
	{ config_id = 180003, gadget_id = 70360001, pos = { x = 2669.223, y = 266.110, z = -1362.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true },
	{ config_id = 180004, gadget_id = 70290150, pos = { x = 2664.459, y = 265.478, z = -1369.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180005, gadget_id = 70290150, pos = { x = 2667.167, y = 265.287, z = -1366.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180006, gadget_id = 70290150, pos = { x = 2663.755, y = 265.592, z = -1364.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180007, gadget_id = 70290150, pos = { x = 2664.352, y = 265.506, z = -1367.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180008, gadget_id = 70290150, pos = { x = 2666.636, y = 265.330, z = -1368.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180009, gadget_id = 70290150, pos = { x = 2666.545, y = 265.387, z = -1363.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180010, gadget_id = 70290150, pos = { x = 2663.780, y = 265.638, z = -1361.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180011, gadget_id = 70290150, pos = { x = 2666.879, y = 265.316, z = -1370.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 180018, gadget_id = 70290150, pos = { x = 2662.284, y = 265.698, z = -1365.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1180012, name = "CHALLENGE_SUCCESS_180012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_180012" },
	{ config_id = 1180013, name = "CHALLENGE_FAIL_180013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_180013", trigger_count = 0 },
	{ config_id = 1180014, name = "GADGET_STATE_CHANGE_180014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_180014", action = "action_EVENT_GADGET_STATE_CHANGE_180014", trigger_count = 0 },
	{ config_id = 1180015, name = "ANY_GADGET_DIE_180015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1180016, name = "GADGET_CREATE_180016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_180016", action = "action_EVENT_GADGET_CREATE_180016", trigger_count = 0 },
	{ config_id = 1180017, name = "SELECT_OPTION_180017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_180017", action = "action_EVENT_SELECT_OPTION_180017", trigger_count = 0 }
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
		gadgets = { 180002, 180003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_180012", "CHALLENGE_FAIL_180013", "GADGET_STATE_CHANGE_180014", "ANY_GADGET_DIE_180015", "GADGET_CREATE_180016", "SELECT_OPTION_180017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 180004, 180005, 180006, 180007, 180008, 180009, 180010, 180011, 180018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 180002 },
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
function action_EVENT_CHALLENGE_SUCCESS_180012(context, evt)
	-- 将configid为 180002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 111101180, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101180, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为180001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 180001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_180013(context, evt)
	-- 将configid为 180002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为180003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 180003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101180, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_180014(context, evt)
	if 180002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_180014(context, evt)
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
function condition_EVENT_GADGET_CREATE_180016(context, evt)
	if 180003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_180016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101180, 180003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_180017(context, evt)
	-- 判断是gadgetid 180003 option_id 177
	if 180003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_180017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 180003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 180002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180002, GadgetState.GearStart) then
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