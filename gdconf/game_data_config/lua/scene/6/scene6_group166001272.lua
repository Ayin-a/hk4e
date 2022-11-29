-- 基础信息
local base_info = {
	group_id = 166001272
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 166001272
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
	{ config_id = 272001, gadget_id = 70211111, pos = { x = 985.842, y = 912.020, z = 542.587 }, rot = { x = 0.270, y = 20.120, z = 357.784 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 272002, gadget_id = 70350093, pos = { x = 985.575, y = 912.036, z = 544.789 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 272003, gadget_id = 70290206, pos = { x = 985.574, y = 912.722, z = 544.783 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 272004, gadget_id = 70290352, pos = { x = 991.116, y = 912.637, z = 545.412 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 272005, gadget_id = 70290352, pos = { x = 1004.125, y = 886.902, z = 550.937 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 272006, gadget_id = 70290352, pos = { x = 996.176, y = 907.647, z = 547.811 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 272007, gadget_id = 70290352, pos = { x = 1001.229, y = 893.528, z = 548.790 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 272008, gadget_id = 70290352, pos = { x = 1001.823, y = 901.466, z = 547.416 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 272019, gadget_id = 70690013, pos = { x = 1004.087, y = 876.962, z = 550.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1272012, name = "CHALLENGE_SUCCESS_272012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_272012", trigger_count = 0 },
	{ config_id = 1272013, name = "CHALLENGE_FAIL_272013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_272013", trigger_count = 0 },
	{ config_id = 1272014, name = "GADGET_STATE_CHANGE_272014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272014", action = "action_EVENT_GADGET_STATE_CHANGE_272014", trigger_count = 0 },
	{ config_id = 1272015, name = "ANY_GADGET_DIE_272015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "259" },
	{ config_id = 1272017, name = "GADGET_STATE_CHANGE_272017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272017", action = "action_EVENT_GADGET_STATE_CHANGE_272017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1272018, name = "GROUP_LOAD_272018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_272018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 272009, gadget_id = 70290352, pos = { x = 1024.700, y = 896.614, z = 580.055 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 272010, gadget_id = 70290352, pos = { x = 1029.547, y = 899.250, z = 586.943 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 272011, gadget_id = 70290352, pos = { x = 1035.945, y = 902.975, z = 596.041 }, rot = { x = 0.000, y = 15.601, z = 0.000 }, level = 36, area_id = 300 }
	},
	triggers = {
		{ config_id = 1272016, name = "GADGET_CREATE_272016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_272016", action = "action_EVENT_GADGET_CREATE_272016", trigger_count = 0 },
		{ config_id = 1272020, name = "GADGET_STATE_CHANGE_272020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272020", action = "action_EVENT_GADGET_STATE_CHANGE_272020" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 272002, 272003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_272012", "CHALLENGE_FAIL_272013", "GADGET_STATE_CHANGE_272014", "ANY_GADGET_DIE_272015", "GADGET_STATE_CHANGE_272017", "GROUP_LOAD_272018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 272004, 272005, 272006, 272007, 272008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 272002 },
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
function action_EVENT_CHALLENGE_SUCCESS_272012(context, evt)
	-- 将configid为 272002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 166001272, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001272, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为272001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_272013(context, evt)
	-- 将configid为 272002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为272003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001272, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_272014(context, evt)
	if 272002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_272014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 259, defs.duration, 2, 259, 5) then
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
function condition_EVENT_GADGET_STATE_CHANGE_272017(context, evt)
	if 272003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_272017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 272002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_272018(context, evt)
	-- 将configid为 272002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为272003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001272, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end