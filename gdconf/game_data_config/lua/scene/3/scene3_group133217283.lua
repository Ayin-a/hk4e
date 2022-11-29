-- 基础信息
local base_info = {
	group_id = 133217283
}

-- Trigger变量
local defs = {
	duration = 105,
	group_id = 133217283,
	gadget_sum = 34
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 283034, monster_id = 20060101, pos = { x = -4115.968, y = 204.139, z = -3504.714 }, rot = { x = 0.000, y = 213.099, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 283035, monster_id = 20060101, pos = { x = -4113.978, y = 202.296, z = -3516.402 }, rot = { x = 0.000, y = 274.764, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 14 },
	{ config_id = 283036, monster_id = 20060101, pos = { x = -4104.820, y = 202.895, z = -3502.958 }, rot = { x = 0.000, y = 248.337, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 283001, gadget_id = 70220072, pos = { x = -4249.859, y = 200.000, z = -3616.211 }, rot = { x = 0.000, y = 231.362, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 283002, gadget_id = 70350084, pos = { x = -4261.723, y = 199.822, z = -3630.162 }, rot = { x = 0.000, y = 209.628, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 283003, gadget_id = 70211121, pos = { x = -4083.327, y = 205.334, z = -3481.512 }, rot = { x = 355.634, y = 215.752, z = 13.044 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 283004, gadget_id = 70220072, pos = { x = -4248.339, y = 200.000, z = -3611.612 }, rot = { x = 0.000, y = 182.742, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 283005, gadget_id = 70360001, pos = { x = -4261.736, y = 200.786, z = -3630.168 }, rot = { x = 0.000, y = 209.628, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 283013, gadget_id = 70220072, pos = { x = -4239.699, y = 200.000, z = -3608.023 }, rot = { x = 0.000, y = 199.519, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283014, gadget_id = 70220072, pos = { x = -4224.838, y = 200.000, z = -3607.922 }, rot = { x = 0.000, y = 269.412, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283015, gadget_id = 70220072, pos = { x = -4216.489, y = 200.000, z = -3612.587 }, rot = { x = 0.000, y = 264.790, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283016, gadget_id = 70220072, pos = { x = -4205.536, y = 200.000, z = -3611.808 }, rot = { x = 0.000, y = 230.559, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283017, gadget_id = 70220072, pos = { x = -4202.011, y = 200.000, z = -3602.720 }, rot = { x = 0.000, y = 203.397, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283018, gadget_id = 70220072, pos = { x = -4184.954, y = 200.000, z = -3564.778 }, rot = { x = 0.000, y = 216.007, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283019, gadget_id = 70220072, pos = { x = -4182.104, y = 200.000, z = -3556.716 }, rot = { x = 0.000, y = 206.986, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283020, gadget_id = 70220072, pos = { x = -4163.604, y = 200.000, z = -3555.492 }, rot = { x = 0.000, y = 269.343, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283021, gadget_id = 70220072, pos = { x = -4158.799, y = 200.000, z = -3559.353 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283022, gadget_id = 70330100, pos = { x = -4232.812, y = 198.960, z = -3604.777 }, rot = { x = 0.000, y = 303.275, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 283023, gadget_id = 70330100, pos = { x = -4191.105, y = 199.013, z = -3593.442 }, rot = { x = 0.000, y = 286.472, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 283024, gadget_id = 70330100, pos = { x = -4187.474, y = 199.501, z = -3571.598 }, rot = { x = 0.000, y = 329.850, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 283025, gadget_id = 70220072, pos = { x = -4148.329, y = 200.000, z = -3557.329 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283026, gadget_id = 70330100, pos = { x = -4142.542, y = 199.454, z = -3540.414 }, rot = { x = 0.000, y = 71.294, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 283027, gadget_id = 70220072, pos = { x = -4140.645, y = 200.000, z = -3531.730 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283028, gadget_id = 70220072, pos = { x = -4142.305, y = 200.000, z = -3519.543 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283029, gadget_id = 70220072, pos = { x = -4134.603, y = 200.000, z = -3515.218 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283030, gadget_id = 70220072, pos = { x = -4130.572, y = 200.000, z = -3513.884 }, rot = { x = 0.000, y = 208.790, z = 0.000 }, level = 27, persistent = true, area_id = 14 },
	{ config_id = 283031, gadget_id = 70220072, pos = { x = -4099.585, y = 200.000, z = -3510.391 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 283032, gadget_id = 70220072, pos = { x = -4095.221, y = 200.000, z = -3510.591 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 283033, gadget_id = 70220072, pos = { x = -4087.873, y = 200.000, z = -3506.687 }, rot = { x = 0.000, y = 245.995, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 283037, gadget_id = 70330100, pos = { x = -4111.460, y = 199.654, z = -3506.875 }, rot = { x = 0.000, y = 331.943, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 283038, gadget_id = 70220043, pos = { x = -4084.373, y = 205.274, z = -3483.647 }, rot = { x = 356.992, y = 230.277, z = 359.415 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 283040, gadget_id = 70220072, pos = { x = -4244.655, y = 200.000, z = -3608.680 }, rot = { x = 0.000, y = 237.038, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283041, gadget_id = 70220072, pos = { x = -4221.846, y = 200.000, z = -3611.756 }, rot = { x = 0.000, y = 237.038, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283042, gadget_id = 70220072, pos = { x = -4188.600, y = 200.000, z = -3582.033 }, rot = { x = 0.000, y = 267.997, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283043, gadget_id = 70220072, pos = { x = -4203.109, y = 200.000, z = -3607.690 }, rot = { x = 0.000, y = 247.806, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283044, gadget_id = 70220072, pos = { x = -4185.869, y = 200.000, z = -3560.211 }, rot = { x = 0.000, y = 299.468, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283046, gadget_id = 70220072, pos = { x = -4152.747, y = 200.000, z = -3560.635 }, rot = { x = 0.000, y = 283.970, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283047, gadget_id = 70220072, pos = { x = -4145.994, y = 200.000, z = -3552.144 }, rot = { x = 0.000, y = 216.908, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283048, gadget_id = 70220072, pos = { x = -4143.239, y = 199.693, z = -3527.319 }, rot = { x = 0.000, y = 216.908, z = 351.383 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283049, gadget_id = 70220072, pos = { x = -4143.879, y = 199.991, z = -3523.234 }, rot = { x = 0.000, y = 216.908, z = 351.383 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283050, gadget_id = 70220072, pos = { x = -4139.246, y = 200.280, z = -3517.145 }, rot = { x = 0.000, y = 216.908, z = 351.383 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283051, gadget_id = 70220072, pos = { x = -4090.372, y = 200.156, z = -3509.212 }, rot = { x = 2.546, y = 233.969, z = 351.765 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 283052, gadget_id = 70220072, pos = { x = -4086.571, y = 200.747, z = -3503.257 }, rot = { x = 2.546, y = 233.969, z = 351.765 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 283053, gadget_id = 70220072, pos = { x = -4147.182, y = 200.000, z = -3547.642 }, rot = { x = 0.000, y = 269.412, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 283054, gadget_id = 70220072, pos = { x = -4199.626, y = 200.000, z = -3598.313 }, rot = { x = 0.000, y = 221.593, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 283039, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4111.160, y = 200.000, z = -3506.861 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1283006, name = "CHALLENGE_SUCCESS_283006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_283006", trigger_count = 0 },
	{ config_id = 1283007, name = "CHALLENGE_FAIL_283007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_283007", trigger_count = 0 },
	{ config_id = 1283008, name = "GADGET_STATE_CHANGE_283008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_283008", action = "action_EVENT_GADGET_STATE_CHANGE_283008", trigger_count = 0 },
	{ config_id = 1283009, name = "ANY_GADGET_DIE_283009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1283010, name = "GADGET_CREATE_283010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_283010", action = "action_EVENT_GADGET_CREATE_283010", trigger_count = 0 },
	{ config_id = 1283011, name = "SELECT_OPTION_283011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_283011", action = "action_EVENT_SELECT_OPTION_283011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1283012, name = "GROUP_LOAD_283012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_283012", trigger_count = 0 },
	{ config_id = 1283039, name = "ENTER_REGION_283039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_283039", action = "action_EVENT_ENTER_REGION_283039", trigger_count = 0 },
	-- 第二段
	{ config_id = 1283045, name = "ANY_GADGET_DIE_283045", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_283045", action = "action_EVENT_ANY_GADGET_DIE_283045", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 283056, gadget_id = 70360001, pos = { x = -4116.254, y = 200.000, z = -3470.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 283057, gadget_id = 70360001, pos = { x = -4130.220, y = 200.000, z = -3466.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 283058, gadget_id = 70360001, pos = { x = -4140.794, y = 200.000, z = -3469.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 14 },
		{ config_id = 283059, gadget_id = 70360001, pos = { x = -4120.297, y = 200.000, z = -3409.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
	},
	triggers = {
		{ config_id = 1283055, name = "ANY_GADGET_DIE_283055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_283055", action = "action_EVENT_ANY_GADGET_DIE_283055", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 283002, 283005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_283006", "CHALLENGE_FAIL_283007", "GADGET_STATE_CHANGE_283008", "ANY_GADGET_DIE_283009", "GADGET_CREATE_283010", "SELECT_OPTION_283011", "GROUP_LOAD_283012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 283001, 283004, 283013, 283014, 283015, 283016, 283017, 283022, 283023, 283024, 283038, 283040, 283041, 283042, 283043, 283054 },
		regions = { 283039 },
		triggers = { "ENTER_REGION_283039", "ANY_GADGET_DIE_283045" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 283002, 283003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 283018, 283019, 283020, 283021, 283025, 283026, 283037, 283044, 283046, 283047, 283053 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 283027, 283028, 283029, 283030, 283031, 283032, 283033, 283048, 283049, 283050, 283051, 283052 },
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
function action_EVENT_CHALLENGE_SUCCESS_283006(context, evt)
	-- 将configid为 283002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 283005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217283, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217283, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217283, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217283, 5)
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217283, EntityType.MONSTER, 283034)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217283, EntityType.MONSTER, 283035)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217283, EntityType.MONSTER, 283036)
	
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_283007(context, evt)
	-- 将configid为 283002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217283, 2)
	
	-- 创建id为283005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217283, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217283, 5)
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217283, EntityType.MONSTER, 283034)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217283, EntityType.MONSTER, 283035)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133217283, EntityType.MONSTER, 283036)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_283008(context, evt)
	if 283002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_283008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 201, defs.duration, 2, 201, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_283010(context, evt)
	if 283005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_283010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217283, 283005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_283011(context, evt)
	-- 判断是gadgetid 283005 option_id 177
	if 283005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_283011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 283005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 283002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_283012(context, evt)
	-- 将configid为 283002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217283, 2)
	
	-- 创建id为283005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_283039(context, evt)
	if evt.param1 ~= 283039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_283039(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 283034, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 283035, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 283036, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_283045(context, evt)
	-- 判断指定group组剩余gadget数量是否是6 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133217283}) ~= 6 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_283045(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217283, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217283, 5)
	
	return 0
end