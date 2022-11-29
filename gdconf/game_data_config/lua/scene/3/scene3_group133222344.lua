-- 基础信息
local base_info = {
	group_id = 133222344
}

-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 6,
	group_id = 133222344,
	gadget_controller_id = 344004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 344001, monster_id = 21010501, pos = { x = -4643.499, y = 204.252, z = -4114.157 }, rot = { x = 0.000, y = 29.223, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 344010, monster_id = 21010501, pos = { x = -4646.213, y = 203.323, z = -4110.976 }, rot = { x = 0.000, y = 89.732, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 344011, monster_id = 21010901, pos = { x = -4635.913, y = 200.877, z = -4095.925 }, rot = { x = 0.000, y = 163.492, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 344012, monster_id = 21010901, pos = { x = -4633.411, y = 200.778, z = -4096.882 }, rot = { x = 0.000, y = 196.012, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 344013, monster_id = 21011001, pos = { x = -4629.807, y = 201.950, z = -4113.149 }, rot = { x = 0.000, y = 292.684, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 344014, monster_id = 21011001, pos = { x = -4628.585, y = 201.541, z = -4110.696 }, rot = { x = 0.000, y = 281.374, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 344002, gadget_id = 70350082, pos = { x = -4637.338, y = 201.772, z = -4107.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 344003, gadget_id = 70211001, pos = { x = -4642.816, y = 201.656, z = -4096.690 }, rot = { x = 0.000, y = 147.029, z = 7.933 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 344004, gadget_id = 70360001, pos = { x = -4637.706, y = 202.341, z = -4106.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1344005, name = "GROUP_LOAD_344005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_344005", action = "action_EVENT_GROUP_LOAD_344005", trigger_count = 0 },
	{ config_id = 1344006, name = "CHALLENGE_SUCCESS_344006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_344006", trigger_count = 0 },
	{ config_id = 1344007, name = "CHALLENGE_FAIL_344007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_344007", trigger_count = 0 },
	{ config_id = 1344008, name = "GADGET_CREATE_344008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_344008", action = "action_EVENT_GADGET_CREATE_344008", trigger_count = 0 },
	{ config_id = 1344009, name = "SELECT_OPTION_344009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_344009", action = "action_EVENT_SELECT_OPTION_344009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 344002, 344004 },
		regions = { },
		triggers = { "GROUP_LOAD_344005", "CHALLENGE_SUCCESS_344006", "CHALLENGE_FAIL_344007", "GADGET_CREATE_344008", "SELECT_OPTION_344009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 344001, 344010, 344011, 344012, 344013, 344014 },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_344005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_344005(context, evt)
	-- 将configid为 344002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为344004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 344004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222344, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_344006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 344002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为344003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 344003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_344007(context, evt)
	-- 将configid为 344002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为344004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 344004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222344, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_344008(context, evt)
	if 344004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_344008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222344, 344004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_344009(context, evt)
	-- 判断是gadgetid 344004 option_id 177
	if 344004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_344009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end