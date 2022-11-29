-- 基础信息
local base_info = {
	group_id = 177005089
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 89002, monster_id = 24010101, pos = { x = 620.013, y = 255.774, z = 582.829 }, rot = { x = 0.000, y = 305.994, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 100, area_id = 210 },
	{ config_id = 89003, monster_id = 24010101, pos = { x = 611.430, y = 253.923, z = 579.870 }, rot = { x = 0.000, y = 37.967, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 100, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 89001, gadget_id = 70211161, pos = { x = 619.036, y = 256.210, z = 588.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 89006, gadget_id = 70330138, pos = { x = 615.770, y = 255.273, z = 585.555 }, rot = { x = 358.064, y = 358.084, z = 3.688 }, level = 19, state = GadgetState.GearAction2, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089004, name = "GADGET_CREATE_89004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_89004", action = "action_EVENT_GADGET_CREATE_89004", trigger_count = 0 },
	{ config_id = 1089005, name = "GROUP_LOAD_89005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_89005", action = "action_EVENT_GROUP_LOAD_89005", trigger_count = 0 },
	{ config_id = 1089009, name = "SELECT_OPTION_89009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_89009", action = "action_EVENT_SELECT_OPTION_89009", trigger_count = 0 },
	{ config_id = 1089010, name = "CHALLENGE_SUCCESS_89010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_89010", trigger_count = 0 },
	{ config_id = 1089011, name = "CHALLENGE_FAIL_89011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_89011", trigger_count = 0 },
	{ config_id = 1089012, name = "GADGET_STATE_CHANGE_89012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89012", action = "action_EVENT_GADGET_STATE_CHANGE_89012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 89007, gadget_id = 70360001, pos = { x = 615.770, y = 256.305, z = 585.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
	},
	regions = {
		{ config_id = 89008, shape = RegionShape.SPHERE, radius = 25, pos = { x = 613.609, y = 255.259, z = 587.787 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1089008, name = "LEAVE_REGION_89008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_89008", action = "action_EVENT_LEAVE_REGION_89008" }
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
		gadgets = { 89006 },
		regions = { },
		triggers = { "GADGET_CREATE_89004", "GROUP_LOAD_89005", "SELECT_OPTION_89009", "CHALLENGE_SUCCESS_89010", "CHALLENGE_FAIL_89011", "GADGET_STATE_CHANGE_89012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 89002, 89003 },
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
function condition_EVENT_GADGET_CREATE_89004(context, evt)
	if 89006 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_89004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177005089, 89006, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_89005(context, evt)
	-- 判断变量"hasFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_89005(context, evt)
	-- 将configid为 89006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005089, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_89009(context, evt)
	-- 判断是gadgetid 89006 option_id 177
	if 89006 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_89009(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 150, 177005089, 2, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005089, 2)
	
	-- 删除指定group： 177005089 ；指定config：89006；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005089, 89006, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 89006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_89010(context, evt)
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 2
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 89006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为89001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 89001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_89011(context, evt)
	-- 将configid为 89006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005089, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_89012(context, evt)
	if 89006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89012(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end