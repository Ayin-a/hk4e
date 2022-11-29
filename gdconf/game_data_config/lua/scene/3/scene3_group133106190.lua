-- 基础信息
local base_info = {
	group_id = 133106190
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 4,
	group_id = 133106190,
	gadget_controller_id = 190003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 190001, monster_id = 20011101, pos = { x = -876.483, y = 209.981, z = 997.636 }, rot = { x = 358.109, y = 1.755, z = 358.511 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 190008, monster_id = 22010301, pos = { x = -874.639, y = 210.280, z = 993.417 }, rot = { x = 358.109, y = 1.755, z = 358.511 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 190009, monster_id = 21030301, pos = { x = -874.876, y = 210.028, z = 1002.983 }, rot = { x = 1.918, y = 180.726, z = 1.455 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 190010, monster_id = 20011101, pos = { x = -872.335, y = 210.427, z = 997.335 }, rot = { x = 358.109, y = 1.755, z = 358.511 }, level = 32, drop_id = 1000100, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 190002, gadget_id = 70350082, pos = { x = -874.766, y = 209.982, z = 997.706 }, rot = { x = 2.320, y = 0.148, z = 7.311 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 190003, gadget_id = 70360001, pos = { x = -874.874, y = 210.847, z = 997.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 190007, gadget_id = 70211021, pos = { x = -874.913, y = 209.885, z = 1001.518 }, rot = { x = 358.945, y = 180.403, z = 2.798 }, level = 26, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1190005, name = "CHALLENGE_SUCCESS_190005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_190005" },
	{ config_id = 1190006, name = "CHALLENGE_FAIL_190006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_190006", trigger_count = 0 },
	{ config_id = 1190011, name = "GADGET_CREATE_190011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_190011", action = "action_EVENT_GADGET_CREATE_190011", trigger_count = 0 },
	{ config_id = 1190012, name = "SELECT_OPTION_190012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_190012", action = "action_EVENT_SELECT_OPTION_190012", trigger_count = 0 }
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
		gadgets = { 190002, 190003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_190005", "CHALLENGE_FAIL_190006", "GADGET_CREATE_190011", "SELECT_OPTION_190012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 190001, 190008, 190009, 190010 },
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
function action_EVENT_CHALLENGE_SUCCESS_190005(context, evt)
	-- 将configid为 190002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 190002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为190007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 190007 }) then
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
function action_EVENT_CHALLENGE_FAIL_190006(context, evt)
	-- 将configid为 190002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 190002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为190003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 190003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106190, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_190011(context, evt)
	if 190003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_190011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106190, 190003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_190012(context, evt)
	-- 判断是gadgetid 190003 option_id 177
	if 190003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_190012(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 190002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end