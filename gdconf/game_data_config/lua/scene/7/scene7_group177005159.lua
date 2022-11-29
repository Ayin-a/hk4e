-- 基础信息
local base_info = {
	group_id = 177005159
}

-- Trigger变量
local defs = {
	duration = 240,
	kill_sum = 4,
	group_id = 177005159,
	gadget_controller_id = 159006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 159001, monster_id = 26051001, pos = { x = 312.159, y = 145.090, z = 892.373 }, rot = { x = 0.000, y = 307.001, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5135 }, area_id = 210 },
	{ config_id = 159002, monster_id = 26051001, pos = { x = 305.959, y = 145.090, z = 893.747 }, rot = { x = 0.000, y = 81.234, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5135 }, area_id = 210 },
	{ config_id = 159003, monster_id = 25100301, pos = { x = 307.182, y = 145.090, z = 896.081 }, rot = { x = 0.000, y = 151.365, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 210 },
	{ config_id = 159004, monster_id = 25100301, pos = { x = 312.482, y = 145.090, z = 895.782 }, rot = { x = 0.000, y = 205.123, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 159005, gadget_id = 70211163, pos = { x = 308.896, y = 144.683, z = 890.959 }, rot = { x = 7.486, y = 31.031, z = 358.882 }, level = 16, drop_tag = "渊下宫活动超级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 159006, gadget_id = 70330138, pos = { x = 309.683, y = 144.563, z = 893.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearAction2, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1159008, name = "GADGET_CREATE_159008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_159008", action = "action_EVENT_GADGET_CREATE_159008", trigger_count = 0 },
	{ config_id = 1159009, name = "SELECT_OPTION_159009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_159009", action = "action_EVENT_SELECT_OPTION_159009", trigger_count = 0 },
	{ config_id = 1159010, name = "CHALLENGE_SUCCESS_159010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_159010", trigger_count = 0 },
	{ config_id = 1159011, name = "CHALLENGE_FAIL_159011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_159011", trigger_count = 0 },
	{ config_id = 1159013, name = "ANY_MONSTER_DIE_159013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159013", action = "action_EVENT_ANY_MONSTER_DIE_159013" },
	{ config_id = 1159014, name = "GROUP_LOAD_159014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_159014", action = "action_EVENT_GROUP_LOAD_159014", trigger_count = 0 },
	{ config_id = 1159015, name = "GADGET_STATE_CHANGE_159015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_159015", action = "action_EVENT_GADGET_STATE_CHANGE_159015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 159007, gadget_id = 70360001, pos = { x = 309.683, y = 144.563, z = 893.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
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
		gadgets = { 159006 },
		regions = { },
		triggers = { "GADGET_CREATE_159008", "SELECT_OPTION_159009", "CHALLENGE_SUCCESS_159010", "CHALLENGE_FAIL_159011", "GROUP_LOAD_159014", "GADGET_STATE_CHANGE_159015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 159001, 159002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 159003, 159004 },
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
function condition_EVENT_GADGET_CREATE_159008(context, evt)
	if 159006 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_159008(context, evt)
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
function condition_EVENT_SELECT_OPTION_159009(context, evt)
	-- 判断是gadgetid 159006 option_id 177
	if 159006 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_159009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_id, 177) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 159006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_159010(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 159006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 159006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为159005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 159005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_159011(context, evt)
	-- 将configid为 159006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 159006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005159, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005159, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_159013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005159, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_159014(context, evt)
	-- 判断变量"hasFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_159014(context, evt)
	-- 将configid为 159006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 159006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005159, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005159, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_159015(context, evt)
	if 159006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_159015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177005159, 159006, {177}) then
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