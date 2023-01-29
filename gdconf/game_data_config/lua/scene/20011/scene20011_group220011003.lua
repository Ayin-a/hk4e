-- 基础信息
local base_info = {
	group_id = 220011003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010401, pos = { x = 488.998, y = -24.119, z = 126.999 }, rot = { x = 0.000, y = 239.999, z = 0.000 }, level = 3, pose_id = 402 },
	{ config_id = 3002, monster_id = 21010401, pos = { x = 488.459, y = -23.420, z = 116.250 }, rot = { x = 0.000, y = 305.466, z = 0.000 }, level = 3, pose_id = 402 },
	{ config_id = 3003, monster_id = 20011101, pos = { x = 486.595, y = -23.615, z = 120.939 }, rot = { x = 0.000, y = 269.280, z = 0.000 }, level = 3, disableWander = true },
	{ config_id = 3004, monster_id = 21010401, pos = { x = 489.836, y = -22.880, z = 121.183 }, rot = { x = 0.000, y = 280.530, z = 0.000 }, level = 3, pose_id = 402 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = 480.113, y = -22.880, z = 126.691 }, rot = { x = 0.000, y = 140.117, z = 0.000 }, level = 3 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = 481.056, y = -22.880, z = 116.133 }, rot = { x = 0.000, y = 53.650, z = 0.000 }, level = 3 },
	{ config_id = 3007, monster_id = 21010201, pos = { x = 491.968, y = -23.010, z = 116.600 }, rot = { x = 0.000, y = 297.970, z = 0.000 }, level = 3 },
	{ config_id = 3008, monster_id = 21010201, pos = { x = 492.038, y = -23.010, z = 126.518 }, rot = { x = 0.000, y = 225.324, z = 0.000 }, level = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3009, gadget_id = 70350002, pos = { x = 463.668, y = -9.541, z = 120.944 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70350002, pos = { x = 500.938, y = -23.180, z = 121.640 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70310001, pos = { x = 460.074, y = -7.317, z = 126.777 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70310001, pos = { x = 460.087, y = -7.185, z = 115.093 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70310002, pos = { x = 498.672, y = -18.596, z = 127.408 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70310002, pos = { x = 498.679, y = -18.511, z = 116.032 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70310002, pos = { x = 430.307, y = -13.330, z = 128.477 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70310002, pos = { x = 430.301, y = -13.358, z = 114.697 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70310002, pos = { x = 430.318, y = -19.403, z = 128.472 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70310002, pos = { x = 430.298, y = -19.434, z = 114.665 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70900202, pos = { x = 511.916, y = -24.254, z = 121.694 }, rot = { x = 0.000, y = 48.844, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70900202, pos = { x = 532.830, y = -23.262, z = 123.108 }, rot = { x = 0.000, y = 215.626, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220013, pos = { x = 458.379, y = -9.350, z = 111.762 }, rot = { x = 0.000, y = 147.084, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220013, pos = { x = 455.744, y = -9.300, z = 111.288 }, rot = { x = 0.000, y = 241.337, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220013, pos = { x = 453.328, y = -9.254, z = 110.179 }, rot = { x = 0.000, y = 163.634, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220013, pos = { x = 459.152, y = -9.254, z = 109.246 }, rot = { x = 0.000, y = 238.989, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70211101, pos = { x = 456.424, y = -9.254, z = 107.768 }, rot = { x = 0.000, y = 245.888, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 3026, gadget_id = 70220014, pos = { x = 455.003, y = -9.366, z = 109.295 }, rot = { x = 0.000, y = 299.250, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220014, pos = { x = 456.474, y = -9.254, z = 113.151 }, rot = { x = 0.000, y = 34.842, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70220014, pos = { x = 454.405, y = -9.350, z = 110.894 }, rot = { x = 0.000, y = 48.810, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 7.3, pos = { x = 435.196, y = -7.707, z = 121.122 } },
	{ config_id = 26, shape = RegionShape.CUBIC, size = { x = 10.000, y = 8.000, z = 15.000 }, pos = { x = 506.843, y = -22.500, z = 121.314 } },
	{ config_id = 40, shape = RegionShape.SPHERE, radius = 5, pos = { x = 422.789, y = -24.284, z = 120.497 } },
	{ config_id = 41, shape = RegionShape.CUBIC, size = { x = 15.000, y = 3.000, z = 15.000 }, pos = { x = 426.984, y = -17.041, z = 121.846 } }
}

-- 触发器
triggers = {
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", forbid_guest = false },
	{ config_id = 1000012, name = "VARIABLE_CHANGE_12", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12", action = "action_EVENT_VARIABLE_CHANGE_12" },
	{ config_id = 1000022, name = "ANY_MONSTER_DIE_22", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22", action = "action_EVENT_ANY_MONSTER_DIE_22" },
	{ config_id = 1000026, name = "ENTER_REGION_26", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26", action = "action_EVENT_ENTER_REGION_26", forbid_guest = false },
	{ config_id = 1000040, name = "ENTER_REGION_40", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40", action = "action_EVENT_ENTER_REGION_40", forbid_guest = false },
	{ config_id = 1000041, name = "ENTER_REGION_41", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41", action = "action_EVENT_ENTER_REGION_41", forbid_guest = false },
	{ config_id = 1000066, name = "ANY_MONSTER_DIE_66", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66", action = "action_EVENT_ANY_MONSTER_DIE_66" },
	{ config_id = 1000067, name = "ANY_MONSTER_DIE_67", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67", action = "action_EVENT_ANY_MONSTER_DIE_67" },
	{ config_id = 1000068, name = "ANY_MONSTER_DIE_68", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68", action = "action_EVENT_ANY_MONSTER_DIE_68" },
	{ config_id = 1000069, name = "ANY_MONSTER_DIE_69", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69", action = "action_EVENT_ANY_MONSTER_DIE_69" },
	{ config_id = 1000070, name = "ANY_MONSTER_DIE_70", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70", action = "action_EVENT_ANY_MONSTER_DIE_70" },
	{ config_id = 1000071, name = "ANY_MONSTER_DIE_71", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71", action = "action_EVENT_ANY_MONSTER_DIE_71" },
	{ config_id = 1000072, name = "ANY_MONSTER_DIE_72", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72", action = "action_EVENT_ANY_MONSTER_DIE_72" },
	{ config_id = 1000073, name = "ANY_MONSTER_DIE_73", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_73", action = "action_EVENT_ANY_MONSTER_DIE_73" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
		monsters = { 3001, 3002, 3003, 3004 },
		gadgets = { 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028 },
		regions = { 11, 26, 40, 41 },
		triggers = { "ENTER_REGION_11", "VARIABLE_CHANGE_12", "ANY_MONSTER_DIE_22", "ENTER_REGION_26", "ENTER_REGION_40", "ENTER_REGION_41", "ANY_MONSTER_DIE_66", "ANY_MONSTER_DIE_67", "ANY_MONSTER_DIE_68", "ANY_MONSTER_DIE_69", "ANY_MONSTER_DIE_70", "ANY_MONSTER_DIE_71", "ANY_MONSTER_DIE_72", "ANY_MONSTER_DIE_73" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220011007, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 5)
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_12(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Key"为8
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12(context, evt)
	-- 将configid为 3010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 调用提示id为 1037001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1037001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26(context, evt)
	if evt.param1 ~= 26 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220011007, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 6)
	
	-- 调用提示id为 1041022 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011003, monsters = {}, gadgets = {3019} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为3020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40(context, evt)
	if evt.param1 ~= 40 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40(context, evt)
	-- 将configid为 3017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_41(context, evt)
	if evt.param1 ~= 41 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41(context, evt)
	-- 将configid为 3015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011002, monsters = {}, gadgets = {2014} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66(context, evt)
	--判断死亡怪物的configid是否为 3005
	if evt.param1 ~= 3005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67(context, evt)
	if 3006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_68(context, evt)
	if 3007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_68(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69(context, evt)
	if 3008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70(context, evt)
	--判断死亡怪物的configid是否为 3002
	if evt.param1 ~= 3002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71(context, evt)
	--判断死亡怪物的configid是否为 3001
	if evt.param1 ~= 3001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3005, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72(context, evt)
	--判断死亡怪物的configid是否为 3004
	if evt.param1 ~= 3004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3008, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_73(context, evt)
	--判断死亡怪物的configid是否为 3003
	if evt.param1 ~= 3003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_73(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end