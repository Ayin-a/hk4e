-- 基础信息
local base_info = {
	group_id = 220009003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 21010301, pos = { x = -132.754, y = -12.484, z = 123.487 }, rot = { x = 0.000, y = 17.425, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 7, monster_id = 21010301, pos = { x = -132.701, y = -12.404, z = 132.173 }, rot = { x = 0.000, y = 172.644, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 20, monster_id = 21010301, pos = { x = -136.623, y = -12.404, z = 125.420 }, rot = { x = 0.000, y = 7.778, z = 0.000 }, level = 1 },
	{ config_id = 23, monster_id = 21010401, pos = { x = -133.949, y = -10.628, z = 135.540 }, rot = { x = 0.000, y = 185.298, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6, gadget_id = 70211021, pos = { x = -147.059, y = 18.017, z = 41.452 }, rot = { x = 0.000, y = 0.173, z = 0.000 }, level = 1, chest_drop_id = 11010300, drop_count = 1, isOneoff = true },
	{ config_id = 58, gadget_id = 70350003, pos = { x = -128.496, y = -12.591, z = 112.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 115, gadget_id = 70211001, pos = { x = -122.952, y = -0.587, z = 124.220 }, rot = { x = 0.000, y = 91.315, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 121, gadget_id = 70690001, pos = { x = -132.751, y = -12.542, z = 101.901 }, rot = { x = 15.200, y = 230.200, z = 0.000 }, level = 1 },
	{ config_id = 122, gadget_id = 70690001, pos = { x = -138.812, y = -14.223, z = 97.888 }, rot = { x = 327.110, y = 242.700, z = 0.000 }, level = 1 },
	{ config_id = 123, gadget_id = 70690001, pos = { x = -147.262, y = -8.902, z = 93.456 }, rot = { x = 319.600, y = 244.000, z = 0.000 }, level = 1 },
	{ config_id = 124, gadget_id = 70690001, pos = { x = -154.469, y = -4.187, z = 89.189 }, rot = { x = 310.100, y = 215.000, z = 0.000 }, level = 1 },
	{ config_id = 125, gadget_id = 70690001, pos = { x = -157.980, y = 3.730, z = 83.446 }, rot = { x = 295.000, y = 140.600, z = 0.000 }, level = 1 },
	{ config_id = 130, gadget_id = 70300014, pos = { x = -147.284, y = 18.016, z = 45.438 }, rot = { x = 0.000, y = 122.580, z = 0.000 }, level = 1 },
	{ config_id = 131, gadget_id = 70690001, pos = { x = -134.000, y = 26.000, z = 97.900 }, rot = { x = 13.300, y = 205.400, z = 0.000 }, level = 1 },
	{ config_id = 206, gadget_id = 70211002, pos = { x = -139.312, y = -12.483, z = 127.649 }, rot = { x = 0.000, y = 90.168, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 207, gadget_id = 70220013, pos = { x = -123.054, y = -12.476, z = 141.902 }, rot = { x = 359.858, y = 179.868, z = 1.128 }, level = 1 },
	{ config_id = 209, gadget_id = 70220013, pos = { x = -138.418, y = -12.484, z = 138.128 }, rot = { x = 0.000, y = 42.922, z = 0.000 }, level = 1 },
	{ config_id = 211, gadget_id = 70220013, pos = { x = -114.150, y = -12.483, z = 141.406 }, rot = { x = 0.000, y = 164.645, z = 0.000 }, level = 1 },
	{ config_id = 212, gadget_id = 70220014, pos = { x = -141.646, y = -12.484, z = 116.255 }, rot = { x = 0.000, y = 285.765, z = 0.000 }, level = 1 },
	{ config_id = 215, gadget_id = 70220013, pos = { x = -107.744, y = -12.561, z = 138.859 }, rot = { x = 0.000, y = 164.645, z = 0.000 }, level = 1 },
	{ config_id = 216, gadget_id = 70310001, pos = { x = -132.998, y = -12.541, z = 114.212 }, rot = { x = 0.000, y = 171.446, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 217, gadget_id = 70310001, pos = { x = -141.138, y = -12.559, z = 121.241 }, rot = { x = 0.000, y = 171.446, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 218, gadget_id = 70310001, pos = { x = -141.318, y = -12.484, z = 135.226 }, rot = { x = 0.000, y = 171.446, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 219, gadget_id = 70310001, pos = { x = -131.667, y = -12.483, z = 142.026 }, rot = { x = 0.000, y = 171.446, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 248, gadget_id = 70220005, pos = { x = -132.408, y = -12.491, z = 136.792 }, rot = { x = 0.000, y = 271.518, z = 0.000 }, level = 4 },
	{ config_id = 249, gadget_id = 70220016, pos = { x = -121.724, y = -12.040, z = 114.013 }, rot = { x = 17.409, y = 85.074, z = 267.766 }, level = 1 },
	{ config_id = 250, gadget_id = 70220016, pos = { x = -120.642, y = -11.957, z = 114.049 }, rot = { x = 17.409, y = 85.074, z = 267.766 }, level = 1 },
	{ config_id = 251, gadget_id = 70220016, pos = { x = -119.528, y = -11.920, z = 114.137 }, rot = { x = 17.409, y = 85.074, z = 267.766 }, level = 1 },
	{ config_id = 254, gadget_id = 70220005, pos = { x = -131.860, y = -12.498, z = 137.603 }, rot = { x = 0.000, y = 193.188, z = 0.000 }, level = 4 },
	{ config_id = 255, gadget_id = 70220016, pos = { x = -116.855, y = -12.045, z = 141.685 }, rot = { x = 2.885, y = 272.707, z = 266.862 }, level = 1 },
	{ config_id = 258, gadget_id = 70220014, pos = { x = -138.996, y = -12.527, z = 113.801 }, rot = { x = 0.000, y = 285.765, z = 0.000 }, level = 1 },
	{ config_id = 259, gadget_id = 70220014, pos = { x = -137.855, y = -12.527, z = 113.808 }, rot = { x = 0.000, y = 285.765, z = 0.000 }, level = 1 },
	{ config_id = 260, gadget_id = 70220016, pos = { x = -117.985, y = -12.031, z = 141.776 }, rot = { x = 2.885, y = 272.707, z = 266.862 }, level = 1 },
	{ config_id = 261, gadget_id = 70220016, pos = { x = -119.203, y = -11.996, z = 141.726 }, rot = { x = 2.885, y = 272.707, z = 266.862 }, level = 1 },
	{ config_id = 262, gadget_id = 70220013, pos = { x = -126.633, y = -12.483, z = 141.764 }, rot = { x = 359.858, y = 179.868, z = 1.128 }, level = 1 },
	{ config_id = 263, gadget_id = 70220014, pos = { x = -124.851, y = -12.483, z = 141.822 }, rot = { x = 0.000, y = 285.765, z = 0.000 }, level = 1 },
	{ config_id = 273, gadget_id = 70310001, pos = { x = -140.194, y = -12.484, z = 125.950 }, rot = { x = 0.000, y = 171.446, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 274, gadget_id = 70310001, pos = { x = -140.275, y = -12.484, z = 129.318 }, rot = { x = 0.000, y = 171.446, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 275, gadget_id = 70220013, pos = { x = -133.995, y = -12.484, z = 135.627 }, rot = { x = 0.000, y = 42.922, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 5, pos = { x = -100.885, y = -12.859, z = 126.083 } },
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 5, pos = { x = -111.012, y = -12.483, z = 126.292 } }
}

-- 触发器
triggers = {
	{ config_id = 1000002, name = "DUNGEON_SETTLE_2", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_2", action = "action_EVENT_DUNGEON_SETTLE_2" },
	{ config_id = 1000016, name = "ANY_MONSTER_DIE_16", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16", action = "action_EVENT_ANY_MONSTER_DIE_16" },
	{ config_id = 1000033, name = "ANY_GADGET_DIE_33", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_33", action = "action_EVENT_ANY_GADGET_DIE_33" },
	{ config_id = 1000045, name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ config_id = 1000046, name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ config_id = 1000050, name = "ANY_GADGET_DIE_50", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50", action = "action_EVENT_ANY_GADGET_DIE_50" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isoff", value = 0, no_refresh = true }
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
		monsters = { 4, 7, 20 },
		gadgets = { 58, 115, 130, 206, 207, 209, 211, 212, 215, 216, 217, 218, 219, 248, 249, 250, 251, 254, 255, 258, 259, 260, 261, 262, 263, 273, 274, 275 },
		regions = { 45, 46 },
		triggers = { "DUNGEON_SETTLE_2", "ANY_MONSTER_DIE_16", "ANY_GADGET_DIE_33", "ENTER_REGION_45", "ENTER_REGION_46", "ANY_GADGET_DIE_50" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_2(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_2(context, evt)
	-- 创建id为6的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 将configid为 58 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 解锁目标206
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 206, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_33(context, evt)
	if 130 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_33(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {141} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
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
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
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
	
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 触发镜头注目，注目位置为坐标（-132，-11，137），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-132, y=-11, z=137}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 10010201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10010201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50(context, evt)
	if 248 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50(context, evt)
	-- 将本组内变量名为 "isoff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end