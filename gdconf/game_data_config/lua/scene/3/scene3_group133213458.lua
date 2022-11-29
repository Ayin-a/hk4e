-- 基础信息
local base_info = {
	group_id = 133213458
}

-- Trigger变量
local defs = {
	duration = 40,
	kill_sum = 1,
	group_id = 133213458,
	gadget_controller_id = 458003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 458001, monster_id = 21020801, pos = { x = -3533.657, y = 200.793, z = -3032.471 }, rot = { x = 0.000, y = 126.430, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 458002, gadget_id = 70350082, pos = { x = -3524.929, y = 200.304, z = -3038.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 12 },
	{ config_id = 458003, gadget_id = 70360001, pos = { x = -3524.937, y = 201.322, z = -3038.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 12 },
	{ config_id = 458004, gadget_id = 70220069, pos = { x = -3523.984, y = 200.267, z = -3042.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1458005, name = "CHALLENGE_SUCCESS_458005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "874", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_458005" },
	{ config_id = 1458006, name = "CHALLENGE_FAIL_458006", event = EventType.EVENT_CHALLENGE_FAIL, source = "874", condition = "", action = "action_EVENT_CHALLENGE_FAIL_458006", trigger_count = 0 },
	{ config_id = 1458007, name = "GADGET_CREATE_458007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_458007", action = "action_EVENT_GADGET_CREATE_458007", trigger_count = 0 },
	{ config_id = 1458008, name = "SELECT_OPTION_458008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_458008", action = "action_EVENT_SELECT_OPTION_458008", trigger_count = 0 },
	{ config_id = 1458009, name = "GADGET_STATE_CHANGE_458009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_458009", action = "action_EVENT_GADGET_STATE_CHANGE_458009" },
	{ config_id = 1458010, name = "GROUP_LOAD_458010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_458010", action = "action_EVENT_GROUP_LOAD_458010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 458002, 458003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_458005", "CHALLENGE_FAIL_458006", "GADGET_CREATE_458007", "SELECT_OPTION_458008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 458001 },
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
		triggers = { "GADGET_STATE_CHANGE_458009", "GROUP_LOAD_458010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_458005(context, evt)
	-- 将configid为 458002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
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
function action_EVENT_CHALLENGE_FAIL_458006(context, evt)
	-- 将configid为 458002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为458003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 458003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213458, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_458007(context, evt)
	if 458003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_458007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213458, 458003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_458008(context, evt)
	-- 判断是gadgetid 458003 option_id 177
	if 458003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_458008(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 874, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_458009(context, evt)
	if 458004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_458009(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213458, 1)
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_458010(context, evt)
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_458010(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213458, 1)
	
	return 0
end

require "V2_0/TreasureMapEventV2"