-- 基础信息
local base_info = {
	group_id = 133302049
}

-- Trigger变量
local defs = {
	point_camera = 49045,
	gadget_lookEntity = 49004,
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
	[49001] = { config_id = 49001, gadget_id = 70310226, pos = { x = -355.337, y = 262.210, z = 2229.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[49002] = { config_id = 49002, gadget_id = 70230112, pos = { x = -344.917, y = 261.462, z = 2220.740 }, rot = { x = 353.151, y = 311.067, z = 73.804 }, level = 27, persistent = true, area_id = 24 },
	[49003] = { config_id = 49003, gadget_id = 70230111, pos = { x = -345.982, y = 261.611, z = 2219.568 }, rot = { x = 2.079, y = 138.489, z = 91.028 }, level = 27, persistent = true, area_id = 24 },
	[49004] = { config_id = 49004, gadget_id = 70230112, pos = { x = -344.515, y = 260.989, z = 2222.322 }, rot = { x = 347.741, y = 316.734, z = 84.154 }, level = 27, persistent = true, area_id = 24 },
	[49005] = { config_id = 49005, gadget_id = 70230112, pos = { x = -343.545, y = 260.082, z = 2223.681 }, rot = { x = 357.121, y = 294.551, z = 82.246 }, level = 27, persistent = true, area_id = 24 },
	[49006] = { config_id = 49006, gadget_id = 70290476, pos = { x = -359.685, y = 260.752, z = 2233.494 }, rot = { x = 76.141, y = 303.913, z = 180.009 }, level = 27, persistent = true, area_id = 24 },
	-- 调查图案
	[49007] = { config_id = 49007, gadget_id = 70210102, pos = { x = -342.983, y = 260.544, z = 2221.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 24 },
	[49013] = { config_id = 49013, gadget_id = 71700402, pos = { x = -354.106, y = 260.697, z = 2231.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	[49014] = { config_id = 49014, gadget_id = 71700402, pos = { x = -353.436, y = 260.392, z = 2229.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[49015] = { config_id = 49015, gadget_id = 71700402, pos = { x = -355.906, y = 260.746, z = 2230.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[49016] = { config_id = 49016, gadget_id = 71700402, pos = { x = -354.791, y = 260.493, z = 2228.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[49017] = { config_id = 49017, gadget_id = 71700402, pos = { x = -356.391, y = 261.489, z = 2228.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[49018] = { config_id = 49018, gadget_id = 70230112, pos = { x = -344.299, y = 260.021, z = 2225.327 }, rot = { x = 358.557, y = 310.727, z = 59.288 }, level = 27, persistent = true, area_id = 24 },
	[49019] = { config_id = 49019, gadget_id = 70230113, pos = { x = -345.232, y = 261.350, z = 2219.809 }, rot = { x = 17.982, y = 354.558, z = 83.213 }, level = 27, persistent = true, area_id = 24 },
	[49020] = { config_id = 49020, gadget_id = 70230113, pos = { x = -344.492, y = 261.241, z = 2221.240 }, rot = { x = 359.872, y = 309.082, z = 86.271 }, level = 27, persistent = true, area_id = 24 },
	[49021] = { config_id = 49021, gadget_id = 70230113, pos = { x = -343.605, y = 260.458, z = 2224.378 }, rot = { x = 357.883, y = 276.517, z = 86.927 }, level = 27, persistent = true, area_id = 24 },
	[49022] = { config_id = 49022, gadget_id = 70230113, pos = { x = -343.743, y = 260.697, z = 2222.775 }, rot = { x = 2.151, y = 346.218, z = 86.951 }, level = 27, persistent = true, area_id = 24 },
	[49037] = { config_id = 49037, gadget_id = 70290592, pos = { x = -355.337, y = 262.210, z = 2229.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[49038] = { config_id = 49038, gadget_id = 70230113, pos = { x = -345.104, y = 261.546, z = 2219.000 }, rot = { x = 6.373, y = 65.554, z = 87.111 }, level = 27, persistent = true, area_id = 24 },
	[49039] = { config_id = 49039, gadget_id = 70230113, pos = { x = -344.347, y = 261.317, z = 2220.281 }, rot = { x = 6.345, y = 65.003, z = 87.050 }, level = 27, persistent = true, area_id = 24 },
	[49040] = { config_id = 49040, gadget_id = 70230113, pos = { x = -343.616, y = 260.684, z = 2221.688 }, rot = { x = 6.048, y = 59.726, z = 86.480 }, level = 27, persistent = true, area_id = 24 },
	[49041] = { config_id = 49041, gadget_id = 70230113, pos = { x = -342.932, y = 259.931, z = 2223.341 }, rot = { x = 6.345, y = 65.003, z = 87.050 }, level = 27, persistent = true, area_id = 24 },
	[49042] = { config_id = 49042, gadget_id = 70230113, pos = { x = -342.472, y = 260.281, z = 2224.871 }, rot = { x = 354.421, y = 232.769, z = 94.226 }, level = 27, persistent = true, area_id = 24 },
	[49043] = { config_id = 49043, gadget_id = 70230113, pos = { x = -343.524, y = 260.272, z = 2225.155 }, rot = { x = 5.352, y = 49.787, z = 85.490 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	-- 进入锁视角观察范围
	[49010] = { config_id = 49010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -355.337, y = 262.210, z = 2229.400 }, area_id = 24, team_ability_group_list = { "EnterSceneLook_AbilityGroup" } },
	-- 提示
	[49011] = { config_id = 49011, shape = RegionShape.SPHERE, radius = 2, pos = { x = -351.277, y = 260.264, z = 2224.096 }, area_id = 24 },
	-- 进入正确观察region，开启时间轴，特效依次亮起，全部亮起后，任务跳转
	[49012] = { config_id = 49012, shape = RegionShape.SPHERE, radius = 3, pos = { x = -359.685, y = 260.752, z = 2233.494 }, area_id = 24 },
	-- 进入region 触发触目和rmd
	[49025] = { config_id = 49025, shape = RegionShape.SPHERE, radius = 20, pos = { x = -341.009, y = 259.791, z = 2223.972 }, area_id = 24 },
	-- 提示
	[49032] = { config_id = 49032, shape = RegionShape.SPHERE, radius = 2, pos = { x = -360.763, y = 260.539, z = 2227.185 }, area_id = 24 },
	-- 提示
	[49033] = { config_id = 49033, shape = RegionShape.SPHERE, radius = 2, pos = { x = -351.984, y = 260.368, z = 2234.681 }, area_id = 24 },
	-- 进入正确观察region，播放音乐
	[49047] = { config_id = 49047, shape = RegionShape.SPHERE, radius = 3, pos = { x = -359.685, y = 260.752, z = 2233.494 }, area_id = 24 }
}

-- 触发器
triggers = {
	-- 调查图案，派蒙提示，让兰那罗涂鸦常亮
	{ config_id = 1049008, name = "GADGET_STATE_CHANGE_49008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49008", action = "action_EVENT_GADGET_STATE_CHANGE_49008", trigger_count = 0 },
	-- 谈话完成，进入观察阶段，让兰那罗涂鸦闪烁
	{ config_id = 1049009, name = "QUEST_START_49009", event = EventType.EVENT_QUEST_START, source = "7306904", condition = "", action = "action_EVENT_QUEST_START_49009", trigger_count = 0 },
	-- 进入锁视角观察范围
	{ config_id = 1049010, name = "ENTER_REGION_49010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49010", action = "action_EVENT_ENTER_REGION_49010", trigger_count = 0 },
	-- 提示
	{ config_id = 1049011, name = "ENTER_REGION_49011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49011", action = "action_EVENT_ENTER_REGION_49011", trigger_count = 0 },
	-- 进入正确观察region，开启时间轴，特效依次亮起，全部亮起后，任务跳转
	{ config_id = 1049012, name = "ENTER_REGION_49012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49012", action = "action_EVENT_ENTER_REGION_49012", trigger_count = 0 },
	-- 去找兰罗摩对话，让rmd的region 生效
	{ config_id = 1049023, name = "QUEST_START_49023", event = EventType.EVENT_QUEST_START, source = "7306903", condition = "", action = "action_EVENT_QUEST_START_49023", trigger_count = 0 },
	-- 让rmd的region 失效
	{ config_id = 1049024, name = "QUEST_FINISH_49024", event = EventType.EVENT_QUEST_FINISH, source = "7306903", condition = "", action = "action_EVENT_QUEST_FINISH_49024", trigger_count = 0 },
	-- 进入region 触发触目和rmd
	{ config_id = 1049025, name = "ENTER_REGION_49025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49025", action = "action_EVENT_ENTER_REGION_49025" },
	-- 第二朵花亮
	{ config_id = 1049027, name = "TIME_AXIS_PASS_49027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_49027", action = "action_EVENT_TIME_AXIS_PASS_49027", trigger_count = 0 },
	-- 第三朵花亮
	{ config_id = 1049028, name = "TIME_AXIS_PASS_49028", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_49028", action = "action_EVENT_TIME_AXIS_PASS_49028", trigger_count = 0 },
	-- 第四朵花亮
	{ config_id = 1049029, name = "TIME_AXIS_PASS_49029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_49029", action = "action_EVENT_TIME_AXIS_PASS_49029", trigger_count = 0 },
	-- 第五朵花亮，加载suite3，卸载suite2，取消注目，任务跳转
	{ config_id = 1049030, name = "TIME_AXIS_PASS_49030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_49030", action = "action_EVENT_TIME_AXIS_PASS_49030", trigger_count = 0 },
	-- 把正确观察region生效
	{ config_id = 1049031, name = "TIME_AXIS_PASS_49031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_49031", action = "action_EVENT_TIME_AXIS_PASS_49031", trigger_count = 0 },
	-- 提示
	{ config_id = 1049032, name = "ENTER_REGION_49032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49032", action = "action_EVENT_ENTER_REGION_49032", trigger_count = 0 },
	-- 提示
	{ config_id = 1049033, name = "ENTER_REGION_49033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49033", action = "action_EVENT_ENTER_REGION_49033", trigger_count = 0 },
	-- 保底保住加suite2
	{ config_id = 1049046, name = "GROUP_LOAD_49046", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_49046", action = "action_EVENT_GROUP_LOAD_49046", trigger_count = 0 },
	-- 进入正确观察region，播放音乐
	{ config_id = 1049047, name = "ENTER_REGION_49047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49047", action = "action_EVENT_ENTER_REGION_49047" }
}

-- 点位
points = {
	[49044] = { config_id = 49044, pos = { x = -344.490, y = 261.158, z = 2222.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 },
	[49045] = { config_id = 49045, pos = { x = -341.793, y = 266.046, z = 2221.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
	{ config_id = 1, name = "focus", value = 0, no_refresh = true },
	{ config_id = 2, name = "find", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 49034, gadget_id = 70290514, pos = { x = -355.146, y = 259.350, z = 2230.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 49035, gadget_id = 70290515, pos = { x = -356.370, y = 260.603, z = 2228.176 }, rot = { x = 0.000, y = 110.696, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 49036, gadget_id = 70290516, pos = { x = -356.161, y = 259.574, z = 2230.368 }, rot = { x = 0.000, y = 164.792, z = 0.000 }, level = 27, area_id = 24 }
	},
	triggers = {
		{ config_id = 1049026, name = "TIME_AXIS_PASS_49026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_49026", action = "action_EVENT_TIME_AXIS_PASS_49026", trigger_count = 0 }
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
		gadgets = { 49002, 49003, 49004, 49005, 49013, 49014, 49015, 49016, 49017, 49018, 49019, 49020, 49021, 49022, 49038, 49039, 49040, 49041, 49042, 49043 },
		regions = { 49025 },
		triggers = { "QUEST_START_49009", "QUEST_START_49023", "QUEST_FINISH_49024", "ENTER_REGION_49025", "GROUP_LOAD_49046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 49001, 49007, 49037 },
		regions = { 49010, 49011, 49012, 49032, 49033, 49047 },
		triggers = { "GADGET_STATE_CHANGE_49008", "ENTER_REGION_49010", "ENTER_REGION_49011", "ENTER_REGION_49012", "TIME_AXIS_PASS_49027", "TIME_AXIS_PASS_49028", "TIME_AXIS_PASS_49029", "TIME_AXIS_PASS_49030", "TIME_AXIS_PASS_49031", "ENTER_REGION_49032", "ENTER_REGION_49033", "ENTER_REGION_49047" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 49006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_49008(context, evt)
	-- 检测config_id为49007的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 49007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49008(context, evt)
	-- 调用提示id为 7306903 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 49002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49040 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49040, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49041 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49041, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 49022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	LF_PointLook(context)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_49009(context, evt)
	-- 将本组内变量名为 "focus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "focus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302049, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49010(context, evt)
	if evt.param1 ~= 49010 then return false end
	
	-- 判断是区域49010
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 49010 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49010(context, evt)
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
function condition_EVENT_ENTER_REGION_49011(context, evt)
	if evt.param1 ~= 49011 then return false end
	
	-- 判断是区域49011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 49011 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49011(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49012(context, evt)
	if evt.param1 ~= 49012 then return false end
	
	-- 判断是区域49012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 49012 then
		return false
	end
	
	-- 判断变量"find"为1
	if ScriptLib.GetGroupVariableValue(context, "find") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49012(context, evt)
	-- 创建标识为"shining"，时间节点为{1,2,3,4,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "shining", {0.1,0.2,0.4,0.6,0.8}, false)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_49023(context, evt)
	-- 将本组内变量名为 "focus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "focus", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_49024(context, evt)
	-- 将本组内变量名为 "focus" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "focus", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49025(context, evt)
	if evt.param1 ~= 49025 then return false end
	
	-- 判断变量"focus"为1
	if ScriptLib.GetGroupVariableValue(context, "focus") ~= 1 then
			return false
	end
	
	-- 判断是区域49025
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 49025 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49025(context, evt)
	-- 调用提示id为 7306902 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306902) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-341.0091, y=260.5, z=2223.972}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-341.0091, y=260.5, z=2223.972}
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
function condition_EVENT_TIME_AXIS_PASS_49027(context, evt)
	if "shining" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_49027(context, evt)
	-- 将configid为 49014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_49028(context, evt)
	if "shining" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_49028(context, evt)
	-- 将configid为 49015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_49029(context, evt)
	if "shining" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_49029(context, evt)
	-- 将configid为 49016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_49030(context, evt)
	if "shining" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_49030(context, evt)
	-- 将configid为 49017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302049, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302049, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_49031(context, evt)
	if "find" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_49031(context, evt)
	-- 将本组内变量名为 "find" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "find", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49032(context, evt)
	if evt.param1 ~= 49032 then return false end
	
	-- 判断是区域49032
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 49032 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49032(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49033(context, evt)
	if evt.param1 ~= 49033 then return false end
	
	-- 判断是区域49033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 49033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49033(context, evt)
	-- 调用提示id为 7306904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_49046(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306904)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_49046(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302049, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49047(context, evt)
	if evt.param1 ~= 49047 then return false end
	
	-- 判断是区域49012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 49012 then
		return false
	end
	
	-- 判断变量"find"为1
	if ScriptLib.GetGroupVariableValue(context, "find") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49047(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=355, y=262, z=2229}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Audio_Lua_kanun_melody_6", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

require "V3_0/CameraLook"