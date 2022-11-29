-- 基础信息
local base_info = {
	group_id = 177006060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60017, monster_id = 24010301, pos = { x = 341.119, y = 165.830, z = -323.620 }, rot = { x = 0.000, y = 296.843, z = 0.000 }, level = 36, drop_tag = "遗迹重机", disableWander = true, affix = { 1006, 1032, 4132, 5135, 5009 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60001, gadget_id = 70310012, pos = { x = 329.169, y = 164.979, z = -314.433 }, rot = { x = 0.000, y = 336.936, z = 0.000 }, level = 19, persistent = true, area_id = 210 },
	{ config_id = 60002, gadget_id = 70900008, pos = { x = 340.768, y = 176.896, z = -325.512 }, rot = { x = 0.000, y = 334.134, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 60003, gadget_id = 70900008, pos = { x = 297.090, y = 174.775, z = -285.036 }, rot = { x = 0.000, y = 310.577, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 60004, gadget_id = 70900008, pos = { x = 359.186, y = 165.485, z = -300.835 }, rot = { x = 0.000, y = 70.567, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 60005, gadget_id = 70900008, pos = { x = 331.530, y = 165.560, z = -347.528 }, rot = { x = 0.000, y = 83.675, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 60006, gadget_id = 70211158, pos = { x = 341.605, y = 165.823, z = -328.217 }, rot = { x = 0.000, y = 16.326, z = 0.000 }, level = 16, drop_tag = "渊下宫活动高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 60007, gadget_id = 70350081, pos = { x = 329.246, y = 165.428, z = -314.407 }, rot = { x = 0.000, y = 264.879, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 60018, gadget_id = 70290281, pos = { x = 345.491, y = 170.691, z = -320.759 }, rot = { x = 0.000, y = 223.116, z = 180.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 60019, gadget_id = 70290281, pos = { x = 338.402, y = 170.649, z = -321.073 }, rot = { x = 0.000, y = 134.430, z = 180.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 60020, gadget_id = 70290281, pos = { x = 338.794, y = 170.569, z = -327.654 }, rot = { x = 0.000, y = 224.579, z = 180.000 }, level = 36, persistent = true, area_id = 210 },
	-- 先用通用超级宝箱替代 后续增加专有dropID用于技能掉落
	{ config_id = 60021, gadget_id = 70211159, pos = { x = 343.637, y = 165.823, z = -326.410 }, rot = { x = 0.000, y = 315.276, z = 0.000 }, level = 16, drop_tag = "渊下宫活动超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 60022, gadget_id = 70211158, pos = { x = 345.863, y = 165.823, z = -323.995 }, rot = { x = 0.000, y = 251.302, z = 0.000 }, level = 16, drop_tag = "渊下宫活动高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	-- 激活
	{ config_id = 60029, shape = RegionShape.SPHERE, radius = 15, pos = { x = 340.351, y = 167.077, z = -324.910 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1060008, name = "ANY_MONSTER_DIE_60008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60008", action = "action_EVENT_ANY_MONSTER_DIE_60008", trigger_count = 0 },
	-- 保底，如果通用交互机关解锁了，就给它上操作台
	{ config_id = 1060012, name = "GADGET_CREATE_60012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60012", action = "action_EVENT_GADGET_CREATE_60012", trigger_count = 0 },
	-- 机关解锁
	{ config_id = 1060013, name = "GADGET_STATE_CHANGE_60013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60013", action = "action_EVENT_GADGET_STATE_CHANGE_60013", trigger_count = 0 },
	-- 因为保底的存在，需要在按了按钮后给交互机关GearStart
	{ config_id = 1060014, name = "SELECT_OPTION_60014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60014", action = "action_EVENT_SELECT_OPTION_60014", trigger_count = 0 },
	-- 600002解锁
	{ config_id = 1060023, name = "GADGET_STATE_CHANGE_60023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60023", action = "action_EVENT_GADGET_STATE_CHANGE_60023" },
	-- 600003解锁
	{ config_id = 1060024, name = "GADGET_STATE_CHANGE_60024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60024", action = "action_EVENT_GADGET_STATE_CHANGE_60024" },
	-- 600004解锁
	{ config_id = 1060025, name = "GADGET_STATE_CHANGE_60025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60025", action = "action_EVENT_GADGET_STATE_CHANGE_60025" },
	-- 600005解锁
	{ config_id = 1060026, name = "GADGET_STATE_CHANGE_60026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60026", action = "action_EVENT_GADGET_STATE_CHANGE_60026" },
	-- 底座全亮
	{ config_id = 1060027, name = "VARIABLE_CHANGE_60027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60027", action = "action_EVENT_VARIABLE_CHANGE_60027" },
	{ config_id = 1060028, name = "GROUP_LOAD_60028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_60028", action = "action_EVENT_GROUP_LOAD_60028", trigger_count = 0 },
	-- 激活
	{ config_id = 1060029, name = "ENTER_REGION_60029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60029", action = "action_EVENT_ENTER_REGION_60029", trigger_count = 0 },
	{ config_id = 1060030, name = "GADGET_CREATE_60030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60030", action = "action_EVENT_GADGET_CREATE_60030", trigger_count = 0 },
	-- 底座亮1
	{ config_id = 1060032, name = "VARIABLE_CHANGE_60032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60032", action = "action_EVENT_VARIABLE_CHANGE_60032" },
	-- 底座亮2
	{ config_id = 1060033, name = "VARIABLE_CHANGE_60033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60033", action = "action_EVENT_VARIABLE_CHANGE_60033" },
	-- 底座亮3
	{ config_id = 1060034, name = "VARIABLE_CHANGE_60034", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60034", action = "action_EVENT_VARIABLE_CHANGE_60034" },
	-- 雷方碑解锁变量保底
	{ config_id = 1060035, name = "GADGET_CREATE_60035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60035", action = "action_EVENT_GADGET_CREATE_60035", trigger_count = 0 },
	-- 雷方碑解锁保底
	{ config_id = 1060036, name = "GADGET_STATE_CHANGE_60036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60036", action = "action_EVENT_GADGET_STATE_CHANGE_60036", trigger_count = 0 },
	-- 遗迹重机提前死亡保底开门
	{ config_id = 1060037, name = "GROUP_LOAD_60037", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_60037", action = "action_EVENT_GROUP_LOAD_60037", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true },
	{ config_id = 2, name = "isUnlock", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 60031, shape = RegionShape.SPHERE, radius = 5, pos = { x = 323.309, y = 164.883, z = -315.162 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1060009, name = "GADGET_STATE_CHANGE_60009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60009", action = "action_EVENT_GADGET_STATE_CHANGE_60009", trigger_count = 0 },
		{ config_id = 1060010, name = "VARIABLE_CHANGE_60010", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_60010", action = "action_EVENT_VARIABLE_CHANGE_60010", trigger_count = 0 },
		{ config_id = 1060011, name = "GROUP_LOAD_60011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_60011", trigger_count = 0 },
		{ config_id = 1060015, name = "GROUP_LOAD_60015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_60015", action = "action_EVENT_GROUP_LOAD_60015", trigger_count = 0 },
		{ config_id = 1060016, name = "GROUP_LOAD_60016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_60016", action = "action_EVENT_GROUP_LOAD_60016", trigger_count = 0 },
		{ config_id = 1060031, name = "ENTER_REGION_60031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		monsters = { 60017 },
		gadgets = { 60001, 60002, 60003, 60004, 60005, 60006, 60007, 60018, 60019, 60020, 60021, 60022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60008", "GADGET_CREATE_60012", "GADGET_STATE_CHANGE_60013", "SELECT_OPTION_60014", "GADGET_STATE_CHANGE_60023", "GADGET_STATE_CHANGE_60024", "GADGET_STATE_CHANGE_60025", "GADGET_STATE_CHANGE_60026", "VARIABLE_CHANGE_60027", "GROUP_LOAD_60028", "GADGET_CREATE_60030", "VARIABLE_CHANGE_60032", "VARIABLE_CHANGE_60033", "VARIABLE_CHANGE_60034", "GADGET_CREATE_60035", "GADGET_STATE_CHANGE_60036", "GROUP_LOAD_60037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 60029 },
		triggers = { "ENTER_REGION_60029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60008(context, evt)
	-- 将configid为 60021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isUnlock" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isUnlock", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_60012(context, evt)
	if 60007 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177006060, 60007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60013(context, evt)
	if 60007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177006060, 60007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60014(context, evt)
	-- 判断是gadgetid 60007 option_id 7
	if 60007 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_60014(context, evt)
	-- 删除指定group： 177006060 ；指定config：60007；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177006060, 60007, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 60007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {60017}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为177006060中,configid为：60017的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 60017, 177006060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 60018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isUnlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isUnlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60023(context, evt)
	if 60002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60023(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60024(context, evt)
	if 60003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60024(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60025(context, evt)
	if 60004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60025(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60026(context, evt)
	if 60005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60026(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_60027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "default", 177006060) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_60027(context, evt)
	-- 将configid为 60007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_60028(context, evt)
	-- 判断变量"isUnlock"为1
	if ScriptLib.GetGroupVariableValue(context, "isUnlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_60028(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {60017}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为177006060中,configid为：60017的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 60017, 177006060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_60029(context, evt)
	if evt.param1 ~= 60029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60029(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {60017}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为177006060中,configid为：60017的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 60017, 177006060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_60030(context, evt)
	if 60007 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60030(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177006060, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_60032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_60032(context, evt)
	-- 将configid为 60001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_60033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为2
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_60033(context, evt)
	-- 将configid为 60001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_60034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为3
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_60034(context, evt)
	-- 将configid为 60001 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_60035(context, evt)
	if 60003 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60035(context, evt)
	-- 将本组内变量名为 "state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 1, 177006021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60036(context, evt)
	if 60003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60036(context, evt)
	-- 将本组内变量名为 "state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 1, 177006021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_60037(context, evt)
	-- 判断变量"isUnlock"为2
	if ScriptLib.GetGroupVariableValue(context, "isUnlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_60037(context, evt)
	-- 将configid为 60018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end