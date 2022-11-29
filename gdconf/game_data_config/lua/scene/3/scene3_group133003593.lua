-- 基础信息
local base_info = {
	group_id = 133003593
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 4,
	group_id = 133003593,
	gadget_controller_id = 593004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 593001, monster_id = 20010801, pos = { x = 2774.671, y = 258.099, z = -1338.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 1 },
	{ config_id = 593009, monster_id = 20010801, pos = { x = 2781.128, y = 258.099, z = -1330.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 1 },
	{ config_id = 593010, monster_id = 20010801, pos = { x = 2780.664, y = 258.099, z = -1343.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 1 },
	{ config_id = 593011, monster_id = 20010801, pos = { x = 2787.101, y = 258.099, z = -1336.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 593002, gadget_id = 70350082, pos = { x = 2774.467, y = 257.099, z = -1332.937 }, rot = { x = 4.880, y = 67.039, z = 4.906 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 593003, gadget_id = 70211011, pos = { x = 2771.893, y = 256.259, z = -1327.726 }, rot = { x = 350.438, y = 161.472, z = 359.678 }, level = 26, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 593004, gadget_id = 70360001, pos = { x = 2774.609, y = 257.317, z = -1332.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1593005, name = "CHALLENGE_SUCCESS_593005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_593005" },
	{ config_id = 1593006, name = "CHALLENGE_FAIL_593006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_593006", trigger_count = 0 },
	{ config_id = 1593007, name = "GADGET_CREATE_593007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_593007", action = "action_EVENT_GADGET_CREATE_593007", trigger_count = 0 },
	{ config_id = 1593008, name = "SELECT_OPTION_593008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_593008", action = "action_EVENT_SELECT_OPTION_593008", trigger_count = 0 }
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
		gadgets = { 593002, 593004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_593005", "CHALLENGE_FAIL_593006", "GADGET_CREATE_593007", "SELECT_OPTION_593008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 593001, 593009, 593010, 593011 },
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
function action_EVENT_CHALLENGE_SUCCESS_593005(context, evt)
	-- 将configid为 593002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为593003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 593003 }) then
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
function action_EVENT_CHALLENGE_FAIL_593006(context, evt)
	-- 将configid为 593002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为593004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 593004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003593, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_593007(context, evt)
	if 593004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_593007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003593, 593004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_593008(context, evt)
	-- 判断是gadgetid 593004 option_id 177
	if 593004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_593008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end