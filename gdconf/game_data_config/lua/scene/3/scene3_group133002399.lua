-- 基础信息
local base_info = {
	group_id = 133002399
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 3,
	group_id = 133002399,
	gadget_controller_id = 399004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 399001, monster_id = 22010201, pos = { x = 1878.045, y = 248.672, z = -999.037 }, rot = { x = 0.000, y = 332.961, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 399009, monster_id = 22010301, pos = { x = 1875.186, y = 248.788, z = -985.621 }, rot = { x = 0.000, y = 209.544, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 399010, monster_id = 22010101, pos = { x = 1868.104, y = 248.736, z = -992.882 }, rot = { x = 0.000, y = 90.293, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 399002, gadget_id = 70350082, pos = { x = 1874.572, y = 248.775, z = -992.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 399003, gadget_id = 70211021, pos = { x = 1874.529, y = 248.779, z = -989.439 }, rot = { x = 0.000, y = 178.939, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 399004, gadget_id = 70360001, pos = { x = 1874.563, y = 249.244, z = -992.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1399005, name = "CHALLENGE_SUCCESS_399005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_399005" },
	{ config_id = 1399006, name = "CHALLENGE_FAIL_399006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_399006", trigger_count = 0 },
	{ config_id = 1399007, name = "GADGET_CREATE_399007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_399007", action = "action_EVENT_GADGET_CREATE_399007", trigger_count = 0 },
	{ config_id = 1399008, name = "SELECT_OPTION_399008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_399008", action = "action_EVENT_SELECT_OPTION_399008", trigger_count = 0 },
	{ config_id = 1399011, name = "ANY_MONSTER_DIE_399011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_399011", action = "action_EVENT_ANY_MONSTER_DIE_399011" }
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
		gadgets = { 399002, 399004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_399005", "CHALLENGE_FAIL_399006", "GADGET_CREATE_399007", "SELECT_OPTION_399008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 399010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_399011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 399001, 399009 },
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
function action_EVENT_CHALLENGE_SUCCESS_399005(context, evt)
	-- 将configid为 399002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 399002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为399003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 399003 }) then
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
function action_EVENT_CHALLENGE_FAIL_399006(context, evt)
	-- 将configid为 399002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 399002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为399004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 399004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002399, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002399, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_399007(context, evt)
	if 399004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_399007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002399, 399004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_399008(context, evt)
	-- 判断是gadgetid 399004 option_id 177
	if 399004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_399008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 399002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_399011(context, evt)
	if 399010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_399011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002399, 3)
	
	return 0
end