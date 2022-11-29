-- 基础信息
local base_info = {
	group_id = 111102794
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 794001, monster_id = 24020101, pos = { x = 1492.976, y = 255.060, z = -1675.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 5181 }, pose_id = 111 },
	{ config_id = 794013, monster_id = 24020201, pos = { x = 1492.542, y = 253.904, z = -1667.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 5181 }, pose_id = 111 },
	{ config_id = 794014, monster_id = 24020301, pos = { x = 1500.523, y = 252.670, z = -1671.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 5181 }, pose_id = 111 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 794002, gadget_id = 70290421, pos = { x = 1493.133, y = 258.337, z = -1675.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1 },
	{ config_id = 794003, gadget_id = 70290422, pos = { x = 1490.454, y = 257.487, z = -1685.601 }, rot = { x = 0.000, y = 9.046, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2} },
	{ config_id = 794004, gadget_id = 70290422, pos = { x = 1509.638, y = 251.284, z = -1670.760 }, rot = { x = 0.003, y = 263.397, z = 352.706 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3} },
	{ config_id = 794005, gadget_id = 70290422, pos = { x = 1485.475, y = 255.587, z = -1666.222 }, rot = { x = 0.000, y = 92.702, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 3, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1} },
	{ config_id = 794006, gadget_id = 70950145, pos = { x = 1493.133, y = 258.337, z = -1675.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 794011, gadget_id = 70290421, pos = { x = 1500.802, y = 255.757, z = -1671.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 2, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1 },
	{ config_id = 794012, gadget_id = 70290421, pos = { x = 1492.832, y = 256.685, z = -1667.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 3, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1 },
	{ config_id = 794015, gadget_id = 70950145, pos = { x = 1500.802, y = 255.757, z = -1671.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 794016, gadget_id = 70950145, pos = { x = 1492.832, y = 256.685, z = -1667.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 794023, gadget_id = 70211011, pos = { x = 1496.357, y = 253.686, z = -1672.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 794009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1494.548, y = 253.576, z = -1670.243 } }
}

-- 触发器
triggers = {
	-- 【弃用】一个封印环解封了，改group var
	{ config_id = 1794007, name = "GADGET_STATE_CHANGE_794007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_794007", action = "action_EVENT_GADGET_STATE_CHANGE_794007" },
	-- 和操作台1交互，所有封印圈都进入202+激活所有怪物+删除所有操作台
	{ config_id = 1794008, name = "SELECT_OPTION_794008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_794008", action = "action_EVENT_SELECT_OPTION_794008" },
	{ config_id = 1794009, name = "ENTER_REGION_794009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_794009", trigger_count = 0, forbid_guest = false },
	{ config_id = 1794010, name = "GROUP_LOAD_794010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_794010", trigger_count = 0 },
	-- 【弃用】封印环1、2、3关联的能量桩都解封了，封印环都在902，一起改变状态到201上操作台
	{ config_id = 1794017, name = "VARIABLE_CHANGE_794017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_794017", action = "", trigger_count = 0 },
	-- 【弃用】一个封印环解封了，改group var
	{ config_id = 1794018, name = "GADGET_STATE_CHANGE_794018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_794018", action = "action_EVENT_GADGET_STATE_CHANGE_794018" },
	-- 和操作台2交互，所有封印圈都进入202+激活所有怪物+删除所有操作台
	{ config_id = 1794019, name = "SELECT_OPTION_794019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_794019", action = "action_EVENT_SELECT_OPTION_794019" },
	-- 和操作台3交互，所有封印圈都进入202+激活所有怪物+删除所有操作台
	{ config_id = 1794020, name = "SELECT_OPTION_794020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_794020", action = "action_EVENT_SELECT_OPTION_794020" },
	-- 【弃用】一个封印环解封了，改group var
	{ config_id = 1794021, name = "GADGET_STATE_CHANGE_794021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_794021", action = "action_EVENT_GADGET_STATE_CHANGE_794021", trigger_count = 0 },
	-- 封印环1、2、3关联的能量桩都解封了，封印环一起改变状态到201上操作台
	{ config_id = 1794022, name = "GADGET_STATE_CHANGE_794022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_794022", action = "action_EVENT_GADGET_STATE_CHANGE_794022" },
	{ config_id = 1794024, name = "ANY_MONSTER_DIE_794024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_794024", action = "action_EVENT_ANY_MONSTER_DIE_794024" }
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
		monsters = { 794001, 794013, 794014 },
		gadgets = { 794002, 794003, 794004, 794005, 794006, 794011, 794012, 794015, 794016 },
		regions = { },
		triggers = { "SELECT_OPTION_794008", "SELECT_OPTION_794019", "SELECT_OPTION_794020", "GADGET_STATE_CHANGE_794022", "ANY_MONSTER_DIE_794024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 794023 },
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
function condition_EVENT_GADGET_STATE_CHANGE_794007(context, evt)
	if 794002 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_794007(context, evt)
	-- 针对当前group内变量名为 "unlockedRingNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlockedRingNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_794008(context, evt)
	-- 判断是gadgetid 794006 option_id 72
	if 794006 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_794008(context, evt)
	-- 将configid为 794002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111102794 ；指定config：794006；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794006, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102794 ；指定config：794015；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794015, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102794 ；指定config：794016；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794016, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知groupid为111102794中,configid为：794001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794001, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102794中,configid为：794013的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794013, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102794中,configid为：794014的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794014, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_794009(context, evt)
		-- 设置封印圈1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794002, "SGV_GRASSSEAL_MARK", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794002, "SGV_SEAL_ENABLED", 1)
	
		-- 设置封印圈2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794011, "SGV_GRASSSEAL_MARK", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794011, "SGV_SEAL_ENABLED", 1)
	
		-- 设置封印圈3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794012, "SGV_GRASSSEAL_MARK", 3)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794012, "SGV_SEAL_ENABLED", 1)
		
		-- 设置能量桩1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794003, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794003, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794004, "SGV_GRASSSEAL_TARGET", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794004, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		-- 设置能量桩3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794005, "SGV_GRASSSEAL_TARGET", 3)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794005, "SGV_GRASSSEAL_ATTACHPOINT", 1)
	
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_794010(context, evt)
		-- 设置封印圈1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794002, "SGV_GRASSSEAL_MARK", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794002, "SGV_SEAL_ENABLED", 1)
	
		-- 设置封印圈2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794011, "SGV_GRASSSEAL_MARK", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794011, "SGV_SEAL_ENABLED", 1)
	
		-- 设置封印圈3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794012, "SGV_GRASSSEAL_MARK", 3)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794012, "SGV_SEAL_ENABLED", 1)
		
		-- 设置能量桩1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794003, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794003, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794004, "SGV_GRASSSEAL_TARGET", 2)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794004, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		-- 设置能量桩3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794005, "SGV_GRASSSEAL_TARGET", 3)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 794005, "SGV_GRASSSEAL_ATTACHPOINT", 1)
	
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_794017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlockedRingNum"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "unlockedRingNum", 111102794) ~= 3 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_794018(context, evt)
	if 794011 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_794018(context, evt)
	-- 针对当前group内变量名为 "unlockedRingNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlockedRingNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_794019(context, evt)
	-- 判断是gadgetid 794015 option_id 72
	if 794015 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_794019(context, evt)
	-- 将configid为 794002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111102794 ；指定config：794006；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794006, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102794 ；指定config：794015；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794015, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102794 ；指定config：794016；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794016, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知groupid为111102794中,configid为：794001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794001, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102794中,configid为：794013的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794013, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102794中,configid为：794014的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794014, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_794020(context, evt)
	-- 判断是gadgetid 794016 option_id 72
	if 794016 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_794020(context, evt)
	-- 将configid为 794002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111102794 ；指定config：794006；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794006, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102794 ；指定config：794015；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794015, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111102794 ；指定config：794016；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102794, 794016, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知groupid为111102794中,configid为：794001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794001, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102794中,configid为：794013的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794013, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为111102794中,configid为：794014的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 794014, 111102794) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_794021(context, evt)
	if 794012 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_794021(context, evt)
	-- 针对当前group内变量名为 "unlockedRingNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlockedRingNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_794022(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102794, 794003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102794, 794004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102794, 794005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_794022(context, evt)
	-- 将configid为 794002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 794012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 794012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102794, 794006, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102794, 794015, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102794, 794016, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_794024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_794024(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102794, 2)
	
	return 0
end