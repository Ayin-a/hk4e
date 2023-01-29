-- 基础信息
local base_info = {
	group_id = 133314220
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133314220
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
	{ config_id = 220001, gadget_id = 70211101, pos = { x = -372.881, y = 218.451, z = 4285.852 }, rot = { x = 0.000, y = 152.823, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 220002, gadget_id = 70350083, pos = { x = -328.020, y = 316.230, z = 4097.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 22 },
	{ config_id = 220003, gadget_id = 70360001, pos = { x = -328.020, y = 317.195, z = 4097.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 22 },
	{ config_id = 220004, gadget_id = 70690001, pos = { x = -333.488, y = 313.717, z = 4114.879 }, rot = { x = 327.579, y = 150.936, z = 2.191 }, level = 2, area_id = 22 },
	{ config_id = 220012, gadget_id = 70690001, pos = { x = -341.930, y = 304.630, z = 4132.733 }, rot = { x = 330.438, y = 163.474, z = 0.342 }, level = 32, area_id = 22 },
	{ config_id = 220013, gadget_id = 70690001, pos = { x = -346.472, y = 294.782, z = 4152.375 }, rot = { x = 331.676, y = 170.010, z = 356.942 }, level = 32, area_id = 32 },
	{ config_id = 220014, gadget_id = 70690001, pos = { x = -347.517, y = 285.385, z = 4171.605 }, rot = { x = 335.765, y = 176.911, z = 355.113 }, level = 32, area_id = 32 },
	{ config_id = 220015, gadget_id = 70690001, pos = { x = -348.702, y = 278.265, z = 4190.915 }, rot = { x = 335.292, y = 166.068, z = 359.627 }, level = 32, area_id = 32 },
	{ config_id = 220016, gadget_id = 70690001, pos = { x = -353.352, y = 270.462, z = 4209.979 }, rot = { x = 331.234, y = 169.561, z = 180.305 }, level = 32, area_id = 32 },
	{ config_id = 220017, gadget_id = 70690001, pos = { x = -356.996, y = 259.594, z = 4234.195 }, rot = { x = 333.953, y = 171.769, z = 357.261 }, level = 32, area_id = 32 },
	{ config_id = 220018, gadget_id = 70690001, pos = { x = -360.532, y = 249.817, z = 4255.802 }, rot = { x = 324.647, y = 160.082, z = 359.537 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1220005, name = "CHALLENGE_SUCCESS_220005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_220005", trigger_count = 0 },
	{ config_id = 1220006, name = "CHALLENGE_FAIL_220006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_220006", trigger_count = 0 },
	{ config_id = 1220007, name = "GADGET_STATE_CHANGE_220007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220007", action = "action_EVENT_GADGET_STATE_CHANGE_220007", trigger_count = 0 },
	{ config_id = 1220008, name = "GADGET_STATE_CHANGE_220008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220008", action = "", tag = "202" },
	{ config_id = 1220009, name = "GADGET_CREATE_220009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_220009", action = "action_EVENT_GADGET_CREATE_220009", trigger_count = 0 },
	{ config_id = 1220010, name = "SELECT_OPTION_220010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_220010", action = "action_EVENT_SELECT_OPTION_220010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1220011, name = "GROUP_LOAD_220011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_220011", trigger_count = 0 }
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
		gadgets = { 220002, 220003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_220005", "CHALLENGE_FAIL_220006", "GADGET_STATE_CHANGE_220007", "GADGET_STATE_CHANGE_220008", "GADGET_CREATE_220009", "SELECT_OPTION_220010", "GROUP_LOAD_220011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 220001, 220004, 220012, 220013, 220014, 220015, 220016, 220017, 220018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 220002 },
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
function action_EVENT_CHALLENGE_SUCCESS_220005(context, evt)
	-- 将configid为 220002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133314220, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314220, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_220006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314220, 2)
	
	-- 将configid为 220002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为220003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 220003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220007(context, evt)
	if 220002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_220008(context, evt)
	if 220001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_220009(context, evt)
	if 220003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_220009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314220, 220003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_220010(context, evt)
	-- 判断是gadgetid 220003 option_id 177
	if 220003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_220010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 220003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 220002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_220011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314220, 2)
	
	-- 将configid为 220002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为220003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 220003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end