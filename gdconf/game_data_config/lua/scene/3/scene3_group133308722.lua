-- 基础信息
local base_info = {
	group_id = 133308722
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133308722,
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
	{ config_id = 722001, gadget_id = 70211101, pos = { x = -1303.586, y = 56.921, z = 5001.245 }, rot = { x = 12.059, y = 309.511, z = 355.130 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 722002, gadget_id = 70350093, pos = { x = -1350.360, y = 69.106, z = 5043.057 }, rot = { x = 7.748, y = 276.918, z = 353.992 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 722003, gadget_id = 70360001, pos = { x = -1350.360, y = 69.106, z = 5043.057 }, rot = { x = 7.748, y = 276.918, z = 353.992 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 722004, gadget_id = 70290501, pos = { x = -1341.359, y = 76.514, z = 5033.533 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722005, gadget_id = 70290501, pos = { x = -1325.678, y = 80.448, z = 5023.454 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722006, gadget_id = 70290501, pos = { x = -1321.469, y = 79.935, z = 5020.618 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722007, gadget_id = 70290501, pos = { x = -1314.523, y = 88.219, z = 5011.021 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722008, gadget_id = 70290501, pos = { x = -1313.000, y = 88.328, z = 5008.858 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722009, gadget_id = 70290501, pos = { x = -1303.586, y = 92.637, z = 5001.243 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722010, gadget_id = 70290501, pos = { x = -1303.586, y = 89.034, z = 5001.243 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722011, gadget_id = 70290501, pos = { x = -1303.586, y = 83.531, z = 5001.243 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 722019, gadget_id = 70220103, pos = { x = -1342.971, y = 76.514, z = 5034.910 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 722020, gadget_id = 70220103, pos = { x = -1327.767, y = 80.448, z = 5024.813 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 722021, gadget_id = 70220103, pos = { x = -1316.055, y = 87.904, z = 5013.529 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 722023, gadget_id = 70220103, pos = { x = -1303.586, y = 97.462, z = 5001.243 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1722012, name = "CHALLENGE_SUCCESS_722012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_722012", trigger_count = 0 },
	{ config_id = 1722013, name = "CHALLENGE_FAIL_722013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_722013", trigger_count = 0 },
	{ config_id = 1722014, name = "GADGET_STATE_CHANGE_722014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_722014", action = "action_EVENT_GADGET_STATE_CHANGE_722014", trigger_count = 0 },
	{ config_id = 1722015, name = "ANY_GADGET_DIE_722015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1722016, name = "GADGET_CREATE_722016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_722016", action = "action_EVENT_GADGET_CREATE_722016", trigger_count = 0 },
	{ config_id = 1722017, name = "SELECT_OPTION_722017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_722017", action = "action_EVENT_SELECT_OPTION_722017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1722018, name = "GROUP_LOAD_722018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_722018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 722022, gadget_id = 70220103, pos = { x = -1293.002, y = 87.904, z = 5022.397 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 722024, gadget_id = 70220103, pos = { x = -1260.178, y = 87.904, z = 5022.409 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 722025, gadget_id = 70220103, pos = { x = -1236.093, y = 100.803, z = 5022.733 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 722026, gadget_id = 70220103, pos = { x = -1204.511, y = 114.676, z = 5026.125 }, rot = { x = 0.000, y = 18.882, z = 0.000 }, level = 32, area_id = 32 }
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
		gadgets = { 722002, 722003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_722012", "CHALLENGE_FAIL_722013", "GADGET_STATE_CHANGE_722014", "ANY_GADGET_DIE_722015", "GADGET_CREATE_722016", "SELECT_OPTION_722017", "GROUP_LOAD_722018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 722004, 722005, 722006, 722007, 722008, 722009, 722010, 722011, 722019, 722020, 722021, 722023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 722002 },
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
function action_EVENT_CHALLENGE_SUCCESS_722012(context, evt)
	-- 将configid为 722002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 722002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133308722, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308722, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为722001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 722001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_722013(context, evt)
	-- 将configid为 722002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 722002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为722003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 722003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308722, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_722014(context, evt)
	if 722002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_722014(context, evt)
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
function condition_EVENT_GADGET_CREATE_722016(context, evt)
	if 722003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_722016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308722, 722003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_722017(context, evt)
	-- 判断是gadgetid 722003 option_id 177
	if 722003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_722017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 722003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 722002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 722002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-1342.971，76.5142，5034.91），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1342.971, y=76.5142, z=5034.91}
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
function action_EVENT_GROUP_LOAD_722018(context, evt)
	-- 将configid为 722002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 722002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为722003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 722003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308722, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end