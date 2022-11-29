-- 基础信息
local base_info = {
	group_id = 133220124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124008, monster_id = 25080101, pos = { x = -2715.210, y = 210.087, z = -4178.762 }, rot = { x = 0.000, y = 291.896, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 124009, monster_id = 25010401, pos = { x = -2721.312, y = 210.762, z = -4180.979 }, rot = { x = 0.000, y = 128.909, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9003, area_id = 11 },
	{ config_id = 124010, monster_id = 25010301, pos = { x = -2722.638, y = 212.526, z = -4185.243 }, rot = { x = 0.000, y = 18.250, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9003, area_id = 11 },
	{ config_id = 124011, monster_id = 25080201, pos = { x = -2724.853, y = 210.814, z = -4179.179 }, rot = { x = 0.000, y = 141.381, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 124012, monster_id = 25010201, pos = { x = -2717.364, y = 210.038, z = -4178.171 }, rot = { x = 0.000, y = 85.828, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9006, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124001, gadget_id = 70500000, pos = { x = -2721.107, y = 211.180, z = -4181.456 }, rot = { x = 0.000, y = 299.070, z = 0.000 }, level = 27, point_type = 9138, isOneoff = true, area_id = 11 },
	{ config_id = 124002, gadget_id = 70710289, pos = { x = -2720.754, y = 210.650, z = -4181.940 }, rot = { x = 0.000, y = 126.906, z = 183.929 }, level = 27, area_id = 11 },
	{ config_id = 124003, gadget_id = 70360001, pos = { x = -2720.658, y = 211.124, z = -4181.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 124013, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2722.890, y = 210.551, z = -4164.937 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1124004, name = "GADGET_CREATE_124004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124004", action = "action_EVENT_GADGET_CREATE_124004", trigger_count = 0 },
	{ config_id = 1124005, name = "SELECT_OPTION_124005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124005", action = "action_EVENT_SELECT_OPTION_124005", trigger_count = 0 },
	{ config_id = 1124006, name = "GADGET_STATE_CHANGE_124006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124006", action = "action_EVENT_GADGET_STATE_CHANGE_124006" },
	{ config_id = 1124007, name = "GATHER_124007", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_124007", action = "action_EVENT_GATHER_124007" },
	{ config_id = 1124013, name = "ENTER_REGION_124013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124013", action = "action_EVENT_ENTER_REGION_124013" }
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
		gadgets = { 124002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 124008, 124009, 124010, 124011, 124012 },
		gadgets = { 124002, 124003 },
		regions = { 124013 },
		triggers = { "GADGET_CREATE_124004", "SELECT_OPTION_124005", "GADGET_STATE_CHANGE_124006", "ENTER_REGION_124013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 124001 },
		regions = { },
		triggers = { "GADGET_CREATE_124004", "SELECT_OPTION_124005", "GADGET_STATE_CHANGE_124006", "GATHER_124007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_124004(context, evt)
	if 124003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124005(context, evt)
	-- 判断是gadgetid 124003 option_id 169
	if 124003 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124005(context, evt)
	-- 将configid为 124002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133220124 ；指定config：124003；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220124, 124003, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124006(context, evt)
	if 124002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220124, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_124007(context, evt)
	if 124001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_124007(context, evt)
	-- 调用提示id为 -1074246889 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246889) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_124013(context, evt)
	if evt.param1 ~= 124013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124013(context, evt)
	-- 调用提示id为 -1074246891 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246891) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2721.01，214.83，-4176.78），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2721.01, y=214.83, z=-4176.78}
	  local pos_follow = {x=0, y=3, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end