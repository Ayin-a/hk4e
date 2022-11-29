-- 基础信息
local base_info = {
	group_id = 133102296
}

-- Trigger变量
local defs = {
	duration = 45,
	kill_sum = 6,
	group_id = 133102296,
	gadget_controller_id = 296004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296001, monster_id = 20010901, pos = { x = 1226.358, y = 200.000, z = 38.319 }, rot = { x = 0.000, y = 320.163, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 296008, monster_id = 20010801, pos = { x = 1219.927, y = 200.000, z = 47.221 }, rot = { x = 0.000, y = 173.111, z = 0.000 }, level = 14, drop_id = 1000100, area_id = 5 },
	{ config_id = 296009, monster_id = 20010801, pos = { x = 1225.343, y = 200.000, z = 47.547 }, rot = { x = 0.000, y = 186.855, z = 0.000 }, level = 14, drop_id = 1000100, area_id = 5 },
	{ config_id = 296010, monster_id = 20010801, pos = { x = 1228.934, y = 200.000, z = 43.071 }, rot = { x = 0.000, y = 258.941, z = 0.000 }, level = 14, drop_id = 1000100, area_id = 5 },
	{ config_id = 296011, monster_id = 20010801, pos = { x = 1216.825, y = 200.000, z = 42.062 }, rot = { x = 0.000, y = 93.680, z = 0.000 }, level = 11, drop_id = 1000100, area_id = 5 },
	{ config_id = 296012, monster_id = 20010801, pos = { x = 1221.523, y = 200.000, z = 36.810 }, rot = { x = 0.000, y = 355.796, z = 0.000 }, level = 11, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296002, gadget_id = 70350082, pos = { x = 1222.724, y = 199.372, z = 42.600 }, rot = { x = 1.262, y = 0.118, z = 1.643 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 296003, gadget_id = 70211011, pos = { x = 1232.676, y = 200.038, z = 41.495 }, rot = { x = 0.092, y = 293.942, z = 1.999 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 296004, gadget_id = 70360001, pos = { x = 1222.661, y = 199.457, z = 42.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1296005, name = "CHALLENGE_SUCCESS_296005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_296005" },
	{ config_id = 1296006, name = "CHALLENGE_FAIL_296006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_296006", trigger_count = 0 },
	{ config_id = 1296013, name = "GADGET_CREATE_296013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_296013", action = "action_EVENT_GADGET_CREATE_296013", trigger_count = 0 },
	{ config_id = 1296014, name = "SELECT_OPTION_296014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_296014", action = "action_EVENT_SELECT_OPTION_296014", trigger_count = 0 }
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
		gadgets = { 296002, 296004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_296005", "CHALLENGE_FAIL_296006", "GADGET_CREATE_296013", "SELECT_OPTION_296014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 296001, 296008, 296009, 296010, 296011, 296012 },
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
function action_EVENT_CHALLENGE_SUCCESS_296005(context, evt)
	-- 将configid为 296002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为296003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 296003 }) then
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
function action_EVENT_CHALLENGE_FAIL_296006(context, evt)
	-- 将configid为 296002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为296004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 296004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102296, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_296013(context, evt)
	if 296004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_296013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102296, 296004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_296014(context, evt)
	-- 判断是gadgetid 296004 option_id 177
	if 296004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_296014(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end