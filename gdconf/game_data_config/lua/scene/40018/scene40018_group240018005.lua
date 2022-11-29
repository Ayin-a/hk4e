-- 基础信息
local base_info = {
	group_id = 240018005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20011401, pos = { x = -85.029, y = 117.547, z = 111.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, monster_id = 20011401, pos = { x = -83.565, y = 117.526, z = 105.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 20011401, pos = { x = -80.736, y = 117.510, z = 108.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, monster_id = 20011401, pos = { x = -14.348, y = 111.606, z = 64.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, monster_id = 20011401, pos = { x = -21.804, y = 111.615, z = 72.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 20011401, pos = { x = -15.223, y = 111.628, z = 71.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, monster_id = 20011401, pos = { x = -105.919, y = 111.750, z = 32.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 20011401, pos = { x = -96.288, y = 111.761, z = 34.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 20011401, pos = { x = -101.685, y = 111.759, z = 38.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, monster_id = 21020301, pos = { x = -91.637, y = 117.526, z = 109.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 21011201, pos = { x = -85.332, y = 117.527, z = 104.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5012, monster_id = 21011201, pos = { x = -81.363, y = 117.509, z = 107.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5013, monster_id = 21011201, pos = { x = -84.282, y = 117.525, z = 112.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5014, monster_id = 21011201, pos = { x = -86.991, y = 117.539, z = 112.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5015, monster_id = 21010201, pos = { x = -99.904, y = 111.734, z = 27.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5016, monster_id = 21010201, pos = { x = -94.646, y = 111.731, z = 34.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5017, monster_id = 21010201, pos = { x = -22.223, y = 111.607, z = 64.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5018, monster_id = 21010201, pos = { x = -17.174, y = 111.626, z = 72.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, monster_id = 21010201, pos = { x = -11.763, y = 111.593, z = 64.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5020, monster_id = 21010201, pos = { x = -25.115, y = 111.593, z = 69.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5021, monster_id = 21010501, pos = { x = -107.924, y = 111.724, z = 31.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5022, monster_id = 21010501, pos = { x = -96.428, y = 111.659, z = 28.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5023, monster_id = 21030401, pos = { x = -102.436, y = 111.725, z = 27.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5024, monster_id = 21011201, pos = { x = -103.196, y = 111.748, z = 38.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5025, monster_id = 21011201, pos = { x = -95.819, y = 111.743, z = 36.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5026, monster_id = 21010201, pos = { x = -90.354, y = 117.542, z = 107.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5027, monster_id = 21010201, pos = { x = -84.451, y = 117.514, z = 113.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5028, monster_id = 21020101, pos = { x = -17.743, y = 111.638, z = 64.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5029, monster_id = 21010301, pos = { x = -12.877, y = 111.608, z = 67.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5030, monster_id = 21010301, pos = { x = -23.586, y = 111.617, z = 68.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5031, monster_id = 21010301, pos = { x = -13.476, y = 111.594, z = 72.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5032, monster_id = 21010301, pos = { x = -22.347, y = 111.593, z = 73.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5033, monster_id = 21010301, pos = { x = -82.835, y = 117.518, z = 111.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5034, monster_id = 21010301, pos = { x = -87.306, y = 117.548, z = 105.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5035, monster_id = 21010301, pos = { x = -95.559, y = 111.735, z = 30.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5036, monster_id = 21010301, pos = { x = -106.501, y = 111.724, z = 37.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5037, monster_id = 20011501, pos = { x = -106.741, y = 111.738, z = 33.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5038, monster_id = 20011501, pos = { x = -101.877, y = 111.738, z = 28.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5039, monster_id = 20011401, pos = { x = -101.317, y = 111.733, z = 40.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5040, monster_id = 20011401, pos = { x = -95.009, y = 111.722, z = 29.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5041, monster_id = 20011401, pos = { x = -96.640, y = 111.739, z = 38.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5042, monster_id = 20011501, pos = { x = -11.914, y = 111.696, z = 68.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5043, monster_id = 20011501, pos = { x = -86.248, y = 117.512, z = 114.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5044, monster_id = 21020301, pos = { x = -87.354, y = 117.531, z = 104.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5045, monster_id = 21020301, pos = { x = -91.020, y = 117.510, z = 112.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5046, monster_id = 20011501, pos = { x = -81.710, y = 117.510, z = 111.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5048, monster_id = 21011201, pos = { x = -106.958, y = 111.727, z = 36.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5049, monster_id = 21011201, pos = { x = -95.595, y = 111.723, z = 29.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5050, monster_id = 21011201, pos = { x = -24.164, y = 111.597, z = 66.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5051, monster_id = 21011201, pos = { x = -12.513, y = 111.596, z = 69.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5063, gadget_id = 70350035, pos = { x = -87.000, y = 117.600, z = 108.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5064, gadget_id = 70350035, pos = { x = -100.800, y = 111.800, z = 34.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5065, gadget_id = 70350035, pos = { x = -18.400, y = 111.700, z = 68.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005052, name = "VARIABLE_CHANGE_5052", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_5052", action = "action_EVENT_VARIABLE_CHANGE_5052" },
	{ config_id = 1005053, name = "VARIABLE_CHANGE_5053", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_5053", action = "action_EVENT_VARIABLE_CHANGE_5053" },
	{ config_id = 1005054, name = "VARIABLE_CHANGE_5054", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_5054", action = "action_EVENT_VARIABLE_CHANGE_5054" },
	{ config_id = 1005055, name = "VARIABLE_CHANGE_5055", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_5055", action = "action_EVENT_VARIABLE_CHANGE_5055" },
	{ config_id = 1005056, name = "ANY_MONSTER_LIVE_5056", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5056", action = "action_EVENT_ANY_MONSTER_LIVE_5056" },
	{ config_id = 1005057, name = "ANY_MONSTER_DIE_5057", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5057", action = "action_EVENT_ANY_MONSTER_DIE_5057", trigger_count = 0 },
	{ config_id = 1005058, name = "CHALLENGE_SUCCESS_5058", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5058" },
	{ config_id = 1005059, name = "CHALLENGE_FAIL_5059", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5059" },
	{ config_id = 1005060, name = "ANY_GADGET_DIE_5060", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5060", action = "action_EVENT_ANY_GADGET_DIE_5060" },
	{ config_id = 1005061, name = "ANY_GADGET_DIE_5061", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5061", action = "action_EVENT_ANY_GADGET_DIE_5061" },
	{ config_id = 1005062, name = "ANY_GADGET_DIE_5062", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5062", action = "action_EVENT_ANY_GADGET_DIE_5062" }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave", value = 0, no_refresh = false }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_5052", "VARIABLE_CHANGE_5053", "VARIABLE_CHANGE_5054", "VARIABLE_CHANGE_5055", "ANY_MONSTER_LIVE_5056", "ANY_MONSTER_DIE_5057", "CHALLENGE_SUCCESS_5058", "CHALLENGE_FAIL_5059", "ANY_GADGET_DIE_5060", "ANY_GADGET_DIE_5061", "ANY_GADGET_DIE_5062" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5008, 5009 },
		gadgets = { 5063, 5064, 5065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5019, 5020, 5021, 5022, 5023, 5024, 5025, 5026, 5027 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 5028, 5029, 5030, 5031, 5032, 5033, 5034, 5035, 5036 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 5037, 5038, 5039, 5040, 5041, 5042, 5043 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 5044, 5045, 5046, 5048, 5049, 5050, 5051 },
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
function condition_EVENT_VARIABLE_CHANGE_5052(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5052(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240018005, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5053(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为2
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5053(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240018005, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5054(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为3
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5054(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240018005, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5055(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为4
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5055(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240018005, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5056(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5056(context, evt)
	-- 创建编号为100（该挑战的识别id),挑战内容为51的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 100, 51, 300, 240018005, 40, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5057(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5057(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5058(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240018003, 2)
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5059(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240018001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240018005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5060(context, evt)
	if 5063 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5060(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5061(context, evt)
	if 5064 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5061(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5062(context, evt)
	if 5065 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5062(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end