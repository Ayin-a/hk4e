-- 基础信息
local base_info = {
	group_id = 133316033
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133316033,
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
	{ config_id = 33001, gadget_id = 70211111, pos = { x = 368.126, y = 277.316, z = 6191.773 }, rot = { x = 0.000, y = 270.304, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 },
	{ config_id = 33002, gadget_id = 70350093, pos = { x = 362.203, y = 278.690, z = 6207.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 30 },
	{ config_id = 33003, gadget_id = 70360001, pos = { x = 362.281, y = 278.906, z = 6207.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 30 },
	{ config_id = 33004, gadget_id = 70290501, pos = { x = 370.498, y = 278.737, z = 6193.247 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 33005, gadget_id = 70290501, pos = { x = 369.868, y = 279.000, z = 6194.878 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 33006, gadget_id = 70290501, pos = { x = 369.317, y = 278.855, z = 6196.306 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 33007, gadget_id = 70290501, pos = { x = 368.729, y = 278.861, z = 6197.831 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 33008, gadget_id = 70290501, pos = { x = 368.188, y = 278.841, z = 6199.229 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 33009, gadget_id = 70290501, pos = { x = 367.505, y = 279.116, z = 6201.000 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 33010, gadget_id = 70290501, pos = { x = 366.825, y = 279.292, z = 6202.764 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 33011, gadget_id = 70290501, pos = { x = 366.214, y = 279.839, z = 6204.344 }, rot = { x = 0.000, y = 248.897, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033012, name = "CHALLENGE_SUCCESS_33012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_33012", trigger_count = 0 },
	{ config_id = 1033013, name = "CHALLENGE_FAIL_33013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_33013", trigger_count = 0 },
	{ config_id = 1033014, name = "GADGET_STATE_CHANGE_33014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33014", action = "action_EVENT_GADGET_STATE_CHANGE_33014", trigger_count = 0 },
	{ config_id = 1033015, name = "ANY_GADGET_DIE_33015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1033016, name = "GADGET_CREATE_33016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_33016", action = "action_EVENT_GADGET_CREATE_33016", trigger_count = 0 },
	{ config_id = 1033017, name = "SELECT_OPTION_33017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_33017", action = "action_EVENT_SELECT_OPTION_33017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1033018, name = "GROUP_LOAD_33018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_33018", trigger_count = 0 }
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
		gadgets = { 33002, 33003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_33012", "CHALLENGE_FAIL_33013", "GADGET_STATE_CHANGE_33014", "ANY_GADGET_DIE_33015", "GADGET_CREATE_33016", "SELECT_OPTION_33017", "GROUP_LOAD_33018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 33004, 33005, 33006, 33007, 33008, 33009, 33010, 33011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 33002 },
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
function action_EVENT_CHALLENGE_SUCCESS_33012(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133316033, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133316033, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为33001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 33001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7323819") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_33013(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为33003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 33003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316033, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33014(context, evt)
	if 33002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33014(context, evt)
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
function condition_EVENT_GADGET_CREATE_33016(context, evt)
	if 33003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_33016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316033, 33003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_33017(context, evt)
	-- 判断是gadgetid 33003 option_id 177
	if 33003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_33017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 33003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 33002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.GearStart) then
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

-- 触发操作
function action_EVENT_GROUP_LOAD_33018(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为33003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 33003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316033, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end