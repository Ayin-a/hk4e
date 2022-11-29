-- 基础信息
local base_info = {
	group_id = 220111006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6003, monster_id = 25080401, pos = { x = 34.350, y = 26.367, z = 88.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 6004, monster_id = 25080401, pos = { x = 18.590, y = 26.336, z = 97.910 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 6006, monster_id = 25050301, pos = { x = 21.462, y = 26.420, z = 91.901 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6007, monster_id = 25050301, pos = { x = 29.204, y = 26.420, z = 90.106 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6001, gadget_id = 70290138, pos = { x = 39.197, y = 26.432, z = 94.160 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6002, gadget_id = 70290138, pos = { x = 10.004, y = 26.394, z = 94.162 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6011, gadget_id = 70220070, pos = { x = 29.471, y = 26.450, z = 87.741 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1 },
	{ config_id = 6012, gadget_id = 70290136, pos = { x = 24.124, y = 28.134, z = 79.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6013, gadget_id = 70220070, pos = { x = 21.191, y = 26.420, z = 89.521 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, gadget_id = 70220070, pos = { x = 28.347, y = 26.420, z = 98.583 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1 },
	{ config_id = 6015, gadget_id = 70220070, pos = { x = 35.770, y = 26.417, z = 90.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6016, gadget_id = 70220071, pos = { x = 27.893, y = 26.447, z = 96.385 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 70220071, pos = { x = 33.510, y = 26.355, z = 90.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6019, gadget_id = 70220071, pos = { x = 19.531, y = 26.420, z = 88.027 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1 },
	{ config_id = 6020, gadget_id = 70220071, pos = { x = 27.693, y = 26.435, z = 89.181 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1 },
	{ config_id = 6021, gadget_id = 70211001, pos = { x = -3.681, y = 24.661, z = 86.064 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 6022, gadget_id = 70220070, pos = { x = 27.465, y = 26.420, z = 94.180 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1 },
	{ config_id = 6023, gadget_id = 70290141, pos = { x = 24.231, y = 27.148, z = 103.807 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6027, gadget_id = 70360001, pos = { x = 24.103, y = 29.442, z = 79.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6028, gadget_id = 70360001, pos = { x = 24.233, y = 28.047, z = 103.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6005, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 5.000 }, pos = { x = 56.091, y = 25.624, z = 76.035 } },
	{ config_id = 6008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 10.000 }, pos = { x = 35.630, y = 31.340, z = 94.825 } },
	{ config_id = 6010, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 10.000 }, pos = { x = 43.795, y = 30.506, z = 94.825 } },
	{ config_id = 6017, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 10.000 }, pos = { x = 56.091, y = 25.624, z = 81.589 } },
	{ config_id = 6024, shape = RegionShape.SPHERE, radius = 5, pos = { x = 46.856, y = 27.524, z = 94.499 } },
	{ config_id = 6029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 5.098, y = 25.983, z = 95.484 } },
	{ config_id = 6030, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 5.000 }, pos = { x = 56.091, y = 25.624, z = 76.035 } },
	{ config_id = 6031, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 10.000 }, pos = { x = 35.630, y = 31.340, z = 94.825 } },
	{ config_id = 6034, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 5.000 }, pos = { x = 56.091, y = 25.624, z = 76.035 } }
}

-- 触发器
triggers = {
	{ config_id = 1006005, name = "ENTER_REGION_6005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6005", action = "action_EVENT_ENTER_REGION_6005" },
	{ config_id = 1006008, name = "ENTER_REGION_6008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6008", action = "action_EVENT_ENTER_REGION_6008", trigger_count = 0 },
	{ config_id = 1006009, name = "ANY_MONSTER_DIE_6009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6009", action = "action_EVENT_ANY_MONSTER_DIE_6009" },
	{ config_id = 1006010, name = "ENTER_REGION_6010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6010", action = "action_EVENT_ENTER_REGION_6010", trigger_count = 0 },
	{ config_id = 1006017, name = "ENTER_REGION_6017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6017", action = "action_EVENT_ENTER_REGION_6017" },
	{ config_id = 1006024, name = "ENTER_REGION_6024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6024", action = "action_EVENT_ENTER_REGION_6024" },
	{ config_id = 1006025, name = "SELECT_OPTION_6025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6025", action = "action_EVENT_SELECT_OPTION_6025" },
	{ config_id = 1006026, name = "SELECT_OPTION_6026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6026", action = "action_EVENT_SELECT_OPTION_6026" },
	{ config_id = 1006029, name = "ENTER_REGION_6029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6029", action = "action_EVENT_ENTER_REGION_6029" },
	{ config_id = 1006030, name = "ENTER_REGION_6030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6030", action = "action_EVENT_ENTER_REGION_6030" },
	{ config_id = 1006031, name = "ENTER_REGION_6031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6031", action = "action_EVENT_ENTER_REGION_6031", trigger_count = 0 },
	{ config_id = 1006032, name = "SELECT_OPTION_6032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6032", action = "action_EVENT_SELECT_OPTION_6032" },
	{ config_id = 1006033, name = "SELECT_OPTION_6033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6033", action = "action_EVENT_SELECT_OPTION_6033" },
	{ config_id = 1006034, name = "ENTER_REGION_6034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6034", action = "action_EVENT_ENTER_REGION_6034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "alive", value = 0, no_refresh = false },
	{ config_id = 2, name = "point", value = 0, no_refresh = false },
	{ config_id = 3, name = "point1", value = 0, no_refresh = false },
	{ config_id = 4, name = "point2", value = 0, no_refresh = false }
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
		gadgets = { 6001, 6002, 6011, 6012, 6013, 6014, 6015, 6016, 6018, 6019, 6020, 6021, 6022, 6023, 6027, 6028 },
		regions = { 6005, 6008, 6010, 6017, 6024, 6030, 6031, 6034 },
		triggers = { "ENTER_REGION_6005", "ENTER_REGION_6008", "ENTER_REGION_6010", "ENTER_REGION_6017", "ENTER_REGION_6024", "SELECT_OPTION_6025", "SELECT_OPTION_6026", "ENTER_REGION_6030", "ENTER_REGION_6031", "SELECT_OPTION_6032", "SELECT_OPTION_6033", "ENTER_REGION_6034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6003, 6004, 6006, 6007 },
		gadgets = { },
		regions = { 6029 },
		triggers = { "ANY_MONSTER_DIE_6009", "ENTER_REGION_6029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_6005(context, evt)
	if evt.param1 ~= 6005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"point"为1
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6005(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6008(context, evt)
	if evt.param1 ~= 6008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive"为0
	if ScriptLib.GetGroupVariableValue(context, "alive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6008(context, evt)
	-- 改变指定group组220111006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220111006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 改变指定group组220111006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220111006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "alive" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6010(context, evt)
	if evt.param1 ~= 6010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive"为1
	if ScriptLib.GetGroupVariableValue(context, "alive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6010(context, evt)
	-- 改变指定group组220111006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6017(context, evt)
	if evt.param1 ~= 6017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6024(context, evt)
	if evt.param1 ~= 6024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6024(context, evt)
	-- 改变指定group组220111006中， configid为6012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6012, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220111006, 6027, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220111006, 6028, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6025(context, evt)
	-- 判断是gadgetid 6027 option_id 72
	if 6027 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6025(context, evt)
	-- 改变指定group组220111006中， configid为6012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6012, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220111006 ；指定config：6027；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220111006, 6027, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6026(context, evt)
	-- 判断是gadgetid 6028 option_id 73
	if 6028 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6026(context, evt)
	-- 改变指定group组220111006中， configid为6023的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6023, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220111006 ；指定config：6028；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220111006, 6028, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "collect" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "collect", 1, 220111013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "point1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "point1", 1, 220111006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6029(context, evt)
	if evt.param1 ~= 6029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6029(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 7)
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 12)
	
	-- 将本组内变量名为 "point2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "point2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6030(context, evt)
	if evt.param1 ~= 6030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"point1"为0
	if ScriptLib.GetGroupVariableValue(context, "point1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6030(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6031(context, evt)
	if evt.param1 ~= 6031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive"为1
	if ScriptLib.GetGroupVariableValue(context, "alive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6031(context, evt)
	-- 改变指定group组220111006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6032(context, evt)
	-- 判断是gadgetid 6028 option_id 73
	if 6028 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6032(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6033(context, evt)
	-- 判断是gadgetid 6028 option_id 73
	if 6028 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"point2"为0
	if ScriptLib.GetGroupVariableValue(context, "point2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6033(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 7)
	
	-- 将本组内变量名为 "point2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "point2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6034(context, evt)
	if evt.param1 ~= 6034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6034(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 10)
	
	return 0
end