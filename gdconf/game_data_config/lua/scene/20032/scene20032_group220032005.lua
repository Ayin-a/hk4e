-- 基础信息
local base_info = {
	group_id = 220032005
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
	{ config_id = 5001, gadget_id = 70380001, pos = { x = 497.706, y = -24.608, z = 67.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 5002, gadget_id = 70360002, pos = { x = 473.428, y = -20.023, z = 59.518 }, rot = { x = 0.000, y = 92.208, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70900202, pos = { x = 473.438, y = -18.465, z = 59.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70900201, pos = { x = 493.052, y = -18.300, z = 67.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, gadget_id = 70211101, pos = { x = 494.447, y = -20.051, z = 55.595 }, rot = { x = 0.000, y = 296.939, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 5010, gadget_id = 70220013, pos = { x = 494.982, y = -20.034, z = 78.211 }, rot = { x = 0.294, y = 323.511, z = 0.004 }, level = 1 },
	{ config_id = 5011, gadget_id = 70220013, pos = { x = 495.071, y = -20.033, z = 75.455 }, rot = { x = 0.000, y = 9.917, z = 0.000 }, level = 1 },
	{ config_id = 5012, gadget_id = 70220026, pos = { x = 493.493, y = -20.033, z = 76.978 }, rot = { x = 0.000, y = 18.724, z = 0.000 }, level = 1 },
	{ config_id = 5013, gadget_id = 70220013, pos = { x = 427.391, y = -22.084, z = 79.171 }, rot = { x = 0.000, y = 332.878, z = 0.000 }, level = 1 },
	{ config_id = 5014, gadget_id = 70220013, pos = { x = 429.435, y = -22.084, z = 78.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5015, gadget_id = 70220014, pos = { x = 431.639, y = -22.084, z = 78.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, gadget_id = 70220026, pos = { x = 426.025, y = -22.083, z = 56.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5020, gadget_id = 70220014, pos = { x = 427.607, y = -22.084, z = 52.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5021, gadget_id = 70220014, pos = { x = 428.231, y = -21.762, z = 51.801 }, rot = { x = 308.254, y = 301.833, z = 94.680 }, level = 1 },
	{ config_id = 5023, gadget_id = 70220025, pos = { x = 427.250, y = -21.971, z = 54.792 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5005, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 40.000 }, pos = { x = 511.421, y = -37.381, z = 70.728 } },
	{ config_id = 5008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 10.000 }, pos = { x = 491.777, y = -15.472, z = 67.633 } }
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "GADGET_CREATE_5003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5003", action = "action_EVENT_GADGET_CREATE_5003" },
	{ config_id = 1005004, name = "SELECT_OPTION_5004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5004", action = "action_EVENT_SELECT_OPTION_5004" },
	{ config_id = 1005005, name = "ENTER_REGION_5005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5005", action = "action_EVENT_ENTER_REGION_5005" },
	{ config_id = 1005008, name = "ENTER_REGION_5008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5008", action = "action_EVENT_ENTER_REGION_5008" }
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
		monsters = { },
		gadgets = { 5001, 5002, 5007, 5009, 5010, 5011, 5012, 5013, 5014, 5015, 5019, 5020, 5021, 5023 },
		regions = { 5005, 5008 },
		triggers = { "GADGET_CREATE_5003", "SELECT_OPTION_5004", "ENTER_REGION_5005", "ENTER_REGION_5008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5003(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5004(context, evt)
	-- 判断是gadgetid 5002 option_id 1
	if 5002 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5004(context, evt)
	-- 改变指定group组220032001中， configid为1004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220032001, 1004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220032005 ；指定config：5002；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220032005, 5002, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220032005, monsters = {}, gadgets = {5006} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5005(context, evt)
	if evt.param1 ~= 5005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5005(context, evt)
	-- 触发镜头注目，注目位置为坐标（498，-28，68），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=498, y=-28, z=68}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200325005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 200320101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200320101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5008(context, evt)
	if evt.param1 ~= 5008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5008(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220032005, monsters = {}, gadgets = {5007} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为5006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end