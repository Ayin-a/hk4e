-- 基础信息
local base_info = {
	group_id = 199001152
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
	{ config_id = 152001, gadget_id = 70310204, pos = { x = 310.072, y = 119.773, z = 314.914 }, rot = { x = 0.000, y = 333.069, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 152002, gadget_id = 70310249, pos = { x = 267.560, y = 119.660, z = 407.110 }, rot = { x = 0.000, y = 96.703, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 152003, gadget_id = 70310203, pos = { x = 292.970, y = 119.653, z = 368.370 }, rot = { x = 0.000, y = 172.398, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152004, gadget_id = 70310203, pos = { x = 273.360, y = 119.653, z = 400.740 }, rot = { x = 0.000, y = 148.382, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152005, gadget_id = 70310249, pos = { x = 254.050, y = 119.850, z = 399.180 }, rot = { x = 0.000, y = 96.703, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152006, gadget_id = 70310249, pos = { x = 242.550, y = 119.660, z = 410.240 }, rot = { x = 0.000, y = 96.703, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 152007, gadget_id = 70310249, pos = { x = 224.600, y = 119.850, z = 393.500 }, rot = { x = 0.000, y = 96.703, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152008, gadget_id = 70310249, pos = { x = 213.030, y = 119.660, z = 404.940 }, rot = { x = 0.000, y = 96.703, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 152009, gadget_id = 70310249, pos = { x = 200.300, y = 119.850, z = 397.780 }, rot = { x = 0.000, y = 96.703, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152010, gadget_id = 70310249, pos = { x = 244.367, y = 158.120, z = 432.557 }, rot = { x = 9.242, y = 224.646, z = 179.336 }, level = 20, area_id = 402 },
	{ config_id = 152011, gadget_id = 70310476, pos = { x = 302.590, y = 119.653, z = 329.830 }, rot = { x = 0.000, y = 153.460, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152012, gadget_id = 70310476, pos = { x = 293.600, y = 119.653, z = 358.540 }, rot = { x = 0.000, y = 163.798, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152013, gadget_id = 70310476, pos = { x = 288.970, y = 119.653, z = 377.220 }, rot = { x = 0.000, y = 152.496, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152014, gadget_id = 70310187, pos = { x = 202.936, y = 133.040, z = 439.265 }, rot = { x = 332.394, y = 47.175, z = 6.927 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 152015, gadget_id = 70310476, pos = { x = 284.230, y = 119.653, z = 385.000 }, rot = { x = 0.000, y = 144.354, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152016, gadget_id = 70310476, pos = { x = 278.050, y = 119.653, z = 392.350 }, rot = { x = 0.000, y = 133.784, z = 0.000 }, level = 20, area_id = 402 },
	-- p
	{ config_id = 152017, gadget_id = 70310476, pos = { x = 234.360, y = 119.653, z = 401.580 }, rot = { x = 0.000, y = 24.400, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	-- 移动平台用-水潭
	{ config_id = 152018, gadget_id = 70380028, pos = { x = 227.745, y = 181.742, z = 434.154 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, route_id = 900100022, start_route = false, area_id = 402 },
	{ config_id = 152019, gadget_id = 70310476, pos = { x = 194.510, y = 120.660, z = 409.100 }, rot = { x = 9.045, y = 174.835, z = 181.395 }, level = 20, area_id = 402 },
	{ config_id = 152020, gadget_id = 70310476, pos = { x = 195.080, y = 125.340, z = 426.420 }, rot = { x = 21.344, y = 209.694, z = 178.423 }, level = 20, area_id = 402 },
	{ config_id = 152021, gadget_id = 70310476, pos = { x = 200.110, y = 129.200, z = 434.900 }, rot = { x = 21.345, y = 218.277, z = 181.552 }, level = 20, area_id = 402 },
	{ config_id = 152022, gadget_id = 70310476, pos = { x = 295.860, y = 119.653, z = 349.220 }, rot = { x = 0.000, y = 166.609, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152023, gadget_id = 70310476, pos = { x = 298.710, y = 119.653, z = 339.390 }, rot = { x = 0.000, y = 159.665, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152024, gadget_id = 70310476, pos = { x = 218.840, y = 138.150, z = 437.560 }, rot = { x = 27.070, y = 260.644, z = 340.687 }, level = 20, area_id = 402 },
	{ config_id = 152026, gadget_id = 70310476, pos = { x = 232.369, y = 152.840, z = 431.609 }, rot = { x = 39.979, y = 295.256, z = 193.274 }, level = 20, area_id = 402 },
	{ config_id = 152027, gadget_id = 70310476, pos = { x = 225.427, y = 144.429, z = 434.615 }, rot = { x = 55.290, y = 295.012, z = 193.579 }, level = 20, area_id = 402 },
	{ config_id = 152029, gadget_id = 70310204, pos = { x = 310.072, y = 119.773, z = 314.914 }, rot = { x = 0.000, y = 333.069, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152030, gadget_id = 70310204, pos = { x = 310.072, y = 119.773, z = 314.914 }, rot = { x = 0.000, y = 333.069, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152031, gadget_id = 70230042, pos = { x = 231.369, y = 187.119, z = 439.002 }, rot = { x = 0.000, y = 222.893, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 152035, gadget_id = 70230042, pos = { x = 231.369, y = 187.119, z = 439.002 }, rot = { x = 0.000, y = 222.893, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 152036, gadget_id = 70310203, pos = { x = 192.370, y = 122.480, z = 418.230 }, rot = { x = 11.194, y = 174.574, z = 358.953 }, level = 20, area_id = 402 },
	{ config_id = 152041, gadget_id = 70310476, pos = { x = 306.320, y = 119.653, z = 320.665 }, rot = { x = 0.000, y = 154.582, z = 0.000 }, level = 20, area_id = 402 },
	-- P1
	{ config_id = 152042, gadget_id = 70310203, pos = { x = 202.132, y = 132.207, z = 438.860 }, rot = { x = 8.381, y = 241.952, z = 2.922 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
	{ config_id = 152043, gadget_id = 70310476, pos = { x = 218.840, y = 138.150, z = 437.560 }, rot = { x = 27.070, y = 260.644, z = 340.687 }, level = 20, area_id = 402 },
	{ config_id = 152044, gadget_id = 70310476, pos = { x = 211.866, y = 134.342, z = 438.874 }, rot = { x = 22.132, y = 289.079, z = 356.374 }, level = 20, area_id = 402 },
	{ config_id = 152045, gadget_id = 70310476, pos = { x = 246.909, y = 159.912, z = 446.323 }, rot = { x = 6.516, y = 183.213, z = 173.399 }, level = 20, area_id = 402 },
	{ config_id = 152046, gadget_id = 70310476, pos = { x = 242.085, y = 163.316, z = 454.452 }, rot = { x = 28.462, y = 123.754, z = 104.519 }, level = 20, area_id = 402 },
	{ config_id = 152047, gadget_id = 70310476, pos = { x = 235.551, y = 171.238, z = 455.402 }, rot = { x = 76.829, y = 71.970, z = 69.548 }, level = 20, area_id = 402 },
	{ config_id = 152048, gadget_id = 70310249, pos = { x = 233.540, y = 186.276, z = 454.460 }, rot = { x = 58.904, y = 76.465, z = 109.497 }, level = 20, area_id = 402 },
	{ config_id = 152049, gadget_id = 70310476, pos = { x = 225.924, y = 189.613, z = 446.564 }, rot = { x = 357.171, y = 29.250, z = 359.534 }, level = 20, area_id = 402 },
	{ config_id = 152050, gadget_id = 70310328, pos = { x = 219.088, y = 188.483, z = 427.022 }, rot = { x = 359.697, y = 162.144, z = 358.619 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 152051, gadget_id = 70380028, pos = { x = 227.745, y = 187.210, z = 434.154 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152057, gadget_id = 70310476, pos = { x = 222.101, y = 188.669, z = 434.424 }, rot = { x = 357.634, y = 5.664, z = 1.412 }, level = 20, area_id = 402 },
	-- P2
	{ config_id = 152058, gadget_id = 70310203, pos = { x = 218.957, y = 188.522, z = 428.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
	{ config_id = 152059, gadget_id = 70310204, pos = { x = 310.072, y = 119.773, z = 314.914 }, rot = { x = 0.000, y = 333.069, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 152060, gadget_id = 70230042, pos = { x = 236.000, y = 148.000, z = 434.900 }, rot = { x = 0.000, y = 251.103, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 152061, gadget_id = 70380028, pos = { x = 229.800, y = 148.000, z = 434.154 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	-- 石板归位
	{ config_id = 152033, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 309.583, y = 120.288, z = 315.122 }, area_id = 402 },
	-- 石板归位
	{ config_id = 152034, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 309.583, y = 120.288, z = 315.122 }, area_id = 402 },
	-- 透视生效范围region
	{ config_id = 152053, shape = RegionShape.SPHERE, radius = 150, pos = { x = 216.957, y = 121.135, z = 420.239 }, area_id = 402, team_ability_group_list = { "RegionAbility_Dreamland_XRay" } },
	-- 石板归位
	{ config_id = 152063, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 309.583, y = 120.288, z = 315.122 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1152028, name = "GROUP_LOAD_152028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_152028", action = "action_EVENT_GROUP_LOAD_152028", trigger_count = 0 },
	-- 石板激活
	{ config_id = 1152032, name = "GADGET_STATE_CHANGE_152032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152032", action = "action_EVENT_GADGET_STATE_CHANGE_152032", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1152033, name = "LEAVE_REGION_152033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_152033", action = "action_EVENT_LEAVE_REGION_152033", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1152034, name = "LEAVE_REGION_152034", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_152034", action = "action_EVENT_LEAVE_REGION_152034", trigger_count = 0 },
	{ config_id = 1152037, name = "GROUP_LOAD_152037", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_152037", action = "action_EVENT_GROUP_LOAD_152037", trigger_count = 0 },
	{ config_id = 1152038, name = "GROUP_LOAD_152038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_152038", action = "action_EVENT_GROUP_LOAD_152038", trigger_count = 0 },
	{ config_id = 1152039, name = "QUEST_START_152039", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_152039", action = "action_EVENT_QUEST_START_152039", trigger_count = 0 },
	{ config_id = 1152040, name = "GROUP_LOAD_152040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_152040", action = "action_EVENT_GROUP_LOAD_152040", trigger_count = 0 },
	-- 碎石堆清掉，移动水面出现
	{ config_id = 1152052, name = "ANY_GADGET_DIE_152052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_152052", action = "action_EVENT_ANY_GADGET_DIE_152052", trigger_count = 0 },
	-- 透视生效范围region
	{ config_id = 1152053, name = "ENTER_REGION_152053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- T
	{ config_id = 1152055, name = "ANY_GADGET_DIE_152055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_152055", action = "action_EVENT_ANY_GADGET_DIE_152055", trigger_count = 0 },
	-- 任务通知/发光/刻痕
	{ config_id = 1152056, name = "PLATFORM_REACH_POINT_152056", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_152056", action = "action_EVENT_PLATFORM_REACH_POINT_152056", trigger_count = 0 },
	-- 石板激活
	{ config_id = 1152062, name = "GADGET_STATE_CHANGE_152062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152062", action = "action_EVENT_GADGET_STATE_CHANGE_152062", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1152063, name = "LEAVE_REGION_152063", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_152063", action = "action_EVENT_LEAVE_REGION_152063", trigger_count = 0 },
	{ config_id = 1152064, name = "LEVEL_TAG_CHANGE_152064", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_152064", trigger_count = 0 },
	{ config_id = 1152065, name = "GROUP_LOAD_152065", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_152065", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "mark", value = 0, no_refresh = true },
	{ config_id = 3, name = "mark2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 152025, gadget_id = 70310476, pos = { x = 227.386, y = 148.770, z = 433.535 }, rot = { x = 40.738, y = 290.454, z = 190.163 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1152054, name = "GADGET_STATE_CHANGE_152054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152054", action = "action_EVENT_GADGET_STATE_CHANGE_152054", trigger_count = 0 }
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
		gadgets = { 152029, 152031 },
		regions = { 152034 },
		triggers = { "LEAVE_REGION_152034", "LEVEL_TAG_CHANGE_152064", "GROUP_LOAD_152065" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 发音石板+高水位水片,
		monsters = { },
		gadgets = { 152030, 152035, 152051 },
		regions = { 152033 },
		triggers = { "GADGET_STATE_CHANGE_152032", "LEAVE_REGION_152033", "LEVEL_TAG_CHANGE_152064", "GROUP_LOAD_152065" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一段,
		monsters = { },
		gadgets = { 152001, 152002, 152003, 152004, 152005, 152006, 152007, 152008, 152009, 152011, 152012, 152013, 152014, 152015, 152016, 152017, 152019, 152020, 152021, 152022, 152023, 152031, 152036, 152041, 152042 },
		regions = { 152053 },
		triggers = { "GROUP_LOAD_152028", "GROUP_LOAD_152037", "GROUP_LOAD_152038", "QUEST_START_152039", "GROUP_LOAD_152040", "ENTER_REGION_152053", "ANY_GADGET_DIE_152055", "LEVEL_TAG_CHANGE_152064", "GROUP_LOAD_152065" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二段,
		monsters = { },
		gadgets = { 152010, 152018, 152024, 152026, 152027, 152031, 152043, 152044, 152045, 152046, 152047, 152048, 152049, 152050, 152057, 152058 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_152052", "PLATFORM_REACH_POINT_152056", "LEVEL_TAG_CHANGE_152064", "GROUP_LOAD_152065" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 152059, 152060, 152061 },
		regions = { 152063 },
		triggers = { "GADGET_STATE_CHANGE_152062", "LEAVE_REGION_152063", "LEVEL_TAG_CHANGE_152064", "GROUP_LOAD_152065" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_152028(context, evt)
	-- 判断变量"mark"为1
	if ScriptLib.GetGroupVariableValue(context, "mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001152, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152042 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_152032(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001152, 152030) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_152032(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=230, y=187, z=434}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_152033(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001152, 152030) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_152033(context, evt)
	-- 将configid为 152030 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152030, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_152034(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001152, 152029) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_152034(context, evt)
	-- 将configid为 152029 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152029, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_152037(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152037(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 152018, 900100113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 152018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152058 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_152038(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152038(context, evt)
	-- 将configid为 152031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_152039(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_152039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_152040(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_152052(context, evt)
	if 152050 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_152052(context, evt)
	-- 将本组内变量名为 "mark2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 152018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152058 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_152055(context, evt)
	if 152014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_152055(context, evt)
	-- 将本组内变量名为 "mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001152, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152042 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_152056(context, evt)
	-- 判断是gadgetid 为 152018的移动平台，是否到达了900100022 的路线中的 0 点
	
	if 152018 ~= evt.param1 then
	  return false
	end
	
	if 900100022 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_152056(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 152031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=230, y=187, z=434}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_152062(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001152, 152059) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_152062(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=230, y=187, z=434}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_152063(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001152, 152059) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_152063(context, evt)
	-- 将configid为 152059 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152059, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_152064(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007002) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
	else
		if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetHostQuestState(context,4007002) == 3 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152065(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007002) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
	else
		if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetHostQuestState(context,4007002) == 3 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
		end
	end
	
	return 0
end