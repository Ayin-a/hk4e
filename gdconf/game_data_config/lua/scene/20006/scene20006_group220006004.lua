-- 基础信息
local base_info = {
	group_id = 220006004
}

-- Trigger变量
local defs = {
	gadget_id_1 = 49
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011301, pos = { x = 190.493, y = 42.116, z = 120.896 }, rot = { x = 0.000, y = 270.380, z = 0.000 }, level = 2, disableWander = true },
	{ config_id = 4002, monster_id = 20011201, pos = { x = 148.926, y = 39.517, z = 125.644 }, rot = { x = 0.000, y = 259.120, z = 0.000 }, level = 1 },
	{ config_id = 4003, monster_id = 20011201, pos = { x = 151.626, y = 39.516, z = 121.084 }, rot = { x = 0.000, y = 268.540, z = 0.000 }, level = 1 },
	{ config_id = 4004, monster_id = 20011201, pos = { x = 147.747, y = 39.596, z = 116.115 }, rot = { x = 0.000, y = 312.590, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4005, gadget_id = 70220002, pos = { x = 190.063, y = 42.100, z = 122.414 }, rot = { x = 0.000, y = 157.904, z = 0.000 }, level = 1 },
	{ config_id = 4006, gadget_id = 70220002, pos = { x = 190.799, y = 42.000, z = 124.311 }, rot = { x = 0.000, y = 46.238, z = 0.000 }, level = 1 },
	{ config_id = 4007, gadget_id = 70220002, pos = { x = 191.812, y = 42.100, z = 122.399 }, rot = { x = 0.000, y = 300.974, z = 0.000 }, level = 1 },
	{ config_id = 4008, gadget_id = 70220002, pos = { x = 189.815, y = 42.000, z = 124.032 }, rot = { x = 0.000, y = 14.537, z = 0.000 }, level = 1 },
	{ config_id = 4009, gadget_id = 70220002, pos = { x = 189.785, y = 42.096, z = 125.823 }, rot = { x = 0.000, y = 97.862, z = 0.000 }, level = 1 },
	{ config_id = 4010, gadget_id = 70220002, pos = { x = 189.802, y = 42.000, z = 127.311 }, rot = { x = 0.000, y = 147.753, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70220002, pos = { x = 191.007, y = 42.096, z = 126.104 }, rot = { x = 0.000, y = 170.034, z = 0.000 }, level = 1 },
	{ config_id = 4012, gadget_id = 70220002, pos = { x = 190.296, y = 42.000, z = 119.350 }, rot = { x = 0.000, y = 20.155, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70220002, pos = { x = 189.193, y = 42.000, z = 119.373 }, rot = { x = 0.000, y = 75.015, z = 0.000 }, level = 1 },
	{ config_id = 4014, gadget_id = 70220002, pos = { x = 189.021, y = 42.100, z = 120.295 }, rot = { x = 0.000, y = 168.056, z = 0.000 }, level = 1 },
	{ config_id = 4015, gadget_id = 70220002, pos = { x = 189.782, y = 42.000, z = 117.506 }, rot = { x = 0.000, y = 217.749, z = 0.000 }, level = 1 },
	{ config_id = 4016, gadget_id = 70220002, pos = { x = 189.832, y = 42.096, z = 116.106 }, rot = { x = 0.000, y = 219.762, z = 0.000 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220002, pos = { x = 190.061, y = 42.017, z = 114.731 }, rot = { x = 0.000, y = 239.604, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220002, pos = { x = 190.344, y = 42.000, z = 116.821 }, rot = { x = 0.000, y = 309.409, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70220002, pos = { x = 191.921, y = 42.100, z = 120.380 }, rot = { x = 0.000, y = 84.176, z = 0.000 }, level = 1 },
	{ config_id = 4020, gadget_id = 70220002, pos = { x = 193.410, y = 42.000, z = 119.725 }, rot = { x = 0.000, y = 265.666, z = 0.000 }, level = 1 },
	{ config_id = 4021, gadget_id = 70220002, pos = { x = 194.543, y = 42.000, z = 120.111 }, rot = { x = 0.000, y = 46.301, z = 0.000 }, level = 1 },
	{ config_id = 4022, gadget_id = 70220002, pos = { x = 195.473, y = 42.096, z = 121.188 }, rot = { x = 0.000, y = 121.719, z = 0.000 }, level = 1 },
	{ config_id = 4023, gadget_id = 70220002, pos = { x = 196.381, y = 42.017, z = 119.864 }, rot = { x = 0.000, y = 240.703, z = 0.000 }, level = 1 },
	{ config_id = 4024, gadget_id = 70220002, pos = { x = 197.272, y = 42.017, z = 120.627 }, rot = { x = 0.000, y = 102.052, z = 0.000 }, level = 1 },
	{ config_id = 4025, gadget_id = 70220002, pos = { x = 188.182, y = 42.000, z = 120.959 }, rot = { x = 0.000, y = 272.819, z = 0.000 }, level = 1 },
	{ config_id = 4026, gadget_id = 70220002, pos = { x = 186.561, y = 42.000, z = 120.873 }, rot = { x = 0.000, y = 1.988, z = 0.000 }, level = 1 },
	{ config_id = 4027, gadget_id = 70220002, pos = { x = 185.228, y = 42.012, z = 120.568 }, rot = { x = 0.000, y = 334.956, z = 0.000 }, level = 1 },
	{ config_id = 4028, gadget_id = 70220002, pos = { x = 185.247, y = 42.096, z = 121.669 }, rot = { x = 0.000, y = 72.894, z = 0.000 }, level = 1 },
	{ config_id = 4029, gadget_id = 70220002, pos = { x = 183.759, y = 42.000, z = 120.750 }, rot = { x = 0.000, y = 143.265, z = 0.000 }, level = 1 },
	{ config_id = 4030, gadget_id = 70220002, pos = { x = 182.633, y = 42.000, z = 121.253 }, rot = { x = 0.000, y = 101.315, z = 0.000 }, level = 1 },
	{ config_id = 4031, gadget_id = 70220002, pos = { x = 198.701, y = 42.016, z = 120.532 }, rot = { x = 0.000, y = 56.972, z = 0.000 }, level = 1 },
	{ config_id = 4032, gadget_id = 70220002, pos = { x = 198.178, y = 42.016, z = 121.838 }, rot = { x = 0.000, y = 121.174, z = 0.000 }, level = 1 },
	{ config_id = 4033, gadget_id = 70220002, pos = { x = 190.110, y = 42.017, z = 113.636 }, rot = { x = 0.000, y = 350.108, z = 0.000 }, level = 1 },
	{ config_id = 4034, gadget_id = 70220002, pos = { x = 191.165, y = 42.017, z = 113.075 }, rot = { x = 0.000, y = 63.627, z = 0.000 }, level = 1 },
	{ config_id = 4035, gadget_id = 70220002, pos = { x = 190.606, y = 42.017, z = 112.019 }, rot = { x = 0.000, y = 303.076, z = 0.000 }, level = 1 },
	{ config_id = 4036, gadget_id = 70220002, pos = { x = 191.132, y = 42.096, z = 115.774 }, rot = { x = 0.000, y = 0.902, z = 0.000 }, level = 1 },
	{ config_id = 4037, gadget_id = 70220002, pos = { x = 190.359, y = 42.000, z = 128.626 }, rot = { x = 0.000, y = 45.422, z = 0.000 }, level = 1 },
	{ config_id = 4038, gadget_id = 70220002, pos = { x = 190.966, y = 42.000, z = 130.142 }, rot = { x = 0.000, y = 348.017, z = 0.000 }, level = 1 },
	{ config_id = 4039, gadget_id = 70220002, pos = { x = 199.887, y = 42.016, z = 122.031 }, rot = { x = 0.000, y = 40.790, z = 0.000 }, level = 1 },
	{ config_id = 4040, gadget_id = 70220002, pos = { x = 201.697, y = 42.017, z = 122.134 }, rot = { x = 0.000, y = 105.941, z = 0.000 }, level = 1 },
	{ config_id = 4041, gadget_id = 70220002, pos = { x = 190.751, y = 42.016, z = 110.558 }, rot = { x = 0.000, y = 39.556, z = 0.000 }, level = 1 },
	{ config_id = 4042, gadget_id = 70220002, pos = { x = 181.167, y = 42.000, z = 121.236 }, rot = { x = 0.000, y = 218.522, z = 0.000 }, level = 1 },
	{ config_id = 4043, gadget_id = 70220002, pos = { x = 193.771, y = 42.000, z = 122.763 }, rot = { x = 0.000, y = 149.480, z = 0.000 }, level = 1 },
	{ config_id = 4044, gadget_id = 70220002, pos = { x = 192.544, y = 42.000, z = 124.268 }, rot = { x = 0.000, y = 239.724, z = 0.000 }, level = 1 },
	{ config_id = 4045, gadget_id = 70220002, pos = { x = 188.009, y = 42.000, z = 123.637 }, rot = { x = 0.000, y = 88.346, z = 0.000 }, level = 1 },
	{ config_id = 4046, gadget_id = 70220002, pos = { x = 187.363, y = 42.000, z = 122.589 }, rot = { x = 0.000, y = 205.462, z = 0.000 }, level = 1 },
	{ config_id = 4047, gadget_id = 70220002, pos = { x = 187.313, y = 42.000, z = 119.447 }, rot = { x = 0.000, y = 316.754, z = 0.000 }, level = 1 },
	{ config_id = 4048, gadget_id = 70220002, pos = { x = 187.801, y = 42.000, z = 117.714 }, rot = { x = 0.000, y = 300.776, z = 0.000 }, level = 1 },
	{ config_id = 4049, gadget_id = 70220002, pos = { x = 192.157, y = 42.000, z = 117.275 }, rot = { x = 0.000, y = 15.554, z = 0.000 }, level = 1 },
	{ config_id = 4050, gadget_id = 70220002, pos = { x = 193.335, y = 42.000, z = 118.323 }, rot = { x = 0.000, y = 93.103, z = 0.000 }, level = 1 },
	{ config_id = 4051, gadget_id = 70350002, pos = { x = 173.892, y = 41.941, z = 120.895 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4052, gadget_id = 70350002, pos = { x = 190.531, y = 42.000, z = 137.633 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4053, gadget_id = 70360002, pos = { x = 170.469, y = 41.974, z = 123.478 }, rot = { x = 0.000, y = 222.600, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 43, shape = RegionShape.SPHERE, radius = 15.19, pos = { x = 194.974, y = 42.000, z = 123.439 } },
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 12.2, pos = { x = 121.866, y = 39.517, z = 121.168 } },
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 14.98, pos = { x = 156.498, y = 39.516, z = 120.493 } }
}

-- 触发器
triggers = {
	{ config_id = 1000043, name = "ENTER_REGION_43", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43", action = "action_EVENT_ENTER_REGION_43", forbid_guest = false },
	{ config_id = 1000044, name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44", trigger_count = 0 },
	{ config_id = 1000045, name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ config_id = 1000046, name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ config_id = 1000047, name = "GADGET_CREATE_47", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_47", action = "action_EVENT_GADGET_CREATE_47" },
	{ config_id = 1000048, name = "SELECT_OPTION_48", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48", action = "action_EVENT_SELECT_OPTION_48", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000049, name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49", trigger_count = 0 },
	{ config_id = 1000051, name = "SELECT_OPTION_51", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_51", action = "action_EVENT_SELECT_OPTION_51", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000052, name = "SELECT_OPTION_52", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_52", action = "action_EVENT_SELECT_OPTION_52", trigger_count = 0, forbid_guest = false }
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
	rand_suite = true
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
		monsters = { 4001 },
		gadgets = { 4005, 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4029, 4030, 4031, 4032, 4033, 4034, 4035, 4036, 4037, 4038, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049, 4050, 4051, 4052, 4053 },
		regions = { 43, 45, 46 },
		triggers = { "ENTER_REGION_43", "ANY_MONSTER_DIE_44", "ENTER_REGION_45", "ENTER_REGION_46", "GADGET_CREATE_47", "SELECT_OPTION_48", "ANY_MONSTER_DIE_49", "SELECT_OPTION_51", "SELECT_OPTION_52" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_43(context, evt)
	if evt.param1 ~= 43 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43(context, evt)
	-- 将configid为 4051 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4052 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4053 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4053, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 将configid为 161 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45(context, evt)
	if evt.param1 ~= 45 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45(context, evt)
	-- 将configid为 4051 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 4051 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_47(context, evt)
	if 4053 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_47(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_48(context, evt)
	-- 判断是gadgetid 4053
	if 4053 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4051, GadgetState.GearStart) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_option")
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 判断角色数量不少于0
	if evt.type == EventType.EVENT_ANY_MONSTER_DIE and evt.param1 == defs.gadget_id_1  then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 将configid为 4052 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_51(context, evt)
	-- 判断是gadgetid 4053
	if 4053 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_51(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4053, GadgetState.GearStart) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_option")
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_52(context, evt)
	-- 判断是gadgetid 4053
	if 4053 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_52(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.GearStart) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_option")
			return -1
		end 
		return 0
	end
	
	return 0
end