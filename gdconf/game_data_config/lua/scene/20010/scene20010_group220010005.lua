-- 基础信息
local base_info = {
	group_id = 220010005
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
	{ config_id = 34, gadget_id = 70360016, pos = { x = 370.506, y = -30.630, z = 14.343 }, rot = { x = 0.000, y = 99.056, z = 90.000 }, level = 1 },
	{ config_id = 35, gadget_id = 70360016, pos = { x = 374.135, y = -28.498, z = 17.175 }, rot = { x = 0.291, y = 3.282, z = 89.545 }, level = 1 },
	{ config_id = 36, gadget_id = 70360016, pos = { x = 374.150, y = -28.595, z = 20.406 }, rot = { x = 0.291, y = 3.282, z = 89.545 }, level = 1 },
	{ config_id = 39, gadget_id = 70360016, pos = { x = 374.504, y = -27.577, z = 28.223 }, rot = { x = 0.291, y = 3.282, z = 89.545 }, level = 1 },
	{ config_id = 40, gadget_id = 70360019, pos = { x = 374.160, y = -27.480, z = 32.794 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 41, gadget_id = 70350003, pos = { x = 374.945, y = -34.435, z = 32.912 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 189, gadget_id = 70900202, pos = { x = 386.865, y = -30.543, z = 16.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 199, gadget_id = 70900202, pos = { x = 368.074, y = -33.676, z = 18.730 }, rot = { x = 0.000, y = 86.335, z = 0.000 }, level = 1 },
	{ config_id = 5202, gadget_id = 70360016, pos = { x = 374.191, y = -28.636, z = 24.053 }, rot = { x = 0.291, y = 3.282, z = 89.545 }, level = 1 },
	{ config_id = 5205, gadget_id = 70360016, pos = { x = 373.624, y = -30.326, z = 14.802 }, rot = { x = 0.000, y = 99.056, z = 90.000 }, level = 1 },
	{ config_id = 5206, gadget_id = 70360016, pos = { x = 370.524, y = -34.579, z = 15.844 }, rot = { x = 359.688, y = 59.978, z = 0.744 }, level = 1 },
	{ config_id = 5208, gadget_id = 70360016, pos = { x = 368.086, y = -34.600, z = 18.739 }, rot = { x = 0.495, y = 59.978, z = 0.278 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 47, shape = RegionShape.CUBIC, size = { x = 2.000, y = 5.000, z = 14.000 }, pos = { x = 361.093, y = -32.176, z = 32.864 } },
	{ config_id = 5001, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 15.000 }, pos = { x = 365.735, y = -34.484, z = 31.784 } }
}

-- 触发器
triggers = {
	{ config_id = 1000008, name = "GADGET_STATE_CHANGE_8", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8", action = "action_EVENT_GADGET_STATE_CHANGE_8" },
	{ config_id = 1000047, name = "ENTER_REGION_47", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47", action = "action_EVENT_ENTER_REGION_47", forbid_guest = false },
	{ config_id = 1005001, name = "ENTER_REGION_5001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5001", action = "action_EVENT_ENTER_REGION_5001" }
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
		gadgets = { 34, 35, 36, 39, 40, 41, 5202, 5205, 5206, 5208 },
		regions = { 47, 5001 },
		triggers = { "GADGET_STATE_CHANGE_8", "ENTER_REGION_47", "ENTER_REGION_5001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	if 40 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	-- 将configid为 41 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010005, monsters = {}, gadgets = {199} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为189的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 189 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47(context, evt)
	if evt.param1 ~= 47 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47(context, evt)
	-- 触发镜头注目，注目位置为坐标（374，-27，32），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=374, y=-27, z=32}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1020} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为199的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220010001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5001(context, evt)
	if evt.param1 ~= 5001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5001(context, evt)
	-- 调用提示id为 200050502 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end