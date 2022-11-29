-- 基础信息
local base_info = {
	group_id = 166001317
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 166001317,
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
	{ config_id = 317001, gadget_id = 70211111, pos = { x = 951.725, y = 1026.967, z = 946.307 }, rot = { x = 1.993, y = 134.320, z = 0.226 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 317002, gadget_id = 70350093, pos = { x = 955.797, y = 1026.961, z = 943.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 300 },
	{ config_id = 317004, gadget_id = 70290352, pos = { x = 967.329, y = 1032.338, z = 946.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317005, gadget_id = 70290352, pos = { x = 961.232, y = 1027.547, z = 944.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317006, gadget_id = 70290352, pos = { x = 968.142, y = 1038.608, z = 946.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317007, gadget_id = 70290352, pos = { x = 961.906, y = 1044.259, z = 937.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317008, gadget_id = 70290352, pos = { x = 957.973, y = 1047.405, z = 933.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317009, gadget_id = 70290352, pos = { x = 952.212, y = 1052.473, z = 926.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317010, gadget_id = 70290352, pos = { x = 958.330, y = 1027.176, z = 944.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317011, gadget_id = 70290352, pos = { x = 966.823, y = 1039.927, z = 942.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 300 },
	{ config_id = 317019, gadget_id = 70290206, pos = { x = 955.748, y = 1027.461, z = 943.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1317012, name = "CHALLENGE_SUCCESS_317012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_317012", trigger_count = 0 },
	{ config_id = 1317013, name = "CHALLENGE_FAIL_317013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_317013", trigger_count = 0 },
	{ config_id = 1317014, name = "GADGET_STATE_CHANGE_317014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317014", action = "action_EVENT_GADGET_STATE_CHANGE_317014", trigger_count = 0 },
	{ config_id = 1317015, name = "ANY_GADGET_DIE_317015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1317017, name = "GADGET_STATE_CHANGE_317017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317017", action = "action_EVENT_GADGET_STATE_CHANGE_317017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1317018, name = "GROUP_LOAD_317018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_317018", trigger_count = 0 }
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
		gadgets = { 317002, 317019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_317012", "CHALLENGE_FAIL_317013", "GADGET_STATE_CHANGE_317014", "ANY_GADGET_DIE_317015", "GADGET_STATE_CHANGE_317017", "GROUP_LOAD_317018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 317004, 317005, 317006, 317007, 317008, 317009, 317010, 317011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 317002 },
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
function action_EVENT_CHALLENGE_SUCCESS_317012(context, evt)
	-- 将configid为 317002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 166001317, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001317, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为317001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_317013(context, evt)
	-- 将configid为 317002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为317019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001317, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_317014(context, evt)
	if 317002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317014(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_317017(context, evt)
	if 317019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 317002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_317018(context, evt)
	-- 将configid为 317002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为317019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001317, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end