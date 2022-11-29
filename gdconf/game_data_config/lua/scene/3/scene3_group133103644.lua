-- 基础信息
local base_info = {
	group_id = 133103644
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 133103644,
	gadget_sum = 15
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
	{ config_id = 644001, gadget_id = 70220005, pos = { x = 929.021, y = 398.342, z = 1577.630 }, rot = { x = 0.000, y = 277.865, z = 0.000 }, level = 2, persistent = true, area_id = 6 },
	{ config_id = 644002, gadget_id = 70350084, pos = { x = 941.755, y = 376.531, z = 1575.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 6 },
	{ config_id = 644003, gadget_id = 70211123, pos = { x = 938.917, y = 376.200, z = 1575.070 }, rot = { x = 0.000, y = 92.769, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 644004, gadget_id = 70220005, pos = { x = 931.551, y = 399.521, z = 1582.490 }, rot = { x = 0.000, y = 346.389, z = 0.000 }, level = 2, persistent = true, area_id = 6 },
	{ config_id = 644005, gadget_id = 70360001, pos = { x = 941.126, y = 379.188, z = 1574.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 6 },
	{ config_id = 644012, gadget_id = 70310013, pos = { x = 929.117, y = 397.825, z = 1577.280 }, rot = { x = 0.000, y = 202.127, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644013, gadget_id = 70310013, pos = { x = 931.656, y = 398.996, z = 1582.211 }, rot = { x = 0.000, y = 233.902, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644014, gadget_id = 70310013, pos = { x = 936.844, y = 400.314, z = 1584.653 }, rot = { x = 0.000, y = 97.818, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644015, gadget_id = 70310013, pos = { x = 942.378, y = 401.849, z = 1583.837 }, rot = { x = 0.000, y = 128.705, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644016, gadget_id = 70310013, pos = { x = 947.312, y = 403.230, z = 1581.323 }, rot = { x = 0.000, y = 134.801, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644017, gadget_id = 70310013, pos = { x = 937.071, y = 393.629, z = 1564.627 }, rot = { x = 0.000, y = 286.947, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644018, gadget_id = 70310013, pos = { x = 932.666, y = 395.163, z = 1567.512 }, rot = { x = 0.000, y = 136.751, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644019, gadget_id = 70310013, pos = { x = 929.362, y = 396.500, z = 1572.208 }, rot = { x = 0.000, y = 343.961, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644020, gadget_id = 70310013, pos = { x = 952.122, y = 386.743, z = 1576.573 }, rot = { x = 0.000, y = 1.458, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644021, gadget_id = 70310013, pos = { x = 949.841, y = 406.012, z = 1572.148 }, rot = { x = 0.000, y = 22.184, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644022, gadget_id = 70310013, pos = { x = 942.921, y = 392.092, z = 1565.545 }, rot = { x = 2.997, y = 59.266, z = 1.695 }, level = 24, area_id = 6 },
	{ config_id = 644023, gadget_id = 70310013, pos = { x = 950.438, y = 388.766, z = 1571.518 }, rot = { x = 0.000, y = 204.255, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644024, gadget_id = 70690001, pos = { x = 941.945, y = 397.192, z = 1574.678 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 644025, gadget_id = 70690001, pos = { x = 941.945, y = 391.190, z = 1574.678 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 644026, gadget_id = 70690011, pos = { x = 941.945, y = 377.503, z = 1574.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644027, gadget_id = 70690001, pos = { x = 941.945, y = 401.013, z = 1574.678 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 644028, gadget_id = 70310013, pos = { x = 950.514, y = 404.448, z = 1576.814 }, rot = { x = 0.000, y = 174.605, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644029, gadget_id = 70220005, pos = { x = 936.894, y = 400.883, z = 1584.528 }, rot = { x = 0.000, y = 334.435, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644030, gadget_id = 70220005, pos = { x = 942.182, y = 402.427, z = 1583.605 }, rot = { x = 0.000, y = 309.211, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644031, gadget_id = 70220005, pos = { x = 947.110, y = 403.798, z = 1581.235 }, rot = { x = 0.000, y = 277.764, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644032, gadget_id = 70220005, pos = { x = 950.207, y = 405.050, z = 1576.894 }, rot = { x = 0.000, y = 341.215, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644033, gadget_id = 70220005, pos = { x = 950.347, y = 389.255, z = 1571.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644034, gadget_id = 70220005, pos = { x = 937.238, y = 394.205, z = 1564.871 }, rot = { x = 0.000, y = 243.212, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644035, gadget_id = 70220005, pos = { x = 932.376, y = 395.712, z = 1567.408 }, rot = { x = 0.000, y = 64.161, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644036, gadget_id = 70220005, pos = { x = 929.627, y = 397.055, z = 1572.183 }, rot = { x = 0.000, y = 39.018, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644037, gadget_id = 70220005, pos = { x = 952.419, y = 387.271, z = 1576.524 }, rot = { x = 0.000, y = 29.643, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644038, gadget_id = 70220005, pos = { x = 949.841, y = 406.671, z = 1572.148 }, rot = { x = 0.000, y = 335.396, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644039, gadget_id = 70220005, pos = { x = 942.957, y = 392.647, z = 1565.490 }, rot = { x = 0.628, y = 310.247, z = 356.615 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644041, gadget_id = 70310013, pos = { x = 937.340, y = 407.535, z = 1577.473 }, rot = { x = 0.000, y = 198.766, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644045, gadget_id = 70310013, pos = { x = 947.649, y = 407.735, z = 1568.503 }, rot = { x = 0.000, y = 73.133, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644046, gadget_id = 70310013, pos = { x = 937.340, y = 407.685, z = 1577.473 }, rot = { x = 0.000, y = 198.766, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644047, gadget_id = 70220005, pos = { x = 947.408, y = 408.445, z = 1568.443 }, rot = { x = 0.000, y = 309.191, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 644048, gadget_id = 70310013, pos = { x = 947.460, y = 390.248, z = 1567.652 }, rot = { x = 0.000, y = 55.787, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 644049, gadget_id = 70220005, pos = { x = 947.563, y = 390.959, z = 1567.289 }, rot = { x = 0.000, y = 64.161, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 644043, shape = RegionShape.SPHERE, radius = 8, pos = { x = 947.312, y = 382.333, z = 1576.892 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1644006, name = "CHALLENGE_SUCCESS_644006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_644006" },
	{ config_id = 1644007, name = "CHALLENGE_FAIL_644007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_644007", trigger_count = 0 },
	{ config_id = 1644008, name = "GADGET_STATE_CHANGE_644008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_644008", action = "action_EVENT_GADGET_STATE_CHANGE_644008", trigger_count = 0 },
	{ config_id = 1644009, name = "ANY_GADGET_DIE_644009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1644010, name = "GADGET_CREATE_644010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_644010", action = "action_EVENT_GADGET_CREATE_644010", trigger_count = 0 },
	{ config_id = 1644011, name = "SELECT_OPTION_644011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_644011", action = "action_EVENT_SELECT_OPTION_644011", trigger_count = 0 },
	{ config_id = 1644040, name = "GROUP_LOAD_644040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_644040", action = "action_EVENT_GROUP_LOAD_644040", trigger_count = 0 },
	{ config_id = 1644042, name = "GADGET_STATE_CHANGE_644042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_644042", action = "action_EVENT_GADGET_STATE_CHANGE_644042", trigger_count = 0 },
	{ config_id = 1644043, name = "ENTER_REGION_644043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_644043", action = "action_EVENT_ENTER_REGION_644043", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = false },
	{ config_id = 3, name = "fin", value = 0, no_refresh = true }
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
		gadgets = { 644002, 644005 },
		regions = { 644043 },
		triggers = { "CHALLENGE_SUCCESS_644006", "CHALLENGE_FAIL_644007", "GADGET_STATE_CHANGE_644008", "ANY_GADGET_DIE_644009", "GADGET_CREATE_644010", "SELECT_OPTION_644011", "GROUP_LOAD_644040", "GADGET_STATE_CHANGE_644042", "ENTER_REGION_644043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 644001, 644004, 644012, 644013, 644014, 644015, 644016, 644017, 644018, 644019, 644020, 644021, 644022, 644023, 644024, 644025, 644026, 644027, 644028, 644029, 644030, 644031, 644032, 644033, 644034, 644035, 644036, 644037, 644038, 644039, 644045, 644046, 644047, 644048, 644049 },
		regions = { 644043 },
		triggers = { "ENTER_REGION_644043" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 644002 },
		regions = { 644043 },
		triggers = { "ENTER_REGION_644043" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_644006(context, evt)
	-- 将configid为 644002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 644002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 644005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103644, 2)
	
	-- 创建id为644003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 644003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为644041的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 644041 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_644007(context, evt)
	-- 将configid为 644002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 644002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103644, 2)
	
	-- 创建id为644005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 644005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为644041的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 644041 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_644008(context, evt)
	if 644002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_644008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 201, defs.duration, 2, 201, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_644010(context, evt)
	if 644005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_644010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103644, 644005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_644011(context, evt)
	-- 判断是gadgetid 644005 option_id 177
	if 644005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_644011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 644005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 644002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 644002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_644040(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_644040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133103644") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_644042(context, evt)
	if 644003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_644042(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133103644") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103644, 2)
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 644041 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_644043(context, evt)
	if evt.param1 ~= 644043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_644043(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133103644_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end