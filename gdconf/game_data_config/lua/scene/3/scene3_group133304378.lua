-- 基础信息
local base_info = {
	group_id = 133304378
}

-- Trigger变量
local defs = {
	point_camera = 378040,
	gadget_lookEntity = 378004,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
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
	[378001] = { config_id = 378001, gadget_id = 70310226, pos = { x = -1322.414, y = 309.223, z = 2127.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[378002] = { config_id = 378002, gadget_id = 70230112, pos = { x = -1323.030, y = 309.661, z = 2142.367 }, rot = { x = 334.103, y = 315.252, z = 72.243 }, level = 27, persistent = true, area_id = 21 },
	[378003] = { config_id = 378003, gadget_id = 70230112, pos = { x = -1322.276, y = 309.373, z = 2143.538 }, rot = { x = 331.427, y = 328.315, z = 40.020 }, level = 27, persistent = true, area_id = 21 },
	[378004] = { config_id = 378004, gadget_id = 70230112, pos = { x = -1323.561, y = 310.368, z = 2141.360 }, rot = { x = 336.884, y = 314.398, z = 67.937 }, level = 27, persistent = true, area_id = 21 },
	[378005] = { config_id = 378005, gadget_id = 70230112, pos = { x = -1323.974, y = 309.719, z = 2140.116 }, rot = { x = 344.145, y = 325.989, z = 79.829 }, level = 27, persistent = true, area_id = 21 },
	[378006] = { config_id = 378006, gadget_id = 70290477, pos = { x = -1326.168, y = 308.039, z = 2121.403 }, rot = { x = 0.000, y = 29.622, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	-- 调查图案
	[378007] = { config_id = 378007, gadget_id = 70210102, pos = { x = -1322.050, y = 308.685, z = 2140.574 }, rot = { x = 0.000, y = 62.799, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	[378008] = { config_id = 378008, gadget_id = 71700402, pos = { x = -1324.741, y = 307.361, z = 2128.413 }, rot = { x = 0.000, y = 17.541, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	[378009] = { config_id = 378009, gadget_id = 71700402, pos = { x = -1323.313, y = 308.204, z = 2128.882 }, rot = { x = 0.000, y = 17.541, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[378010] = { config_id = 378010, gadget_id = 71700402, pos = { x = -1322.495, y = 308.603, z = 2127.472 }, rot = { x = 0.000, y = 17.541, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[378011] = { config_id = 378011, gadget_id = 71700402, pos = { x = -1321.752, y = 308.000, z = 2125.992 }, rot = { x = 0.000, y = 17.541, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[378012] = { config_id = 378012, gadget_id = 71700402, pos = { x = -1319.927, y = 307.288, z = 2127.445 }, rot = { x = 0.000, y = 17.541, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[378013] = { config_id = 378013, gadget_id = 70230111, pos = { x = -1323.992, y = 308.915, z = 2138.822 }, rot = { x = 8.016, y = 125.822, z = 91.998 }, level = 27, persistent = true, area_id = 21 },
	[378014] = { config_id = 378014, gadget_id = 70230113, pos = { x = -1323.821, y = 309.614, z = 2140.291 }, rot = { x = 310.890, y = 307.128, z = 80.094 }, level = 27, persistent = true, area_id = 21 },
	[378015] = { config_id = 378015, gadget_id = 70230113, pos = { x = -1323.905, y = 309.012, z = 2139.135 }, rot = { x = 322.189, y = 281.364, z = 110.702 }, level = 27, persistent = true, area_id = 21 },
	[378016] = { config_id = 378016, gadget_id = 70230113, pos = { x = -1322.806, y = 309.257, z = 2142.532 }, rot = { x = 334.279, y = 351.590, z = 50.804 }, level = 27, persistent = true, area_id = 21 },
	[378017] = { config_id = 378017, gadget_id = 70230113, pos = { x = -1323.195, y = 309.966, z = 2141.471 }, rot = { x = 6.487, y = 346.106, z = 63.606 }, level = 27, persistent = true, area_id = 21 },
	[378033] = { config_id = 378033, gadget_id = 70290592, pos = { x = -1322.414, y = 309.223, z = 2127.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	[378037] = { config_id = 378037, gadget_id = 70230113, pos = { x = -1323.458, y = 309.148, z = 2139.722 }, rot = { x = 2.662, y = 62.402, z = 73.579 }, level = 30, area_id = 21 },
	[378038] = { config_id = 378038, gadget_id = 70230113, pos = { x = -1322.988, y = 309.349, z = 2140.849 }, rot = { x = 14.771, y = 51.984, z = 78.727 }, level = 30, area_id = 21 },
	[378039] = { config_id = 378039, gadget_id = 70230113, pos = { x = -1322.630, y = 309.190, z = 2142.016 }, rot = { x = 15.018, y = 51.602, z = 77.636 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	-- 提示
	[378018] = { config_id = 378018, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1314.432, y = 306.741, z = 2128.425 }, area_id = 21 },
	-- 进入锁视角观察范围
	[378021] = { config_id = 378021, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1322.414, y = 307.766, z = 2127.616 }, area_id = 21, team_ability_group_list = { "EnterSceneLook_AbilityGroup" } },
	-- 提示
	[378022] = { config_id = 378022, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1323.388, y = 308.239, z = 2118.890 }, area_id = 21 },
	-- 进入正确观察氛围，开启时间轴，特效依次亮起，全部亮起后，任务跳转
	[378023] = { config_id = 378023, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1326.168, y = 308.039, z = 2121.403 }, area_id = 21 },
	-- 进入region，触发注目的rmd
	[378026] = { config_id = 378026, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1319.380, y = 306.359, z = 2141.175 }, area_id = 21 },
	-- 提示
	[378032] = { config_id = 378032, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1330.622, y = 308.610, z = 2128.700 }, area_id = 21 },
	-- 进入正确观察氛围，播放音乐
	[378043] = { config_id = 378043, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1326.168, y = 308.039, z = 2121.403 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 提示
	{ config_id = 1378018, name = "ENTER_REGION_378018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378018", action = "action_EVENT_ENTER_REGION_378018", trigger_count = 0 },
	-- 调查图案，派蒙提示，让兰那罗涂鸦常亮
	{ config_id = 1378019, name = "GADGET_STATE_CHANGE_378019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_378019", action = "action_EVENT_GADGET_STATE_CHANGE_378019", trigger_count = 0 },
	-- 谈话完成，进入观察阶段，让兰那罗涂鸦闪烁
	{ config_id = 1378020, name = "QUEST_START_378020", event = EventType.EVENT_QUEST_START, source = "7307402", condition = "", action = "action_EVENT_QUEST_START_378020", trigger_count = 0 },
	-- 进入锁视角观察范围
	{ config_id = 1378021, name = "ENTER_REGION_378021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378021", action = "action_EVENT_ENTER_REGION_378021", trigger_count = 0 },
	-- 提示
	{ config_id = 1378022, name = "ENTER_REGION_378022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378022", action = "action_EVENT_ENTER_REGION_378022", trigger_count = 0 },
	-- 进入正确观察氛围，开启时间轴，特效依次亮起，全部亮起后，任务跳转
	{ config_id = 1378023, name = "ENTER_REGION_378023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378023", action = "action_EVENT_ENTER_REGION_378023", trigger_count = 0 },
	-- 去找兰罗摩对话，让rmd的region生效
	{ config_id = 1378024, name = "QUEST_START_378024", event = EventType.EVENT_QUEST_START, source = "7307401", condition = "", action = "action_EVENT_QUEST_START_378024", trigger_count = 0 },
	-- rmd的region失效
	{ config_id = 1378025, name = "QUEST_FINISH_378025", event = EventType.EVENT_QUEST_FINISH, source = "7307401", condition = "", action = "action_EVENT_QUEST_FINISH_378025", trigger_count = 0 },
	-- 进入region，触发注目的rmd
	{ config_id = 1378026, name = "ENTER_REGION_378026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378026", action = "action_EVENT_ENTER_REGION_378026" },
	-- 第二朵花亮
	{ config_id = 1378028, name = "TIME_AXIS_PASS_378028", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_378028", action = "action_EVENT_TIME_AXIS_PASS_378028", trigger_count = 0 },
	-- 第三朵花亮
	{ config_id = 1378029, name = "TIME_AXIS_PASS_378029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_378029", action = "action_EVENT_TIME_AXIS_PASS_378029", trigger_count = 0 },
	-- 第四朵花亮
	{ config_id = 1378030, name = "TIME_AXIS_PASS_378030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_378030", action = "action_EVENT_TIME_AXIS_PASS_378030", trigger_count = 0 },
	-- 第五朵花亮，卸载suite2，取消注目，加载suite3，任务跳转
	{ config_id = 1378031, name = "TIME_AXIS_PASS_378031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_378031", action = "action_EVENT_TIME_AXIS_PASS_378031", trigger_count = 0 },
	-- 提示
	{ config_id = 1378032, name = "ENTER_REGION_378032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378032", action = "action_EVENT_ENTER_REGION_378032", trigger_count = 0 },
	-- 保底addsuite2
	{ config_id = 1378041, name = "GROUP_LOAD_378041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_378041", action = "action_EVENT_GROUP_LOAD_378041", trigger_count = 0 },
	-- 进入正确观察氛围，播放音乐
	{ config_id = 1378043, name = "ENTER_REGION_378043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378043", action = "action_EVENT_ENTER_REGION_378043" }
}

-- 点位
points = {
	[378040] = { config_id = 378040, pos = { x = -1319.446, y = 313.264, z = 2139.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 },
	[378042] = { config_id = 378042, pos = { x = -1320.060, y = 310.098, z = 2140.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
	{ config_id = 1, name = "focus", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 378034, gadget_id = 70290515, pos = { x = -1322.333, y = 307.707, z = 2127.706 }, rot = { x = 0.000, y = 321.098, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 378035, gadget_id = 70290516, pos = { x = -1323.260, y = 307.056, z = 2129.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 378036, gadget_id = 70290516, pos = { x = -1321.525, y = 306.841, z = 2126.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1378027, name = "TIME_AXIS_PASS_378027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_378027", action = "action_EVENT_TIME_AXIS_PASS_378027", trigger_count = 0 }
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
		gadgets = { 378002, 378003, 378004, 378005, 378008, 378009, 378010, 378011, 378012, 378013, 378014, 378015, 378017, 378037, 378038, 378039 },
		regions = { 378026 },
		triggers = { "QUEST_START_378020", "QUEST_START_378024", "QUEST_FINISH_378025", "ENTER_REGION_378026", "GROUP_LOAD_378041" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 378001, 378007, 378033 },
		regions = { 378018, 378021, 378022, 378023, 378032, 378043 },
		triggers = { "ENTER_REGION_378018", "GADGET_STATE_CHANGE_378019", "ENTER_REGION_378021", "ENTER_REGION_378022", "ENTER_REGION_378023", "TIME_AXIS_PASS_378028", "TIME_AXIS_PASS_378029", "TIME_AXIS_PASS_378030", "TIME_AXIS_PASS_378031", "ENTER_REGION_378032", "ENTER_REGION_378043" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 378006 },
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
function condition_EVENT_ENTER_REGION_378018(context, evt)
	if evt.param1 ~= 378018 then return false end
	
	-- 判断是区域378018
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 378018 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378018(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_378019(context, evt)
	-- 检测config_id为378007的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 378007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_378019(context, evt)
	-- 调用提示id为 7306903 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 378002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378037, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 378039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	LF_PointLook(context)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_378020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304378, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378021(context, evt)
	if evt.param1 ~= 378021 then return false end
	
	-- 判断是区域378021
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 378021 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378021(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378022(context, evt)
	if evt.param1 ~= 378022 then return false end
	
	-- 判断是区域378022
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 378022 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378022(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378023(context, evt)
	if evt.param1 ~= 378023 then return false end
	
	-- 判断是区域378023
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 378023 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378023(context, evt)
	-- 创建标识为"shining"，时间节点为{1,2,3,4,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "shining", {0.1,0.2,0.4,0.6,0.8}, false)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_378024(context, evt)
	-- 将本组内变量名为 "focus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "focus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_378025(context, evt)
	-- 将本组内变量名为 "focus" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "focus", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378026(context, evt)
	if evt.param1 ~= 378026 then return false end
	
	-- 判断变量"focus"为1
	if ScriptLib.GetGroupVariableValue(context, "focus") ~= 1 then
			return false
	end
	
	-- 判断是区域378026
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 378026 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378026(context, evt)
	-- 调用提示id为 730740101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730740101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1320.06, y=310.0979, z=2140.031}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1320.06, y=310.0979, z=2140.031}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_378028(context, evt)
	if "shining" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_378028(context, evt)
	-- 将configid为 378009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_378029(context, evt)
	if "shining" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_378029(context, evt)
	-- 将configid为 378010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_378030(context, evt)
	if "shining" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_378030(context, evt)
	-- 将configid为 378011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_378031(context, evt)
	if "shining" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_378031(context, evt)
	-- 将configid为 378012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 378012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304378, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304378, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378032(context, evt)
	if evt.param1 ~= 378032 then return false end
	
	-- 判断是区域378032
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 378032 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378032(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_378041(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7307402)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_378041(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304378, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378043(context, evt)
	if evt.param1 ~= 378043 then return false end
	
	-- 判断是区域378023
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 378023 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378043(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1322, y=309, z=2128}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Audio_Lua_kanun_melody_2", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

require "V3_0/CameraLook"