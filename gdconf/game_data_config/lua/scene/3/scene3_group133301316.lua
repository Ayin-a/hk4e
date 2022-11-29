-- 基础信息
local base_info = {
	group_id = 133301316
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 6,
	group_id = 133301316,
	gadget_controller_id = 316009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 316001, monster_id = 26120301, pos = { x = -398.510, y = 209.703, z = 3608.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, isElite = true, pose_id = 101, area_id = 22 },
	{ config_id = 316002, monster_id = 26090701, pos = { x = -394.951, y = 210.026, z = 3612.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 22 },
	{ config_id = 316003, monster_id = 26090701, pos = { x = -402.022, y = 209.534, z = 3611.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 22 },
	{ config_id = 316004, monster_id = 26090901, pos = { x = -396.242, y = 210.272, z = 3618.176 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 22 },
	{ config_id = 316005, monster_id = 26090901, pos = { x = -401.903, y = 209.161, z = 3617.014 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 22 },
	{ config_id = 316015, monster_id = 26090901, pos = { x = -402.990, y = 209.246, z = 3614.037 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 316006, gadget_id = 70350082, pos = { x = -398.510, y = 209.908, z = 3613.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 22 },
	{ config_id = 316009, gadget_id = 70360001, pos = { x = -398.510, y = 211.058, z = 3613.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1316010, name = "SELECT_OPTION_316010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_316010", action = "action_EVENT_SELECT_OPTION_316010", trigger_count = 0 },
	{ config_id = 1316011, name = "CHALLENGE_SUCCESS_316011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_316011", trigger_count = 0 },
	{ config_id = 1316012, name = "CHALLENGE_FAIL_316012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_316012", trigger_count = 0 },
	{ config_id = 1316014, name = "GADGET_CREATE_316014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_316014", action = "action_EVENT_GADGET_CREATE_316014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 316007, gadget_id = 70300118, pos = { x = -398.510, y = 211.058, z = 3613.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
		{ config_id = 316008, gadget_id = 70330011, pos = { x = -398.510, y = 211.058, z = 3613.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 }
	},
	triggers = {
		{ config_id = 1316013, name = "GADGET_STATE_CHANGE_316013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_316013", action = "action_EVENT_GADGET_STATE_CHANGE_316013", trigger_count = 0 }
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
		gadgets = { 316006, 316009 },
		regions = { },
		triggers = { "SELECT_OPTION_316010", "CHALLENGE_SUCCESS_316011", "CHALLENGE_FAIL_316012", "GADGET_CREATE_316014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 316001, 316002, 316003, 316004, 316005, 316015 },
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
function condition_EVENT_SELECT_OPTION_316010(context, evt)
	-- 判断是gadgetid 316009 option_id 177
	if 316009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_316010(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_316011(context, evt)
	-- 将configid为 316006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316006, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_316012(context, evt)
	-- 将configid为 316006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为316009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 316009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301316, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301316, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_316014(context, evt)
	if 316009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_316014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301316, 316009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end