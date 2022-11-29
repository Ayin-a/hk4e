-- 基础信息
local base_info = {
	group_id = 133008684
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 684001, monster_id = 28020802, pos = { x = 1092.022, y = 294.951, z = -1138.199 }, rot = { x = 0.000, y = 75.215, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 1
	{ config_id = 684002, gadget_id = 70360273, pos = { x = 1087.054, y = 297.374, z = -1149.047 }, rot = { x = 0.000, y = 49.401, z = 0.000 }, level = 30, mark_flag = 1, area_id = 10 },
	-- 2
	{ config_id = 684003, gadget_id = 70360273, pos = { x = 1081.763, y = 300.272, z = -1140.893 }, rot = { x = 0.000, y = 132.402, z = 0.000 }, level = 30, mark_flag = 2, area_id = 10 },
	-- 4
	{ config_id = 684004, gadget_id = 70360274, pos = { x = 1067.406, y = 303.896, z = -1140.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 4, area_id = 10 },
	-- s2
	{ config_id = 684005, gadget_id = 70360102, pos = { x = 1067.406, y = 303.714, z = -1140.854 }, rot = { x = 17.636, y = 131.642, z = 7.401 }, level = 30, area_id = 10 },
	-- s2
	{ config_id = 684007, gadget_id = 70360276, pos = { x = 1067.406, y = 303.714, z = -1140.854 }, rot = { x = 0.000, y = 98.191, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 684015, gadget_id = 70310015, pos = { x = 1070.504, y = 301.785, z = -1142.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 3
	{ config_id = 684016, gadget_id = 70360273, pos = { x = 1070.994, y = 303.471, z = -1137.729 }, rot = { x = 0.000, y = 80.395, z = 0.000 }, level = 30, mark_flag = 3, area_id = 10 }
}

-- 区域
regions = {
	-- 提示2
	{ config_id = 684012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1147.729, y = 304.475, z = -1125.010 }, area_id = 10 },
	-- 提示 300868312
	{ config_id = 684013, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1066.124, y = 304.029, z = -1139.765 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1684009, name = "ANY_MONSTER_DIE_684009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_684009", action = "action_EVENT_ANY_MONSTER_DIE_684009" },
	-- s2
	{ config_id = 1684010, name = "ANY_GADGET_DIE_684010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_684010", action = "action_EVENT_ANY_GADGET_DIE_684010", trigger_count = 0 },
	-- 提示2
	{ config_id = 1684012, name = "ENTER_REGION_684012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_684012", action = "action_EVENT_ENTER_REGION_684012" },
	-- 提示 300868312
	{ config_id = 1684013, name = "ENTER_REGION_684013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_684013", action = "action_EVENT_ENTER_REGION_684013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 684006, gadget_id = 70210101, pos = { x = 1067.406, y = 303.896, z = -1140.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物蒙德", persistent = true, area_id = 10 },
		{ config_id = 684008, gadget_id = 70310022, pos = { x = 1158.238, y = 304.000, z = -1125.681 }, rot = { x = 6.239, y = 359.902, z = 358.210 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	regions = {
		{ config_id = 684014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1066.918, y = 304.000, z = -1139.918 }, area_id = 10 }
	},
	triggers = {
		{ config_id = 1684014, name = "ENTER_REGION_684014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_684014" }
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
		gadgets = { 684005, 684007, 684015 },
		regions = { 684013 },
		triggers = { "ANY_GADGET_DIE_684010", "ENTER_REGION_684013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_684009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_684009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008684, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_684010(context, evt)
	if 684005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_684010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_684012(context, evt)
	if evt.param1 ~= 684012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_684012(context, evt)
	-- 调用提示id为 1107003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1107003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_684013(context, evt)
	if evt.param1 ~= 684013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_684013(context, evt)
	-- 调用提示id为 300868312 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300868312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1067.406，303.7138，-1140.854），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1067.406, y=303.7138, z=-1140.854}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end