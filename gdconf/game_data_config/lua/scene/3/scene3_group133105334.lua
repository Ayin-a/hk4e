-- 基础信息
local base_info = {
	group_id = 133105334
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 133105334,
	gadget_controller_id = 334003,
	extra_time = 30
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334001, monster_id = 21020301, pos = { x = 263.043, y = 200.783, z = -59.619 }, rot = { x = 0.000, y = 337.454, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 9 },
	{ config_id = 334011, monster_id = 21020301, pos = { x = 263.226, y = 200.606, z = -50.612 }, rot = { x = 0.000, y = 213.178, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 9 },
	{ config_id = 334012, monster_id = 21020501, pos = { x = 268.453, y = 200.606, z = -56.050 }, rot = { x = 0.000, y = 272.954, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 334002, gadget_id = 70350082, pos = { x = 260.150, y = 200.651, z = -54.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 9 },
	{ config_id = 334003, gadget_id = 70360001, pos = { x = 260.142, y = 201.651, z = -54.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 9 },
	{ config_id = 334004, gadget_id = 70220042, pos = { x = 258.592, y = 200.687, z = -55.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1334005, name = "CHALLENGE_SUCCESS_334005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "233", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_334005" },
	{ config_id = 1334006, name = "CHALLENGE_FAIL_334006", event = EventType.EVENT_CHALLENGE_FAIL, source = "233", condition = "", action = "action_EVENT_CHALLENGE_FAIL_334006", trigger_count = 0 },
	{ config_id = 1334007, name = "GADGET_CREATE_334007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_334007", action = "action_EVENT_GADGET_CREATE_334007", trigger_count = 0 },
	{ config_id = 1334008, name = "SELECT_OPTION_334008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_334008", action = "action_EVENT_SELECT_OPTION_334008", trigger_count = 0 },
	{ config_id = 1334009, name = "GADGET_STATE_CHANGE_334009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_334009", action = "action_EVENT_GADGET_STATE_CHANGE_334009" },
	{ config_id = 1334013, name = "ANY_MONSTER_DIE_334013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_334013", action = "action_EVENT_ANY_MONSTER_DIE_334013" },
	{ config_id = 1334015, name = "ANY_MONSTER_DIE_334015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_334015", action = "action_EVENT_ANY_MONSTER_DIE_334015" }
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
	suite = 3,
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
		gadgets = { 334002, 334003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_334005", "CHALLENGE_FAIL_334006", "GADGET_CREATE_334007", "SELECT_OPTION_334008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 334001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_334013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_334009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 334011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_334015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 334012 },
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
function action_EVENT_CHALLENGE_SUCCESS_334005(context, evt)
	-- 将configid为 334002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_334006(context, evt)
	-- 将configid为 334002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为334003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 334003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105334, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105334, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105334, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_334007(context, evt)
	if 334003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_334007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105334, 334003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_334008(context, evt)
	-- 判断是gadgetid 334003 option_id 177
	if 334003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_334008(context, evt)
	-- 创建编号为233（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 233, 4, 133105334, 3, 60, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105334, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 334003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 334002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_334009(context, evt)
	if 334004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_334009(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105334, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_334013(context, evt)
	if 334001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_334013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105334, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_334015(context, evt)
	if 334011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_334015(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105334, 5)
	
	return 0
end

require "TreasureMapEvent"