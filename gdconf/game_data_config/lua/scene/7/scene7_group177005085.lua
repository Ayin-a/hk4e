-- 基础信息
local base_info = {
	group_id = 177005085
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85001, monster_id = 22010101, pos = { x = 605.875, y = 206.411, z = 630.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 },
	{ config_id = 85002, monster_id = 22010101, pos = { x = 611.164, y = 206.895, z = 635.306 }, rot = { x = 0.000, y = 234.094, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 },
	{ config_id = 85003, monster_id = 24020201, pos = { x = 607.987, y = 207.057, z = 635.833 }, rot = { x = 0.000, y = 256.948, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 100, area_id = 210 },
	{ config_id = 85015, monster_id = 24020201, pos = { x = 604.954, y = 206.386, z = 631.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 100, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85006, gadget_id = 70330138, pos = { x = 604.681, y = 206.771, z = 635.512 }, rot = { x = 354.747, y = 0.409, z = 2.225 }, level = 19, state = GadgetState.GearAction2, persistent = true, area_id = 210 },
	{ config_id = 85014, gadget_id = 70211162, pos = { x = 606.948, y = 206.750, z = 633.489 }, rot = { x = 359.862, y = 312.027, z = 7.923 }, level = 16, drop_tag = "渊下宫活动高级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1085004, name = "GROUP_LOAD_85004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_85004", action = "action_EVENT_GROUP_LOAD_85004", trigger_count = 0 },
	{ config_id = 1085005, name = "GADGET_CREATE_85005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85005", action = "action_EVENT_GADGET_CREATE_85005", trigger_count = 0 },
	{ config_id = 1085009, name = "SELECT_OPTION_85009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85009", action = "action_EVENT_SELECT_OPTION_85009", trigger_count = 0 },
	{ config_id = 1085010, name = "CHALLENGE_SUCCESS_85010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_85010", trigger_count = 0 },
	{ config_id = 1085011, name = "CHALLENGE_FAIL_85011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_85011", trigger_count = 0 },
	{ config_id = 1085012, name = "GADGET_STATE_CHANGE_85012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_85012", action = "action_EVENT_GADGET_STATE_CHANGE_85012", trigger_count = 0 },
	{ config_id = 1085013, name = "ANY_MONSTER_DIE_85013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85013", action = "action_EVENT_ANY_MONSTER_DIE_85013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 85007, gadget_id = 70360001, pos = { x = 604.674, y = 206.817, z = 635.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
	},
	regions = {
		{ config_id = 85008, shape = RegionShape.SPHERE, radius = 25, pos = { x = 602.513, y = 206.749, z = 637.748 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1085008, name = "LEAVE_REGION_85008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_85008", action = "action_EVENT_LEAVE_REGION_85008" }
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
		gadgets = { 85006 },
		regions = { },
		triggers = { "GROUP_LOAD_85004", "GADGET_CREATE_85005", "SELECT_OPTION_85009", "CHALLENGE_SUCCESS_85010", "CHALLENGE_FAIL_85011", "GADGET_STATE_CHANGE_85012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 85003, 85015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 85001, 85002 },
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
function condition_EVENT_GROUP_LOAD_85004(context, evt)
	-- 判断变量"hasFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_85004(context, evt)
	-- 将configid为 85006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005085, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005085, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_85005(context, evt)
	if 85006 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
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
function condition_EVENT_SELECT_OPTION_85009(context, evt)
	-- 判断是gadgetid 85006 option_id 177
	if 85006 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85009(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 180, 177005085, 4, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005085, 2)
	
	-- 删除指定group： 177005085 ；指定config：85006；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005085, 85006, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 85006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_85010(context, evt)
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 2
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 85006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为85014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 85014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_85011(context, evt)
	-- 将configid为 85006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005085, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005085, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_85012(context, evt)
	if 85006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_85012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
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
function condition_EVENT_ANY_MONSTER_DIE_85013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005085, 3)
	
	return 0
end