-- 基础信息
local base_info = {
	group_id = 133102599
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 6,
	group_id = 133102599,
	gadget_controller_id = 599003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 599001, monster_id = 20010801, pos = { x = 1888.709, y = 216.030, z = 648.243 }, rot = { x = 0.000, y = 303.480, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 599008, monster_id = 20010801, pos = { x = 1888.034, y = 216.030, z = 653.230 }, rot = { x = 0.000, y = 234.944, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 599009, monster_id = 20010801, pos = { x = 1882.957, y = 216.030, z = 654.875 }, rot = { x = 0.000, y = 152.356, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 599010, monster_id = 20010801, pos = { x = 1879.500, y = 216.036, z = 651.222 }, rot = { x = 0.138, y = 100.066, z = 358.702 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 599011, monster_id = 20010801, pos = { x = 1880.816, y = 216.030, z = 646.777 }, rot = { x = 0.000, y = 41.076, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 },
	{ config_id = 599012, monster_id = 20010801, pos = { x = 1884.653, y = 216.030, z = 645.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 599002, gadget_id = 70350082, pos = { x = 1884.357, y = 215.680, z = 650.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 599003, gadget_id = 70360001, pos = { x = 1884.287, y = 216.030, z = 650.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 5 },
	{ config_id = 599007, gadget_id = 70211011, pos = { x = 1884.462, y = 215.717, z = 654.138 }, rot = { x = 0.000, y = 177.403, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1599005, name = "CHALLENGE_SUCCESS_599005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_599005" },
	{ config_id = 1599006, name = "CHALLENGE_FAIL_599006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_599006", trigger_count = 0 },
	{ config_id = 1599013, name = "GADGET_CREATE_599013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_599013", action = "action_EVENT_GADGET_CREATE_599013", trigger_count = 0 },
	{ config_id = 1599014, name = "SELECT_OPTION_599014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_599014", action = "action_EVENT_SELECT_OPTION_599014", trigger_count = 0 }
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
		gadgets = { 599002, 599003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_599005", "CHALLENGE_FAIL_599006", "GADGET_CREATE_599013", "SELECT_OPTION_599014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 599001, 599008, 599009, 599010, 599011, 599012 },
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
function action_EVENT_CHALLENGE_SUCCESS_599005(context, evt)
	-- 将configid为 599002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为599007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599007 }) then
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
function action_EVENT_CHALLENGE_FAIL_599006(context, evt)
	-- 将configid为 599002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为599003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102599, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_599013(context, evt)
	if 599003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_599013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102599, 599003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_599014(context, evt)
	-- 判断是gadgetid 599003 option_id 177
	if 599003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_599014(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end