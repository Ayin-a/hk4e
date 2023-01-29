-- 基础信息
local base_info = {
	group_id = 199001153
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
	{ config_id = 153001, gadget_id = 70310204, pos = { x = 313.104, y = 119.668, z = 314.300 }, rot = { x = 0.719, y = 35.113, z = 1.551 }, level = 20, persistent = true, area_id = 402 },
	-- p
	{ config_id = 153002, gadget_id = 70310249, pos = { x = 339.431, y = 119.483, z = 346.858 }, rot = { x = 3.121, y = 216.208, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 153003, gadget_id = 70310249, pos = { x = 359.880, y = 119.200, z = 357.480 }, rot = { x = 0.000, y = 199.280, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 153004, gadget_id = 70310249, pos = { x = 356.800, y = 119.200, z = 372.300 }, rot = { x = 0.000, y = 208.360, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 153005, gadget_id = 70310249, pos = { x = 369.610, y = 119.200, z = 379.160 }, rot = { x = 0.000, y = 204.684, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 153006, gadget_id = 70310249, pos = { x = 362.300, y = 117.240, z = 411.670 }, rot = { x = 41.076, y = 151.769, z = 248.165 }, level = 20, area_id = 402 },
	{ config_id = 153007, gadget_id = 70310249, pos = { x = 361.266, y = 188.956, z = 411.400 }, rot = { x = 65.001, y = 162.375, z = 64.611 }, level = 20, area_id = 402 },
	{ config_id = 153008, gadget_id = 70310476, pos = { x = 340.866, y = 119.331, z = 327.249 }, rot = { x = 359.475, y = 202.090, z = 1.283 }, level = 20, area_id = 402 },
	{ config_id = 153009, gadget_id = 70310476, pos = { x = 340.220, y = 119.230, z = 334.910 }, rot = { x = 0.000, y = 160.902, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 153010, gadget_id = 70310476, pos = { x = 349.896, y = 119.230, z = 352.626 }, rot = { x = 0.000, y = 241.396, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 153011, gadget_id = 70310476, pos = { x = 368.565, y = 118.201, z = 392.772 }, rot = { x = 354.931, y = 178.535, z = 180.129 }, level = 20, area_id = 402 },
	{ config_id = 153012, gadget_id = 70310476, pos = { x = 361.980, y = 126.370, z = 412.820 }, rot = { x = 83.492, y = 276.668, z = 275.480 }, level = 20, area_id = 402 },
	{ config_id = 153013, gadget_id = 70310476, pos = { x = 363.200, y = 136.070, z = 413.280 }, rot = { x = 79.603, y = 260.645, z = 259.605 }, level = 20, area_id = 402 },
	{ config_id = 153014, gadget_id = 70310328, pos = { x = 366.970, y = 119.993, z = 397.448 }, rot = { x = 0.000, y = 173.408, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 153015, gadget_id = 70310476, pos = { x = 364.350, y = 146.700, z = 413.280 }, rot = { x = 79.603, y = 260.645, z = 259.605 }, level = 20, area_id = 402 },
	-- p
	{ config_id = 153016, gadget_id = 70310476, pos = { x = 361.720, y = 156.400, z = 414.060 }, rot = { x = 77.451, y = 119.848, z = 308.248 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 153017, gadget_id = 70310204, pos = { x = 313.104, y = 119.668, z = 314.300 }, rot = { x = 0.719, y = 35.113, z = 1.551 }, level = 20, area_id = 402 },
	-- 移动平台用-水潭
	{ config_id = 153018, gadget_id = 70380028, pos = { x = 355.984, y = 189.398, z = 422.610 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, route_id = 900100023, start_route = false, area_id = 402 },
	{ config_id = 153019, gadget_id = 70310204, pos = { x = 313.104, y = 119.668, z = 314.300 }, rot = { x = 0.719, y = 35.113, z = 1.551 }, level = 20, area_id = 402 },
	{ config_id = 153020, gadget_id = 70310476, pos = { x = 360.260, y = 165.340, z = 415.000 }, rot = { x = 77.451, y = 119.848, z = 308.248 }, level = 20, area_id = 402 },
	{ config_id = 153021, gadget_id = 70230042, pos = { x = 359.399, y = 192.969, z = 420.700 }, rot = { x = 0.000, y = 232.853, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 153024, gadget_id = 70230042, pos = { x = 359.399, y = 192.969, z = 420.700 }, rot = { x = 0.000, y = 232.853, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 153025, gadget_id = 70310476, pos = { x = 363.520, y = 174.760, z = 415.940 }, rot = { x = 74.204, y = 272.731, z = 307.535 }, level = 20, area_id = 402 },
	-- P2
	{ config_id = 153026, gadget_id = 70310203, pos = { x = 361.599, y = 194.899, z = 417.336 }, rot = { x = 1.655, y = 253.853, z = 98.235 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
	-- p
	{ config_id = 153027, gadget_id = 70310249, pos = { x = 334.166, y = 118.253, z = 314.591 }, rot = { x = 1.712, y = 258.842, z = 180.632 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	-- p
	{ config_id = 153028, gadget_id = 70310249, pos = { x = 334.166, y = 118.253, z = 314.591 }, rot = { x = 1.712, y = 258.842, z = 180.632 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 153034, gadget_id = 70310476, pos = { x = 318.456, y = 119.234, z = 318.440 }, rot = { x = 358.723, y = 246.949, z = 0.539 }, level = 20, area_id = 402 },
	-- P1
	{ config_id = 153035, gadget_id = 70310203, pos = { x = 367.488, y = 120.074, z = 396.414 }, rot = { x = 0.000, y = 156.166, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
	{ config_id = 153036, gadget_id = 70310204, pos = { x = 313.104, y = 119.668, z = 314.300 }, rot = { x = 0.719, y = 35.113, z = 1.551 }, level = 20, area_id = 402 },
	{ config_id = 153037, gadget_id = 70230042, pos = { x = 359.500, y = 141.000, z = 420.700 }, rot = { x = 0.000, y = 232.853, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 153038, gadget_id = 70380028, pos = { x = 360.120, y = 141.000, z = 422.610 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 153050, gadget_id = 70310328, pos = { x = 361.798, y = 195.323, z = 417.915 }, rot = { x = 0.469, y = 193.892, z = 358.667 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 153051, gadget_id = 70380028, pos = { x = 355.984, y = 193.022, z = 422.610 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	-- 石板归位
	{ config_id = 153023, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 313.272, y = 120.288, z = 313.904 }, area_id = 402 },
	-- 石板归位
	{ config_id = 153039, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 313.272, y = 120.288, z = 313.904 }, area_id = 402 },
	-- 石板归位
	{ config_id = 153041, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 313.272, y = 120.288, z = 313.904 }, area_id = 402 },
	-- 透视生效范围region
	{ config_id = 153053, shape = RegionShape.SPHERE, radius = 150, pos = { x = 314.060, y = 121.135, z = 407.624 }, area_id = 402, team_ability_group_list = { "RegionAbility_Dreamland_XRay" } }
}

-- 触发器
triggers = {
	-- 石板激活
	{ config_id = 1153022, name = "GADGET_STATE_CHANGE_153022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153022", action = "action_EVENT_GADGET_STATE_CHANGE_153022", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1153023, name = "LEAVE_REGION_153023", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_153023", action = "action_EVENT_LEAVE_REGION_153023", trigger_count = 0 },
	{ config_id = 1153029, name = "GROUP_LOAD_153029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153029", action = "action_EVENT_GROUP_LOAD_153029", trigger_count = 0 },
	{ config_id = 1153030, name = "GROUP_LOAD_153030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153030", action = "action_EVENT_GROUP_LOAD_153030", trigger_count = 0 },
	{ config_id = 1153031, name = "GROUP_LOAD_153031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153031", action = "action_EVENT_GROUP_LOAD_153031", trigger_count = 0 },
	{ config_id = 1153032, name = "QUEST_START_153032", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_153032", action = "action_EVENT_QUEST_START_153032", trigger_count = 0 },
	{ config_id = 1153033, name = "GROUP_LOAD_153033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153033", action = "action_EVENT_GROUP_LOAD_153033", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1153039, name = "LEAVE_REGION_153039", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_153039", action = "action_EVENT_LEAVE_REGION_153039", trigger_count = 0 },
	-- 石板激活
	{ config_id = 1153040, name = "GADGET_STATE_CHANGE_153040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153040", action = "action_EVENT_GADGET_STATE_CHANGE_153040", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1153041, name = "LEAVE_REGION_153041", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_153041", action = "action_EVENT_LEAVE_REGION_153041", trigger_count = 0 },
	{ config_id = 1153042, name = "LEVEL_TAG_CHANGE_153042", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_153042", trigger_count = 0 },
	{ config_id = 1153043, name = "GROUP_LOAD_153043", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_153043", trigger_count = 0 },
	-- 碎石堆清掉，移动水面出现
	{ config_id = 1153052, name = "ANY_GADGET_DIE_153052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_153052", action = "action_EVENT_ANY_GADGET_DIE_153052", trigger_count = 0 },
	-- 透视生效范围region
	{ config_id = 1153053, name = "ENTER_REGION_153053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1153055, name = "ANY_GADGET_DIE_153055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_153055", action = "action_EVENT_ANY_GADGET_DIE_153055", trigger_count = 0 },
	-- 任务通知/发光/发声
	{ config_id = 1153056, name = "PLATFORM_REACH_POINT_153056", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_153056", action = "action_EVENT_PLATFORM_REACH_POINT_153056", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "mark", value = 0, no_refresh = true },
	{ config_id = 3, name = "mark2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1153054, name = "GADGET_STATE_CHANGE_153054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153054", action = "action_EVENT_GADGET_STATE_CHANGE_153054", trigger_count = 0 }
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
		-- description = 假石板,
		monsters = { },
		gadgets = { 153017, 153021 },
		regions = { 153039 },
		triggers = { "LEAVE_REGION_153039", "LEVEL_TAG_CHANGE_153042", "GROUP_LOAD_153043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 发音石板+高水位水片,
		monsters = { },
		gadgets = { 153019, 153024, 153051 },
		regions = { 153023 },
		triggers = { "GADGET_STATE_CHANGE_153022", "LEAVE_REGION_153023", "LEVEL_TAG_CHANGE_153042", "GROUP_LOAD_153043" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一段,
		monsters = { },
		gadgets = { 153001, 153002, 153003, 153004, 153005, 153008, 153009, 153010, 153011, 153014, 153021, 153027, 153028, 153034, 153035 },
		regions = { 153053 },
		triggers = { "GROUP_LOAD_153029", "GROUP_LOAD_153030", "GROUP_LOAD_153031", "QUEST_START_153032", "GROUP_LOAD_153033", "LEVEL_TAG_CHANGE_153042", "GROUP_LOAD_153043", "ENTER_REGION_153053", "ANY_GADGET_DIE_153055" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二段,
		monsters = { },
		gadgets = { 153006, 153007, 153012, 153013, 153015, 153016, 153018, 153020, 153021, 153025, 153026, 153050 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_153042", "GROUP_LOAD_153043", "ANY_GADGET_DIE_153052", "PLATFORM_REACH_POINT_153056" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 153036, 153037, 153038 },
		regions = { 153041 },
		triggers = { "GADGET_STATE_CHANGE_153040", "LEAVE_REGION_153041", "LEVEL_TAG_CHANGE_153042", "GROUP_LOAD_153043" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153022(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001153, 153019) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153022(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=356, y=183, z=420}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_04_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_153023(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001153, 153019) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_153023(context, evt)
	-- 将configid为 153019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153029(context, evt)
	-- 判断变量"mark"为1
	if ScriptLib.GetGroupVariableValue(context, "mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153029(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001153, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153030(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153030(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 153018, 900100115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 153018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153031(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153031(context, evt)
	-- 将configid为 153021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_153032(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_153032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153033(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153033(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_153039(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001153, 153017) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_153039(context, evt)
	-- 将configid为 153017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153040(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001153, 153036) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153040(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=356, y=183, z=420}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_04_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_153041(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001153, 153036) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_153041(context, evt)
	-- 将configid为 153036 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153036, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_153042(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007007) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
	else
		if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetHostQuestState(context,4007007) == 3 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153043(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007007) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
	else
		if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetHostQuestState(context,4007007) == 3 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_153052(context, evt)
	if 153050 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_153052(context, evt)
	-- 将本组内变量名为 "mark2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 153018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_153055(context, evt)
	if 153014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_153055(context, evt)
	-- 将本组内变量名为 "mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001153, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 153035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_153056(context, evt)
	-- 判断是gadgetid 为 153018的移动平台，是否到达了900100023 的路线中的 0 点
	
	if 153018 ~= evt.param1 then
	  return false
	end
	
	if 900100023 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_153056(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 153021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=356, y=183, z=420}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_04_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end