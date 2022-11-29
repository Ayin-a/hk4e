-- 基础信息
local base_info = {
	group_id = 111102792
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 792001, monster_id = 24010101, pos = { x = 1563.241, y = 258.045, z = -1693.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5181 }, pose_id = 111 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 792002, gadget_id = 70290421, pos = { x = 1563.208, y = 260.099, z = -1693.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1 },
	{ config_id = 792003, gadget_id = 70290422, pos = { x = 1570.572, y = 258.152, z = -1690.851 }, rot = { x = 0.000, y = 276.841, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1} },
	{ config_id = 792004, gadget_id = 70290422, pos = { x = 1558.536, y = 257.510, z = -1690.545 }, rot = { x = 0.000, y = 311.610, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2} },
	{ config_id = 792005, gadget_id = 70290422, pos = { x = 1564.883, y = 258.594, z = -1704.634 }, rot = { x = 0.000, y = 355.710, z = 0.000 }, level = 1, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3} },
	{ config_id = 792006, gadget_id = 70950145, pos = { x = 1563.208, y = 260.099, z = -1693.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 792011, gadget_id = 70211011, pos = { x = 1564.925, y = 258.345, z = -1695.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 792009, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1561.480, y = 257.833, z = -1695.672 } }
}

-- 触发器
triggers = {
	-- 三个能量桩都进202了，封印圈进201上操作台
	{ config_id = 1792007, name = "GADGET_STATE_CHANGE_792007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_792007", action = "action_EVENT_GADGET_STATE_CHANGE_792007" },
	{ config_id = 1792008, name = "SELECT_OPTION_792008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_792008", action = "action_EVENT_SELECT_OPTION_792008" },
	{ config_id = 1792009, name = "ENTER_REGION_792009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_792009", trigger_count = 0 },
	{ config_id = 1792010, name = "GROUP_LOAD_792010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_792010", trigger_count = 0 },
	{ config_id = 1792012, name = "ANY_MONSTER_DIE_792012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_792012", action = "action_EVENT_ANY_MONSTER_DIE_792012" }
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
		monsters = { 792001 },
		gadgets = { 792002, 792003, 792004, 792005, 792006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_792007", "SELECT_OPTION_792008", "ANY_MONSTER_DIE_792012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 792011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_792007(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102792, 792003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102792, 792004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102792, 792005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_792007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102792, 792006, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 792002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 792002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_792008(context, evt)
	-- 判断是gadgetid 792006 option_id 72
	if 792006 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_792008(context, evt)
	-- 将configid为 792002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 792002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111102792 ；指定config：792006；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102792, 792006, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知groupid为111102792中,configid为：792001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 792001, 111102792) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_792009(context, evt)
		-- 设置封印圈的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792002, "SGV_GRASSSEAL_MARK", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792002, "SGV_SEAL_ENABLED", 3)
		
		-- 设置能量桩1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792003, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792003, "SGV_GRASSSEAL_ATTACHPOINT", 1)
	
		-- 设置能量桩2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792004, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792004, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792005, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792005, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_792010(context, evt)
		-- 设置封印圈的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792002, "SGV_GRASSSEAL_MARK", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792002, "SGV_SEAL_ENABLED", 3)
		
		-- 设置能量桩1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792003, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792003, "SGV_GRASSSEAL_ATTACHPOINT", 1)
	
		-- 设置能量桩2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792004, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792004, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792005, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 792005, "SGV_GRASSSEAL_ATTACHPOINT", 3)
	
		return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_792012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_792012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102792, 2)
	
	return 0
end