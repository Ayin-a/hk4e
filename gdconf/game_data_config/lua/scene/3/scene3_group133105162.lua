-- 基础信息
local base_info = {
	group_id = 133105162
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 2,
	group_id = 133105162,
	gadget_controller_id = 162003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162008, monster_id = 20011501, pos = { x = 719.090, y = 274.046, z = -125.481 }, rot = { x = 353.705, y = 201.087, z = 358.121 }, level = 25, drop_id = 1000100, area_id = 9 },
	{ config_id = 162009, monster_id = 20011501, pos = { x = 718.114, y = 274.775, z = -131.208 }, rot = { x = 6.549, y = 359.971, z = 359.490 }, level = 25, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162002, gadget_id = 70350082, pos = { x = 717.729, y = 273.940, z = -128.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, persistent = true, area_id = 9 },
	{ config_id = 162003, gadget_id = 70360001, pos = { x = 717.747, y = 273.940, z = -128.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 9 },
	{ config_id = 162010, gadget_id = 70211011, pos = { x = 724.372, y = 276.641, z = -129.848 }, rot = { x = 0.398, y = 261.695, z = 5.657 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162001, name = "SELECT_OPTION_162001", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_162001", action = "action_EVENT_SELECT_OPTION_162001", trigger_count = 0 },
	{ config_id = 1162005, name = "CHALLENGE_SUCCESS_162005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_162005" },
	{ config_id = 1162006, name = "CHALLENGE_FAIL_162006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_162006", trigger_count = 0 },
	{ config_id = 1162007, name = "GADGET_CREATE_162007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_162007", action = "action_EVENT_GADGET_CREATE_162007", trigger_count = 0 }
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
		gadgets = { 162002, 162003 },
		regions = { },
		triggers = { "SELECT_OPTION_162001", "CHALLENGE_SUCCESS_162005", "CHALLENGE_FAIL_162006", "GADGET_CREATE_162007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 162008, 162009 },
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
function condition_EVENT_SELECT_OPTION_162001(context, evt)
	-- 判断是gadgetid 162003 option_id 177
	if 162003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_162001(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_162005(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为162010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 162010 }) then
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
function action_EVENT_CHALLENGE_FAIL_162006(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为162003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 162003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105162, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_162007(context, evt)
	if 162003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_162007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105162, 162003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end