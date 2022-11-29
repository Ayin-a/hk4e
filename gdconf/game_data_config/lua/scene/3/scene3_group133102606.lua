-- 基础信息
local base_info = {
	group_id = 133102606
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 4,
	group_id = 133102606,
	gadget_controller_id = 606003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 606001, monster_id = 21011201, pos = { x = 1459.147, y = 227.705, z = 414.359 }, rot = { x = 0.000, y = 84.102, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 606008, monster_id = 21011201, pos = { x = 1462.920, y = 228.599, z = 417.873 }, rot = { x = 0.000, y = 175.661, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 606009, monster_id = 21011201, pos = { x = 1465.656, y = 228.911, z = 414.438 }, rot = { x = 0.000, y = 265.643, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 606010, monster_id = 21011201, pos = { x = 1461.856, y = 228.115, z = 411.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 606002, gadget_id = 70350082, pos = { x = 1462.522, y = 227.841, z = 414.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 606003, gadget_id = 70360001, pos = { x = 1462.619, y = 228.104, z = 414.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 5 },
	{ config_id = 606007, gadget_id = 70211011, pos = { x = 1459.934, y = 227.430, z = 411.718 }, rot = { x = 352.958, y = 31.754, z = 10.518 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1606005, name = "CHALLENGE_SUCCESS_606005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_606005" },
	{ config_id = 1606006, name = "CHALLENGE_FAIL_606006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_606006", trigger_count = 0 },
	{ config_id = 1606011, name = "GADGET_CREATE_606011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_606011", action = "action_EVENT_GADGET_CREATE_606011", trigger_count = 0 },
	{ config_id = 1606012, name = "SELECT_OPTION_606012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_606012", action = "action_EVENT_SELECT_OPTION_606012", trigger_count = 0 }
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
		gadgets = { 606002, 606003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_606005", "CHALLENGE_FAIL_606006", "GADGET_CREATE_606011", "SELECT_OPTION_606012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 606001, 606008, 606009, 606010 },
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
function action_EVENT_CHALLENGE_SUCCESS_606005(context, evt)
	-- 将configid为 606002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为606007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606007 }) then
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
function action_EVENT_CHALLENGE_FAIL_606006(context, evt)
	-- 将configid为 606002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为606003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102606, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_606011(context, evt)
	if 606003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_606011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102606, 606003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_606012(context, evt)
	-- 判断是gadgetid 606003 option_id 177
	if 606003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_606012(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end