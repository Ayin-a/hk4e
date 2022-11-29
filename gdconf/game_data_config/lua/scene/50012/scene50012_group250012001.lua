-- 基础信息
local base_info = {
	group_id = 250012001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010801, pos = { x = 11.782, y = 0.002, z = 11.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1002, monster_id = 20010801, pos = { x = 10.234, y = 0.002, z = 11.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1003, monster_id = 20010801, pos = { x = 11.372, y = 0.002, z = 9.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1004, monster_id = 20010501, pos = { x = -9.708, y = 0.002, z = -9.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1005, monster_id = 20010501, pos = { x = -11.256, y = 0.002, z = -9.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1006, monster_id = 20010501, pos = { x = -10.118, y = 0.002, z = -10.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1007, monster_id = 20011301, pos = { x = 2.134, y = 0.002, z = -1.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1008, monster_id = 20010801, pos = { x = 2.209, y = 0.002, z = 0.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1009, monster_id = 20010801, pos = { x = 4.140, y = 0.002, z = 0.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1010, monster_id = 20010501, pos = { x = 3.881, y = 0.002, z = -2.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1011, monster_id = 20010501, pos = { x = 4.990, y = 0.002, z = -1.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1012, gadget_id = 70360002, pos = { x = 0.048, y = 0.002, z = 0.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70211001, pos = { x = 0.101, y = 0.002, z = 6.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1014, gadget_id = 70310001, pos = { x = 6.992, y = 0.002, z = 8.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1015, gadget_id = 70310001, pos = { x = 6.737, y = 0.002, z = -5.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true },
	{ config_id = 1016, gadget_id = 70310001, pos = { x = -5.617, y = 0.002, z = -4.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1017, gadget_id = 70310001, pos = { x = -4.918, y = 0.002, z = 8.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "GADGET_CREATE_1", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1", action = "action_EVENT_GADGET_CREATE_1", trigger_count = 0 },
	{ config_id = 1000002, name = "SELECT_OPTION_2", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2", action = "action_EVENT_SELECT_OPTION_2", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000003, name = "ANY_MONSTER_DIE_3", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3", action = "action_EVENT_ANY_MONSTER_DIE_3", trigger_count = 0 },
	{ config_id = 1000004, name = "CHALLENGE_FAIL_4", event = EventType.EVENT_CHALLENGE_FAIL, source = "3008", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4", trigger_count = 0 },
	{ config_id = 1000005, name = "CHALLENGE_SUCCESS_5", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3008", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 1012 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "CHALLENGE_FAIL_4", "CHALLENGE_SUCCESS_5" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1001, 1002, 1003, 1004, 1005, 1006 },
		gadgets = { 1014, 1015, 1016, 1017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1007, 1008, 1009, 1010, 1011 },
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
function condition_EVENT_GADGET_CREATE_1(context, evt)
	if 1012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250012001, 1012, {104}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2(context, evt)
	if 1012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2(context, evt)
	-- 将configid为 1012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250012001, 2)
	
	-- 创建编号为3008（该挑战的识别id),挑战内容为177的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 3008, 177, 90, 250012001, 11, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250012001, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250012001, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250012001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为1012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250012001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为1013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end