-- 基础信息
local base_info = {
	group_id = 220113004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4004, monster_id = 23010501, pos = { x = -30.517, y = 0.446, z = 64.651 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 },
	{ config_id = 4006, monster_id = 23010601, pos = { x = -23.869, y = 0.586, z = 49.307 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 4007, monster_id = 23010401, pos = { x = -23.991, y = 0.579, z = 54.750 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 },
	{ config_id = 4012, monster_id = 23010601, pos = { x = -49.236, y = -10.698, z = 49.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 },
	{ config_id = 4014, monster_id = 23030101, pos = { x = -37.747, y = -10.698, z = 64.580 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4016, monster_id = 23010501, pos = { x = -49.502, y = -10.806, z = 55.759 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9001 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70360282, pos = { x = -32.950, y = 0.471, z = 36.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false, persistent = true },
	{ config_id = 4017, gadget_id = 70290137, pos = { x = 10.016, y = 10.532, z = 52.480 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70900201, pos = { x = -32.983, y = 1.091, z = 36.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 单向电梯,全灭怪+进区域触发
	{ config_id = 4002, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -32.986, y = 3.216, z = 36.406 } },
	{ config_id = 4009, shape = RegionShape.CUBIC, size = { x = 8.000, y = 15.000, z = 8.000 }, pos = { x = -66.707, y = 1.681, z = 51.671 } },
	{ config_id = 4010, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -33.035, y = -8.368, z = 36.598 } }
}

-- 触发器
triggers = {
	-- 单向电梯,全灭怪+进区域触发
	{ config_id = 1004002, name = "ENTER_REGION_4002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4002", action = "action_EVENT_ENTER_REGION_4002" },
	{ config_id = 1004008, name = "ANY_MONSTER_DIE_4008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4008", action = "action_EVENT_ANY_MONSTER_DIE_4008" },
	{ config_id = 1004009, name = "ENTER_REGION_4009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4009", action = "action_EVENT_ENTER_REGION_4009" },
	{ config_id = 1004010, name = "ENTER_REGION_4010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4010", action = "action_EVENT_ENTER_REGION_4010" },
	{ config_id = 1004015, name = "ANY_MONSTER_DIE_4015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4015", action = "action_EVENT_ANY_MONSTER_DIE_4015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "key_downfloor", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 4003, monster_id = 25050301, pos = { x = -24.805, y = 0.460, z = 54.018 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 4005, monster_id = 25050301, pos = { x = -24.845, y = 0.460, z = 49.916 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 4013, monster_id = 23010301, pos = { x = -34.992, y = -10.618, z = 62.934 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 }
	},
	gadgets = {
		{ config_id = 4011, gadget_id = 70290137, pos = { x = -24.797, y = -10.588, z = 49.539 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
	}
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
		gadgets = { 4017 },
		regions = { 4009, 4010 },
		triggers = { "ENTER_REGION_4009", "ENTER_REGION_4010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4004, 4006, 4007 },
		gadgets = { 4001 },
		regions = { 4002 },
		triggers = { "ENTER_REGION_4002", "ANY_MONSTER_DIE_4008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4012, 4014, 4016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4018 },
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
	
	-- 判断变量"key_downfloor"为1
	if ScriptLib.GetGroupVariableValue(context, "key_downfloor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220113004, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
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
function condition_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220113004) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 将本组内变量名为 "key_downfloor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key_downfloor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-33，0.5，36.67937），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-33, y=0.5, z=36.67937}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220113004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4009(context, evt)
	if evt.param1 ~= 4009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220113004, 2)
	
	-- 改变指定group组220113008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4010(context, evt)
	if evt.param1 ~= 4010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4010(context, evt)
	-- 调用提示id为 201130301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201130301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4015(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220113004) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4015(context, evt)
	-- 将本组内变量名为 "key_downfloor" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key_downfloor", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组220113006中， configid为6032的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6032, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113004中， configid为4017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113004, 4017, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-24.79662，-10.58781，49.53882），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-24.79662, y=-10.58781, z=49.53882}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end