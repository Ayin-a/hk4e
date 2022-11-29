-- 基础信息
local base_info = {
	group_id = 133302065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65017, monster_id = 26120101, pos = { x = -44.149, y = 303.295, z = 2260.450 }, rot = { x = 0.000, y = 130.800, z = 0.000 }, level = 27, drop_tag = "大蕈兽", isElite = true, pose_id = 104, area_id = 20 },
	{ config_id = 65018, monster_id = 26120201, pos = { x = -34.414, y = 303.039, z = 2262.324 }, rot = { x = 0.000, y = 209.224, z = 0.000 }, level = 27, drop_tag = "大蕈兽", isElite = true, pose_id = 104, area_id = 20 },
	{ config_id = 65020, monster_id = 26120301, pos = { x = -39.772, y = 304.380, z = 2253.020 }, rot = { x = 0.000, y = 10.570, z = 0.000 }, level = 27, drop_tag = "大蕈兽", isElite = true, pose_id = 104, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65001, gadget_id = 70230112, pos = { x = -33.207, y = 303.333, z = 2257.325 }, rot = { x = 0.000, y = 89.624, z = 90.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65002, gadget_id = 70230112, pos = { x = -42.825, y = 303.272, z = 2262.171 }, rot = { x = 2.754, y = 318.067, z = 91.476 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65003, gadget_id = 70230108, pos = { x = -43.455, y = 303.086, z = 2259.381 }, rot = { x = 354.278, y = 27.564, z = 106.288 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65004, gadget_id = 70230108, pos = { x = -35.548, y = 303.088, z = 2258.996 }, rot = { x = 336.647, y = 141.514, z = 103.885 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65005, gadget_id = 70230109, pos = { x = -35.862, y = 303.686, z = 2255.500 }, rot = { x = 0.000, y = 221.981, z = 90.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65006, gadget_id = 70230109, pos = { x = -39.808, y = 303.351, z = 2261.685 }, rot = { x = 357.020, y = 92.371, z = 90.939 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65007, gadget_id = 70230108, pos = { x = -39.640, y = 304.263, z = 2253.426 }, rot = { x = 0.671, y = 254.623, z = 89.458 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65008, gadget_id = 70230109, pos = { x = -43.916, y = 304.195, z = 2255.418 }, rot = { x = 358.694, y = 312.361, z = 88.248 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65009, gadget_id = 70230112, pos = { x = -42.313, y = 304.602, z = 2252.794 }, rot = { x = 0.000, y = 203.875, z = 90.000 }, level = 27, persistent = true, area_id = 20 },
	-- 茸蕈窟
	{ config_id = 65012, gadget_id = 70360001, pos = { x = -32.037, y = 303.220, z = 2257.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 65013, gadget_id = 70211032, pos = { x = -39.754, y = 305.333, z = 2257.622 }, rot = { x = 0.000, y = 36.277, z = 0.000 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 20 },
	-- 香醉坡
	{ config_id = 65014, gadget_id = 70360001, pos = { x = -43.409, y = 305.065, z = 2249.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 无郁稠林
	{ config_id = 65022, gadget_id = 70360001, pos = { x = -44.563, y = 303.069, z = 2265.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 65010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -39.858, y = 306.116, z = 2258.311 }, area_id = 20 },
	{ config_id = 65015, shape = RegionShape.SPHERE, radius = 25, pos = { x = -39.072, y = 305.336, z = 2258.055 }, area_id = 20 },
	{ config_id = 65016, shape = RegionShape.SPHERE, radius = 25, pos = { x = -39.595, y = 306.084, z = 2257.592 }, area_id = 20 },
	{ config_id = 65021, shape = RegionShape.SPHERE, radius = 25, pos = { x = -39.595, y = 306.084, z = 2257.592 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1065010, name = "ENTER_REGION_65010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65010", action = "action_EVENT_ENTER_REGION_65010" },
	{ config_id = 1065011, name = "VARIABLE_CHANGE_65011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_65011", action = "action_EVENT_VARIABLE_CHANGE_65011" },
	{ config_id = 1065015, name = "ENTER_REGION_65015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65015", action = "action_EVENT_ENTER_REGION_65015" },
	{ config_id = 1065016, name = "ENTER_REGION_65016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65016", action = "action_EVENT_ENTER_REGION_65016" },
	{ config_id = 1065019, name = "ANY_MONSTER_DIE_65019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65019", action = "action_EVENT_ANY_MONSTER_DIE_65019" },
	{ config_id = 1065021, name = "ENTER_REGION_65021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65021", action = "action_EVENT_ENTER_REGION_65021" },
	{ config_id = 1065023, name = "GADGET_STATE_CHANGE_65023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65023", action = "action_EVENT_GADGET_STATE_CHANGE_65023" },
	{ config_id = 1065024, name = "GADGET_STATE_CHANGE_65024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65024", action = "action_EVENT_GADGET_STATE_CHANGE_65024" },
	{ config_id = 1065025, name = "GADGET_STATE_CHANGE_65025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65025", action = "action_EVENT_GADGET_STATE_CHANGE_65025" },
	{ config_id = 1065026, name = "GROUP_LOAD_65026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65026", action = "action_EVENT_GROUP_LOAD_65026", trigger_count = 0 },
	{ config_id = 1065027, name = "GROUP_LOAD_65027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65027", action = "action_EVENT_GROUP_LOAD_65027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true },
	{ config_id = 2, name = "baodi", value = 0, no_refresh = true }
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
		gadgets = { 65001, 65002, 65003, 65004, 65005, 65006, 65007, 65008, 65009, 65012, 65014, 65022 },
		regions = { 65015, 65021 },
		triggers = { "VARIABLE_CHANGE_65011", "ENTER_REGION_65015", "ENTER_REGION_65021", "GADGET_STATE_CHANGE_65023", "GADGET_STATE_CHANGE_65024", "GADGET_STATE_CHANGE_65025", "GROUP_LOAD_65026", "GROUP_LOAD_65027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 65017, 65018, 65020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 65013 },
		regions = { 65010, 65016 },
		triggers = { "ENTER_REGION_65010", "ENTER_REGION_65016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_65010(context, evt)
	if evt.param1 ~= 65010 then return false end
	
	-- 判断是区域65010
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 65010 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302065, 2)
	
	-- 将configid为 65013 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65013, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302065, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65015(context, evt)
	if evt.param1 ~= 65015 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65015(context, evt)
	-- 调用提示id为 33020109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020109) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65016(context, evt)
	if evt.param1 ~= 65016 then return false end
	
	-- 判断变量"unlock"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65016(context, evt)
	-- 调用提示id为 33020112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65019(context, evt)
	-- 将本组内变量名为 "baodi" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 65013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65021(context, evt)
	if evt.param1 ~= 65021 then return false end
	
	-- 判断变量"unlock"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65021(context, evt)
	-- 调用提示id为 33020110 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65023(context, evt)
	if 65012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65023(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 65003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 65002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 65006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65024(context, evt)
	if 65014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65024(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 65007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 65008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 65009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65025(context, evt)
	if 65022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65025(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 65001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 65004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 65005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65026(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65026(context, evt)
	-- 将configid为 65013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65027(context, evt)
	-- 判断变量"baodi"为0
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 0 then
			return false
	end
	
	-- 判断变量"unlock"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302065, 3)
	
	return 0
end