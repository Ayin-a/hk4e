-- 基础信息
local base_info = {
	group_id = 133210021
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 3,
	group_id = 133210021,
	gadget_controller_id = 21004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 25080101, pos = { x = -3912.970, y = 200.711, z = -1158.209 }, rot = { x = 0.000, y = 258.472, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 17 },
	{ config_id = 21009, monster_id = 25080101, pos = { x = -3918.784, y = 201.067, z = -1154.059 }, rot = { x = 0.000, y = 162.586, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 1, area_id = 17 },
	{ config_id = 21010, monster_id = 25010501, pos = { x = -3927.000, y = 201.623, z = -1163.566 }, rot = { x = 0.000, y = 47.567, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21002, gadget_id = 70350082, pos = { x = -3918.428, y = 201.200, z = -1159.855 }, rot = { x = 0.000, y = 0.098, z = 0.000 }, level = 32, persistent = true, area_id = 17 },
	{ config_id = 21003, gadget_id = 70211001, pos = { x = -3914.662, y = 200.451, z = -1165.796 }, rot = { x = 353.938, y = 335.831, z = 1.739 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 21004, gadget_id = 70360001, pos = { x = -3918.436, y = 202.087, z = -1159.869 }, rot = { x = 356.891, y = 359.846, z = 3.269 }, level = 32, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021005, name = "CHALLENGE_SUCCESS_21005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_21005", trigger_count = 0 },
	{ config_id = 1021006, name = "CHALLENGE_FAIL_21006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_21006", trigger_count = 0 },
	{ config_id = 1021007, name = "GADGET_CREATE_21007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_21007", action = "action_EVENT_GADGET_CREATE_21007", trigger_count = 0 },
	{ config_id = 1021008, name = "SELECT_OPTION_21008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21008", action = "action_EVENT_SELECT_OPTION_21008", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1021011, name = "GROUP_LOAD_21011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_21011", action = "action_EVENT_GROUP_LOAD_21011", trigger_count = 0 }
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
		gadgets = { 21002, 21004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_21005", "CHALLENGE_FAIL_21006", "GADGET_CREATE_21007", "SELECT_OPTION_21008", "GROUP_LOAD_21011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 21001, 21009, 21010 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_21005(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 21002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为21003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21003 }) then
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
function action_EVENT_CHALLENGE_FAIL_21006(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为21004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210021, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_21007(context, evt)
	if 21004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_21007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210021, 21004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_21008(context, evt)
	-- 判断是gadgetid 21004 option_id 177
	if 21004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_21011(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21011(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为21004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210021, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end