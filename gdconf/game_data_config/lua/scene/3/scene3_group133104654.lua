-- 基础信息
local base_info = {
	group_id = 133104654
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 2,
	group_id = 133104654,
	gadget_controller_id = 654003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 654001, monster_id = 26030101, pos = { x = 349.827, y = 198.280, z = 871.464 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 6 },
	{ config_id = 654009, monster_id = 26030101, pos = { x = 357.348, y = 196.824, z = 874.417 }, rot = { x = 0.000, y = 224.473, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 654002, gadget_id = 70350082, pos = { x = 354.234, y = 197.501, z = 870.292 }, rot = { x = 4.396, y = 15.867, z = 349.600 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 654003, gadget_id = 70360001, pos = { x = 354.261, y = 197.541, z = 870.324 }, rot = { x = 0.000, y = 16.267, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 654010, gadget_id = 70211021, pos = { x = 354.277, y = 197.464, z = 873.537 }, rot = { x = 1.450, y = 359.844, z = 347.751 }, level = 16, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1654005, name = "CHALLENGE_SUCCESS_654005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_654005" },
	{ config_id = 1654006, name = "CHALLENGE_FAIL_654006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_654006", trigger_count = 0 },
	{ config_id = 1654007, name = "GADGET_CREATE_654007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_654007", action = "action_EVENT_GADGET_CREATE_654007", trigger_count = 0 },
	{ config_id = 1654008, name = "SELECT_OPTION_654008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_654008", action = "action_EVENT_SELECT_OPTION_654008", trigger_count = 0 }
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
		gadgets = { 654002, 654003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_654005", "CHALLENGE_FAIL_654006", "GADGET_CREATE_654007", "SELECT_OPTION_654008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 654001, 654009 },
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
function action_EVENT_CHALLENGE_SUCCESS_654005(context, evt)
	-- 将configid为 654002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为654010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 654010 }) then
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
function action_EVENT_CHALLENGE_FAIL_654006(context, evt)
	-- 将configid为 654002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为654003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 654003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104654, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_654007(context, evt)
	if 654003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_654007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104654, 654003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_654008(context, evt)
	-- 判断是gadgetid 654003 option_id 177
	if 654003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_654008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end