-- 基础信息
local base_info = {
	group_id = 133104079
}

-- Trigger变量
local defs = {
	duration = 45,
	kill_sum = 4,
	group_id = 133104079,
	gadget_controller_id = 79003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79001, monster_id = 21010901, pos = { x = 634.796, y = 201.394, z = 160.768 }, rot = { x = 0.000, y = 244.244, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 79008, monster_id = 21010901, pos = { x = 614.489, y = 200.604, z = 155.991 }, rot = { x = 0.000, y = 55.620, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 79009, monster_id = 21011001, pos = { x = 634.611, y = 200.114, z = 152.079 }, rot = { x = 0.000, y = 313.245, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 79010, monster_id = 21010501, pos = { x = 626.190, y = 200.187, z = 163.614 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79002, gadget_id = 70350082, pos = { x = 626.435, y = 199.647, z = 155.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 79003, gadget_id = 70360001, pos = { x = 626.453, y = 200.520, z = 155.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 9 },
	{ config_id = 79004, gadget_id = 70211011, pos = { x = 626.072, y = 200.128, z = 162.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 79011, gadget_id = 70220005, pos = { x = 633.359, y = 200.254, z = 161.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 79012, gadget_id = 70220005, pos = { x = 616.016, y = 199.880, z = 156.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079005, name = "CHALLENGE_SUCCESS_79005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_79005" },
	{ config_id = 1079006, name = "CHALLENGE_FAIL_79006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_79006", trigger_count = 0 },
	{ config_id = 1079007, name = "GADGET_CREATE_79007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79007", action = "action_EVENT_GADGET_CREATE_79007", trigger_count = 0 },
	{ config_id = 1079013, name = "SELECT_OPTION_79013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79013", action = "action_EVENT_SELECT_OPTION_79013", trigger_count = 0 }
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
		gadgets = { 79002, 79003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_79005", "CHALLENGE_FAIL_79006", "GADGET_CREATE_79007", "SELECT_OPTION_79013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 79001, 79008, 79009, 79010 },
		gadgets = { 79011, 79012 },
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
function action_EVENT_CHALLENGE_SUCCESS_79005(context, evt)
	-- 将configid为 79002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为79004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 79004 }) then
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
function action_EVENT_CHALLENGE_FAIL_79006(context, evt)
	-- 将configid为 79002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为79003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 79003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104079, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_79007(context, evt)
	if 79003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104079, 79003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79013(context, evt)
	-- 判断是gadgetid 79003 option_id 177
	if 79003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79013(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end