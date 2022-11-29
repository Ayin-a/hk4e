-- 基础信息
local base_info = {
	group_id = 133007217
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 133007217,
	gadget_controller_id = 217003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217009, monster_id = 20011101, pos = { x = 2300.304, y = 230.191, z = -50.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 4 },
	{ config_id = 217010, monster_id = 20011001, pos = { x = 2296.705, y = 231.132, z = -59.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 4 },
	{ config_id = 217011, monster_id = 20011001, pos = { x = 2291.906, y = 230.580, z = -52.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 217001, gadget_id = 70211011, pos = { x = 2296.531, y = 230.310, z = -52.271 }, rot = { x = 6.775, y = 0.114, z = 1.926 }, level = 21, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 217002, gadget_id = 70350082, pos = { x = 2296.795, y = 230.849, z = -56.585 }, rot = { x = 6.191, y = 0.068, z = 1.264 }, level = 23, persistent = true, area_id = 4 },
	{ config_id = 217003, gadget_id = 70360001, pos = { x = 2296.813, y = 231.516, z = -56.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217005, name = "CHALLENGE_SUCCESS_217005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_217005" },
	{ config_id = 1217006, name = "CHALLENGE_FAIL_217006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_217006", trigger_count = 0 },
	{ config_id = 1217007, name = "GADGET_CREATE_217007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_217007", action = "action_EVENT_GADGET_CREATE_217007", trigger_count = 0 },
	{ config_id = 1217008, name = "SELECT_OPTION_217008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_217008", action = "action_EVENT_SELECT_OPTION_217008", trigger_count = 0 }
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
		gadgets = { 217002, 217003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_217005", "CHALLENGE_FAIL_217006", "GADGET_CREATE_217007", "SELECT_OPTION_217008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 217009, 217010, 217011 },
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
function action_EVENT_CHALLENGE_SUCCESS_217005(context, evt)
	-- 将configid为 217002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为217001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 217001 }) then
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
function action_EVENT_CHALLENGE_FAIL_217006(context, evt)
	-- 将configid为 217002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为217003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 217003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133007217, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_217007(context, evt)
	if 217003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_217007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133007217, 217003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_217008(context, evt)
	-- 判断是gadgetid 217003 option_id 177
	if 217003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_217008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end