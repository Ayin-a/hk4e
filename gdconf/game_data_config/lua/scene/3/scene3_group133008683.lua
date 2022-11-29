-- 基础信息
local base_info = {
	group_id = 133008683
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 683001, monster_id = 28020802, pos = { x = 1205.381, y = 324.425, z = -1043.158 }, rot = { x = 0.094, y = 242.342, z = 0.995 }, level = 30, drop_tag = "走兽", pose_id = 1, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 7
	{ config_id = 683002, gadget_id = 70360273, pos = { x = 1158.927, y = 303.998, z = -1124.667 }, rot = { x = 0.000, y = 30.066, z = 0.000 }, level = 30, mark_flag = 7, area_id = 10 },
	-- 2
	{ config_id = 683003, gadget_id = 70360273, pos = { x = 1201.992, y = 315.110, z = -1072.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 10 },
	-- 8
	{ config_id = 683004, gadget_id = 70360274, pos = { x = 1157.391, y = 304.012, z = -1127.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 8, area_id = 10 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 683005, gadget_id = 70310001, pos = { x = 1157.391, y = 304.012, z = -1127.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 683007, gadget_id = 70360276, pos = { x = 1157.391, y = 304.012, z = -1127.010 }, rot = { x = 0.000, y = 29.705, z = 0.000 }, level = 30, area_id = 10 },
	-- 1new
	{ config_id = 683008, gadget_id = 70360273, pos = { x = 1200.960, y = 319.825, z = -1055.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 10 },
	-- 6
	{ config_id = 683016, gadget_id = 70360273, pos = { x = 1167.577, y = 302.739, z = -1118.223 }, rot = { x = 0.000, y = 53.429, z = 0.000 }, level = 30, mark_flag = 6, area_id = 10 },
	-- 3
	{ config_id = 683017, gadget_id = 70360273, pos = { x = 1203.945, y = 310.486, z = -1091.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 10 },
	-- 4
	{ config_id = 683018, gadget_id = 70360273, pos = { x = 1194.237, y = 308.749, z = -1103.746 }, rot = { x = 0.000, y = 56.060, z = 0.000 }, level = 30, mark_flag = 4, area_id = 10 },
	-- 5
	{ config_id = 683019, gadget_id = 70360273, pos = { x = 1177.799, y = 300.636, z = -1113.127 }, rot = { x = 0.000, y = 56.060, z = 0.000 }, level = 30, mark_flag = 5, area_id = 10 }
}

-- 区域
regions = {
	-- 提示1
	{ config_id = 683012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1209.016, y = 324.799, z = -1046.142 }, area_id = 10 },
	-- 提示 300868301
	{ config_id = 683013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1194.209, y = 308.774, z = -1103.691 }, area_id = 10 },
	-- 提示 300868302
	{ config_id = 683014, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1159.565, y = 304.115, z = -1125.170 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1683009, name = "ANY_MONSTER_DIE_683009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_683009", action = "action_EVENT_ANY_MONSTER_DIE_683009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1683010, name = "GADGET_STATE_CHANGE_683010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_683010", action = "action_EVENT_GADGET_STATE_CHANGE_683010", trigger_count = 0 },
	-- 提示1
	{ config_id = 1683012, name = "ENTER_REGION_683012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_683012", action = "action_EVENT_ENTER_REGION_683012" },
	-- 提示 300868301
	{ config_id = 1683013, name = "ENTER_REGION_683013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_683013", action = "action_EVENT_ENTER_REGION_683013" },
	-- 提示 300868302
	{ config_id = 1683014, name = "ENTER_REGION_683014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_683014", action = "action_EVENT_ENTER_REGION_683014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 683006, gadget_id = 70310022, pos = { x = 1158.238, y = 304.000, z = -1125.681 }, rot = { x = 6.239, y = 359.902, z = 358.210 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		monsters = { 683001 },
		gadgets = { 683002, 683003, 683004, 683008, 683016, 683017, 683018, 683019 },
		regions = { 683013 },
		triggers = { "ANY_MONSTER_DIE_683009", "ENTER_REGION_683013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 683005, 683007 },
		regions = { 683014 },
		triggers = { "GADGET_STATE_CHANGE_683010", "ENTER_REGION_683014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_683009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_683009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008683, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_683010(context, evt)
	if 683005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_683010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 683005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_683012(context, evt)
	if evt.param1 ~= 683012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_683012(context, evt)
	-- 调用提示id为 1110046 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110046) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_683013(context, evt)
	if evt.param1 ~= 683013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_683013(context, evt)
	-- 调用提示id为 300868301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300868301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1177.799，300.6359，-1113.127），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1177.799, y=300.6359, z=-1113.127}
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
function condition_EVENT_ENTER_REGION_683014(context, evt)
	if evt.param1 ~= 683014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_683014(context, evt)
	-- 调用提示id为 300868302 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300868302) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1157.391，304.0117，-1127.01），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1157.391, y=304.0117, z=-1127.01}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end