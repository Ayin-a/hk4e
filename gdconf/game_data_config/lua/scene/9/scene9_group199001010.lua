-- 基础信息
local base_info = {
	group_id = 199001010
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
	{ config_id = 10001, gadget_id = 70310204, pos = { x = 307.915, y = 119.774, z = 312.766 }, rot = { x = 1.365, y = 284.245, z = 359.581 }, level = 1, persistent = true, area_id = 402 },
	{ config_id = 10002, gadget_id = 70310203, pos = { x = 279.140, y = 119.653, z = 316.530 }, rot = { x = 0.000, y = 100.787, z = 0.000 }, level = 1, area_id = 402 },
	-- P1
	{ config_id = 10003, gadget_id = 70310203, pos = { x = 233.375, y = 121.648, z = 392.393 }, rot = { x = 7.245, y = 90.549, z = 0.980 }, level = 1, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 10004, gadget_id = 70310249, pos = { x = 267.720, y = 119.797, z = 321.570 }, rot = { x = 359.877, y = 159.462, z = 0.041 }, level = 1, area_id = 402 },
	{ config_id = 10005, gadget_id = 70310249, pos = { x = 282.770, y = 119.660, z = 351.620 }, rot = { x = 0.000, y = 150.449, z = 180.000 }, level = 1, area_id = 402 },
	{ config_id = 10006, gadget_id = 70310249, pos = { x = 268.710, y = 119.850, z = 357.130 }, rot = { x = 0.000, y = 145.677, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 10007, gadget_id = 70310249, pos = { x = 203.960, y = 121.500, z = 391.450 }, rot = { x = 356.707, y = 110.788, z = 186.913 }, level = 20, area_id = 402 },
	{ config_id = 10008, gadget_id = 70310249, pos = { x = 174.760, y = 123.228, z = 354.390 }, rot = { x = 13.504, y = 336.629, z = 186.074 }, level = 20, area_id = 402 },
	{ config_id = 10009, gadget_id = 70310204, pos = { x = 307.915, y = 119.774, z = 312.766 }, rot = { x = 1.365, y = 284.245, z = 359.581 }, level = 20, area_id = 402 },
	{ config_id = 10010, gadget_id = 70310249, pos = { x = 269.120, y = 119.660, z = 372.580 }, rot = { x = 0.000, y = 144.676, z = 180.000 }, level = 1, area_id = 402 },
	{ config_id = 10011, gadget_id = 70310204, pos = { x = 307.915, y = 119.774, z = 312.766 }, rot = { x = 1.365, y = 284.245, z = 359.581 }, level = 20, area_id = 402 },
	{ config_id = 10012, gadget_id = 70310249, pos = { x = 254.930, y = 119.850, z = 377.520 }, rot = { x = 0.000, y = 145.677, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 10013, gadget_id = 70310249, pos = { x = 254.410, y = 119.660, z = 392.190 }, rot = { x = 0.000, y = 137.984, z = 180.000 }, level = 1, area_id = 402 },
	{ config_id = 10014, gadget_id = 70310249, pos = { x = 170.295, y = 188.099, z = 342.401 }, rot = { x = 48.966, y = 212.824, z = 89.809 }, level = 20, area_id = 402 },
	{ config_id = 10015, gadget_id = 70310328, pos = { x = 232.737, y = 121.688, z = 392.152 }, rot = { x = 0.587, y = 100.750, z = 356.076 }, level = 1, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 10016, gadget_id = 70310476, pos = { x = 186.370, y = 126.610, z = 349.765 }, rot = { x = 11.007, y = 285.893, z = 349.991 }, level = 1, area_id = 402 },
	{ config_id = 10017, gadget_id = 70310249, pos = { x = 199.492, y = 129.140, z = 345.922 }, rot = { x = 8.875, y = 317.949, z = 2.111 }, level = 1, area_id = 402 },
	-- P
	{ config_id = 10018, gadget_id = 70310249, pos = { x = 211.070, y = 122.460, z = 378.940 }, rot = { x = 0.000, y = 117.806, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 10022, gadget_id = 70310328, pos = { x = 192.581, y = 131.607, z = 326.585 }, rot = { x = 359.217, y = 184.938, z = 359.993 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 10024, gadget_id = 70380028, pos = { x = 188.230, y = 212.275, z = 307.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 10025, gadget_id = 70310476, pos = { x = 299.730, y = 119.653, z = 313.160 }, rot = { x = 0.000, y = 100.723, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 10026, gadget_id = 70310476, pos = { x = 274.860, y = 119.653, z = 331.040 }, rot = { x = 0.000, y = 238.527, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 10027, gadget_id = 70310476, pos = { x = 289.550, y = 119.653, z = 314.230 }, rot = { x = 0.000, y = 86.852, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 10028, gadget_id = 70310476, pos = { x = 278.780, y = 119.653, z = 339.660 }, rot = { x = 0.000, y = 197.385, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 10029, gadget_id = 70310476, pos = { x = 228.294, y = 120.840, z = 386.623 }, rot = { x = 6.658, y = 50.336, z = 359.373 }, level = 20, area_id = 402 },
	{ config_id = 10030, gadget_id = 70310476, pos = { x = 220.903, y = 122.203, z = 381.314 }, rot = { x = 6.587, y = 48.424, z = 358.845 }, level = 20, area_id = 402 },
	-- P
	{ config_id = 10031, gadget_id = 70310476, pos = { x = 194.560, y = 121.800, z = 384.760 }, rot = { x = 2.536, y = 34.788, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 10032, gadget_id = 70310249, pos = { x = 201.297, y = 130.501, z = 329.938 }, rot = { x = 4.737, y = 34.772, z = 1.336 }, level = 20, area_id = 402 },
	{ config_id = 10033, gadget_id = 70310249, pos = { x = 176.806, y = 131.229, z = 339.007 }, rot = { x = 38.076, y = 91.795, z = 215.812 }, level = 20, area_id = 402 },
	{ config_id = 10034, gadget_id = 70310249, pos = { x = 181.261, y = 190.974, z = 359.423 }, rot = { x = 21.735, y = 251.140, z = 0.673 }, level = 20, area_id = 402 },
	{ config_id = 10035, gadget_id = 70310203, pos = { x = 168.879, y = 141.586, z = 330.201 }, rot = { x = 31.473, y = 65.204, z = 27.902 }, level = 20, area_id = 402 },
	{ config_id = 10036, gadget_id = 70310203, pos = { x = 159.231, y = 148.140, z = 324.462 }, rot = { x = 30.283, y = 41.922, z = 7.170 }, level = 20, area_id = 402 },
	{ config_id = 10037, gadget_id = 70310203, pos = { x = 153.168, y = 154.569, z = 314.158 }, rot = { x = 23.472, y = 15.754, z = 335.981 }, level = 20, area_id = 402 },
	{ config_id = 10038, gadget_id = 70310249, pos = { x = 203.309, y = 208.104, z = 342.056 }, rot = { x = 28.218, y = 352.033, z = 356.689 }, level = 20, area_id = 402 },
	{ config_id = 10039, gadget_id = 70310249, pos = { x = 150.594, y = 164.736, z = 303.941 }, rot = { x = 72.138, y = 196.711, z = 86.487 }, level = 20, area_id = 402 },
	{ config_id = 10040, gadget_id = 70310203, pos = { x = 154.415, y = 168.731, z = 317.732 }, rot = { x = 355.931, y = 197.822, z = 177.273 }, level = 20, area_id = 402 },
	{ config_id = 10041, gadget_id = 70310203, pos = { x = 159.365, y = 168.241, z = 330.512 }, rot = { x = 1.921, y = 201.720, z = 191.978 }, level = 20, area_id = 402 },
	{ config_id = 10042, gadget_id = 70310249, pos = { x = 167.174, y = 169.916, z = 345.140 }, rot = { x = 51.910, y = 226.635, z = 289.320 }, level = 20, area_id = 402 },
	{ config_id = 10043, gadget_id = 70230042, pos = { x = 188.702, y = 212.065, z = 313.979 }, rot = { x = 0.000, y = 210.514, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 10044, gadget_id = 70310476, pos = { x = 187.014, y = 131.027, z = 330.066 }, rot = { x = 355.210, y = 126.837, z = 359.870 }, level = 20, area_id = 402 },
	{ config_id = 10046, gadget_id = 70310187, pos = { x = 195.846, y = 215.516, z = 318.867 }, rot = { x = 0.000, y = 179.974, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 10048, gadget_id = 70310249, pos = { x = 189.491, y = 214.870, z = 326.990 }, rot = { x = 10.615, y = 5.124, z = 165.600 }, level = 20, area_id = 402 },
	{ config_id = 10054, gadget_id = 70310249, pos = { x = 187.032, y = 200.764, z = 348.575 }, rot = { x = 46.104, y = 321.197, z = 164.531 }, level = 20, area_id = 402 },
	{ config_id = 10056, gadget_id = 70380028, pos = { x = 188.230, y = 204.685, z = 307.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900100017, start_route = false, persistent = true, area_id = 402 },
	{ config_id = 10061, gadget_id = 70310476, pos = { x = 185.903, y = 121.201, z = 374.570 }, rot = { x = 2.238, y = 36.980, z = 359.830 }, level = 20, area_id = 402 },
	-- P3
	{ config_id = 10062, gadget_id = 70310203, pos = { x = 195.799, y = 215.445, z = 319.609 }, rot = { x = 3.589, y = 345.386, z = 357.226 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
	{ config_id = 10065, gadget_id = 70230042, pos = { x = 188.702, y = 212.065, z = 313.979 }, rot = { x = 0.000, y = 210.514, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 10066, gadget_id = 70310476, pos = { x = 180.398, y = 121.788, z = 366.137 }, rot = { x = 5.536, y = 25.151, z = 355.166 }, level = 20, area_id = 402 },
	{ config_id = 10067, gadget_id = 70310476, pos = { x = 238.589, y = 120.460, z = 391.561 }, rot = { x = 6.687, y = 75.811, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 10069, gadget_id = 70310203, pos = { x = 245.890, y = 119.653, z = 394.000 }, rot = { x = 7.311, y = 82.836, z = 0.001 }, level = 20, area_id = 402 },
	-- P2
	{ config_id = 10070, gadget_id = 70310203, pos = { x = 193.619, y = 131.683, z = 326.357 }, rot = { x = 0.000, y = 296.102, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 }
}

-- 区域
regions = {
	-- 透视生效范围region
	{ config_id = 10019, shape = RegionShape.SPHERE, radius = 150, pos = { x = 207.251, y = 118.804, z = 311.915 }, area_id = 402, team_ability_group_list = { "RegionAbility_Dreamland_XRay" } },
	-- remidner1-提示水脉阻塞
	{ config_id = 10021, shape = RegionShape.SPHERE, radius = 26, pos = { x = 239.537, y = 120.653, z = 392.276 }, area_id = 402 },
	-- 石板归位
	{ config_id = 10047, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 308.185, y = 120.288, z = 312.750 }, area_id = 402 },
	-- REGEION触发reminder
	{ config_id = 10060, shape = RegionShape.SPHERE, radius = 13.48, pos = { x = 195.137, y = 215.522, z = 329.309 }, area_id = 402 },
	-- 石板归位
	{ config_id = 10064, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 308.185, y = 120.288, z = 312.750 }, area_id = 402 }
}

-- 触发器
triggers = {
	-- 透视生效范围region
	{ config_id = 1010019, name = "ENTER_REGION_10019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- remidner1-提示水脉阻塞
	{ config_id = 1010021, name = "ENTER_REGION_10021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10021", action = "action_EVENT_ENTER_REGION_10021" },
	-- remidner2-解决水脉阻塞
	{ config_id = 1010023, name = "ANY_GADGET_DIE_10023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10023", action = "action_EVENT_ANY_GADGET_DIE_10023", trigger_count = 0 },
	{ config_id = 1010045, name = "GROUP_LOAD_10045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10045", action = "action_EVENT_GROUP_LOAD_10045", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1010047, name = "LEAVE_REGION_10047", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_10047", action = "action_EVENT_LEAVE_REGION_10047", trigger_count = 0 },
	{ config_id = 1010049, name = "GROUP_LOAD_10049", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10049", action = "action_EVENT_GROUP_LOAD_10049", trigger_count = 0 },
	{ config_id = 1010050, name = "QUEST_START_10050", event = EventType.EVENT_QUEST_START, source = "4006811", condition = "condition_EVENT_QUEST_START_10050", action = "action_EVENT_QUEST_START_10050", trigger_count = 0 },
	{ config_id = 1010051, name = "GROUP_LOAD_10051", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10051", action = "action_EVENT_GROUP_LOAD_10051", trigger_count = 0 },
	{ config_id = 1010052, name = "GROUP_LOAD_10052", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10052", action = "action_EVENT_GROUP_LOAD_10052", trigger_count = 0 },
	{ config_id = 1010053, name = "QUEST_START_10053", event = EventType.EVENT_QUEST_START, source = "4006817", condition = "condition_EVENT_QUEST_START_10053", action = "action_EVENT_QUEST_START_10053", trigger_count = 0 },
	{ config_id = 1010055, name = "GROUP_LOAD_10055", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10055", action = "action_EVENT_GROUP_LOAD_10055", trigger_count = 0 },
	-- add-qp-4006811
	{ config_id = 1010057, name = "ANY_GADGET_DIE_10057", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10057", action = "action_EVENT_ANY_GADGET_DIE_10057", trigger_count = 0 },
	-- 最终阻塞，reminder+移动水片
	{ config_id = 1010058, name = "ANY_GADGET_DIE_10058", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10058", action = "action_EVENT_ANY_GADGET_DIE_10058", trigger_count = 0 },
	-- 疏通完成记变量/发光/发声
	{ config_id = 1010059, name = "PLATFORM_REACH_POINT_10059", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_10059", action = "action_EVENT_PLATFORM_REACH_POINT_10059", trigger_count = 0 },
	-- REGEION触发reminder
	{ config_id = 1010060, name = "ENTER_REGION_10060", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10060", action = "action_EVENT_ENTER_REGION_10060" },
	-- 石板激活
	{ config_id = 1010063, name = "GADGET_STATE_CHANGE_10063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10063", action = "action_EVENT_GADGET_STATE_CHANGE_10063", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1010064, name = "LEAVE_REGION_10064", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_10064", action = "action_EVENT_LEAVE_REGION_10064", trigger_count = 0 },
	{ config_id = 1010068, name = "GROUP_LOAD_10068", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10068", action = "action_EVENT_GROUP_LOAD_10068", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "WatorFinish", value = 0, no_refresh = true },
	{ config_id = 3, name = "mark", value = 0, no_refresh = true },
	{ config_id = 4, name = "mark2", value = 0, no_refresh = true },
	{ config_id = 5, name = "mark3", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1010020, name = "GADGET_STATE_CHANGE_10020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10020", action = "action_EVENT_GADGET_STATE_CHANGE_10020", trigger_count = 0 }
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
		gadgets = { 10009, 10043 },
		regions = { 10064 },
		triggers = { "LEAVE_REGION_10064" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 发音石板+高水位水片,
		monsters = { },
		gadgets = { 10011, 10024, 10065 },
		regions = { 10047 },
		triggers = { "LEAVE_REGION_10047", "GADGET_STATE_CHANGE_10063" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 真石板+一条水脉,
		monsters = { },
		gadgets = { 10001, 10002, 10003, 10004, 10005, 10006, 10010, 10012, 10013, 10015, 10025, 10027, 10028, 10043, 10067, 10069, 10070 },
		regions = { 10019, 10021 },
		triggers = { "ENTER_REGION_10019", "ENTER_REGION_10021", "ANY_GADGET_DIE_10023", "GROUP_LOAD_10045", "GROUP_LOAD_10049", "QUEST_START_10050", "GROUP_LOAD_10051", "GROUP_LOAD_10052", "QUEST_START_10053", "GROUP_LOAD_10055", "GROUP_LOAD_10068" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二段,
		monsters = { },
		gadgets = { 10007, 10008, 10016, 10017, 10018, 10022, 10026, 10029, 10030, 10031, 10032, 10043, 10061, 10066, 10070 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_10057" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三段,
		monsters = { },
		gadgets = { 10014, 10033, 10034, 10035, 10036, 10037, 10038, 10039, 10040, 10041, 10042, 10043, 10044, 10046, 10048, 10054, 10056, 10062 },
		regions = { 10060 },
		triggers = { "ANY_GADGET_DIE_10058", "PLATFORM_REACH_POINT_10059", "ENTER_REGION_10060" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_10021(context, evt)
	if evt.param1 ~= 10021 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10021(context, evt)
	-- 调用提示id为 1111290 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111290) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10023(context, evt)
	if 10015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10023(context, evt)
	-- 将本组内变量名为 "mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001010, 4)
	
	-- 调用提示id为 1111292 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10045(context, evt)
	-- 判断变量"mark"为1
	if ScriptLib.GetGroupVariableValue(context, "mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10045(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001010, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_10047(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001010, 10011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_10047(context, evt)
	-- 将configid为 10011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10049(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10049(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001010, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10070 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_10050(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_10050(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10051(context, evt)
	-- 判断变量"mark3"为1
	if ScriptLib.GetGroupVariableValue(context, "mark3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10051(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 10056, 900100111) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 10056) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10052(context, evt)
	-- 判断变量"mark3"为1
	if ScriptLib.GetGroupVariableValue(context, "mark3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10052(context, evt)
	-- 将configid为 10043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_10053(context, evt)
	-- 判断变量"mark3"为1
	if ScriptLib.GetGroupVariableValue(context, "mark3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_10053(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006817") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10055(context, evt)
	-- 判断变量"mark3"为1
	if ScriptLib.GetGroupVariableValue(context, "mark3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10055(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006817") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10057(context, evt)
	if 10022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10057(context, evt)
	-- 将本组内变量名为 "mark2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001010, 5)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10070 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10058(context, evt)
	if 10046 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10058(context, evt)
	-- 将本组内变量名为 "mark3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 10056) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_10059(context, evt)
	-- 判断是gadgetid 为 10056的移动平台，是否到达了900100017 的路线中的 0 点
	
	if 10056 ~= evt.param1 then
	  return false
	end
	
	if 900100017 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_10059(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006817") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 10043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=188, y=213, z=309}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_01_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10060(context, evt)
	if evt.param1 ~= 10060 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10060(context, evt)
	-- 调用提示id为 1111293 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111293) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10063(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001010, 10011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10063(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=188, y=213, z=309}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_01_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_10064(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001010, 10009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_10064(context, evt)
	-- 将configid为 10009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10068(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10068(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end