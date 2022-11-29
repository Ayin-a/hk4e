-- 基础信息
local base_info = {
	group_id = 133106200
}

-- Trigger变量
local defs = {
	duration = 50,
	kill_sum = 3,
	group_id = 133106200,
	gadget_controller_id = 200003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 200001, monster_id = 20010901, pos = { x = -650.416, y = 259.346, z = 613.180 }, rot = { x = 0.000, y = 317.460, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 7 },
	{ config_id = 200008, monster_id = 20010901, pos = { x = -660.254, y = 260.531, z = 610.752 }, rot = { x = 0.000, y = 18.874, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 7 },
	{ config_id = 200009, monster_id = 26010101, pos = { x = -656.924, y = 259.230, z = 619.885 }, rot = { x = 0.000, y = 173.588, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 200002, gadget_id = 70350082, pos = { x = -656.418, y = 259.365, z = 616.235 }, rot = { x = 3.573, y = 359.916, z = 357.316 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 200003, gadget_id = 70360001, pos = { x = -656.415, y = 259.359, z = 616.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 200007, gadget_id = 70211021, pos = { x = -650.901, y = 259.095, z = 617.235 }, rot = { x = 353.696, y = 261.062, z = 0.089 }, level = 21, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1200005, name = "CHALLENGE_SUCCESS_200005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_200005" },
	{ config_id = 1200006, name = "CHALLENGE_FAIL_200006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_200006", trigger_count = 0 },
	{ config_id = 1200010, name = "GADGET_CREATE_200010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_200010", action = "action_EVENT_GADGET_CREATE_200010", trigger_count = 0 },
	{ config_id = 1200011, name = "SELECT_OPTION_200011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_200011", action = "action_EVENT_SELECT_OPTION_200011", trigger_count = 0 }
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
		gadgets = { 200002, 200003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_200005", "CHALLENGE_FAIL_200006", "GADGET_CREATE_200010", "SELECT_OPTION_200011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 200001, 200008, 200009 },
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
function action_EVENT_CHALLENGE_SUCCESS_200005(context, evt)
	-- 将configid为 200002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为200007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200007 }) then
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
function action_EVENT_CHALLENGE_FAIL_200006(context, evt)
	-- 将configid为 200002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为200003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106200, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_200010(context, evt)
	if 200003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_200010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106200, 200003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_200011(context, evt)
	-- 判断是gadgetid 200003 option_id 177
	if 200003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_200011(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end