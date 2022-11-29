-- 基础信息
local base_info = {
	group_id = 133302272
}

-- Trigger变量
local defs = {
	enter_region = 272004,
	leave_region = 272005,
	FindClue = 1,
	BeatMonster = 1,
	FindRock = 1,
	PuzzleProgress = 1,
	Total = 2
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
	{ config_id = 272001, gadget_id = 70800240, pos = { x = -790.605, y = 229.130, z = 2481.616 }, rot = { x = 0.000, y = 332.860, z = 0.000 }, level = 30, persistent = true, area_id = 24 },
	{ config_id = 272002, gadget_id = 70360001, pos = { x = -746.865, y = 180.235, z = 2477.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 24 },
	{ config_id = 272003, gadget_id = 70220103, pos = { x = -783.934, y = 173.858, z = 2452.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272006, gadget_id = 70330197, pos = { x = -791.734, y = 220.300, z = 2482.691 }, rot = { x = 0.000, y = 332.860, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272007, gadget_id = 70710095, pos = { x = -737.622, y = 180.235, z = 2454.382 }, rot = { x = 0.088, y = 91.542, z = 356.726 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272008, gadget_id = 70690029, pos = { x = -827.876, y = 178.215, z = 2434.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272009, gadget_id = 70310148, pos = { x = -736.942, y = 180.233, z = 2454.291 }, rot = { x = 356.725, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272010, gadget_id = 70690001, pos = { x = -789.671, y = 172.679, z = 2448.278 }, rot = { x = 348.013, y = 236.909, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272011, gadget_id = 70690001, pos = { x = -795.408, y = 174.133, z = 2444.539 }, rot = { x = 348.013, y = 236.909, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272012, gadget_id = 70800289, pos = { x = -737.622, y = 180.235, z = 2454.382 }, rot = { x = 356.725, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272015, gadget_id = 70800289, pos = { x = -790.605, y = 229.130, z = 2481.616 }, rot = { x = 0.000, y = 332.860, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272017, gadget_id = 70690001, pos = { x = -801.789, y = 175.750, z = 2440.380 }, rot = { x = 338.147, y = 253.785, z = 356.486 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272018, gadget_id = 70690001, pos = { x = -840.975, y = 192.279, z = 2443.723 }, rot = { x = 328.338, y = 23.399, z = 4.211 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272019, gadget_id = 70220103, pos = { x = -760.259, y = 177.275, z = 2452.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272020, gadget_id = 70360001, pos = { x = -737.623, y = 181.734, z = 2454.371 }, rot = { x = 356.725, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 272021, gadget_id = 70360050, pos = { x = -778.876, y = 213.873, z = 2479.659 }, rot = { x = 0.000, y = 332.860, z = 0.000 }, level = 30, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 272004, shape = RegionShape.CYLINDER, radius = 120, pos = { x = -746.865, y = 142.645, z = 2477.235 }, height = 300.000, area_id = 24 },
	{ config_id = 272005, shape = RegionShape.CYLINDER, radius = 140, pos = { x = -746.865, y = 142.645, z = 2477.235 }, height = 300.000, area_id = 24 },
	{ config_id = 272013, shape = RegionShape.SPHERE, radius = 25, pos = { x = -740.362, y = 180.173, z = 2447.471 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1272013, name = "ENTER_REGION_272013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_272013", action = "action_EVENT_ENTER_REGION_272013" },
	{ config_id = 1272014, name = "SELECT_OPTION_272014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_272014", action = "action_EVENT_SELECT_OPTION_272014", trigger_count = 0 },
	{ config_id = 1272016, name = "GADGET_STATE_CHANGE_272016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272016", action = "action_EVENT_GADGET_STATE_CHANGE_272016" },
	{ config_id = 1272022, name = "GADGET_CREATE_272022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_272022", action = "action_EVENT_GADGET_CREATE_272022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FindClue", value = 0, no_refresh = true },
	{ config_id = 2, name = "BeatMonster", value = -1, no_refresh = true },
	{ config_id = 3, name = "FindRock", value = -1, no_refresh = true },
	{ config_id = 4, name = "PuzzleProgress", value = -1, no_refresh = true }
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
		gadgets = { 272002, 272007, 272012, 272020 },
		regions = { 272004, 272005, 272013 },
		triggers = { "ENTER_REGION_272013", "SELECT_OPTION_272014", "GADGET_STATE_CHANGE_272016", "GADGET_CREATE_272022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 272009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 272001, 272003, 272006, 272008, 272010, 272011, 272015, 272017, 272018, 272019, 272021 },
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
function condition_EVENT_ENTER_REGION_272013(context, evt)
	if evt.param1 ~= 272013 then return false end
	
	-- 判断是区域272013
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 272013 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_272013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302272, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_272014(context, evt)
	-- 判断是gadgetid 272020 option_id 917
	if 272020 ~= evt.param1 then
		return false	
	end
	
	if 917 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"FindClue"为0
	if ScriptLib.GetGroupVariableValue(context, "FindClue") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_272014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302272, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302272, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "FindClue" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindClue", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 变量"FindRock"赋值为0
	ScriptLib.SetGroupVariableValue(context, "FindRock", 0)
	
	-- 触发镜头注目，注目位置为坐标{x=-799.3179, y=203.2488, z=2478.803}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-799.3179, y=203.2488, z=2478.803}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 600164 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600164) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 133302272 ；指定config：272020；物件身上指定option：917；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302272, 272020, 917) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_272016(context, evt)
	if 272001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_272016(context, evt)
	-- 针对当前group内变量名为 "FindRock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindRock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_272022(context, evt)
	if 272020 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"FindClue"为0
	if ScriptLib.GetGroupVariableValue(context, "FindClue") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_272022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {917}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

require "V3_1/Activity_RockBoardExplore"