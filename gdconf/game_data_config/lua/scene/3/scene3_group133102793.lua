-- 基础信息
local base_info = {
	group_id = 133102793
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 133102793,
	gadget_controller_id = 793004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 793001, monster_id = 21010601, pos = { x = 1309.679, y = 201.784, z = 179.306 }, rot = { x = 0.000, y = 96.778, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 793009, monster_id = 21010601, pos = { x = 1318.890, y = 201.249, z = 170.892 }, rot = { x = 0.000, y = 348.950, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 793010, monster_id = 21010601, pos = { x = 1322.967, y = 202.039, z = 184.959 }, rot = { x = 0.000, y = 225.802, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 793002, gadget_id = 70350082, pos = { x = 1317.158, y = 199.232, z = 179.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 793003, gadget_id = 70211011, pos = { x = 1319.296, y = 200.559, z = 168.807 }, rot = { x = 343.232, y = 2.539, z = 342.901 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 793004, gadget_id = 70360001, pos = { x = 1317.149, y = 200.074, z = 179.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1793005, name = "CHALLENGE_SUCCESS_793005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_793005" },
	{ config_id = 1793006, name = "CHALLENGE_FAIL_793006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_793006", trigger_count = 0 },
	{ config_id = 1793007, name = "GADGET_CREATE_793007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_793007", action = "action_EVENT_GADGET_CREATE_793007", trigger_count = 0 },
	{ config_id = 1793008, name = "SELECT_OPTION_793008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_793008", action = "action_EVENT_SELECT_OPTION_793008", trigger_count = 0 }
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
		gadgets = { 793002, 793004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_793005", "CHALLENGE_FAIL_793006", "GADGET_CREATE_793007", "SELECT_OPTION_793008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 793001, 793009, 793010 },
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
function action_EVENT_CHALLENGE_SUCCESS_793005(context, evt)
	-- 将configid为 793002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为793003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 793003 }) then
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
function action_EVENT_CHALLENGE_FAIL_793006(context, evt)
	-- 将configid为 793002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为793004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 793004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102793, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_793007(context, evt)
	if 793004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_793007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102793, 793004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_793008(context, evt)
	-- 判断是gadgetid 793004 option_id 177
	if 793004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_793008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end