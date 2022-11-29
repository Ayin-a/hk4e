-- 基础信息
local base_info = {
	group_id = 201059004
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
	{ config_id = 4001, gadget_id = 70350025, pos = { x = -164.524, y = 132.046, z = 106.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域2大门
	{ config_id = 4003, gadget_id = 70350146, pos = { x = -157.819, y = 146.165, z = 27.864 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	-- 区域2大门
	{ config_id = 4004, gadget_id = 70350005, pos = { x = -177.918, y = 142.903, z = 36.221 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4006, gadget_id = 70330043, pos = { x = -172.774, y = 132.531, z = 101.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70330043, pos = { x = -155.276, y = 132.555, z = 101.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70900201, pos = { x = -163.191, y = 132.580, z = 92.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70900201, pos = { x = -229.190, y = 127.150, z = 92.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4024, gadget_id = 70900201, pos = { x = -164.350, y = 132.653, z = 121.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4035, gadget_id = 70900202, pos = { x = -172.779, y = 134.860, z = 101.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4036, gadget_id = 70900202, pos = { x = -155.233, y = 134.862, z = 102.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4002, shape = RegionShape.CUBIC, size = { x = 20.000, y = 5.000, z = 5.000 }, pos = { x = -157.204, y = 148.225, z = 18.515 } },
	{ config_id = 4005, shape = RegionShape.CUBIC, size = { x = 3.000, y = 10.000, z = 15.000 }, pos = { x = -209.034, y = 143.986, z = 21.870 } },
	{ config_id = 4008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 20.000 }, pos = { x = -185.556, y = 149.917, z = 34.428 } },
	{ config_id = 4013, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -249.479, y = 120.158, z = 102.520 } },
	{ config_id = 4016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 2.000 }, pos = { x = -157.870, y = 134.716, z = 82.781 } },
	{ config_id = 4020, shape = RegionShape.CUBIC, size = { x = 2.000, y = 5.000, z = 15.000 }, pos = { x = -229.210, y = 128.720, z = 92.969 } },
	{ config_id = 4021, shape = RegionShape.CUBIC, size = { x = 2.000, y = 5.000, z = 15.000 }, pos = { x = -229.210, y = 128.720, z = 92.969 } },
	{ config_id = 4023, shape = RegionShape.CUBIC, size = { x = 40.000, y = 5.000, z = 40.000 }, pos = { x = -160.250, y = 125.134, z = 139.452 } },
	{ config_id = 4025, shape = RegionShape.CUBIC, size = { x = 2.000, y = 5.000, z = 15.000 }, pos = { x = -229.210, y = 128.720, z = 92.969 } },
	{ config_id = 4026, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 20.000 }, pos = { x = -185.556, y = 149.917, z = 34.428 } },
	{ config_id = 4029, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 2.000 }, pos = { x = -255.797, y = 113.872, z = 71.682 } },
	{ config_id = 4030, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 20.000 }, pos = { x = -185.556, y = 149.917, z = 34.428 } },
	{ config_id = 4032, shape = RegionShape.CUBIC, size = { x = 2.000, y = 5.000, z = 15.000 }, pos = { x = -229.210, y = 128.720, z = 92.969 } },
	{ config_id = 4034, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 20.000 }, pos = { x = -185.556, y = 149.917, z = 34.428 } },
	{ config_id = 4037, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 2.000 }, pos = { x = -157.870, y = 134.716, z = 82.781 } },
	{ config_id = 4038, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 2.000 }, pos = { x = -157.870, y = 134.716, z = 82.781 } },
	{ config_id = 4039, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 2.000 }, pos = { x = -157.870, y = 134.716, z = 82.781 } },
	{ config_id = 4040, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -249.479, y = 120.158, z = 102.520 } },
	{ config_id = 4041, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -249.479, y = 120.158, z = 102.520 } },
	{ config_id = 4042, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -249.479, y = 120.158, z = 102.520 } },
	{ config_id = 4044, shape = RegionShape.CUBIC, size = { x = 20.000, y = 5.000, z = 5.000 }, pos = { x = -157.204, y = 143.932, z = 48.692 } },
	{ config_id = 4045, shape = RegionShape.CUBIC, size = { x = 20.000, y = 5.000, z = 5.000 }, pos = { x = -157.204, y = 143.932, z = 48.692 } },
	{ config_id = 4046, shape = RegionShape.CUBIC, size = { x = 20.000, y = 5.000, z = 5.000 }, pos = { x = -157.204, y = 143.932, z = 48.692 } }
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "ENTER_REGION_4002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4002", action = "action_EVENT_ENTER_REGION_4002" },
	{ config_id = 1004005, name = "ENTER_REGION_4005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4005", action = "action_EVENT_ENTER_REGION_4005" },
	{ config_id = 1004007, name = "GADGET_STATE_CHANGE_4007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4007", action = "action_EVENT_GADGET_STATE_CHANGE_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "ENTER_REGION_4008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4008", action = "action_EVENT_ENTER_REGION_4008" },
	{ config_id = 1004009, name = "DUNGEON_AVATAR_SLIP_DIE_4009", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4009", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4009", trigger_count = 0 },
	{ config_id = 1004010, name = "GADGET_STATE_CHANGE_4010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4010", action = "action_EVENT_GADGET_STATE_CHANGE_4010", trigger_count = 0 },
	{ config_id = 1004012, name = "GADGET_CREATE_4012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4012", action = "action_EVENT_GADGET_CREATE_4012" },
	{ config_id = 1004013, name = "ENTER_REGION_4013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4013", action = "action_EVENT_ENTER_REGION_4013", trigger_count = 0 },
	{ config_id = 1004014, name = "GADGET_CREATE_4014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4014", action = "action_EVENT_GADGET_CREATE_4014" },
	{ config_id = 1004015, name = "VARIABLE_CHANGE_4015", event = EventType.EVENT_VARIABLE_CHANGE, source = "guihuo_2", condition = "condition_EVENT_VARIABLE_CHANGE_4015", action = "action_EVENT_VARIABLE_CHANGE_4015" },
	{ config_id = 1004016, name = "ENTER_REGION_4016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4016", action = "action_EVENT_ENTER_REGION_4016" },
	{ config_id = 1004017, name = "DUNGEON_ALL_AVATAR_DIE_4017", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4017", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_4017", trigger_count = 0 },
	{ config_id = 1004020, name = "ENTER_REGION_4020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4020", action = "action_EVENT_ENTER_REGION_4020" },
	{ config_id = 1004021, name = "ENTER_REGION_4021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4021", action = "action_EVENT_ENTER_REGION_4021" },
	{ config_id = 1004022, name = "DUNGEON_ALL_AVATAR_DIE_4022", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4022", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_4022", trigger_count = 0 },
	{ config_id = 1004023, name = "ENTER_REGION_4023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4023", action = "action_EVENT_ENTER_REGION_4023" },
	{ config_id = 1004025, name = "ENTER_REGION_4025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4025", action = "action_EVENT_ENTER_REGION_4025" },
	{ config_id = 1004026, name = "ENTER_REGION_4026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4026", action = "action_EVENT_ENTER_REGION_4026" },
	{ config_id = 1004027, name = "DUNGEON_ALL_AVATAR_DIE_4027", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4027", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_4027", trigger_count = 0 },
	{ config_id = 1004028, name = "DUNGEON_ALL_AVATAR_DIE_4028", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4028", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_4028", trigger_count = 0 },
	{ config_id = 1004029, name = "ENTER_REGION_4029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1004030, name = "ENTER_REGION_4030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4030", action = "action_EVENT_ENTER_REGION_4030" },
	{ config_id = 1004032, name = "ENTER_REGION_4032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4032", action = "action_EVENT_ENTER_REGION_4032", trigger_count = 0 },
	{ config_id = 1004034, name = "ENTER_REGION_4034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4034", action = "action_EVENT_ENTER_REGION_4034", trigger_count = 0 },
	{ config_id = 1004037, name = "ENTER_REGION_4037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4037", action = "action_EVENT_ENTER_REGION_4037" },
	{ config_id = 1004038, name = "ENTER_REGION_4038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4038", action = "action_EVENT_ENTER_REGION_4038" },
	{ config_id = 1004039, name = "ENTER_REGION_4039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4039", action = "action_EVENT_ENTER_REGION_4039", trigger_count = 0 },
	{ config_id = 1004040, name = "ENTER_REGION_4040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4040", action = "action_EVENT_ENTER_REGION_4040", trigger_count = 0 },
	{ config_id = 1004041, name = "ENTER_REGION_4041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4041", action = "action_EVENT_ENTER_REGION_4041", trigger_count = 0 },
	{ config_id = 1004042, name = "ENTER_REGION_4042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4042", action = "action_EVENT_ENTER_REGION_4042", trigger_count = 0 },
	{ config_id = 1004044, name = "ENTER_REGION_4044", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4044", action = "action_EVENT_ENTER_REGION_4044" },
	{ config_id = 1004045, name = "ENTER_REGION_4045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4045", action = "action_EVENT_ENTER_REGION_4045" },
	{ config_id = 1004046, name = "ENTER_REGION_4046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4046", action = "action_EVENT_ENTER_REGION_4046", trigger_count = 0 },
	{ config_id = 1004047, name = "DUNGEON_AVATAR_SLIP_DIE_4047", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4047", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4047", trigger_count = 0 },
	{ config_id = 1004048, name = "DUNGEON_AVATAR_SLIP_DIE_4048", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4048", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4048", trigger_count = 0 },
	{ config_id = 1004049, name = "DUNGEON_AVATAR_SLIP_DIE_4049", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4049", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4049", trigger_count = 0 },
	{ config_id = 1004050, name = "DUNGEON_REVIVE_4050", event = EventType.EVENT_DUNGEON_REVIVE, source = "", condition = "", action = "action_EVENT_DUNGEON_REVIVE_4050", trigger_count = 0 },
	{ config_id = 1004051, name = "DUNGEON_AVATAR_SLIP_DIE_4051", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4051", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4051", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "guihuo_2", value = 0, no_refresh = false },
	{ config_id = 2, name = "loop0", value = 0, no_refresh = false },
	{ config_id = 3, name = "loop1", value = 0, no_refresh = false },
	{ config_id = 4, name = "loop2", value = 0, no_refresh = false },
	{ config_id = 5, name = "loop3", value = 0, no_refresh = false },
	{ config_id = 6, name = "Enterloop", value = 0, no_refresh = false },
	{ config_id = 7, name = "revivetest", value = 0, no_refresh = false },
	{ config_id = 8, name = "loop3_bool", value = 0, no_refresh = false }
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
		gadgets = { 4001, 4003, 4004, 4006, 4011 },
		regions = { 4002, 4005, 4008, 4013, 4016, 4020, 4021, 4023, 4025, 4026, 4029, 4030, 4032, 4034, 4037, 4038, 4039, 4040, 4041, 4042, 4044, 4045, 4046 },
		triggers = { "ENTER_REGION_4002", "ENTER_REGION_4005", "GADGET_STATE_CHANGE_4007", "ENTER_REGION_4008", "DUNGEON_AVATAR_SLIP_DIE_4009", "GADGET_STATE_CHANGE_4010", "GADGET_CREATE_4012", "ENTER_REGION_4013", "GADGET_CREATE_4014", "VARIABLE_CHANGE_4015", "ENTER_REGION_4016", "DUNGEON_ALL_AVATAR_DIE_4017", "ENTER_REGION_4020", "ENTER_REGION_4021", "DUNGEON_ALL_AVATAR_DIE_4022", "ENTER_REGION_4023", "ENTER_REGION_4025", "ENTER_REGION_4026", "DUNGEON_ALL_AVATAR_DIE_4027", "DUNGEON_ALL_AVATAR_DIE_4028", "ENTER_REGION_4029", "ENTER_REGION_4030", "ENTER_REGION_4032", "ENTER_REGION_4034", "ENTER_REGION_4037", "ENTER_REGION_4038", "ENTER_REGION_4039", "ENTER_REGION_4040", "ENTER_REGION_4041", "ENTER_REGION_4042", "ENTER_REGION_4044", "ENTER_REGION_4045", "ENTER_REGION_4046", "DUNGEON_AVATAR_SLIP_DIE_4047", "DUNGEON_AVATAR_SLIP_DIE_4048", "DUNGEON_AVATAR_SLIP_DIE_4049", "DUNGEON_REVIVE_4050", "DUNGEON_AVATAR_SLIP_DIE_4051" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4035, 4036 },
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
function condition_EVENT_ENTER_REGION_4002(context, evt)
	if evt.param1 ~= 4002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4002(context, evt)
	-- 改变指定group组201059004中， configid为4003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201059004, 4003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059003, EntityType.GADGET, 3020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "Enterloop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Enterloop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4005(context, evt)
	if evt.param1 ~= 4005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop1"为5
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4005(context, evt)
	-- 调用提示id为 10590116 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
	-- 检测config_id为4006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
	-- 针对当前group内变量名为 "guihuo_2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "guihuo_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4008(context, evt)
	if evt.param1 ~= 4008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop0"为3
	if ScriptLib.GetGroupVariableValue(context, "loop0") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4008(context, evt)
	-- 将configid为 4006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "guihuo_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guihuo_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059004, 3)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059004, 3)
	
	-- 将本组内变量名为 "loop0" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop0", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4009(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop0"为3
	if ScriptLib.GetGroupVariableValue(context, "loop0") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop0" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop0", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4010(context, evt)
	-- 检测config_id为4011的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4010(context, evt)
	-- 针对当前group内变量名为 "guihuo_2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "guihuo_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4012(context, evt)
	if 4006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4012(context, evt)
	-- 将configid为 4006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4013(context, evt)
	if evt.param1 ~= 4013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop0"为2
	if ScriptLib.GetGroupVariableValue(context, "loop0") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4013(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 201059009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059009, 3)
	
	-- 针对当前group内变量名为 "loop0" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop0", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4014(context, evt)
	if 4011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4014(context, evt)
	-- 将configid为 4011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"guihuo_2"为2
	if ScriptLib.GetGroupVariableValue(context, "guihuo_2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4015(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为4024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "loop0" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop0", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "loop1" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop1", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "loop2" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop2", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "loop3" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop3", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4016(context, evt)
	if evt.param1 ~= 4016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4016(context, evt)
	-- 调用提示id为 10590113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "loop0" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop0", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为4019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4017(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop1"为5
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_4017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop1", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4020(context, evt)
	if evt.param1 ~= 4020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop0"为1
	if ScriptLib.GetGroupVariableValue(context, "loop0") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4020(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059004, EntityType.GADGET, 4019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop0" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop0", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4021(context, evt)
	if evt.param1 ~= 4021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop1"为3
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4021(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059004, EntityType.GADGET, 4019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4022(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop2"为5
	if ScriptLib.GetGroupVariableValue(context, "loop2") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_4022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop2", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4023(context, evt)
	if evt.param1 ~= 4023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4025(context, evt)
	if evt.param1 ~= 4025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop2"为3
	if ScriptLib.GetGroupVariableValue(context, "loop2") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059004, EntityType.GADGET, 4019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4026(context, evt)
	if evt.param1 ~= 4026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop1"为5
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4026(context, evt)
	-- 将configid为 4006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "guihuo_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guihuo_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059004, 3)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059004, 3)
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "loop1" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop1", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4027(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop3"为5
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_4027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_4028(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop0"为3
	if ScriptLib.GetGroupVariableValue(context, "loop0") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_4028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop0" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop0", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4030(context, evt)
	if evt.param1 ~= 4030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop2"为5
	if ScriptLib.GetGroupVariableValue(context, "loop2") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4030(context, evt)
	-- 将configid为 4006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "guihuo_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guihuo_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059004, 3)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059004, 3)
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "loop" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4032(context, evt)
	if evt.param1 ~= 4032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop3"为3
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4032(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059004, EntityType.GADGET, 4019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4034(context, evt)
	if evt.param1 ~= 4034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop3"为5
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4034(context, evt)
	-- 将configid为 4006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "guihuo_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guihuo_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059004, 3)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059004, 3)
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 -4
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", -4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4037(context, evt)
	if evt.param1 ~= 4037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop1"为2
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4037(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为4019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 10590115 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4038(context, evt)
	if evt.param1 ~= 4038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop2"为2
	if ScriptLib.GetGroupVariableValue(context, "loop2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4038(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为4019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 10590118 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4039(context, evt)
	if evt.param1 ~= 4039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop3"为2
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4039(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为4019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 10590118 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4040(context, evt)
	if evt.param1 ~= 4040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop1"为4
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4040(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 201059009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059009, 3)
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4041(context, evt)
	if evt.param1 ~= 4041 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop2"为4
	if ScriptLib.GetGroupVariableValue(context, "loop2") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4041(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 201059009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059009, 3)
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4042(context, evt)
	if evt.param1 ~= 4042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop3"为4
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4042(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 201059009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201059009, 3)
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4044(context, evt)
	if evt.param1 ~= 4044 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop1"为1
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4044(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4045(context, evt)
	if evt.param1 ~= 4045 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop2"为1
	if ScriptLib.GetGroupVariableValue(context, "loop2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4045(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4046(context, evt)
	if evt.param1 ~= 4046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"loop3"为1
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4046(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4047(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop1"为5
	if ScriptLib.GetGroupVariableValue(context, "loop1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop1", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4048(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop2"为5
	if ScriptLib.GetGroupVariableValue(context, "loop2") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop2" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop2", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4049(context, evt)
	-- 判断变量"Enterloop"为1
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 1 then
			return false
	end
	
	-- 判断变量"loop3"为5
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4049(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "loop3" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "loop3", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_REVIVE_4050(context, evt)
	-- 针对当前group内变量名为 "revivetest" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revivetest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_AVATAR_SLIP_DIE_4051(context, evt)
	-- 判断变量"Enterloop"为99
	if ScriptLib.GetGroupVariableValue(context, "Enterloop") ~= 99 then
			return false
	end
	
	-- 判断变量"loop3"为5
	if ScriptLib.GetGroupVariableValue(context, "loop3") ~= 5 then
			return false
	end
	
	-- 判断变量"loop3_bool"为1
	if ScriptLib.GetGroupVariableValue(context, "loop3_bool") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_4051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201059010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为4019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "loop3" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop3", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "loop3_bool" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "loop3_bool", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end