-- 基础信息
local base_info = {
	group_id = 133210334
}

-- Trigger变量
local defs = {
	duration = 240,
	kill_sum = 15,
	group_id = 133210334,
	gadget_controller_id = 334007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334001, monster_id = 20011301, pos = { x = -3570.127, y = 200.788, z = -524.584 }, rot = { x = 0.000, y = 342.386, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334002, monster_id = 20011301, pos = { x = -3561.655, y = 200.720, z = -521.446 }, rot = { x = 0.000, y = 321.476, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334003, monster_id = 20060301, pos = { x = -3565.000, y = 201.112, z = -525.231 }, rot = { x = 0.000, y = 340.832, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 334004, monster_id = 20011501, pos = { x = -3569.707, y = 200.201, z = -501.192 }, rot = { x = 0.000, y = 178.669, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334014, monster_id = 20010901, pos = { x = -3575.590, y = 200.000, z = -518.867 }, rot = { x = 0.000, y = 53.802, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334015, monster_id = 20010901, pos = { x = -3561.234, y = 200.003, z = -511.811 }, rot = { x = 0.000, y = 246.335, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334016, monster_id = 20011501, pos = { x = -3578.851, y = 200.226, z = -506.532 }, rot = { x = 0.000, y = 132.718, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334017, monster_id = 20060101, pos = { x = -3574.052, y = 200.653, z = -503.592 }, rot = { x = 0.000, y = 161.985, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 334018, monster_id = 20010401, pos = { x = -3574.843, y = 200.096, z = -523.785 }, rot = { x = 0.000, y = 9.389, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334019, monster_id = 20010401, pos = { x = -3557.705, y = 200.000, z = -515.578 }, rot = { x = 0.000, y = 279.949, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334021, monster_id = 20011101, pos = { x = -3558.292, y = 200.296, z = -519.343 }, rot = { x = 0.000, y = 297.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334022, monster_id = 20011101, pos = { x = -3573.033, y = 200.394, z = -524.774 }, rot = { x = 0.000, y = 20.325, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334023, monster_id = 20011101, pos = { x = -3566.266, y = 200.911, z = -522.867 }, rot = { x = 0.000, y = 340.053, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 334024, monster_id = 20060201, pos = { x = -3577.524, y = 200.117, z = -510.031 }, rot = { x = 0.000, y = 129.364, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 334025, monster_id = 20060201, pos = { x = -3566.316, y = 200.019, z = -504.263 }, rot = { x = 0.000, y = 188.057, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 334005, gadget_id = 70350082, pos = { x = -3569.179, y = 200.578, z = -514.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 334006, gadget_id = 70330082, pos = { x = -3569.084, y = 201.572, z = -514.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 334007, gadget_id = 70360001, pos = { x = -3569.179, y = 201.561, z = -514.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1334008, name = "ANY_MONSTER_DIE_334008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_334008", action = "action_EVENT_ANY_MONSTER_DIE_334008" },
	{ config_id = 1334009, name = "SELECT_OPTION_334009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_334009", action = "action_EVENT_SELECT_OPTION_334009", trigger_count = 0 },
	{ config_id = 1334010, name = "CHALLENGE_SUCCESS_334010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_334010", trigger_count = 0 },
	{ config_id = 1334011, name = "CHALLENGE_FAIL_334011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_334011", trigger_count = 0 },
	{ config_id = 1334012, name = "GADGET_STATE_CHANGE_334012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_334012", action = "action_EVENT_GADGET_STATE_CHANGE_334012", trigger_count = 0 },
	{ config_id = 1334013, name = "GADGET_CREATE_334013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_334013", action = "action_EVENT_GADGET_CREATE_334013", trigger_count = 0 },
	{ config_id = 1334020, name = "ANY_MONSTER_DIE_334020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_334020", action = "action_EVENT_ANY_MONSTER_DIE_334020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 334005, 334006, 334007 },
		regions = { },
		triggers = { "SELECT_OPTION_334009", "CHALLENGE_SUCCESS_334010", "CHALLENGE_FAIL_334011", "GADGET_STATE_CHANGE_334012", "GADGET_CREATE_334013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 334001, 334002, 334003, 334014, 334015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_334008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 334004, 334016, 334017, 334018, 334019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_334020" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 334021, 334022, 334023, 334024, 334025 },
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
function condition_EVENT_ANY_MONSTER_DIE_334008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_334008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210334, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_334009(context, evt)
	-- 判断是gadgetid 334007 option_id 177
	if 334007 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_334009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 76, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334005, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_334010(context, evt)
	-- 将configid为 334005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 334006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334006, GadgetState.Default) then
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
function action_EVENT_CHALLENGE_FAIL_334011(context, evt)
	-- 将configid为 334005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为334007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 334007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 334006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210334, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210334, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_334012(context, evt)
	if 334005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_334012(context, evt)
	-- 将configid为 334006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_334013(context, evt)
	if 334007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_334013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210334, 334007, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_334020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_334020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210334, 4)
	
	return 0
end