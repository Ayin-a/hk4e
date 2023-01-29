-- 基础信息
local base_info = {
	group_id = 220008001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39, monster_id = 21010201, pos = { x = 547.612, y = -68.483, z = 202.914 }, rot = { x = 0.000, y = 357.802, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 43, monster_id = 21010201, pos = { x = 543.223, y = -68.404, z = 208.892 }, rot = { x = 0.000, y = 90.270, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 44, monster_id = 21010201, pos = { x = 543.264, y = -68.404, z = 203.683 }, rot = { x = 0.000, y = 78.700, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 180, gadget_id = 70350003, pos = { x = 538.393, y = -68.045, z = 206.569 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 187, gadget_id = 70211101, pos = { x = 576.714, y = -68.447, z = 189.314 }, rot = { x = 0.000, y = 359.946, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 367, gadget_id = 70900202, pos = { x = 390.015, y = -19.073, z = 173.541 }, rot = { x = 0.000, y = 83.628, z = 0.000 }, level = 1 },
	{ config_id = 368, gadget_id = 70900201, pos = { x = 517.293, y = -65.009, z = 219.024 }, rot = { x = 0.000, y = 180.406, z = 0.000 }, level = 1 },
	{ config_id = 370, gadget_id = 70900202, pos = { x = 488.785, y = -27.033, z = 269.645 }, rot = { x = 0.000, y = 118.147, z = 0.000 }, level = 1 },
	{ config_id = 374, gadget_id = 70900201, pos = { x = 537.528, y = -66.271, z = 206.626 }, rot = { x = 0.000, y = 292.645, z = 0.000 }, level = 1 },
	{ config_id = 375, gadget_id = 70220013, pos = { x = 571.459, y = -68.585, z = 199.498 }, rot = { x = 0.000, y = 42.799, z = 0.000 }, level = 1 },
	{ config_id = 376, gadget_id = 70220013, pos = { x = 572.863, y = -68.512, z = 200.835 }, rot = { x = 0.000, y = 61.247, z = 0.000 }, level = 1 },
	{ config_id = 377, gadget_id = 70220013, pos = { x = 568.689, y = -68.474, z = 187.230 }, rot = { x = 357.805, y = 61.247, z = 5.036 }, level = 1 },
	{ config_id = 378, gadget_id = 70220013, pos = { x = 580.630, y = -58.782, z = 200.220 }, rot = { x = 358.807, y = 50.270, z = 5.362 }, level = 1 },
	{ config_id = 379, gadget_id = 70220014, pos = { x = 582.312, y = -58.739, z = 200.097 }, rot = { x = 0.000, y = 347.237, z = 0.000 }, level = 1 },
	{ config_id = 380, gadget_id = 70220014, pos = { x = 569.533, y = -68.483, z = 228.157 }, rot = { x = 0.000, y = 347.237, z = 0.000 }, level = 1 },
	{ config_id = 381, gadget_id = 70220014, pos = { x = 568.353, y = -68.483, z = 228.284 }, rot = { x = 0.000, y = 102.227, z = 0.000 }, level = 1 },
	{ config_id = 383, gadget_id = 70900201, pos = { x = 517.472, y = -63.158, z = 249.971 }, rot = { x = 0.000, y = 292.645, z = 0.000 }, level = 1 },
	{ config_id = 384, gadget_id = 70900201, pos = { x = 500.284, y = -26.896, z = 266.196 }, rot = { x = 0.000, y = 292.645, z = 0.000 }, level = 1 },
	{ config_id = 385, gadget_id = 70900201, pos = { x = 440.278, y = -23.496, z = 246.387 }, rot = { x = 0.000, y = 1.673, z = 0.000 }, level = 1 },
	{ config_id = 387, gadget_id = 70900201, pos = { x = 440.437, y = -23.717, z = 198.742 }, rot = { x = 0.000, y = 1.673, z = 0.000 }, level = 1 },
	{ config_id = 388, gadget_id = 70900201, pos = { x = 419.648, y = -19.533, z = 173.522 }, rot = { x = 0.000, y = 89.241, z = 0.000 }, level = 1 },
	{ config_id = 400, gadget_id = 70900201, pos = { x = 422.615, y = -10.155, z = 173.732 }, rot = { x = 0.000, y = 83.628, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 26, shape = RegionShape.SPHERE, radius = 5, pos = { x = 583.122, y = -58.738, z = 207.036 } },
	{ config_id = 48, shape = RegionShape.SPHERE, radius = 5, pos = { x = 532.808, y = -67.848, z = 206.054 } },
	{ config_id = 49, shape = RegionShape.SPHERE, radius = 5, pos = { x = 517.489, y = -66.393, z = 222.918 } },
	{ config_id = 50, shape = RegionShape.SPHERE, radius = 5, pos = { x = 517.124, y = -65.920, z = 252.976 } },
	{ config_id = 51, shape = RegionShape.SPHERE, radius = 6.3, pos = { x = 501.371, y = -25.943, z = 266.823 } },
	{ config_id = 52, shape = RegionShape.SPHERE, radius = 5, pos = { x = 478.639, y = -28.637, z = 265.797 } },
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 5, pos = { x = 440.497, y = -25.464, z = 240.413 } },
	{ config_id = 55, shape = RegionShape.SPHERE, radius = 5, pos = { x = 440.277, y = -24.404, z = 220.377 } },
	{ config_id = 56, shape = RegionShape.SPHERE, radius = 5, pos = { x = 413.944, y = -21.450, z = 174.554 } },
	{ config_id = 58, shape = RegionShape.SPHERE, radius = 19, pos = { x = 555.134, y = -67.817, z = 204.583 } },
	{ config_id = 66, shape = RegionShape.CUBIC, size = { x = 10.850, y = 7.530, z = 3.820 }, pos = { x = 440.449, y = -25.500, z = 233.640 } }
}

-- 触发器
triggers = {
	{ config_id = 1000018, name = "ANY_MONSTER_DIE_18", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18", action = "action_EVENT_ANY_MONSTER_DIE_18" },
	{ config_id = 1000026, name = "ENTER_REGION_26", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26", action = "action_EVENT_ENTER_REGION_26", forbid_guest = false },
	{ config_id = 1000048, name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48", forbid_guest = false },
	{ config_id = 1000049, name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "action_EVENT_ENTER_REGION_49", forbid_guest = false },
	{ config_id = 1000050, name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "action_EVENT_ENTER_REGION_50", forbid_guest = false },
	{ config_id = 1000051, name = "ENTER_REGION_51", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51", action = "action_EVENT_ENTER_REGION_51", forbid_guest = false },
	{ config_id = 1000052, name = "ENTER_REGION_52", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52", action = "action_EVENT_ENTER_REGION_52", forbid_guest = false },
	{ config_id = 1000053, name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false },
	{ config_id = 1000055, name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55", forbid_guest = false },
	{ config_id = 1000056, name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "action_EVENT_ENTER_REGION_56", forbid_guest = false },
	{ config_id = 1000058, name = "ENTER_REGION_58", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58", action = "action_EVENT_ENTER_REGION_58", forbid_guest = false },
	{ config_id = 1000066, name = "ENTER_REGION_66", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66", action = "action_EVENT_ENTER_REGION_66", forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "MonsterDie43", value = 0, no_refresh = false },
	{ config_id = 2, name = "MonsterDie44", value = 0, no_refresh = false },
	{ config_id = 3, name = "MonsterDie55", value = 0, no_refresh = false },
	{ config_id = 4, name = "MonsterDie56", value = 0, no_refresh = false }
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
		monsters = { 39, 43, 44 },
		gadgets = { 180, 187, 375, 376, 377, 378, 379, 380, 381 },
		regions = { 26, 48, 49, 50, 51, 52, 53, 55, 56, 58, 66 },
		triggers = { "ANY_MONSTER_DIE_18", "ENTER_REGION_26", "ENTER_REGION_48", "ENTER_REGION_49", "ENTER_REGION_50", "ENTER_REGION_51", "ENTER_REGION_52", "ENTER_REGION_53", "ENTER_REGION_55", "ENTER_REGION_56", "ENTER_REGION_58", "ENTER_REGION_66" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18(context, evt)
	-- 将configid为 180 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1010004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1010004) then
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
	-- 创建id为400的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 400 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（461，-11，174），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=461, y=-11, z=174}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1039005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1039005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48(context, evt)
	if evt.param1 ~= 48 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {374} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为368的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 368 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49(context, evt)
	if evt.param1 ~= 49 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {368} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为383的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 383 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {383} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为384的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 384 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_51(context, evt)
	if evt.param1 ~= 51 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {384} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为370的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 370 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52(context, evt)
	if evt.param1 ~= 52 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52(context, evt)
	-- 创建id为385的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 385 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
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
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {385} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为387的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 387 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_55(context, evt)
	if evt.param1 ~= 55 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {387} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为388的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 388 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 1010007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1010007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if evt.param1 ~= 56 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {388} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为367的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 367 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_58(context, evt)
	if evt.param1 ~= 58 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {400} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为374的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 374 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66(context, evt)
	if evt.param1 ~= 66 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220008001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end