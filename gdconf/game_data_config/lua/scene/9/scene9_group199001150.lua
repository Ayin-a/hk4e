-- 基础信息
local base_info = {
	group_id = 199001150
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
	{ config_id = 150001, gadget_id = 70310204, pos = { x = 309.059, y = 119.804, z = 309.591 }, rot = { x = 0.000, y = 237.278, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 150002, gadget_id = 70310476, pos = { x = 298.100, y = 119.480, z = 295.440 }, rot = { x = 0.000, y = 33.215, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150003, gadget_id = 70310476, pos = { x = 292.260, y = 119.480, z = 287.020 }, rot = { x = 0.000, y = 30.486, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150004, gadget_id = 70310476, pos = { x = 282.940, y = 119.440, z = 281.790 }, rot = { x = 0.000, y = 65.570, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 150005, gadget_id = 70310476, pos = { x = 276.860, y = 119.480, z = 273.230 }, rot = { x = 0.000, y = 31.746, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150006, gadget_id = 70310476, pos = { x = 263.500, y = 119.690, z = 240.920 }, rot = { x = 0.000, y = 43.691, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150007, gadget_id = 70310476, pos = { x = 256.050, y = 119.690, z = 233.650 }, rot = { x = 0.000, y = 43.691, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 150008, gadget_id = 70310476, pos = { x = 248.480, y = 119.690, z = 226.250 }, rot = { x = 0.000, y = 43.691, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150009, gadget_id = 70310476, pos = { x = 241.190, y = 119.690, z = 219.170 }, rot = { x = 0.000, y = 43.691, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150010, gadget_id = 70310476, pos = { x = 233.840, y = 119.690, z = 212.110 }, rot = { x = 0.000, y = 43.691, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150011, gadget_id = 70310476, pos = { x = 226.420, y = 119.690, z = 205.100 }, rot = { x = 0.000, y = 43.691, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150012, gadget_id = 70310476, pos = { x = 220.080, y = 119.690, z = 199.000 }, rot = { x = 0.000, y = 45.092, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150013, gadget_id = 70310249, pos = { x = 267.440, y = 119.680, z = 264.660 }, rot = { x = 0.000, y = 9.019, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 150014, gadget_id = 70310187, pos = { x = 207.055, y = 121.273, z = 191.469 }, rot = { x = 359.582, y = 253.350, z = 359.155 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 150015, gadget_id = 70310476, pos = { x = 213.036, y = 119.690, z = 193.214 }, rot = { x = 0.000, y = 52.594, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150016, gadget_id = 70310476, pos = { x = 205.390, y = 122.640, z = 174.330 }, rot = { x = 11.776, y = 342.735, z = 17.526 }, level = 20, area_id = 402 },
	{ config_id = 150017, gadget_id = 70310476, pos = { x = 207.840, y = 124.370, z = 166.350 }, rot = { x = 12.799, y = 343.066, z = 17.597 }, level = 20, area_id = 402 },
	-- 移动平台用-水潭
	{ config_id = 150018, gadget_id = 70380028, pos = { x = 215.416, y = 184.067, z = 155.937 }, rot = { x = 0.000, y = 317.194, z = 0.000 }, level = 20, route_id = 900100021, start_route = false, area_id = 402 },
	{ config_id = 150019, gadget_id = 70310476, pos = { x = 208.080, y = 137.680, z = 157.520 }, rot = { x = 86.920, y = 42.971, z = 32.964 }, level = 20, area_id = 402 },
	{ config_id = 150020, gadget_id = 70310476, pos = { x = 208.590, y = 143.160, z = 156.930 }, rot = { x = 78.065, y = 239.242, z = 229.880 }, level = 20, area_id = 402 },
	{ config_id = 150021, gadget_id = 70310476, pos = { x = 214.130, y = 172.820, z = 165.790 }, rot = { x = 40.176, y = 255.130, z = 85.729 }, level = 20, area_id = 402 },
	{ config_id = 150022, gadget_id = 70310476, pos = { x = 223.700, y = 193.900, z = 153.910 }, rot = { x = 6.338, y = 19.241, z = 190.828 }, level = 20, area_id = 402 },
	{ config_id = 150023, gadget_id = 70310476, pos = { x = 209.130, y = 152.630, z = 159.860 }, rot = { x = 72.251, y = 8.429, z = 21.036 }, level = 20, area_id = 402 },
	{ config_id = 150025, gadget_id = 70230042, pos = { x = 214.531, y = 194.542, z = 153.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 150026, gadget_id = 70310204, pos = { x = 309.059, y = 119.804, z = 309.591 }, rot = { x = 0.000, y = 237.278, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150027, gadget_id = 70310204, pos = { x = 309.059, y = 119.804, z = 309.591 }, rot = { x = 0.000, y = 237.278, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150031, gadget_id = 70230042, pos = { x = 214.531, y = 194.542, z = 153.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 150032, gadget_id = 70310249, pos = { x = 273.300, y = 119.680, z = 249.690 }, rot = { x = 0.000, y = 22.193, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150033, gadget_id = 70310249, pos = { x = 208.870, y = 130.660, z = 155.050 }, rot = { x = 73.355, y = 52.062, z = 341.766 }, level = 20, area_id = 402 },
	{ config_id = 150034, gadget_id = 70310249, pos = { x = 223.230, y = 190.680, z = 163.910 }, rot = { x = 57.389, y = 344.252, z = 102.928 }, level = 20, area_id = 402 },
	{ config_id = 150035, gadget_id = 70310249, pos = { x = 225.470, y = 178.240, z = 162.970 }, rot = { x = 62.385, y = 305.398, z = 271.340 }, level = 20, area_id = 402 },
	{ config_id = 150036, gadget_id = 70310249, pos = { x = 205.880, y = 165.270, z = 162.590 }, rot = { x = 58.736, y = 240.938, z = 76.967 }, level = 20, area_id = 402 },
	-- P1
	{ config_id = 150041, gadget_id = 70310203, pos = { x = 208.049, y = 121.141, z = 191.530 }, rot = { x = 0.000, y = 62.732, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 150042, gadget_id = 70310476, pos = { x = 205.691, y = 121.623, z = 185.248 }, rot = { x = 4.080, y = 4.904, z = 20.629 }, level = 20, area_id = 402 },
	-- P2
	{ config_id = 150043, gadget_id = 70310203, pos = { x = 224.089, y = 196.427, z = 150.543 }, rot = { x = 0.000, y = 310.859, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 150044, gadget_id = 70310476, pos = { x = 304.966, y = 119.480, z = 303.798 }, rot = { x = 0.000, y = 40.660, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150045, gadget_id = 70310204, pos = { x = 309.059, y = 119.804, z = 309.591 }, rot = { x = 0.000, y = 237.278, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150046, gadget_id = 70230042, pos = { x = 214.531, y = 138.300, z = 153.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 150047, gadget_id = 70380028, pos = { x = 215.416, y = 138.300, z = 155.937 }, rot = { x = 0.000, y = 317.194, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 150050, gadget_id = 70310328, pos = { x = 223.480, y = 196.304, z = 149.537 }, rot = { x = 0.469, y = 193.892, z = 358.667 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 150051, gadget_id = 70380028, pos = { x = 215.416, y = 194.602, z = 155.937 }, rot = { x = 0.000, y = 317.194, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	-- 石板归位
	{ config_id = 150029, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 309.183, y = 120.288, z = 309.750 }, area_id = 402 },
	-- 石板归位
	{ config_id = 150030, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 309.183, y = 120.288, z = 309.750 }, area_id = 402 },
	-- 石板归位
	{ config_id = 150049, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 309.183, y = 120.288, z = 309.750 }, area_id = 402 },
	-- 透视生效范围region
	{ config_id = 150053, shape = RegionShape.SPHERE, radius = 150, pos = { x = 290.682, y = 121.135, z = 206.158 }, area_id = 402, team_ability_group_list = { "RegionAbility_Dreamland_XRay" } }
}

-- 触发器
triggers = {
	{ config_id = 1150024, name = "GROUP_LOAD_150024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_150024", action = "action_EVENT_GROUP_LOAD_150024", trigger_count = 0 },
	-- 石板激活
	{ config_id = 1150028, name = "GADGET_STATE_CHANGE_150028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150028", action = "action_EVENT_GADGET_STATE_CHANGE_150028", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1150029, name = "LEAVE_REGION_150029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_150029", action = "action_EVENT_LEAVE_REGION_150029", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1150030, name = "LEAVE_REGION_150030", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_150030", action = "action_EVENT_LEAVE_REGION_150030", trigger_count = 0 },
	{ config_id = 1150037, name = "GROUP_LOAD_150037", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_150037", action = "action_EVENT_GROUP_LOAD_150037", trigger_count = 0 },
	{ config_id = 1150038, name = "GROUP_LOAD_150038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_150038", action = "action_EVENT_GROUP_LOAD_150038", trigger_count = 0 },
	{ config_id = 1150039, name = "QUEST_START_150039", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_150039", action = "action_EVENT_QUEST_START_150039", trigger_count = 0 },
	{ config_id = 1150040, name = "GROUP_LOAD_150040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_150040", action = "action_EVENT_GROUP_LOAD_150040", trigger_count = 0 },
	-- 石板激活
	{ config_id = 1150048, name = "GADGET_STATE_CHANGE_150048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150048", action = "action_EVENT_GADGET_STATE_CHANGE_150048", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1150049, name = "LEAVE_REGION_150049", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_150049", action = "action_EVENT_LEAVE_REGION_150049", trigger_count = 0 },
	-- 碎石堆清掉，移动水面出现
	{ config_id = 1150052, name = "ANY_GADGET_DIE_150052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_150052", action = "action_EVENT_ANY_GADGET_DIE_150052", trigger_count = 0 },
	-- 透视生效范围region
	{ config_id = 1150053, name = "ENTER_REGION_150053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- T
	{ config_id = 1150055, name = "ANY_GADGET_DIE_150055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_150055", action = "action_EVENT_ANY_GADGET_DIE_150055", trigger_count = 0 },
	-- 任务通知/发光/发声
	{ config_id = 1150056, name = "PLATFORM_REACH_POINT_150056", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_150056", action = "action_EVENT_PLATFORM_REACH_POINT_150056", trigger_count = 0 },
	{ config_id = 1150057, name = "LEVEL_TAG_CHANGE_150057", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_150057", trigger_count = 0 },
	{ config_id = 1150058, name = "GROUP_LOAD_150058", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_150058", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "mark", value = 0, no_refresh = true },
	{ config_id = 3, name = "mark2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1150054, name = "GADGET_STATE_CHANGE_150054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150054", action = "action_EVENT_GADGET_STATE_CHANGE_150054", trigger_count = 0 }
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
		gadgets = { 150025, 150026 },
		regions = { 150030 },
		triggers = { "LEAVE_REGION_150030", "LEVEL_TAG_CHANGE_150057", "GROUP_LOAD_150058" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 发音石板+高水位水片,
		monsters = { },
		gadgets = { 150027, 150031, 150051 },
		regions = { 150029 },
		triggers = { "GADGET_STATE_CHANGE_150028", "LEAVE_REGION_150029", "LEVEL_TAG_CHANGE_150057", "GROUP_LOAD_150058" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一段,
		monsters = { },
		gadgets = { 150001, 150002, 150003, 150004, 150005, 150006, 150007, 150008, 150009, 150010, 150011, 150012, 150013, 150014, 150015, 150025, 150032, 150041, 150044 },
		regions = { 150053 },
		triggers = { "GROUP_LOAD_150024", "GROUP_LOAD_150037", "GROUP_LOAD_150038", "QUEST_START_150039", "GROUP_LOAD_150040", "ENTER_REGION_150053", "ANY_GADGET_DIE_150055", "LEVEL_TAG_CHANGE_150057", "GROUP_LOAD_150058" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二段,
		monsters = { },
		gadgets = { 150016, 150017, 150018, 150019, 150020, 150021, 150022, 150023, 150025, 150033, 150034, 150035, 150036, 150042, 150043, 150050 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_150052", "PLATFORM_REACH_POINT_150056", "LEVEL_TAG_CHANGE_150057", "GROUP_LOAD_150058" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 150045, 150046, 150047 },
		regions = { 150049 },
		triggers = { "GADGET_STATE_CHANGE_150048", "LEAVE_REGION_150049", "LEVEL_TAG_CHANGE_150057", "GROUP_LOAD_150058" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_150024(context, evt)
	-- 判断变量"mark"为1
	if ScriptLib.GetGroupVariableValue(context, "mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001150, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150041 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150028(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001150, 150027) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150028(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=215, y=196, z=158}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_05_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_150029(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001150, 150027) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_150029(context, evt)
	-- 将configid为 150027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_150030(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001150, 150026) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_150030(context, evt)
	-- 将configid为 150026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_150037(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150037(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 150018, 900100114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 150018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150043 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_150038(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150038(context, evt)
	-- 将configid为 150025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_150039(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_150039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_150040(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150048(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001150, 150045) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150048(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=215, y=196, z=158}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_05_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_150049(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001150, 150045) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_150049(context, evt)
	-- 将configid为 150045 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150045, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_150052(context, evt)
	if 150050 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_150052(context, evt)
	-- 将本组内变量名为 "mark2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 150018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150043 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_150055(context, evt)
	if 150014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_150055(context, evt)
	-- 将本组内变量名为 "mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001150, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150041 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_150056(context, evt)
	-- 判断是gadgetid 为 150018的移动平台，是否到达了900100021 的路线中的 0 点
	
	if 150018 ~= evt.param1 then
	  return false
	end
	
	if 900100021 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_150056(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 150025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=215, y=196, z=158}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_05_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_150057(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007006) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
	else
		if ScriptLib.GetHostQuestState(context,4007006) == 3 and ScriptLib.CheckSceneTag(context, 9,1016 ) then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150058(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007006) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
	else
		if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetHostQuestState(context,4007006) == 3 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
		end
	end
	
	return 0
end