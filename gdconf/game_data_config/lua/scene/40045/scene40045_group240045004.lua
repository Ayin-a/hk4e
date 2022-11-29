-- 基础信息
local base_info = {
	group_id = 240045004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70360279, pos = { x = 23.039, y = 64.879, z = -68.650 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70360288, pos = { x = 15.678, y = 71.090, z = -68.257 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4003, gadget_id = 70360287, pos = { x = 10.850, y = 70.958, z = -76.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70360170, pos = { x = 15.998, y = 67.036, z = -66.217 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4006, gadget_id = 70360287, pos = { x = 10.706, y = 65.730, z = -81.975 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4012, gadget_id = 70290141, pos = { x = 28.825, y = 65.752, z = -87.144 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70360001, pos = { x = 28.912, y = 66.559, z = -87.047 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4015, gadget_id = 70290141, pos = { x = 10.140, y = 71.990, z = -95.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4016, gadget_id = 70360001, pos = { x = 10.296, y = 72.982, z = -94.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70211011, pos = { x = 13.457, y = 71.965, z = -94.499 }, rot = { x = 0.000, y = 327.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	{ config_id = 4021, gadget_id = 70211001, pos = { x = 8.267, y = 65.851, z = -74.781 }, rot = { x = 0.000, y = 66.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 4005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 17.649, y = 65.690, z = -62.071 } },
	{ config_id = 4007, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 10.602, y = 73.789, z = -79.647 } },
	{ config_id = 4009, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 10.602, y = 68.053, z = -79.203 } },
	{ config_id = 4019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 21.633, y = 66.427, z = -71.042 } },
	{ config_id = 4020, shape = RegionShape.SPHERE, radius = 5, pos = { x = 24.010, y = 55.411, z = -67.635 } }
}

-- 触发器
triggers = {
	{ config_id = 1004005, name = "ENTER_REGION_4005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4005", action = "action_EVENT_ENTER_REGION_4005" },
	{ config_id = 1004007, name = "ENTER_REGION_4007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4007", action = "action_EVENT_ENTER_REGION_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "SELECT_OPTION_4008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4008", action = "action_EVENT_SELECT_OPTION_4008", trigger_count = 0 },
	{ config_id = 1004009, name = "ENTER_REGION_4009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4009", action = "action_EVENT_ENTER_REGION_4009", trigger_count = 0 },
	{ config_id = 1004010, name = "SELECT_OPTION_4010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4010", action = "action_EVENT_SELECT_OPTION_4010", trigger_count = 0 },
	{ config_id = 1004011, name = "SELECT_OPTION_4011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4011", action = "action_EVENT_SELECT_OPTION_4011" },
	{ config_id = 1004014, name = "SELECT_OPTION_4014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4014", action = "action_EVENT_SELECT_OPTION_4014" },
	{ config_id = 1004017, name = "SELECT_OPTION_4017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4017", action = "action_EVENT_SELECT_OPTION_4017" },
	{ config_id = 1004019, name = "ENTER_REGION_4019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4019", action = "action_EVENT_ENTER_REGION_4019" },
	{ config_id = 1004020, name = "ENTER_REGION_4020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4020", action = "action_EVENT_ENTER_REGION_4020" }
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
		gadgets = { 4001, 4002, 4003, 4004, 4006, 4012, 4013, 4015, 4016, 4018, 4021 },
		regions = { 4005, 4007, 4009, 4019, 4020 },
		triggers = { "ENTER_REGION_4005", "ENTER_REGION_4007", "SELECT_OPTION_4008", "ENTER_REGION_4009", "SELECT_OPTION_4010", "SELECT_OPTION_4011", "SELECT_OPTION_4014", "SELECT_OPTION_4017", "ENTER_REGION_4019", "ENTER_REGION_4020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4005(context, evt)
	if evt.param1 ~= 4005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240045004, 4004, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240045004, 4003, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240045004, 4006, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240045004, 4013, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240045004, 4016, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4007(context, evt)
	if evt.param1 ~= 4007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4007(context, evt)
	-- 改变指定group组240045004中， configid为4003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4008(context, evt)
	-- 判断是gadgetid 4003 option_id 1
	if 4003 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4008(context, evt)
	-- 改变指定group组240045004中， configid为4003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4009(context, evt)
	if evt.param1 ~= 4009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4009(context, evt)
	-- 改变指定group组240045004中， configid为4006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4010(context, evt)
	-- 判断是gadgetid 4006 option_id 1
	if 4006 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4010(context, evt)
	-- 改变指定group组240045004中， configid为4006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4011(context, evt)
	-- 判断是gadgetid 4004 option_id 24
	if 4004 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4011(context, evt)
	-- 改变指定group组240045004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240045004 ；指定config：4004；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240045004, 4004, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240045004中， configid为4004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 8)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045006, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4014(context, evt)
	-- 判断是gadgetid 4013 option_id 73
	if 4013 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4014(context, evt)
	-- 改变指定group组240045004中， configid为4012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4012, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240045004 ；指定config：4013；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240045004, 4013, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 3)
	
	-- 针对当前group内变量名为 "point" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "point", 1, 240045005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4017(context, evt)
	-- 判断是gadgetid 4016 option_id 73
	if 4016 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4017(context, evt)
	-- 改变指定group组240045004中， configid为4015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045004, 4015, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240045004 ；指定config：4016；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240045004, 4016, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "point" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "point", 1, 240045005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4019(context, evt)
	if evt.param1 ~= 4019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4019(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045006, 3)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045006, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4020(context, evt)
	if evt.param1 ~= 4020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4020(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045006, 5)
	
	return 0
end