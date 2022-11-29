-- 基础信息
local base_info = {
	group_id = 240603007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20011001, pos = { x = 7.552, y = 0.520, z = -2.509 }, rot = { x = 0.000, y = 327.634, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7002, monster_id = 20011001, pos = { x = -0.400, y = 0.520, z = -3.505 }, rot = { x = 0.000, y = 27.701, z = 0.000 }, level = 1, affix = { 1006, 1031 } },
	{ config_id = 7003, monster_id = 21010201, pos = { x = -7.738, y = 0.520, z = -2.548 }, rot = { x = 0.000, y = 24.075, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7004, monster_id = 21010201, pos = { x = -12.949, y = 0.520, z = -2.906 }, rot = { x = 0.000, y = 33.839, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7005, monster_id = 21010201, pos = { x = 13.078, y = 0.520, z = -1.897 }, rot = { x = 0.000, y = 306.568, z = 0.000 }, level = 1, affix = { 1006, 1031 } },
	{ config_id = 7006, monster_id = 21030103, pos = { x = -12.489, y = 0.520, z = -7.084 }, rot = { x = 0.000, y = 51.797, z = 0.000 }, level = 1, affix = { 1006, 1031 }, isElite = true },
	{ config_id = 7007, monster_id = 21010201, pos = { x = 9.478, y = 0.520, z = -4.999 }, rot = { x = 0.000, y = 342.747, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7008, monster_id = 20011101, pos = { x = 0.011, y = 0.520, z = -7.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006, 1031 } },
	{ config_id = 7009, monster_id = 20011001, pos = { x = -8.485, y = 0.520, z = -6.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7010, monster_id = 20011001, pos = { x = 6.026, y = 0.520, z = -3.787 }, rot = { x = 0.000, y = 344.915, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7011, monster_id = 20011001, pos = { x = -6.210, y = 0.520, z = -3.296 }, rot = { x = 0.000, y = 60.623, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7012, monster_id = 21010201, pos = { x = 7.091, y = 0.520, z = -0.637 }, rot = { x = 0.000, y = 333.948, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7013, monster_id = 20011101, pos = { x = -0.772, y = 0.520, z = -4.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006, 1031 } },
	{ config_id = 7014, monster_id = 21010201, pos = { x = -8.041, y = 0.520, z = -1.371 }, rot = { x = 0.000, y = 21.059, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7015, monster_id = 21030103, pos = { x = 8.628, y = 0.520, z = -6.867 }, rot = { x = 0.000, y = 333.197, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 7016, monster_id = 20011101, pos = { x = -5.257, y = 0.520, z = -3.931 }, rot = { x = 0.000, y = 20.073, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7017, monster_id = 20011101, pos = { x = 8.029, y = 0.520, z = -0.077 }, rot = { x = 0.000, y = 324.425, z = 0.000 }, level = 1, affix = { 1006, 1031 } },
	{ config_id = 7018, monster_id = 20011101, pos = { x = -8.216, y = 0.350, z = 0.731 }, rot = { x = 0.000, y = 54.568, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7019, monster_id = 20011101, pos = { x = -3.816, y = 0.350, z = -2.533 }, rot = { x = 0.000, y = 25.327, z = 0.000 }, level = 1, affix = { 1006, 1031 } },
	{ config_id = 7020, monster_id = 22010304, pos = { x = -0.009, y = 0.350, z = -7.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7021, gadget_id = 70900205, pos = { x = 7.015, y = -0.857, z = 5.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7022, gadget_id = 70350035, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007023, name = "DUNGEON_SETTLE_7023", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_7023" },
	{ config_id = 1007024, name = "ANY_MONSTER_LIVE_7024", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7024", action = "action_EVENT_ANY_MONSTER_LIVE_7024" },
	{ config_id = 1007025, name = "CHALLENGE_FAIL_7025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7025" },
	{ config_id = 1007026, name = "CHALLENGE_SUCCESS_7026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 7021, 7022 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_7023", "ANY_MONSTER_LIVE_7024", "CHALLENGE_FAIL_7025", "CHALLENGE_SUCCESS_7026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_7023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7024(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7024(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1023的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1023, 240603007, 20, 7022, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7025(context, evt)
	-- 改变指定group组240603008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240603008, 8001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240603008, 8001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240603007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240603006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240603006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240603006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240603006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7026(context, evt)
	-- 改变指定group组240603008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240603008, 8001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240603006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240603006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240603006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240603006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end