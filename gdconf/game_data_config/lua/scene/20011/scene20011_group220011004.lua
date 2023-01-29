-- 基础信息
local base_info = {
	group_id = 220011004
}

-- Trigger变量
local defs = {
	gadget_id_1 = 97,
	gadget_id_2 = 70,
	gadget_id_3 = 137,
	gadget_id_4 = 138,
	gadget_id_5 = 139,
	gadget_id_6 = 140,
	gadget_id_7 = 4,
	gadget_id_8 = 83,
	gadget_id_9 = 7
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
	{ config_id = 29, gadget_id = 70300016, pos = { x = 533.847, y = -1.984, z = 254.026 }, rot = { x = 0.000, y = 181.174, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 56, gadget_id = 70310001, pos = { x = 522.986, y = -2.133, z = 251.939 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 57, gadget_id = 70310001, pos = { x = 543.354, y = -2.069, z = 252.100 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 58, gadget_id = 70310001, pos = { x = 528.495, y = -2.061, z = 261.877 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 59, gadget_id = 70310001, pos = { x = 525.688, y = -2.085, z = 256.865 }, rot = { x = 0.000, y = 37.098, z = 0.000 }, level = 1 },
	{ config_id = 60, gadget_id = 70310001, pos = { x = 540.554, y = -2.066, z = 256.967 }, rot = { x = 0.000, y = 110.444, z = 0.000 }, level = 1 },
	{ config_id = 69, gadget_id = 70211021, pos = { x = 533.532, y = -2.051, z = 257.035 }, rot = { x = 0.000, y = 180.627, z = 0.000 }, level = 1, chest_drop_id = 11010600, drop_count = 1, isOneoff = true },
	{ config_id = 70, gadget_id = 70380001, pos = { x = 531.604, y = -22.408, z = 141.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 81, gadget_id = 70310001, pos = { x = 537.904, y = -2.046, z = 261.743 }, rot = { x = 0.000, y = 247.823, z = 0.000 }, level = 1 },
	{ config_id = 82, gadget_id = 70380001, pos = { x = 520.953, y = -25.990, z = 121.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7 },
	{ config_id = 83, gadget_id = 70360002, pos = { x = 532.819, y = -24.889, z = 123.122 }, rot = { x = 0.000, y = 270.679, z = 0.000 }, level = 1 },
	{ config_id = 84, gadget_id = 70900205, pos = { x = 531.371, y = -24.819, z = 121.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 85, gadget_id = 70900205, pos = { x = 531.472, y = -9.345, z = 158.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 86, gadget_id = 70380001, pos = { x = 531.644, y = -10.726, z = 163.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8 },
	{ config_id = 97, gadget_id = 70900202, pos = { x = 531.416, y = -8.752, z = 158.659 }, rot = { x = 0.000, y = 103.806, z = 0.000 }, level = 1 },
	{ config_id = 98, gadget_id = 70900202, pos = { x = 532.576, y = -1.080, z = 221.851 }, rot = { x = 0.000, y = 277.205, z = 0.000 }, level = 1 },
	{ config_id = 137, gadget_id = 70380001, pos = { x = 545.317, y = -25.822, z = 131.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20011012, start_route = false },
	{ config_id = 138, gadget_id = 70380001, pos = { x = 540.062, y = -25.787, z = 131.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20011011, start_route = false },
	{ config_id = 139, gadget_id = 70380001, pos = { x = 531.673, y = -18.917, z = 136.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20011010, start_route = false },
	{ config_id = 140, gadget_id = 70380001, pos = { x = 520.582, y = -25.972, z = 151.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20011009, start_route = false },
	{ config_id = 141, gadget_id = 70900205, pos = { x = 531.747, y = -25.927, z = 151.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 38, shape = RegionShape.CUBIC, size = { x = 40.000, y = 5.000, z = 10.000 }, pos = { x = 533.597, y = -2.137, z = 238.024 } },
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 5, pos = { x = 531.109, y = -9.328, z = 158.314 } },
	{ config_id = 54, shape = RegionShape.SPHERE, radius = 5, pos = { x = 532.769, y = -2.051, z = 223.711 } },
	{ config_id = 63, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 3.000 }, pos = { x = 531.533, y = -23.574, z = 151.641 } }
}

-- 触发器
triggers = {
	{ config_id = 1000038, name = "ENTER_REGION_38", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38", action = "action_EVENT_ENTER_REGION_38", forbid_guest = false },
	{ config_id = 1000043, name = "DUNGEON_SETTLE_43", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_43", action = "action_EVENT_DUNGEON_SETTLE_43" },
	{ config_id = 1000047, name = "GADGET_CREATE_47", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_47", action = "action_EVENT_GADGET_CREATE_47" },
	{ config_id = 1000048, name = "SELECT_OPTION_48", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48", action = "action_EVENT_SELECT_OPTION_48", forbid_guest = false },
	{ config_id = 1000053, name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false },
	{ config_id = 1000054, name = "ENTER_REGION_54", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54", action = "action_EVENT_ENTER_REGION_54", forbid_guest = false },
	{ config_id = 1000063, name = "ENTER_REGION_63", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63", action = "action_EVENT_ENTER_REGION_63", forbid_guest = false },
	{ config_id = 1004001, name = "ANY_GADGET_DIE_4001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4001", action = "action_EVENT_ANY_GADGET_DIE_4001" }
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
		-- description = ,
		monsters = { },
		gadgets = { 29, 56, 57, 58, 59, 60, 70, 81, 82, 83, 84, 85, 86, 137, 138, 139, 140, 141 },
		regions = { 38, 53, 54, 63 },
		triggers = { "ENTER_REGION_38", "DUNGEON_SETTLE_43", "GADGET_CREATE_47", "SELECT_OPTION_48", "ENTER_REGION_53", "ENTER_REGION_54", "ENTER_REGION_63", "ANY_GADGET_DIE_4001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_38(context, evt)
	if evt.param1 ~= 38 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 58 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 59 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 60 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 81 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1041112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_43(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_43(context, evt)
	-- 创建id为69的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 69 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_47(context, evt)
	if 83 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_47(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_48(context, evt)
	-- 判断是gadgetid 83
	if 83 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_2) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_3) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_4) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_5) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_6) then
	  return -1
	end
	
	-- 删除指定group： 220011004 ；指定config：83；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220011004, defs.gadget_id_8, 7) then
		return -1
	end
	
	-- 解锁目标4
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_7) then
		return -1
	end
	
	-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011003, monsters = {}, gadgets = {3020} }) then
			return -1
		end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id =  3020}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53(context, evt)
	if evt.param1 ~= 53 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011004, monsters = {}, gadgets = {97} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为98的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 98 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 1041026 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_54(context, evt)
	if evt.param1 ~= 54 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011004, monsters = {}, gadgets = {98} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_63(context, evt)
	if evt.param1 ~= 63 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_63(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 141) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4001(context, evt)
	if 29 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4001(context, evt)
	-- 展示名称为"GuideGoddessMapUnlock"的引导,见GuideData表，参数类型为string
	if 0 ~= ScriptLib.ShowClientGuide(context, "GuideGoddessMapUnlock") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : show_client_guide")
		return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 7)
	
	return 0
end