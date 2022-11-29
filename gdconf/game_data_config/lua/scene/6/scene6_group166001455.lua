-- 基础信息
local base_info = {
	group_id = 166001455
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 166001455,
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
	{ config_id = 455001, gadget_id = 70211111, pos = { x = 444.275, y = 402.004, z = 591.652 }, rot = { x = 10.714, y = 95.746, z = 350.125 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 455002, gadget_id = 70350093, pos = { x = 450.532, y = 409.053, z = 609.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 300 },
	{ config_id = 455003, gadget_id = 70290206, pos = { x = 450.532, y = 409.846, z = 609.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 455004, gadget_id = 70290352, pos = { x = 453.367, y = 411.123, z = 610.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 455005, gadget_id = 70290352, pos = { x = 458.661, y = 413.915, z = 611.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 455006, gadget_id = 70290352, pos = { x = 464.909, y = 417.148, z = 609.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 455007, gadget_id = 70290352, pos = { x = 469.512, y = 417.775, z = 607.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 455008, gadget_id = 70290352, pos = { x = 474.679, y = 411.656, z = 601.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 455009, gadget_id = 70290352, pos = { x = 469.391, y = 408.420, z = 589.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 455010, gadget_id = 70290352, pos = { x = 457.372, y = 402.726, z = 588.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 455011, gadget_id = 70290352, pos = { x = 446.802, y = 401.578, z = 591.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1455012, name = "CHALLENGE_SUCCESS_455012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_455012", trigger_count = 0 },
	{ config_id = 1455013, name = "CHALLENGE_FAIL_455013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_455013", trigger_count = 0 },
	{ config_id = 1455014, name = "GADGET_STATE_CHANGE_455014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_455014", action = "action_EVENT_GADGET_STATE_CHANGE_455014", trigger_count = 0 },
	{ config_id = 1455015, name = "ANY_GADGET_DIE_455015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1455017, name = "GADGET_STATE_CHANGE_455017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_455017", action = "action_EVENT_GADGET_STATE_CHANGE_455017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1455018, name = "GROUP_LOAD_455018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_455018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1455016, name = "GADGET_CREATE_455016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_455016", action = "action_EVENT_GADGET_CREATE_455016", trigger_count = 0 }
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
		gadgets = { 455002, 455003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_455012", "CHALLENGE_FAIL_455013", "GADGET_STATE_CHANGE_455014", "ANY_GADGET_DIE_455015", "GADGET_STATE_CHANGE_455017", "GROUP_LOAD_455018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 455004, 455005, 455006, 455007, 455008, 455009, 455010, 455011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 455002 },
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
function action_EVENT_CHALLENGE_SUCCESS_455012(context, evt)
	-- 将configid为 455002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 455002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 166001455, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001455, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为455001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 455001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_455013(context, evt)
	-- 将configid为 455002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 455002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为455003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 455003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001455, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_455014(context, evt)
	if 455002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_455014(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_455017(context, evt)
	if 455003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_455017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 455002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 455002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_455018(context, evt)
	-- 将configid为 455002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 455002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为455003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 455003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001455, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end