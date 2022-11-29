-- 基础信息
local base_info = {
	group_id = 133106404
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 404001, monster_id = 21020201, pos = { x = -361.791, y = 220.772, z = 1106.477 }, rot = { x = 0.000, y = 34.258, z = 0.000 }, level = 32, affix = { 1008, 1011 }, pose_id = 401, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 404002, gadget_id = 70500000, pos = { x = -361.971, y = 228.386, z = 1095.535 }, rot = { x = 349.768, y = 226.356, z = 6.004 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404003, gadget_id = 70220025, pos = { x = -361.634, y = 220.801, z = 1107.237 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404004, gadget_id = 70220025, pos = { x = -360.385, y = 220.831, z = 1106.664 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404005, gadget_id = 70211121, pos = { x = -363.082, y = 220.750, z = 1096.481 }, rot = { x = 0.000, y = 354.545, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 404006, gadget_id = 70220025, pos = { x = -359.177, y = 220.833, z = 1098.388 }, rot = { x = 89.972, y = 67.411, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404007, gadget_id = 70500000, pos = { x = -359.385, y = 220.922, z = 1097.919 }, rot = { x = 274.668, y = 264.552, z = 29.194 }, level = 32, point_type = 9131, area_id = 8 },
	{ config_id = 404008, gadget_id = 70500000, pos = { x = -360.142, y = 220.803, z = 1106.040 }, rot = { x = 300.818, y = 210.684, z = 43.168 }, level = 32, point_type = 9131, area_id = 8 },
	{ config_id = 404009, gadget_id = 70220016, pos = { x = -363.012, y = 221.521, z = 1107.531 }, rot = { x = 85.171, y = 201.140, z = 203.830 }, level = 32, area_id = 8 },
	{ config_id = 404010, gadget_id = 70220017, pos = { x = -358.273, y = 220.750, z = 1104.094 }, rot = { x = 0.000, y = 155.577, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404011, gadget_id = 70300088, pos = { x = -365.002, y = 220.750, z = 1096.459 }, rot = { x = 0.000, y = 301.932, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404012, gadget_id = 70220013, pos = { x = -367.606, y = 220.750, z = 1097.522 }, rot = { x = 0.000, y = 62.692, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404013, gadget_id = 70220026, pos = { x = -366.618, y = 220.750, z = 1096.305 }, rot = { x = 0.000, y = 83.268, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404014, gadget_id = 70220025, pos = { x = -360.519, y = 220.824, z = 1096.993 }, rot = { x = 87.170, y = 314.352, z = 58.668 }, level = 32, area_id = 8 },
	{ config_id = 404015, gadget_id = 70500000, pos = { x = -358.695, y = 220.829, z = 1098.536 }, rot = { x = 294.732, y = 59.587, z = 319.305 }, level = 32, point_type = 9131, area_id = 8 },
	{ config_id = 404016, gadget_id = 70500000, pos = { x = -360.873, y = 220.008, z = 1105.739 }, rot = { x = 2.305, y = 158.088, z = 41.121 }, level = 32, point_type = 2016, area_id = 8 },
	{ config_id = 404017, gadget_id = 70500000, pos = { x = -360.675, y = 220.732, z = 1105.896 }, rot = { x = 0.000, y = 218.597, z = 0.000 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404018, gadget_id = 70500000, pos = { x = -359.419, y = 220.847, z = 1098.295 }, rot = { x = 0.000, y = 209.344, z = 0.000 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404019, gadget_id = 70500000, pos = { x = -360.540, y = 219.891, z = 1106.165 }, rot = { x = 356.359, y = 153.631, z = 19.818 }, level = 32, point_type = 2016, area_id = 8 },
	{ config_id = 404023, gadget_id = 70500000, pos = { x = -359.736, y = 220.821, z = 1098.413 }, rot = { x = 0.000, y = 333.175, z = 0.000 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404024, gadget_id = 70500000, pos = { x = -361.444, y = 220.890, z = 1097.560 }, rot = { x = 359.363, y = 31.347, z = 285.520 }, level = 32, point_type = 2016, area_id = 8 },
	{ config_id = 404025, gadget_id = 70500000, pos = { x = -360.087, y = 220.765, z = 1097.155 }, rot = { x = 301.421, y = 35.838, z = 311.947 }, level = 32, point_type = 3011, area_id = 8 },
	{ config_id = 404026, gadget_id = 70310006, pos = { x = -359.892, y = 220.750, z = 1103.161 }, rot = { x = 0.000, y = 242.118, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 404027, gadget_id = 70500000, pos = { x = -359.509, y = 220.771, z = 1098.786 }, rot = { x = 0.000, y = 209.344, z = 0.000 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404028, gadget_id = 70500000, pos = { x = -359.102, y = 220.803, z = 1098.830 }, rot = { x = 309.872, y = 182.148, z = 65.459 }, level = 32, point_type = 9131, area_id = 8 },
	{ config_id = 404029, gadget_id = 70500000, pos = { x = -360.619, y = 220.904, z = 1097.259 }, rot = { x = 301.421, y = 35.838, z = 354.706 }, level = 32, point_type = 3011, area_id = 8 },
	{ config_id = 404030, gadget_id = 70500000, pos = { x = -360.306, y = 220.789, z = 1097.725 }, rot = { x = 354.401, y = 239.110, z = 354.509 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404031, gadget_id = 70500000, pos = { x = -360.767, y = 220.790, z = 1097.540 }, rot = { x = 357.985, y = 269.727, z = 1.987 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404032, gadget_id = 70290017, pos = { x = -360.423, y = 222.356, z = 1107.793 }, rot = { x = 0.047, y = 206.469, z = 356.991 }, level = 32, area_id = 8 },
	{ config_id = 404033, gadget_id = 70290017, pos = { x = -360.415, y = 221.918, z = 1107.775 }, rot = { x = 357.921, y = 206.645, z = 17.172 }, level = 32, area_id = 8 },
	{ config_id = 404034, gadget_id = 70220016, pos = { x = -362.636, y = 221.533, z = 1106.123 }, rot = { x = 85.171, y = 201.140, z = 228.582 }, level = 32, area_id = 8 },
	{ config_id = 404035, gadget_id = 70290019, pos = { x = -360.802, y = 222.263, z = 1107.992 }, rot = { x = 0.000, y = 204.708, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404036, gadget_id = 70290018, pos = { x = -360.942, y = 222.239, z = 1107.947 }, rot = { x = 359.981, y = 204.201, z = 181.943 }, level = 32, area_id = 8 },
	{ config_id = 404037, gadget_id = 70290021, pos = { x = -359.729, y = 220.757, z = 1106.806 }, rot = { x = 2.196, y = 262.700, z = 359.719 }, level = 32, area_id = 8 },
	{ config_id = 404038, gadget_id = 70220016, pos = { x = -363.617, y = 222.200, z = 1107.564 }, rot = { x = 85.171, y = 201.140, z = 201.183 }, level = 32, area_id = 8 },
	{ config_id = 404039, gadget_id = 70500000, pos = { x = -362.421, y = 228.376, z = 1095.417 }, rot = { x = 348.153, y = 256.983, z = 0.000 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404040, gadget_id = 70500000, pos = { x = -362.722, y = 228.374, z = 1095.363 }, rot = { x = 10.466, y = 48.700, z = 354.418 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404041, gadget_id = 70500000, pos = { x = -362.213, y = 228.380, z = 1095.475 }, rot = { x = 10.466, y = 48.700, z = 354.418 }, level = 32, point_type = 9104, area_id = 8 },
	{ config_id = 404042, gadget_id = 70500000, pos = { x = -361.109, y = 220.974, z = 1097.142 }, rot = { x = 274.668, y = 264.552, z = 103.049 }, level = 32, point_type = 9131, area_id = 8 },
	{ config_id = 404043, gadget_id = 70710160, pos = { x = -363.211, y = 220.713, z = 1105.157 }, rot = { x = 0.000, y = 31.137, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 404044, gadget_id = 70500000, pos = { x = -363.156, y = 221.020, z = 1105.200 }, rot = { x = 2.847, y = 65.513, z = 6.340 }, level = 32, point_type = 2004, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 404021, shape = RegionShape.SPHERE, radius = 7, pos = { x = -361.714, y = 227.821, z = 1101.285 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1404020, name = "GADGET_STATE_CHANGE_404020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_404020", action = "action_EVENT_GADGET_STATE_CHANGE_404020", trigger_count = 0 },
	{ config_id = 1404021, name = "ENTER_REGION_404021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404021", action = "action_EVENT_ENTER_REGION_404021", trigger_count = 0 },
	{ config_id = 1404045, name = "GROUP_LOAD_404045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_404045", action = "action_EVENT_GROUP_LOAD_404045", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 1, no_refresh = true }
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
		monsters = { 404001 },
		gadgets = { 404002, 404003, 404004, 404005, 404006, 404007, 404008, 404009, 404010, 404011, 404012, 404013, 404014, 404015, 404016, 404017, 404018, 404019, 404023, 404024, 404025, 404026, 404027, 404028, 404029, 404030, 404031, 404032, 404033, 404034, 404035, 404036, 404037, 404038, 404039, 404040, 404041, 404042, 404043, 404044 },
		regions = { 404021 },
		triggers = { "GADGET_STATE_CHANGE_404020", "ENTER_REGION_404021", "GROUP_LOAD_404045" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_404020(context, evt)
	if 404005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_404020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133106404") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404021(context, evt)
	if evt.param1 ~= 404021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133106404_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_404045(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_404045(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133106404") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end