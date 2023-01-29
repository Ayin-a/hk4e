-- 基础信息
local base_info = {
	group_id = 220011002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010401, pos = { x = 403.547, y = -23.915, z = 127.105 }, rot = { x = 0.000, y = 182.002, z = 0.000 }, level = 3, disableWander = true, pose_id = 402 },
	{ config_id = 2002, monster_id = 21010401, pos = { x = 408.938, y = -24.157, z = 125.166 }, rot = { x = 0.000, y = 206.842, z = 0.000 }, level = 3, disableWander = true, pose_id = 402 },
	{ config_id = 2003, monster_id = 21010401, pos = { x = 397.369, y = -24.082, z = 125.887 }, rot = { x = 0.000, y = 159.597, z = 0.000 }, level = 3, disableWander = true, pose_id = 402 },
	{ config_id = 2004, monster_id = 21010201, pos = { x = 400.309, y = -24.535, z = 130.894 }, rot = { x = 0.000, y = 181.892, z = 0.000 }, level = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2005, gadget_id = 70350002, pos = { x = 415.696, y = -24.157, z = 120.856 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70211002, pos = { x = 403.362, y = -24.195, z = 122.321 }, rot = { x = 0.000, y = 180.016, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 2007, gadget_id = 70220005, pos = { x = 399.790, y = -23.586, z = 140.555 }, rot = { x = 0.000, y = 212.019, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70220014, pos = { x = 401.448, y = -23.735, z = 141.314 }, rot = { x = 0.000, y = 206.747, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70220013, pos = { x = 404.071, y = -23.598, z = 141.198 }, rot = { x = 0.000, y = 199.722, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70220013, pos = { x = 402.690, y = -23.677, z = 142.969 }, rot = { x = 0.000, y = 205.364, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220013, pos = { x = 399.898, y = -23.576, z = 142.352 }, rot = { x = 0.000, y = 92.675, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70310001, pos = { x = 414.010, y = -22.193, z = 126.607 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70310001, pos = { x = 413.830, y = -22.155, z = 114.879 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70900202, pos = { x = 422.935, y = -22.809, z = 120.917 }, rot = { x = 0.000, y = 215.579, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 33, shape = RegionShape.CUBIC, size = { x = 5.000, y = 3.000, z = 10.000 }, pos = { x = 418.490, y = -24.134, z = 121.102 } },
	{ config_id = 62, shape = RegionShape.CUBIC, size = { x = 10.000, y = 3.000, z = 10.000 }, pos = { x = 418.126, y = -22.550, z = 71.301 } }
}

-- 触发器
triggers = {
	{ config_id = 1000009, name = "ANY_MONSTER_DIE_9", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9", action = "action_EVENT_ANY_MONSTER_DIE_9" },
	{ config_id = 1000032, name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32" },
	{ config_id = 1000033, name = "ENTER_REGION_33", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_33", action = "action_EVENT_ENTER_REGION_33", forbid_guest = false },
	{ config_id = 1000062, name = "ENTER_REGION_62", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62", action = "action_EVENT_ENTER_REGION_62", forbid_guest = false }
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
		monsters = { 2001, 2002, 2003, 2004 },
		gadgets = { 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013 },
		regions = { 33, 62 },
		triggers = { "ANY_MONSTER_DIE_9", "ANY_MONSTER_DIE_32", "ENTER_REGION_33", "ENTER_REGION_62" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220011007, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 4)
	
	-- 将configid为 2005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 1041042 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（415，-19，121），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=415, y=-19, z=121}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 将configid为 2006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_33(context, evt)
	if evt.param1 ~= 33 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_33(context, evt)
	-- 调用提示id为 1041072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_62(context, evt)
	if evt.param1 ~= 62 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62(context, evt)
	-- 触发镜头注目，注目位置为坐标（410，-22，63），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=410, y=-22, z=63}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1041093 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end