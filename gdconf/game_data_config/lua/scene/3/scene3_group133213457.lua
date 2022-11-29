-- 基础信息
local base_info = {
	group_id = 133213457
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 3,
	group_id = 133213457,
	gadget_controller_id = 457004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 457001, monster_id = 21020801, pos = { x = -3719.879, y = 200.573, z = -3142.544 }, rot = { x = 0.000, y = 58.883, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 457009, monster_id = 21020801, pos = { x = -3711.466, y = 200.530, z = -3127.531 }, rot = { x = 0.000, y = 122.959, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 457010, monster_id = 21020801, pos = { x = -3706.055, y = 200.245, z = -3150.797 }, rot = { x = 0.000, y = 23.202, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 457002, gadget_id = 70350082, pos = { x = -3710.921, y = 200.544, z = -3137.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 12 },
	{ config_id = 457003, gadget_id = 70211031, pos = { x = -3708.241, y = 200.544, z = -3137.377 }, rot = { x = 0.000, y = 288.327, z = 0.000 }, level = 26, drop_tag = "战斗超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 457004, gadget_id = 70360001, pos = { x = -3710.864, y = 201.565, z = -3137.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1457005, name = "CHALLENGE_SUCCESS_457005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_457005", trigger_count = 0 },
	{ config_id = 1457006, name = "CHALLENGE_FAIL_457006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_457006", trigger_count = 0 },
	{ config_id = 1457007, name = "GADGET_CREATE_457007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_457007", action = "action_EVENT_GADGET_CREATE_457007", trigger_count = 0 },
	{ config_id = 1457008, name = "SELECT_OPTION_457008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_457008", action = "action_EVENT_SELECT_OPTION_457008", trigger_count = 0 },
	{ config_id = 1457011, name = "GADGET_CREATE_457011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_457011", action = "action_EVENT_GADGET_CREATE_457011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1457012, name = "GROUP_LOAD_457012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_457012", action = "action_EVENT_GROUP_LOAD_457012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "played", value = 0, no_refresh = true },
	{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
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
		gadgets = { 457002, 457004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_457005", "CHALLENGE_FAIL_457006", "GADGET_CREATE_457007", "SELECT_OPTION_457008", "GADGET_CREATE_457011", "GROUP_LOAD_457012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 457001, 457009, 457010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function action_EVENT_CHALLENGE_SUCCESS_457005(context, evt)
	-- 将本组内变量名为 "played" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "played", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 457002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为457003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 457003 }) then
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
function action_EVENT_CHALLENGE_FAIL_457006(context, evt)
	-- 将configid为 457002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为457004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 457004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213457, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_457007(context, evt)
	if 457004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"played"为0
	if ScriptLib.GetGroupVariableValue(context, "played") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_457007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213457, 457004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_457008(context, evt)
	-- 判断是gadgetid 457004 option_id 177
	if 457004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_457008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_457011(context, evt)
	if 457004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"played"为1
	if ScriptLib.GetGroupVariableValue(context, "played") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_457011(context, evt)
	-- 将configid为 457002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为457003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 457003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_457012(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_457012(context, evt)
	-- 将configid为 457002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为457004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 457004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213457, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end