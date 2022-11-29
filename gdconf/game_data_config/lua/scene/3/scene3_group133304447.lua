-- 基础信息
local base_info = {
	group_id = 133304447
}

-- Trigger变量
local defs = {
	enter_region = 447005,
	leave_region = 447006,
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
	{ config_id = 447001, gadget_id = 70800240, pos = { x = -1519.914, y = 304.300, z = 2333.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447002, gadget_id = 70220103, pos = { x = -1357.385, y = 162.643, z = 2375.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447004, gadget_id = 70360001, pos = { x = -1468.261, y = 158.600, z = 2386.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 21 },
	{ config_id = 447007, gadget_id = 70710095, pos = { x = -1356.710, y = 158.531, z = 2367.990 }, rot = { x = 5.550, y = 359.221, z = 348.503 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447009, gadget_id = 70220103, pos = { x = -1550.257, y = 272.645, z = 2438.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447010, gadget_id = 70690029, pos = { x = -1404.974, y = 157.208, z = 2420.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447011, gadget_id = 70220103, pos = { x = -1367.158, y = 160.408, z = 2385.839 }, rot = { x = 358.955, y = 322.679, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447012, gadget_id = 70310148, pos = { x = -1357.741, y = 158.674, z = 2368.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447013, gadget_id = 70690001, pos = { x = -1370.258, y = 154.652, z = 2395.937 }, rot = { x = 358.955, y = 322.679, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447014, gadget_id = 70690001, pos = { x = -1376.506, y = 155.273, z = 2403.341 }, rot = { x = 348.259, y = 318.266, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447015, gadget_id = 70690001, pos = { x = -1382.294, y = 156.676, z = 2407.990 }, rot = { x = 339.955, y = 303.905, z = 358.221 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447016, gadget_id = 70800289, pos = { x = -1356.737, y = 158.600, z = 2367.982 }, rot = { x = 0.000, y = 0.000, z = 348.269 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447017, gadget_id = 70690001, pos = { x = -1387.955, y = 159.486, z = 2411.164 }, rot = { x = 336.538, y = 299.203, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447018, gadget_id = 70690001, pos = { x = -1393.560, y = 162.272, z = 2414.297 }, rot = { x = 335.655, y = 298.171, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447019, gadget_id = 70690001, pos = { x = -1399.182, y = 165.158, z = 2417.308 }, rot = { x = 334.953, y = 297.333, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447021, gadget_id = 70800289, pos = { x = -1519.914, y = 304.300, z = 2333.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447022, gadget_id = 70220103, pos = { x = -1467.924, y = 213.612, z = 2443.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447023, gadget_id = 70360001, pos = { x = -1356.342, y = 159.940, z = 2368.173 }, rot = { x = 5.550, y = 359.221, z = 348.503 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447024, gadget_id = 70220103, pos = { x = -1423.575, y = 181.760, z = 2433.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447025, gadget_id = 70220103, pos = { x = -1454.012, y = 199.028, z = 2445.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447026, gadget_id = 70220103, pos = { x = -1522.206, y = 253.215, z = 2449.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447027, gadget_id = 70360050, pos = { x = -1519.914, y = 304.300, z = 2333.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 跑酷
	{ config_id = 447028, gadget_id = 70220103, pos = { x = -1532.872, y = 307.076, z = 2374.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447029, gadget_id = 70220103, pos = { x = -1439.772, y = 189.020, z = 2441.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447030, gadget_id = 70220103, pos = { x = -1489.142, y = 241.600, z = 2456.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447031, gadget_id = 70690001, pos = { x = -1382.634, y = 156.840, z = 2408.190 }, rot = { x = 336.538, y = 299.203, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447033, gadget_id = 70690001, pos = { x = -1549.600, y = 272.444, z = 2432.720 }, rot = { x = 327.248, y = 168.891, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447034, gadget_id = 70690001, pos = { x = -1548.466, y = 276.230, z = 2426.944 }, rot = { x = 327.599, y = 163.711, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447035, gadget_id = 70690001, pos = { x = -1546.809, y = 279.980, z = 2421.273 }, rot = { x = 328.401, y = 156.796, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447036, gadget_id = 70690001, pos = { x = -1544.461, y = 283.645, z = 2415.797 }, rot = { x = 330.369, y = 146.346, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 447037, gadget_id = 70690001, pos = { x = -1541.094, y = 287.101, z = 2410.740 }, rot = { x = 330.369, y = 146.346, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447038, gadget_id = 70690011, pos = { x = -1466.872, y = 180.654, z = 2447.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	-- 跑酷
	{ config_id = 447039, gadget_id = 70690027, pos = { x = -1552.722, y = 265.571, z = 2437.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 447003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1356.806, y = 158.550, z = 2367.981 }, area_id = 21 },
	{ config_id = 447005, shape = RegionShape.CYLINDER, radius = 140, pos = { x = -1468.261, y = 281.299, z = 2386.746 }, height = 400.000, area_id = 21 },
	{ config_id = 447006, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -1468.261, y = 281.299, z = 2386.746 }, height = 400.000, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1447003, name = "ENTER_REGION_447003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447003", action = "action_EVENT_ENTER_REGION_447003" },
	{ config_id = 1447008, name = "SELECT_OPTION_447008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_447008", action = "action_EVENT_SELECT_OPTION_447008", trigger_count = 0 },
	{ config_id = 1447020, name = "GADGET_STATE_CHANGE_447020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_447020", action = "action_EVENT_GADGET_STATE_CHANGE_447020" },
	{ config_id = 1447032, name = "GADGET_CREATE_447032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_447032", action = "action_EVENT_GADGET_CREATE_447032", trigger_count = 0 },
	{ config_id = 1447040, name = "TIME_AXIS_PASS_447040", event = EventType.EVENT_TIME_AXIS_PASS, source = "delay2s", condition = "", action = "action_EVENT_TIME_AXIS_PASS_447040" }
}

-- 变量
variables = {
	{ config_id = 1, name = "FindClue", value = 0, no_refresh = true },
	{ config_id = 3, name = "BeatMonster", value = -1, no_refresh = true },
	{ config_id = 2, name = "FindRock", value = -1, no_refresh = true },
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
		-- description = 基础,
		monsters = { },
		gadgets = { 447002, 447004, 447007, 447016, 447023 },
		regions = { 447003, 447005, 447006 },
		triggers = { "ENTER_REGION_447003", "SELECT_OPTION_447008", "GADGET_STATE_CHANGE_447020", "GADGET_CREATE_447032", "TIME_AXIS_PASS_447040" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 机关提示,
		monsters = { },
		gadgets = { 447012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 447009, 447010, 447011, 447013, 447014, 447015, 447017, 447018, 447019, 447021, 447022, 447024, 447025, 447026, 447028, 447029, 447030, 447031, 447033, 447034, 447035, 447036, 447037, 447038, 447039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 447001 },
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
function condition_EVENT_ENTER_REGION_447003(context, evt)
	if evt.param1 ~= 447003 then return false end
	
	-- 判断是区域447003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 447003 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304447, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_447008(context, evt)
	-- 判断是gadgetid 447023 option_id 917
	if 447023 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_447008(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304447, 4)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304447, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304447, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 447016 }) then
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
	
	-- 调用提示id为 600164 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600164) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 447002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标{x=-1560.257, y=275.6446, z=2448.56}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1560.257, y=275.6446, z=2448.56}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 删除指定group： 133304447 ；指定config：447023；物件身上指定option：917；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304447, 447023, 917) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"delay2s"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay2s", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_447020(context, evt)
	if 447001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_447020(context, evt)
	-- 针对当前group内变量名为 "FindRock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindRock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304447, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_447032(context, evt)
	if 447023 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"FindClue"为0
	if ScriptLib.GetGroupVariableValue(context, "FindClue") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_447032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {917}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_447040(context, evt)
	-- 创建id为447027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 447027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_1/Activity_RockBoardExplore"