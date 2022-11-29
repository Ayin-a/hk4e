-- 基础信息
local base_info = {
	group_id = 133302171
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 5,
	group_id = 133302171,
	gadget_controller_id = 171009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171001, monster_id = 26120301, pos = { x = -342.173, y = 221.393, z = 2298.090 }, rot = { x = 0.000, y = 125.640, z = 0.000 }, level = 1, drop_id = 1000100, isElite = true, pose_id = 101, area_id = 24 },
	{ config_id = 171002, monster_id = 26090801, pos = { x = -338.057, y = 222.143, z = 2289.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 171003, monster_id = 26090801, pos = { x = -344.253, y = 221.613, z = 2292.306 }, rot = { x = 0.000, y = 51.876, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 171004, monster_id = 26090701, pos = { x = -332.198, y = 220.836, z = 2300.464 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 171005, monster_id = 26090701, pos = { x = -333.629, y = 221.682, z = 2292.071 }, rot = { x = 0.000, y = 304.652, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 171006, gadget_id = 70350082, pos = { x = -336.701, y = 220.841, z = 2296.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 24 },
	{ config_id = 171009, gadget_id = 70360001, pos = { x = -336.703, y = 221.929, z = 2296.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171010, name = "SELECT_OPTION_171010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_171010", action = "action_EVENT_SELECT_OPTION_171010", trigger_count = 0 },
	{ config_id = 1171011, name = "CHALLENGE_SUCCESS_171011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_171011", trigger_count = 0 },
	{ config_id = 1171012, name = "CHALLENGE_FAIL_171012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_171012", trigger_count = 0 },
	{ config_id = 1171014, name = "GADGET_CREATE_171014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_171014", action = "action_EVENT_GADGET_CREATE_171014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 171007, gadget_id = 70300118, pos = { x = -336.703, y = 221.929, z = 2296.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 24 },
		{ config_id = 171008, gadget_id = 70330011, pos = { x = -336.608, y = 221.923, z = 2296.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 24 }
	},
	triggers = {
		{ config_id = 1171013, name = "GADGET_STATE_CHANGE_171013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171013", action = "action_EVENT_GADGET_STATE_CHANGE_171013", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 171006, 171009 },
		regions = { },
		triggers = { "SELECT_OPTION_171010", "CHALLENGE_SUCCESS_171011", "CHALLENGE_FAIL_171012", "GADGET_CREATE_171014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 171001, 171002, 171003, 171004, 171005 },
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
function condition_EVENT_SELECT_OPTION_171010(context, evt)
	-- 判断是gadgetid 171009 option_id 177
	if 171009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_171010(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_171011(context, evt)
	-- 将configid为 171006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_171012(context, evt)
	-- 将configid为 171006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为171009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 171009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302171, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302171, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_171014(context, evt)
	if 171009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_171014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302171, 171009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end