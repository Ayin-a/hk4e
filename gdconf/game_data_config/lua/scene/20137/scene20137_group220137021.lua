-- 基础信息
local base_info = {
	group_id = 220137021
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
	{ config_id = 21001, gadget_id = 70380001, pos = { x = 700.125, y = 56.357, z = -94.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 21002, gadget_id = 70310313, pos = { x = 690.443, y = 57.328, z = -98.605 }, rot = { x = 0.000, y = 180.394, z = 0.000 }, level = 1 },
	{ config_id = 21003, gadget_id = 70310314, pos = { x = 690.448, y = 57.328, z = -96.113 }, rot = { x = 0.000, y = 179.622, z = 0.000 }, level = 1 },
	{ config_id = 21004, gadget_id = 70310316, pos = { x = 690.500, y = 57.323, z = -95.207 }, rot = { x = 0.000, y = 270.624, z = 0.000 }, level = 1 },
	{ config_id = 21005, gadget_id = 70310314, pos = { x = 691.681, y = 57.328, z = -95.115 }, rot = { x = 0.000, y = 89.854, z = 0.000 }, level = 1 },
	-- 任务表现终点莱昂
	{ config_id = 21007, gadget_id = 70310266, pos = { x = 690.103, y = 73.828, z = -115.586 }, rot = { x = 0.000, y = 178.206, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	{ config_id = 21008, gadget_id = 70310444, pos = { x = 698.984, y = 57.328, z = -95.111 }, rot = { x = 0.000, y = 269.992, z = 0.000 }, level = 1 },
	{ config_id = 21009, gadget_id = 70310443, pos = { x = 701.416, y = 57.328, z = -95.103 }, rot = { x = 0.000, y = 89.854, z = 0.000 }, level = 1 },
	{ config_id = 21010, gadget_id = 70310313, pos = { x = 704.575, y = 65.655, z = -97.009 }, rot = { x = 0.000, y = 0.134, z = 0.000 }, level = 1 },
	{ config_id = 21011, gadget_id = 70310314, pos = { x = 703.274, y = 65.640, z = -95.098 }, rot = { x = 0.000, y = 89.854, z = 0.000 }, level = 1 },
	{ config_id = 21012, gadget_id = 70310316, pos = { x = 704.493, y = 65.628, z = -95.155 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1 },
	{ config_id = 21013, gadget_id = 70310314, pos = { x = 704.558, y = 65.655, z = -99.344 }, rot = { x = 0.000, y = 180.631, z = 0.000 }, level = 1 },
	{ config_id = 21014, gadget_id = 70380001, pos = { x = 690.243, y = 72.800, z = -112.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 21015, gadget_id = 70310443, pos = { x = 690.173, y = 73.800, z = -113.058 }, rot = { x = 0.000, y = 181.094, z = 0.000 }, level = 1 },
	{ config_id = 21016, gadget_id = 70310314, pos = { x = 704.500, y = 65.655, z = -108.959 }, rot = { x = 0.000, y = 180.631, z = 0.000 }, level = 1 },
	{ config_id = 21017, gadget_id = 70310313, pos = { x = 704.517, y = 65.655, z = -106.624 }, rot = { x = 0.000, y = 0.134, z = 0.000 }, level = 1 },
	{ config_id = 21018, gadget_id = 70310314, pos = { x = 703.254, y = 65.606, z = -111.722 }, rot = { x = 0.000, y = 270.475, z = 0.000 }, level = 1 },
	{ config_id = 21019, gadget_id = 70310316, pos = { x = 704.429, y = 65.601, z = -111.635 }, rot = { x = 0.000, y = 88.766, z = 0.000 }, level = 1 },
	{ config_id = 21020, gadget_id = 70310314, pos = { x = 704.486, y = 65.606, z = -110.724 }, rot = { x = 0.000, y = 0.484, z = 0.000 }, level = 1 },
	{ config_id = 21021, gadget_id = 70310445, pos = { x = 690.247, y = 73.800, z = -111.844 }, rot = { x = 0.000, y = 270.624, z = 0.000 }, level = 1 },
	{ config_id = 21022, gadget_id = 70310443, pos = { x = 691.457, y = 73.800, z = -111.752 }, rot = { x = 0.000, y = 89.854, z = 0.000 }, level = 1 },
	{ config_id = 21023, gadget_id = 70310313, pos = { x = 695.279, y = 65.617, z = -111.726 }, rot = { x = 0.000, y = 269.992, z = 0.000 }, level = 1 },
	{ config_id = 21024, gadget_id = 70310314, pos = { x = 696.676, y = 65.617, z = -111.731 }, rot = { x = 0.000, y = 89.854, z = 0.000 }, level = 1 },
	{ config_id = 21025, gadget_id = 70310314, pos = { x = 693.222, y = 65.617, z = -111.740 }, rot = { x = 0.000, y = 269.329, z = 0.000 }, level = 1 },
	{ config_id = 21026, gadget_id = 70380001, pos = { x = 690.243, y = 64.626, z = -112.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 21027, gadget_id = 70310443, pos = { x = 690.199, y = 65.620, z = -113.058 }, rot = { x = 0.000, y = 181.094, z = 0.000 }, level = 1 },
	{ config_id = 21028, gadget_id = 70310445, pos = { x = 690.275, y = 65.615, z = -111.843 }, rot = { x = 0.000, y = 270.624, z = 0.000 }, level = 1 },
	{ config_id = 21029, gadget_id = 70310443, pos = { x = 691.457, y = 65.620, z = -111.752 }, rot = { x = 0.000, y = 89.854, z = 0.000 }, level = 1 },
	{ config_id = 21030, gadget_id = 70310314, pos = { x = 690.173, y = 73.800, z = -114.847 }, rot = { x = 0.000, y = 179.914, z = 0.000 }, level = 1 },
	{ config_id = 21031, gadget_id = 70310314, pos = { x = 690.173, y = 73.800, z = -116.629 }, rot = { x = 0.000, y = 179.914, z = 0.000 }, level = 1 },
	{ config_id = 21032, gadget_id = 70310266, pos = { x = 690.431, y = 57.360, z = -99.986 }, rot = { x = 0.000, y = 116.947, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	{ config_id = 21043, gadget_id = 70310443, pos = { x = 701.416, y = 65.616, z = -95.103 }, rot = { x = 0.000, y = 89.854, z = 0.000 }, level = 1 },
	{ config_id = 21045, gadget_id = 70310444, pos = { x = 698.984, y = 65.616, z = -95.111 }, rot = { x = 0.000, y = 269.992, z = 0.000 }, level = 1 },
	{ config_id = 21046, gadget_id = 70380001, pos = { x = 700.125, y = 64.645, z = -94.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 21053, gadget_id = 70310489, pos = { x = 700.020, y = 57.360, z = -95.256 }, rot = { x = 0.000, y = 90.998, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初见洋葱哥后开始关卡逻辑
	{ config_id = 1021006, name = "GROUP_LOAD_21006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_21006", action = "action_EVENT_GROUP_LOAD_21006", trigger_count = 0 },
	-- 到第一个断口处变量设为1
	{ config_id = 1021033, name = "PLATFORM_ARRIVAL_21033", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_21033", action = "action_EVENT_PLATFORM_ARRIVAL_21033", trigger_count = 0 },
	-- 初见洋葱哥后开始关卡逻辑
	{ config_id = 1021034, name = "QUEST_FINISH_21034", event = EventType.EVENT_QUEST_FINISH, source = "4007110", condition = "", action = "action_EVENT_QUEST_FINISH_21034", trigger_count = 0 },
	-- 到第2个断口处变量设为1
	{ config_id = 1021035, name = "PLATFORM_ARRIVAL_21035", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_21035", action = "action_EVENT_PLATFORM_ARRIVAL_21035", trigger_count = 0 },
	-- 鸦眼1完成且葱哥达到断口
	{ config_id = 1021036, name = "VARIABLE_CHANGE_21036", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21036", action = "action_EVENT_VARIABLE_CHANGE_21036", trigger_count = 0 },
	-- 鸦眼3完成且葱哥达到断口
	{ config_id = 1021037, name = "VARIABLE_CHANGE_21037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21037", action = "action_EVENT_VARIABLE_CHANGE_21037", trigger_count = 0 },
	-- 鸦眼2完成且葱哥达到断口
	{ config_id = 1021038, name = "VARIABLE_CHANGE_21038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21038", action = "action_EVENT_VARIABLE_CHANGE_21038", trigger_count = 0 },
	-- 到第3个断口处变量设为1
	{ config_id = 1021039, name = "PLATFORM_ARRIVAL_21039", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_21039", action = "action_EVENT_PLATFORM_ARRIVAL_21039", trigger_count = 0 },
	-- 完成+任务完成
	{ config_id = 1021040, name = "PLATFORM_ARRIVAL_21040", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_21040", action = "action_EVENT_PLATFORM_ARRIVAL_21040", trigger_count = 0 },
	{ config_id = 1021041, name = "PLATFORM_ARRIVAL_21041", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_21041", action = "action_EVENT_PLATFORM_ARRIVAL_21041", trigger_count = 0 },
	{ config_id = 1021042, name = "PLATFORM_ARRIVAL_21042", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_21042", action = "action_EVENT_PLATFORM_ARRIVAL_21042", trigger_count = 0 },
	-- 已完成刷suite保底
	{ config_id = 1021044, name = "GROUP_LOAD_21044", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21044", trigger_count = 0 },
	-- 重进地城后重刷莱昂
	{ config_id = 1021047, name = "GROUP_LOAD_21047", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21047", trigger_count = 0 },
	-- 断线重连重刷莱昂
	{ config_id = 1021048, name = "QUEST_START_21048", event = EventType.EVENT_QUEST_START, source = "4007119", condition = "", action = "action_EVENT_QUEST_START_21048", trigger_count = 0 },
	-- 切换suite重刷莱昂
	{ config_id = 1021049, name = "GROUP_REFRESH_21049", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_21049", trigger_count = 0 },
	-- 删除莱昂
	{ config_id = 1021050, name = "QUEST_FINISH_21050", event = EventType.EVENT_QUEST_FINISH, source = "4007119", condition = "", action = "action_EVENT_QUEST_FINISH_21050", trigger_count = 0 },
	-- 4007111 任务保底
	{ config_id = 1021051, name = "GROUP_LOAD_21051", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_21051", action = "action_EVENT_GROUP_LOAD_21051", trigger_count = 0 },
	-- 4007111 任务保底
	{ config_id = 1021052, name = "QUEST_START_21052", event = EventType.EVENT_QUEST_START, source = "4007111", condition = "condition_EVENT_QUEST_START_21052", action = "action_EVENT_QUEST_START_21052", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start1", value = 0, no_refresh = true },
	{ config_id = 2, name = "duankou", value = 0, no_refresh = false },
	{ config_id = 5, name = "eyefinish1", value = 0, no_refresh = true },
	{ config_id = 6, name = "eyefinish2", value = 0, no_refresh = true },
	{ config_id = 7, name = "eyefinish3", value = 0, no_refresh = true },
	{ config_id = 8, name = "missionComplete", value = 0, no_refresh = true },
	{ config_id = 9, name = "TalkDone", value = 0, no_refresh = true }
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
		gadgets = { 21001, 21002, 21003, 21004, 21005, 21008, 21009, 21010, 21011, 21012, 21013, 21016, 21017, 21018, 21019, 21020, 21023, 21024, 21025, 21026, 21027, 21028, 21029, 21030, 21031, 21032 },
		regions = { },
		triggers = { "GROUP_LOAD_21006", "PLATFORM_ARRIVAL_21033", "QUEST_FINISH_21034", "PLATFORM_ARRIVAL_21035", "VARIABLE_CHANGE_21036", "VARIABLE_CHANGE_21037", "VARIABLE_CHANGE_21038", "PLATFORM_ARRIVAL_21039", "PLATFORM_ARRIVAL_21040", "PLATFORM_ARRIVAL_21041", "PLATFORM_ARRIVAL_21042", "GROUP_LOAD_21044", "GROUP_LOAD_21051", "QUEST_START_21052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 21002, 21003, 21004, 21005, 21010, 21011, 21012, 21013, 21014, 21015, 21016, 21017, 21018, 21019, 21020, 21021, 21022, 21023, 21024, 21025, 21030, 21031, 21043, 21045, 21046 },
		regions = { },
		triggers = { "GROUP_LOAD_21047", "QUEST_START_21048", "GROUP_REFRESH_21049", "QUEST_FINISH_21050", "GROUP_LOAD_21051", "QUEST_START_21052" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_21006(context, evt)
	-- 判断变量"missionComplete"为0
	if ScriptLib.GetGroupVariableValue(context, "missionComplete") ~= 0 then
			return false
	end
	
	-- 判断变量"TalkDone"为1
	if ScriptLib.GetGroupVariableValue(context, "TalkDone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21006(context, evt)
	-- 将本组内变量名为 "duankou" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "duankou", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21032, 2, {1,2,3,4,5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 21032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_21033(context, evt)
	-- 判断是gadgetid 为 21032的移动平台，是否到达了2 的点集中的 5 点
	
	if 21032 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_21033(context, evt)
	-- 将本组内变量名为 "duankou" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "duankou", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_21034(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21032, 2, {1,2,3,4,5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 21032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "TalkDone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "TalkDone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_21035(context, evt)
	-- 判断是gadgetid 为 21032的移动平台，是否到达了12 的点集中的 4 点
	
	if 21032 ~= evt.param1 then
	  return false
	end
	
	if 12 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_21035(context, evt)
	-- 将本组内变量名为 "duankou" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "duankou", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	if evt.source_name ~= "eyefinish1" and evt.source_name ~="duankou" then
	return false 
	end
	
	-- 判断变量"eyefinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "eyefinish1") ~= 1 then
			return false
	end
	
	-- 判断变量"duankou"为1
	if ScriptLib.GetGroupVariableValue(context, "duankou") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21036(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21032, 3, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	if evt.source_name ~= "eyefinish3" and evt.source_name ~="duankou" then
	return false 
	end
	
	-- 判断变量"eyefinish3"为1
	if ScriptLib.GetGroupVariableValue(context, "eyefinish3") ~= 1 then
			return false
	end
	
	-- 判断变量"duankou"为3
	if ScriptLib.GetGroupVariableValue(context, "duankou") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21037(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21032, 5, {1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	if evt.source_name ~= "eyefinish2" and evt.source_name ~="duankou" then
	return false 
	end
	
	-- 判断变量"eyefinish2"为1
	if ScriptLib.GetGroupVariableValue(context, "eyefinish2") ~= 1 then
			return false
	end
	
	-- 判断变量"duankou"为2
	if ScriptLib.GetGroupVariableValue(context, "duankou") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21038(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21032, 4, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_21039(context, evt)
	-- 判断是gadgetid 为 21032的移动平台，是否到达了4 的点集中的 4 点
	
	if 21032 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_21039(context, evt)
	-- 将本组内变量名为 "duankou" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "duankou", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_21040(context, evt)
	-- 判断是gadgetid 为 21032的移动平台，是否到达了13 的点集中的 2 点
	
	if 21032 ~= evt.param1 then
	  return false
	end
	
	if 13 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_21040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007111") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 21032 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21032, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220137021, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "missionComplete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "missionComplete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_21041(context, evt)
	-- 判断是gadgetid 为 21032的移动平台，是否到达了3 的点集中的 2 点
	
	if 21032 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_21041(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21001, 6, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21032, 12, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_21042(context, evt)
	-- 判断是gadgetid 为 21032的移动平台，是否到达了5 的点集中的 3 点
	
	if 21032 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_21042(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21026, 7, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 21032, 13, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21044(context, evt)
			    if ScriptLib.GetHostQuestState(context,4007111)==3 then
				ScriptLib.RefreshGroup(context, { group_id = 220137021, suite = 2 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21047(context, evt)
			    if ScriptLib.GetHostQuestState(context,4007119)==2 then
				ScriptLib.CreateGadget(context, { config_id = 21007 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_QUEST_START_21048(context, evt)
	-- 创建id为21007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_21049(context, evt)
			    if ScriptLib.GetHostQuestState(context,4007119)==2 then
				ScriptLib.CreateGadget(context, { config_id = 21007 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_21050(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_21051(context, evt)
	-- 判断变量"missionComplete"为1
	if ScriptLib.GetGroupVariableValue(context, "missionComplete") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21051(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007111") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_21052(context, evt)
	-- 判断变量"missionComplete"为1
	if ScriptLib.GetGroupVariableValue(context, "missionComplete") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_21052(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007111") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end