-- 基础信息
local base_info = {
	group_id = 220119001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 25080101, pos = { x = 21.508, y = -15.870, z = 40.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1004 },
	{ config_id = 1002, monster_id = 25080101, pos = { x = 21.338, y = -15.870, z = 43.074 }, rot = { x = 0.000, y = 181.831, z = 0.000 }, level = 1, disableWander = true, pose_id = 1004 },
	{ config_id = 1003, monster_id = 25080201, pos = { x = 31.498, y = -15.870, z = 48.444 }, rot = { x = 0.000, y = 238.767, z = 0.000 }, level = 1, disableWander = true, pose_id = 1005 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1004, gadget_id = 70290137, pos = { x = 42.154, y = -11.013, z = 29.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1006, shape = RegionShape.CUBIC, size = { x = 17.280, y = 2.250, z = 16.730 }, pos = { x = 23.296, y = -11.172, z = 41.096 } },
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 43.999, y = -7.150, z = 15.429 } },
	{ config_id = 1008, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 43.571, y = -6.909, z = 24.431 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" },
	{ config_id = 1001006, name = "ENTER_REGION_1006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1006", action = "action_EVENT_ENTER_REGION_1006" },
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" },
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1008", action = "action_EVENT_ENTER_REGION_1008" }
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
		monsters = { 1001, 1002, 1003 },
		gadgets = { 1004 },
		regions = { 1006, 1007, 1008 },
		triggers = { "ANY_MONSTER_DIE_1005", "ENTER_REGION_1006", "ENTER_REGION_1007", "ENTER_REGION_1008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1006(context, evt)
	if evt.param1 ~= 1006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1006(context, evt)
	-- 调用提示id为 201190101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201190101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 调用提示id为 201190501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201190501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（33，12，-45），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=33, y=12, z=-45}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1008(context, evt)
	if evt.param1 ~= 1008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end