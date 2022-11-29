-- 基础信息
local base_info = {
	group_id = 133220468
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
	{ config_id = 468003, gadget_id = 70500000, pos = { x = -2543.778, y = 141.286, z = -4406.503 }, rot = { x = 0.000, y = 36.359, z = 0.000 }, level = 27, point_type = 2041, isOneoff = true, area_id = 11 },
	{ config_id = 468004, gadget_id = 70290126, pos = { x = -2543.773, y = 141.258, z = -4406.500 }, rot = { x = 271.074, y = 191.465, z = 314.122 }, level = 27, isOneoff = true, area_id = 11 },
	{ config_id = 468007, gadget_id = 70360001, pos = { x = -2543.770, y = 142.028, z = -4406.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 468001, shape = RegionShape.SPHERE, radius = 70, pos = { x = -2536.964, y = 110.824, z = -4399.393 }, area_id = 11 },
	{ config_id = 468002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2508.584, y = 139.833, z = -4413.568 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1468001, name = "ENTER_REGION_468001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_468001", action = "action_EVENT_ENTER_REGION_468001", trigger_count = 0 },
	{ config_id = 1468002, name = "ENTER_REGION_468002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_468002", action = "action_EVENT_ENTER_REGION_468002" },
	-- 2
	{ config_id = 1468008, name = "GADGET_CREATE_468008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_468008", action = "action_EVENT_GADGET_CREATE_468008" },
	-- 2
	{ config_id = 1468009, name = "SELECT_OPTION_468009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_468009", action = "action_EVENT_SELECT_OPTION_468009", trigger_count = 0 },
	-- 2
	{ config_id = 1468011, name = "GROUP_LOAD_468011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_468011", action = "action_EVENT_GROUP_LOAD_468011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 468005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2541.708, y = 141.448, z = -4407.613 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1468005, name = "ENTER_REGION_468005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_468005", action = "action_EVENT_ENTER_REGION_468005", trigger_count = 2 }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { 468001, 468002 },
		triggers = { "ENTER_REGION_468001", "ENTER_REGION_468002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 468003, 468004, 468007 },
		regions = { },
		triggers = { "GADGET_CREATE_468008", "SELECT_OPTION_468009", "GROUP_LOAD_468011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_468001(context, evt)
	if evt.param1 ~= 468001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_468001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210504") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_468002(context, evt)
	if evt.param1 ~= 468002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_468002(context, evt)
	-- 调用提示id为 7210501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2546.04，158.99，-4404.58），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2546.04, y=158.99, z=-4404.58}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_468008(context, evt)
	if 468007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_468008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_468009(context, evt)
	-- 判断是gadgetid 468007 option_id 68
	if 468007 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_468009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210507") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133220468 ；指定config：468007；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220468, 468007, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220468, EntityType.GADGET, 468004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_468011(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_468011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210507") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end