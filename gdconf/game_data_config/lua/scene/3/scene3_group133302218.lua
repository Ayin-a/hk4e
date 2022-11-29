-- 基础信息
local base_info = {
	group_id = 133302218
}

-- Trigger变量
local defs = {
	gadget_CoreID = 218005,
	monster_BossID = 218002,
	gadget_Point_1 = 218006,
	gadget_Point_2 = 218007,
	gadget_Point_3 = 218008,
	point_camera = 218025,
	gadget_lookEntity = 218005,
	look_duration = 4
}

-- DEFS_MISCS
local RequireSuite = {1} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	CoreID = defs.gadget_CoreID,
	BossID = defs.monster_BossID,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {defs.gadget_Point_1,defs.gadget_Point_2,defs.gadget_Point_3},
                NoProtect = true,
}

local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[218001] = { config_id = 218001, monster_id = 26090101, pos = { x = -624.219, y = 132.114, z = 2523.863 }, rot = { x = 0.000, y = 307.647, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 24 },
	[218002] = { config_id = 218002, monster_id = 26120301, pos = { x = -620.121, y = 132.000, z = 2521.068 }, rot = { x = 0.000, y = 255.835, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 24 },
	[218003] = { config_id = 218003, monster_id = 26090101, pos = { x = -602.889, y = 132.000, z = 2531.106 }, rot = { x = 0.000, y = 175.263, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 24 },
	[218032] = { config_id = 218032, monster_id = 26090101, pos = { x = -618.780, y = 132.630, z = 2538.067 }, rot = { x = 0.000, y = 307.647, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 24 },
	[218033] = { config_id = 218033, monster_id = 26090101, pos = { x = -601.702, y = 132.114, z = 2518.399 }, rot = { x = 0.000, y = 175.263, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[218005] = { config_id = 218005, gadget_id = 70310193, pos = { x = -623.176, y = 132.170, z = 2520.586 }, rot = { x = 1.790, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[218006] = { config_id = 218006, gadget_id = 70310195, pos = { x = -618.427, y = 132.243, z = 2536.582 }, rot = { x = 14.661, y = 198.725, z = 3.083 }, level = 33, area_id = 24 },
	[218007] = { config_id = 218007, gadget_id = 70310195, pos = { x = -596.721, y = 135.714, z = 2518.638 }, rot = { x = 342.350, y = 48.353, z = 358.711 }, level = 33, area_id = 24 },
	[218008] = { config_id = 218008, gadget_id = 70310195, pos = { x = -602.442, y = 132.000, z = 2532.938 }, rot = { x = 0.000, y = 226.219, z = 0.000 }, level = 33, area_id = 24 },
	[218012] = { config_id = 218012, gadget_id = 70310191, pos = { x = -607.269, y = 132.187, z = 2515.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
	[218013] = { config_id = 218013, gadget_id = 70310197, pos = { x = -628.179, y = 132.625, z = 2524.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 24 },
	[218014] = { config_id = 218014, gadget_id = 70310197, pos = { x = -617.941, y = 132.000, z = 2533.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 24 },
	[218015] = { config_id = 218015, gadget_id = 70310197, pos = { x = -605.903, y = 132.240, z = 2516.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 24 },
	[218016] = { config_id = 218016, gadget_id = 70310197, pos = { x = -604.959, y = 132.000, z = 2533.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 24 },
	[218017] = { config_id = 218017, gadget_id = 70310198, pos = { x = -634.492, y = 132.000, z = 2538.324 }, rot = { x = 346.864, y = 359.383, z = 5.356 }, level = 33, area_id = 24 },
	[218018] = { config_id = 218018, gadget_id = 70310198, pos = { x = -599.780, y = 132.000, z = 2524.437 }, rot = { x = 0.000, y = 356.999, z = 0.000 }, level = 33, area_id = 24 },
	[218019] = { config_id = 218019, gadget_id = 70330197, pos = { x = -605.605, y = 139.917, z = 2494.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
	[218020] = { config_id = 218020, gadget_id = 70310196, pos = { x = -623.124, y = 134.746, z = 2522.559 }, rot = { x = 358.798, y = 14.743, z = 6.320 }, level = 33, area_id = 24 },
	[218021] = { config_id = 218021, gadget_id = 70310196, pos = { x = -620.815, y = 134.186, z = 2520.374 }, rot = { x = 358.626, y = 99.202, z = 357.174 }, level = 33, area_id = 24 },
	[218022] = { config_id = 218022, gadget_id = 70290513, pos = { x = -620.232, y = 134.091, z = 2521.997 }, rot = { x = 0.000, y = 64.841, z = 0.000 }, level = 33, area_id = 24 },
	[218023] = { config_id = 218023, gadget_id = 70290492, pos = { x = -616.190, y = 146.070, z = 2513.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
	[218024] = { config_id = 218024, gadget_id = 70290492, pos = { x = -599.400, y = 146.070, z = 2516.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
	-- 指引
	[218042] = { config_id = 218042, gadget_id = 70360001, pos = { x = -622.993, y = 132.900, z = 2521.341 }, rot = { x = 0.000, y = 142.021, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	-- 刷伏击怪
	[218009] = { config_id = 218009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -599.799, y = 132.000, z = 2524.170 }, area_id = 24 },
	-- 新手指引1
	[218034] = { config_id = 218034, shape = RegionShape.SPHERE, radius = 5, pos = { x = -618.427, y = 132.243, z = 2536.582 }, area_id = 24 },
	-- 新手指引2
	[218037] = { config_id = 218037, shape = RegionShape.SPHERE, radius = 5, pos = { x = -596.721, y = 135.714, z = 2518.638 }, area_id = 24 },
	-- 新手指引3
	[218040] = { config_id = 218040, shape = RegionShape.SPHERE, radius = 5, pos = { x = -602.442, y = 132.000, z = 2532.938 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1218004, name = "GROUP_LOAD_218004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_218004" },
	-- 刷伏击怪
	{ config_id = 1218009, name = "ENTER_REGION_218009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_218009" },
	-- 核心消失加变量/发通知
	{ config_id = 1218010, name = "ANY_GADGET_DIE_218010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_218010", action = "action_EVENT_ANY_GADGET_DIE_218010" },
	{ config_id = 1218011, name = "GROUP_REFRESH_218011", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_218011" },
	-- 切镜头
	{ config_id = 1218026, name = "LUA_NOTIFY_218026", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_218026" },
	-- 节点死对应特效消失
	{ config_id = 1218028, name = "GADGET_STATE_CHANGE_218028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218028", action = "action_EVENT_GADGET_STATE_CHANGE_218028" },
	-- 节点死对应特效消失
	{ config_id = 1218029, name = "GADGET_STATE_CHANGE_218029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218029", action = "action_EVENT_GADGET_STATE_CHANGE_218029" },
	-- 节点死对应特效消失
	{ config_id = 1218030, name = "GADGET_STATE_CHANGE_218030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218030", action = "action_EVENT_GADGET_STATE_CHANGE_218030" },
	-- 新手指引1
	{ config_id = 1218034, name = "ENTER_REGION_218034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218034", action = "action_EVENT_ENTER_REGION_218034", trigger_count = 0 },
	-- 开车用变量
	{ config_id = 1218035, name = "VARIABLE_CHANGE_218035", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_218035", action = "action_EVENT_VARIABLE_CHANGE_218035" },
	{ config_id = 1218036, name = "ANY_MONSTER_DIE_218036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_218036", action = "action_EVENT_ANY_MONSTER_DIE_218036" },
	-- 新手指引2
	{ config_id = 1218037, name = "ENTER_REGION_218037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218037", action = "action_EVENT_ENTER_REGION_218037", trigger_count = 0 },
	-- 保底发通知
	{ config_id = 1218039, name = "GROUP_LOAD_218039", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_218039", action = "action_EVENT_GROUP_LOAD_218039", trigger_count = 0 },
	-- 新手指引3
	{ config_id = 1218040, name = "ENTER_REGION_218040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218040", action = "action_EVENT_ENTER_REGION_218040", trigger_count = 0 }
}

-- 点位
points = {
	[218025] = { config_id = 218025, pos = { x = -629.229, y = 141.361, z = 2538.640 }, rot = { x = 0.000, y = 154.282, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
	{ config_id = 1, name = "rmd", value = 0, no_refresh = false },
	{ config_id = 2, name = "baodi", value = 0, no_refresh = true },
	{ config_id = 3, name = "tutorial", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1218027, name = "ANY_GADGET_DIE_218027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_218027", action = "action_EVENT_ANY_GADGET_DIE_218027" },
		{ config_id = 1218031, name = "GROUP_LOAD_218031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_218031", action = "action_EVENT_GROUP_LOAD_218031", trigger_count = 0 },
		{ config_id = 1218038, name = "TIME_AXIS_PASS_218038", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_218038", action = "action_EVENT_TIME_AXIS_PASS_218038" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
	end_suite = 3,
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
		monsters = { 218001, 218032 },
		gadgets = { 218005, 218006, 218007, 218008, 218012, 218013, 218015, 218017, 218018, 218019, 218020, 218021, 218022, 218023, 218024 },
		regions = { 218009, 218034, 218037, 218040 },
		triggers = { "ENTER_REGION_218009", "ANY_GADGET_DIE_218010", "GROUP_REFRESH_218011", "LUA_NOTIFY_218026", "GADGET_STATE_CHANGE_218028", "GADGET_STATE_CHANGE_218029", "GADGET_STATE_CHANGE_218030", "ENTER_REGION_218034", "VARIABLE_CHANGE_218035", "ENTER_REGION_218037", "GROUP_LOAD_218039", "ENTER_REGION_218040" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 218002 },
		gadgets = { 218014, 218016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_218036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 218012, 218017, 218018, 218019 },
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
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_218004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_218004(context, evt)
	ScriptLib.ChangeDeathZone(context,0,{is_open = true})
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_218009(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 218003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 218033, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_218010(context, evt)
	if 218005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_218010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13330221801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "baodi" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302218, EntityType.GADGET, 218042 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_218011(context, evt)
	ScriptLib.ChangeDeathZone(context,0,{is_open = true})
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_218026(context, evt)
	
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218028(context, evt)
	if 218006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "rmd" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "rmd", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "tutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218029(context, evt)
	if 218007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "rmd" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "rmd", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "tutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218030(context, evt)
	if 218008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "rmd" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "rmd", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "tutorial" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tutorial", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218034(context, evt)
	if evt.param1 ~= 218034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"tutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "tutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218034(context, evt)
	-- 调用提示id为 33010248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_218035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"rmd"为3
	if ScriptLib.GetGroupVariableValue(context, "rmd") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_218035(context, evt)
	-- 调用提示id为 30026101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30026101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_218036(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_218036(context, evt)
	-- 调用提示id为 30026201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30026201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为218042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 218042 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218037(context, evt)
	if evt.param1 ~= 218037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"tutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "tutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218037(context, evt)
	-- 调用提示id为 33010248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_218039(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_218039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13330221801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218040(context, evt)
	if evt.param1 ~= 218040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"tutorial"为0
	if ScriptLib.GetGroupVariableValue(context, "tutorial") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218040(context, evt)
	-- 调用提示id为 33010248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/CameraLook"
require "V3_0/DeathFieldStandard"
require "V3_0/DeathFieldPlay"