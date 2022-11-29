-- 基础信息
local base_info = {
	group_id = 201006004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010501, pos = { x = 3.569, y = -2.909, z = 27.003 }, rot = { x = 0.000, y = 356.912, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 21010901, pos = { x = -7.853, y = 8.027, z = -14.916 }, rot = { x = 0.000, y = 5.298, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4003, monster_id = 21011001, pos = { x = 13.837, y = 8.084, z = -14.992 }, rot = { x = 0.000, y = 349.643, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4004, monster_id = 20011201, pos = { x = 1.211, y = 1.071, z = -6.965 }, rot = { x = 0.000, y = 85.065, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 20011201, pos = { x = 6.450, y = 1.072, z = -7.062 }, rot = { x = 0.000, y = 263.803, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4006, gadget_id = 70220005, pos = { x = 15.273, y = 7.981, z = -15.088 }, rot = { x = 0.000, y = 210.935, z = 0.000 }, level = 15 },
	{ config_id = 4007, gadget_id = 70211001, pos = { x = -10.182, y = -0.048, z = 5.006 }, rot = { x = 0.000, y = 15.051, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 4008, gadget_id = 70350005, pos = { x = 3.925, y = 0.712, z = -21.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4009, gadget_id = 70310001, pos = { x = 17.487, y = 1.000, z = 19.702 }, rot = { x = 0.000, y = 156.417, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4010, gadget_id = 70310001, pos = { x = -9.471, y = 0.944, z = 19.510 }, rot = { x = 0.000, y = 72.963, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4011, gadget_id = 70211101, pos = { x = 5.370, y = -2.961, z = 55.205 }, rot = { x = 0.000, y = 185.675, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 4012, gadget_id = 70211001, pos = { x = -9.887, y = 7.978, z = -18.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 4013, gadget_id = 70220004, pos = { x = -0.290, y = -2.791, z = 45.573 }, rot = { x = 0.000, y = 277.649, z = 0.000 }, level = 15 },
	{ config_id = 4014, gadget_id = 70220004, pos = { x = 13.709, y = 0.994, z = -3.492 }, rot = { x = 0.000, y = 313.393, z = 0.000 }, level = 15 },
	{ config_id = 4015, gadget_id = 70220013, pos = { x = 14.644, y = 8.012, z = -16.697 }, rot = { x = 0.000, y = 215.291, z = 0.000 }, level = 1 },
	{ config_id = 4016, gadget_id = 70220013, pos = { x = -5.698, y = 8.006, z = -16.431 }, rot = { x = 0.000, y = 37.321, z = 0.000 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220014, pos = { x = -7.379, y = 8.007, z = -17.155 }, rot = { x = 0.000, y = 235.206, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220002, pos = { x = 1.171, y = 1.031, z = -6.840 }, rot = { x = 0.000, y = 230.186, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70220002, pos = { x = 6.442, y = 1.001, z = -6.884 }, rot = { x = 0.000, y = 274.444, z = 0.000 }, level = 1 },
	{ config_id = 4020, gadget_id = 70220004, pos = { x = -7.381, y = 1.021, z = -5.488 }, rot = { x = 0.000, y = 188.094, z = 0.000 }, level = 15 },
	{ config_id = 4021, gadget_id = 70211002, pos = { x = 3.952, y = 1.000, z = -6.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 50, shape = RegionShape.CUBIC, size = { x = 40.000, y = 5.000, z = 10.000 }, pos = { x = 2.638, y = 0.994, z = -3.792 } }
}

-- 触发器
triggers = {
	{ config_id = 1000024, name = "VARIABLE_CHANGE_24", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_24", action = "action_EVENT_VARIABLE_CHANGE_24" },
	{ config_id = 1000050, name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "action_EVENT_ENTER_REGION_50", forbid_guest = false },
	{ config_id = 1000051, name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51" },
	{ config_id = 1000052, name = "ANY_MONSTER_DIE_52", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52", action = "action_EVENT_ANY_MONSTER_DIE_52" },
	{ config_id = 1000053, name = "ANY_MONSTER_DIE_53", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53", action = "action_EVENT_ANY_MONSTER_DIE_53" },
	{ config_id = 1000054, name = "ANY_MONSTER_DIE_54", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54", action = "action_EVENT_ANY_MONSTER_DIE_54" }
}

-- 变量
variables = {
	{ config_id = 1, name = "door", value = 0, no_refresh = false }
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
		-- description = ,
		monsters = { 4001, 4002, 4003 },
		gadgets = { 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021 },
		regions = { 50 },
		triggers = { "VARIABLE_CHANGE_24", "ENTER_REGION_50", "ANY_MONSTER_DIE_51", "ANY_MONSTER_DIE_52", "ANY_MONSTER_DIE_53", "ANY_MONSTER_DIE_54" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_24(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door"为4
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_24(context, evt)
	-- 将configid为 4008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_50(context, evt)
	if evt.param1 ~= 50 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	--判断死亡怪物的configid是否为 4002
	if evt.param1 ~= 4002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52(context, evt)
	--判断死亡怪物的configid是否为 4003
	if evt.param1 ~= 4003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53(context, evt)
	--判断死亡怪物的configid是否为 4004
	if evt.param1 ~= 4004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54(context, evt)
	--判断死亡怪物的configid是否为 4005
	if evt.param1 ~= 4005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end