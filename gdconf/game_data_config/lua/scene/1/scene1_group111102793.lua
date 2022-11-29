-- 基础信息
local base_info = {
	group_id = 111102793
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 793001, monster_id = 24010201, pos = { x = 1515.595, y = 262.700, z = -1714.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5181 }, pose_id = 111 },
	{ config_id = 793015, monster_id = 24010301, pos = { x = 1507.282, y = 262.632, z = -1711.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹重机", disableWander = true, affix = { 5181 }, pose_id = 111 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 793002, gadget_id = 70290423, pos = { x = 1515.562, y = 264.095, z = -1714.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1 },
	{ config_id = 793003, gadget_id = 70290422, pos = { x = 1521.144, y = 261.625, z = -1707.210 }, rot = { x = 0.000, y = 29.102, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2} },
	{ config_id = 793004, gadget_id = 70290422, pos = { x = 1521.000, y = 263.481, z = -1724.645 }, rot = { x = 0.000, y = 320.434, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3} },
	{ config_id = 793005, gadget_id = 70290422, pos = { x = 1499.165, y = 262.838, z = -1710.099 }, rot = { x = 0.000, y = 306.841, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2} },
	{ config_id = 793006, gadget_id = 70950145, pos = { x = 1515.562, y = 264.530, z = -1714.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 793011, gadget_id = 70290422, pos = { x = 1499.883, y = 263.625, z = -1725.586 }, rot = { x = 0.000, y = 19.711, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3} },
	{ config_id = 793012, gadget_id = 70290424, pos = { x = 1507.282, y = 263.501, z = -1711.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 2, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1 },
	{ config_id = 793013, gadget_id = 70950145, pos = { x = 1507.282, y = 264.687, z = -1711.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 793019, gadget_id = 70211011, pos = { x = 1511.533, y = 262.624, z = -1714.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 793009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1513.163, y = 262.489, z = -1712.336 } }
}

-- 触发器
triggers = {
	-- 【弃用】一个封印圈进902，计数改变
	{ config_id = 1793007, name = "GADGET_STATE_CHANGE_793007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_793007", action = "action_EVENT_GADGET_STATE_CHANGE_793007" },
	-- 和任意操作台（此trigger为1）交互，所有封印环进202，激活所有怪物，删除所有操作台
	{ config_id = 1793008, name = "SELECT_OPTION_793008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_793008", action = "action_EVENT_SELECT_OPTION_793008" },
	{ config_id = 1793009, name = "ENTER_REGION_793009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_793009", trigger_count = 0, forbid_guest = false },
	{ config_id = 1793010, name = "GROUP_LOAD_793010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_793010", trigger_count = 0 },
	-- 和任意操作台（此trigger为1）交互，所有封印环进202，激活所有怪物，删除所有操作台
	{ config_id = 1793014, name = "SELECT_OPTION_793014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_793014", action = "action_EVENT_SELECT_OPTION_793014" },
	-- 【弃用】所有封印圈都在902，一起进201上操作
	{ config_id = 1793016, name = "VARIABLE_CHANGE_793016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_793016", action = "" },
	-- 【弃用】一个封印圈进902，计数改变
	{ config_id = 1793017, name = "GADGET_STATE_CHANGE_793017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_793017", action = "action_EVENT_GADGET_STATE_CHANGE_793017" },
	-- 所有能量桩都进了202，所有封印圈进201上操作台
	{ config_id = 1793018, name = "GADGET_STATE_CHANGE_793018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_793018", action = "action_EVENT_GADGET_STATE_CHANGE_793018" },
	{ config_id = 1793020, name = "ANY_MONSTER_DIE_793020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_793020", action = "action_EVENT_ANY_MONSTER_DIE_793020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlockedRingNum", value = 0, no_refresh = true }
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
		monsters = { 793001, 793015 },
		gadgets = { 793002, 793003, 793004, 793005, 793006, 793011, 793012, 793013 },
		regions = { },
		triggers = { "SELECT_OPTION_793008", "SELECT_OPTION_793014", "GADGET_STATE_CHANGE_793018", "ANY_MONSTER_DIE_793020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 793019 },
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
function condition_EVENT_GADGET_STATE_CHANGE_793007(context, evt)
	if 793002 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_793007(context, evt)
	-- 针对当前group内变量名为 "unlockedRingNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlockedRingNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_793008(context, evt)
	-- 判断是gadgetid 793006 option_id 72
	if 793006 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_793008(context, evt)
	-- 将configid为 793002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 793012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111102793 ；指定config：793006；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102793, 793006, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102793 ；指定config：793013；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102793, 793013, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知groupid为111102793中,configid为：793001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 793001, 111102793) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102793中,configid为：793015的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 793015, 111102793) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_793009(context, evt)
		-- 设置封印圈的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793002, "SGV_GRASSSEAL_MARK", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793002, "SGV_SEAL_ENABLED", 2)
	
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793012, "SGV_GRASSSEAL_MARK", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793012, "SGV_SEAL_ENABLED", 2)
	
		-- 设置能量桩1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793003, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793003, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793004, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793004, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		-- 设置能量桩3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793005, "SGV_GRASSSEAL_TARGET", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793005, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩4的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793011, "SGV_GRASSSEAL_TARGET", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793011, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_793010(context, evt)
		-- 设置封印圈的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793002, "SGV_GRASSSEAL_MARK", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793002, "SGV_SEAL_ENABLED", 2)
	
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793012, "SGV_GRASSSEAL_MARK", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793012, "SGV_SEAL_ENABLED", 2)
	
		-- 设置能量桩1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793003, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793003, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793004, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793004, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		-- 设置能量桩3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793005, "SGV_GRASSSEAL_TARGET", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793005, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩4的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793011, "SGV_GRASSSEAL_TARGET", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 793011, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_793014(context, evt)
	-- 判断是gadgetid 793013 option_id 72
	if 793013 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_793014(context, evt)
	-- 将configid为 793002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 793012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111102793 ；指定config：793006；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102793, 793006, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102793 ；指定config：793013；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102793, 793013, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知groupid为111102793中,configid为：793001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 793001, 111102793) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102793中,configid为：793015的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 793015, 111102793) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_793016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlockedRingNum"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "unlockedRingNum", 0) ~= 2 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_793017(context, evt)
	if 793012 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_793017(context, evt)
	-- 针对当前group内变量名为 "unlockedRingNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlockedRingNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_793018(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102793, 793003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102793, 793004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102793, 793005) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102793, 793011) then
		return false
	end
	
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_793018(context, evt)
	-- 将configid为 793002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 793012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 793012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102793, 793006, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102793, 793013, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_793020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_793020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102793, 2)
	
	return 0
end