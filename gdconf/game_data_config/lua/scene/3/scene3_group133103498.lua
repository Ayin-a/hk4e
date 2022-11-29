-- 基础信息
local base_info = {
	group_id = 133103498
}

-- Trigger变量
local defs = {
	duration = 40,
	kill_sum = 4,
	group_id = 133103498,
	gadget_controller_id = 498003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 498001, monster_id = 21011001, pos = { x = 101.436, y = 191.315, z = 1394.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 498009, monster_id = 21011001, pos = { x = 96.770, y = 191.315, z = 1409.317 }, rot = { x = 0.000, y = 153.560, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 498011, monster_id = 21011201, pos = { x = 98.687, y = 191.315, z = 1397.334 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 498012, monster_id = 21011201, pos = { x = 108.645, y = 191.315, z = 1409.008 }, rot = { x = 0.000, y = 192.610, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 498002, gadget_id = 70350082, pos = { x = 93.219, y = 191.315, z = 1402.230 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 498003, gadget_id = 70360001, pos = { x = 93.219, y = 191.315, z = 1402.230 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 498010, gadget_id = 70360063, pos = { x = 107.327, y = 191.315, z = 1393.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 498013, gadget_id = 70211011, pos = { x = 102.725, y = 191.315, z = 1402.005 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1498004, name = "GADGET_STATE_CHANGE_498004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_498004", action = "action_EVENT_GADGET_STATE_CHANGE_498004" },
	{ config_id = 1498005, name = "CHALLENGE_SUCCESS_498005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_498005" },
	{ config_id = 1498006, name = "CHALLENGE_FAIL_498006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_498006", trigger_count = 0 },
	{ config_id = 1498007, name = "GADGET_CREATE_498007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_498007", action = "action_EVENT_GADGET_CREATE_498007", trigger_count = 0 },
	{ config_id = 1498008, name = "SELECT_OPTION_498008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_498008", action = "action_EVENT_SELECT_OPTION_498008", trigger_count = 0 }
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
		gadgets = { 498002, 498003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_498004", "CHALLENGE_SUCCESS_498005", "CHALLENGE_FAIL_498006", "GADGET_CREATE_498007", "SELECT_OPTION_498008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 498001, 498009, 498011, 498012 },
		gadgets = { 498010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_498004(context, evt)
	if 498002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_498004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_498005(context, evt)
	-- 将configid为 498002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 498002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 改变指定group组133103497中， configid为497031的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103497, 497031, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133103497中， configid为497034的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103497, 497034, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133103497中， configid为497014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103497, 497014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103498, EntityType.GADGET, 498010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为498013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 498013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_498006(context, evt)
	-- 将configid为 498002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 498002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为498003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 498003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103498, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103498, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 改变指定group组133103497中， configid为497034的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103497, 497034, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_498007(context, evt)
	if 498003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_498007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103498, 498003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_498008(context, evt)
	-- 判断是gadgetid 498003 option_id 177
	if 498003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_498008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 498002, GadgetState.GearStart) then
	return -1
	end 
	
	-- 改变指定group组133103497中， configid为497034的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103497, 497034, GadgetState.Default) then
			return -1
		end 
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end