-- 基础信息
local base_info = {
	group_id = 133303057
}

-- Trigger变量
local defs = {
	point_camera = 57044,
	gadget_lookEntity = 57020,
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
	[57001] = { config_id = 57001, gadget_id = 70230112, pos = { x = -1389.190, y = 264.770, z = 3559.868 }, rot = { x = 0.444, y = 205.382, z = 94.879 }, level = 30, persistent = true, area_id = 23 },
	[57002] = { config_id = 57002, gadget_id = 70310226, pos = { x = -1375.798, y = 266.351, z = 3568.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[57006] = { config_id = 57006, gadget_id = 70290478, pos = { x = -1369.215, y = 264.877, z = 3569.338 }, rot = { x = 0.000, y = 47.472, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 调查图案
	[57007] = { config_id = 57007, gadget_id = 70210102, pos = { x = -1386.586, y = 265.486, z = 3562.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 23 },
	[57013] = { config_id = 57013, gadget_id = 71700402, pos = { x = -1375.887, y = 264.432, z = 3566.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[57014] = { config_id = 57014, gadget_id = 71700402, pos = { x = -1376.944, y = 264.924, z = 3567.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[57015] = { config_id = 57015, gadget_id = 71700402, pos = { x = -1374.496, y = 264.924, z = 3568.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[57016] = { config_id = 57016, gadget_id = 71700402, pos = { x = -1375.256, y = 265.327, z = 3569.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[57017] = { config_id = 57017, gadget_id = 71700402, pos = { x = -1377.483, y = 265.624, z = 3570.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[57018] = { config_id = 57018, gadget_id = 70230112, pos = { x = -1387.942, y = 265.111, z = 3560.228 }, rot = { x = 14.383, y = 205.593, z = 93.655 }, level = 30, persistent = true, area_id = 23 },
	[57019] = { config_id = 57019, gadget_id = 70230112, pos = { x = -1385.357, y = 265.890, z = 3560.158 }, rot = { x = 350.183, y = 207.309, z = 88.325 }, level = 30, persistent = true, area_id = 23 },
	[57020] = { config_id = 57020, gadget_id = 70230112, pos = { x = -1386.629, y = 266.002, z = 3560.443 }, rot = { x = 347.171, y = 208.859, z = 82.148 }, level = 30, persistent = true, area_id = 23 },
	[57021] = { config_id = 57021, gadget_id = 70230111, pos = { x = -1384.105, y = 265.482, z = 3560.659 }, rot = { x = 0.522, y = 24.087, z = 89.814 }, level = 30, persistent = true, area_id = 23 },
	[57022] = { config_id = 57022, gadget_id = 70230113, pos = { x = -1385.068, y = 265.612, z = 3560.777 }, rot = { x = 17.679, y = 315.282, z = 83.820 }, level = 30, persistent = true, area_id = 23 },
	[57023] = { config_id = 57023, gadget_id = 70230113, pos = { x = -1386.309, y = 265.374, z = 3560.969 }, rot = { x = 17.605, y = 314.572, z = 83.605 }, level = 30, persistent = true, area_id = 23 },
	[57024] = { config_id = 57024, gadget_id = 70230113, pos = { x = -1387.647, y = 265.400, z = 3561.261 }, rot = { x = 0.262, y = 311.906, z = 98.177 }, level = 30, persistent = true, area_id = 23 },
	[57025] = { config_id = 57025, gadget_id = 70230113, pos = { x = -1388.971, y = 265.199, z = 3560.533 }, rot = { x = 350.327, y = 306.309, z = 97.039 }, level = 30, persistent = true, area_id = 23 },
	[57038] = { config_id = 57038, gadget_id = 70290592, pos = { x = -1375.798, y = 266.351, z = 3568.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	[57039] = { config_id = 57039, gadget_id = 70230113, pos = { x = -1384.394, y = 265.896, z = 3560.687 }, rot = { x = 353.975, y = 8.790, z = 90.374 }, level = 30, area_id = 23 },
	[57040] = { config_id = 57040, gadget_id = 70230113, pos = { x = -1386.054, y = 265.804, z = 3560.580 }, rot = { x = 358.806, y = 44.655, z = 92.654 }, level = 30, area_id = 23 },
	[57041] = { config_id = 57041, gadget_id = 70230113, pos = { x = -1387.393, y = 265.436, z = 3560.610 }, rot = { x = 0.154, y = 19.754, z = 89.566 }, level = 30, area_id = 23 },
	[57042] = { config_id = 57042, gadget_id = 70230113, pos = { x = -1388.676, y = 265.001, z = 3560.299 }, rot = { x = 358.371, y = 14.293, z = 96.366 }, level = 30, area_id = 23 },
	[57043] = { config_id = 57043, gadget_id = 70230113, pos = { x = -1388.917, y = 265.283, z = 3561.391 }, rot = { x = 2.381, y = 312.145, z = 92.143 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	-- 进入region  触发注目和rmd
	[57005] = { config_id = 57005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1387.672, y = 264.798, z = 3563.921 }, area_id = 23 },
	-- 进入锁视角观察范围
	[57010] = { config_id = 57010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1375.798, y = 264.840, z = 3568.470 }, area_id = 23, team_ability_group_list = { "EnterSceneLook_AbilityGroup" } },
	-- 提示
	[57011] = { config_id = 57011, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1380.862, y = 264.370, z = 3565.389 }, area_id = 23 },
	-- 进入正确观察region，开启时间轴，特效依次亮起
	[57012] = { config_id = 57012, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1369.215, y = 264.877, z = 3569.338 }, area_id = 23 },
	-- 提示
	[57032] = { config_id = 57032, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1371.759, y = 263.942, z = 3563.177 }, area_id = 23 },
	-- 提示
	[57033] = { config_id = 57033, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1373.953, y = 264.920, z = 3573.145 }, area_id = 23 },
	-- 进入正确观察region，播放音效
	[57046] = { config_id = 57046, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1369.215, y = 264.877, z = 3569.338 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 去找兰罗摩对话，让rmd的region生效
	{ config_id = 1057003, name = "QUEST_START_57003", event = EventType.EVENT_QUEST_START, source = "7307004", condition = "", action = "action_EVENT_QUEST_START_57003" },
	-- 让rmd的region失效
	{ config_id = 1057004, name = "QUEST_FINISH_57004", event = EventType.EVENT_QUEST_FINISH, source = "7307004", condition = "", action = "action_EVENT_QUEST_FINISH_57004" },
	-- 进入region  触发注目和rmd
	{ config_id = 1057005, name = "ENTER_REGION_57005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57005", action = "action_EVENT_ENTER_REGION_57005" },
	-- 调查图案，派蒙提示，让兰那罗涂鸦常亮
	{ config_id = 1057008, name = "GADGET_STATE_CHANGE_57008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57008", action = "action_EVENT_GADGET_STATE_CHANGE_57008", trigger_count = 0 },
	-- 谈话完成，进入观察阶段，让兰那罗涂鸦闪烁
	{ config_id = 1057009, name = "QUEST_START_57009", event = EventType.EVENT_QUEST_START, source = "7307005", condition = "", action = "action_EVENT_QUEST_START_57009", trigger_count = 0 },
	-- 进入锁视角观察范围
	{ config_id = 1057010, name = "ENTER_REGION_57010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57010", action = "action_EVENT_ENTER_REGION_57010", trigger_count = 0 },
	-- 提示
	{ config_id = 1057011, name = "ENTER_REGION_57011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57011", action = "action_EVENT_ENTER_REGION_57011", trigger_count = 0 },
	-- 进入正确观察region，开启时间轴，特效依次亮起
	{ config_id = 1057012, name = "ENTER_REGION_57012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57012", action = "action_EVENT_ENTER_REGION_57012", trigger_count = 0 },
	-- 把正确观察的region生效
	{ config_id = 1057026, name = "TIME_AXIS_PASS_57026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_57026", action = "action_EVENT_TIME_AXIS_PASS_57026", trigger_count = 0 },
	-- 第二朵花亮
	{ config_id = 1057028, name = "TIME_AXIS_PASS_57028", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_57028", action = "action_EVENT_TIME_AXIS_PASS_57028", trigger_count = 0 },
	-- 第三朵花亮
	{ config_id = 1057029, name = "TIME_AXIS_PASS_57029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_57029", action = "action_EVENT_TIME_AXIS_PASS_57029", trigger_count = 0 },
	-- 第四朵花亮
	{ config_id = 1057030, name = "TIME_AXIS_PASS_57030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_57030", action = "action_EVENT_TIME_AXIS_PASS_57030", trigger_count = 0 },
	-- 第五朵花亮，卸载suite2，加载suite3，任务跳转，取消注目
	{ config_id = 1057031, name = "TIME_AXIS_PASS_57031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_57031", action = "action_EVENT_TIME_AXIS_PASS_57031", trigger_count = 0 },
	-- 提示
	{ config_id = 1057032, name = "ENTER_REGION_57032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57032", action = "action_EVENT_ENTER_REGION_57032", trigger_count = 0 },
	-- 提示
	{ config_id = 1057033, name = "ENTER_REGION_57033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57033", action = "action_EVENT_ENTER_REGION_57033", trigger_count = 0 },
	-- 保底addsuite2
	{ config_id = 1057045, name = "GROUP_LOAD_57045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57045", action = "action_EVENT_GROUP_LOAD_57045", trigger_count = 0 },
	-- 进入正确观察region，播放音效
	{ config_id = 1057046, name = "ENTER_REGION_57046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57046", action = "action_EVENT_ENTER_REGION_57046" }
}

-- 点位
points = {
	[57044] = { config_id = 57044, pos = { x = -1386.840, y = 271.219, z = 3563.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
	{ config_id = 1, name = "focus", value = 0, no_refresh = true },
	{ config_id = 2, name = "find", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 57034, gadget_id = 70290516, pos = { x = -1377.475, y = 264.441, z = 3570.214 }, rot = { x = 0.000, y = 117.066, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 57035, gadget_id = 70290516, pos = { x = -1375.409, y = 264.188, z = 3569.870 }, rot = { x = 0.000, y = 269.074, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 57036, gadget_id = 70290514, pos = { x = -1375.552, y = 263.494, z = 3568.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 57037, gadget_id = 70290514, pos = { x = -1376.799, y = 263.459, z = 3568.511 }, rot = { x = 0.000, y = 102.680, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1057027, name = "TIME_AXIS_PASS_57027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_57027", action = "action_EVENT_TIME_AXIS_PASS_57027", trigger_count = 0 }
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
		gadgets = { 57001, 57013, 57014, 57015, 57016, 57017, 57018, 57019, 57020, 57021, 57022, 57023, 57024, 57025, 57039, 57040, 57041, 57042, 57043 },
		regions = { 57005 },
		triggers = { "QUEST_START_57003", "QUEST_FINISH_57004", "ENTER_REGION_57005", "QUEST_START_57009", "GROUP_LOAD_57045" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 57002, 57007, 57038 },
		regions = { 57010, 57011, 57012, 57032, 57033, 57046 },
		triggers = { "GADGET_STATE_CHANGE_57008", "ENTER_REGION_57010", "ENTER_REGION_57011", "ENTER_REGION_57012", "TIME_AXIS_PASS_57026", "TIME_AXIS_PASS_57028", "TIME_AXIS_PASS_57029", "TIME_AXIS_PASS_57030", "TIME_AXIS_PASS_57031", "ENTER_REGION_57032", "ENTER_REGION_57033", "ENTER_REGION_57046" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 57006 },
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

-- 触发操作
function action_EVENT_QUEST_START_57003(context, evt)
	-- 将本组内变量名为 "focus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "focus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_57004(context, evt)
	-- 将本组内变量名为 "focus" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "focus", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57005(context, evt)
	if evt.param1 ~= 57005 then return false end
	
	-- 判断变量"focus"为1
	if ScriptLib.GetGroupVariableValue(context, "focus") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57005(context, evt)
	-- 调用提示id为 730700401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730700401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1389.287, y=264.5597, z=3563.175}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1389.287, y=264.5597, z=3563.175}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_57008(context, evt)
	-- 检测config_id为57007的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 57007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57008(context, evt)
	-- 调用提示id为 7306903 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 57001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57040 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57040, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57041 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57041, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	LF_PointLook(context)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_57009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303057, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57010(context, evt)
	if evt.param1 ~= 57010 then return false end
	
	-- 判断是区域57010
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 57010 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57010(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"find"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "find", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57011(context, evt)
	if evt.param1 ~= 57011 then return false end
	
	-- 判断是区域57011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 57011 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57011(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57012(context, evt)
	if evt.param1 ~= 57012 then return false end
	
	-- 判断是区域57012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 57012 then
		return false
	end
	
	-- 判断变量"find"为1
	if ScriptLib.GetGroupVariableValue(context, "find") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57012(context, evt)
	-- 创建标识为"shining"，时间节点为{1,2,3,4,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "shining", {0.1,0.2,0.4,0.6,0.8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_57026(context, evt)
	if "find" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_57026(context, evt)
	-- 将本组内变量名为 "find" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "find", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_57028(context, evt)
	if "shining" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_57028(context, evt)
	-- 将configid为 57014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_57029(context, evt)
	if "shining" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_57029(context, evt)
	-- 将configid为 57015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_57030(context, evt)
	if "shining" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_57030(context, evt)
	-- 将configid为 57016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_57031(context, evt)
	if "shining" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_57031(context, evt)
	-- 将configid为 57017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303057, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303057, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57032(context, evt)
	if evt.param1 ~= 57032 then return false end
	
	-- 判断是区域57032
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 57032 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57032(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57033(context, evt)
	if evt.param1 ~= 57033 then return false end
	
	-- 判断是区域57033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 57033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57033(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_57045(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7307005)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_57045(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303057, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57046(context, evt)
	if evt.param1 ~= 57046 then return false end
	
	-- 判断是区域57012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 57012 then
		return false
	end
	
	-- 判断变量"find"为1
	if ScriptLib.GetGroupVariableValue(context, "find") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57046(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1376, y=266, z=3569}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Audio_Lua_kanun_melody_1", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

require "V3_0/CameraLook"