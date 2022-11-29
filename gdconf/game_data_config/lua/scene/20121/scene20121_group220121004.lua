-- 基础信息
local base_info = {
	group_id = 220121004
}

-- DEFS_MISCS
local defs = {
	box_gadget_id = 70290241,
	point_array_id = 1,
	option_id = 98,
	reminder_level_boarder = 400119,
	reminder_array_boarder = 400119,
	reminder_box_conflict = 400119,
}

--地形信息：0-墙面,1-地面,2-空气墙
local level_map = {
	{0,0,2,1,1,1,1,0,0},
	{0,0,2,0,1,1,1,1,0},
	{2,1,1,0,1,2,2,2,2},
	{0,0,1,0,1,0,0,0,0},
	{2,2,1,0,1,0,0,0,0}
}

--点阵id信息
local point_map = {
	{ 0, 0, 0, 1, 2, 3, 4, 0, 0},
	{ 0, 0, 0, 0, 5, 6, 7, 8, 0},
	{ 0, 9,10, 0,11, 0, 0, 0, 0},
	{ 0, 0,12, 0,13, 0, 0, 0, 0},
	{ 0, 0,14, 0,15, 0, 0, 0, 0}
}

--箱子起始信息
local box_config = {
	[1] = {config_id = 4005, pos = {x=2,z=3}},
	[2] = {config_id = 4006, pos = {x=4,z=1}},
	[3] = {config_id = 4008, pos = {x=5,z=2}},
	[4] = {config_id = 4009, pos = {x=6,z=2}}
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
	[4001] = { config_id = 4001, gadget_id = 70290298, pos = { x = -37.485, y = -440.673, z = -29.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	[4002] = { config_id = 4002, gadget_id = 70710199, pos = { x = -28.930, y = -575.680, z = -22.630 }, rot = { x = 348.076, y = 353.295, z = 11.700 }, level = 1 },
	-- 石块1
	[4005] = { config_id = 4005, gadget_id = 70290241, pos = { x = -45.218, y = -578.950, z = -89.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- 石块2
	[4006] = { config_id = 4006, gadget_id = 70290241, pos = { x = -35.230, y = -578.920, z = -101.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- 石块3
	[4008] = { config_id = 4008, gadget_id = 70290241, pos = { x = -40.289, y = -578.950, z = -106.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- 石块4
	[4009] = { config_id = 4009, gadget_id = 70290241, pos = { x = -40.189, y = -578.942, z = -111.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	[4010] = { config_id = 4010, gadget_id = 70211101, pos = { x = -59.097, y = -578.912, z = -86.402 }, rot = { x = 0.000, y = 174.519, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	[4011] = { config_id = 4011, gadget_id = 70211101, pos = { x = -50.354, y = -578.949, z = -110.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	[4012] = { config_id = 4012, gadget_id = 70360022, pos = { x = -42.007, y = -568.552, z = -68.879 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	[4013] = { config_id = 4013, gadget_id = 70710010, pos = { x = -40.901, y = -572.827, z = -47.481 }, rot = { x = 0.000, y = 158.311, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	[4014] = { config_id = 4014, gadget_id = 70211101, pos = { x = -32.684, y = -575.990, z = -17.428 }, rot = { x = 0.000, y = 249.739, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	[4015] = { config_id = 4015, gadget_id = 70360021, pos = { x = -39.506, y = -577.335, z = -65.806 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 5, persistent = true },
	[4016] = { config_id = 4016, gadget_id = 70360021, pos = { x = -42.192, y = -571.049, z = -74.173 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 6, persistent = true },
	[4019] = { config_id = 4019, gadget_id = 70800107, pos = { x = -41.125, y = -503.470, z = -28.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	[4020] = { config_id = 4020, gadget_id = 70900201, pos = { x = -40.810, y = -575.990, z = -29.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 删除过渡云完成任务解锁控制
	[4003] = { config_id = 4003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -40.635, y = -575.990, z = -29.781 } },
	-- 下层天气1切换
	[4004] = { config_id = 4004, shape = RegionShape.CUBIC, size = { x = 50.000, y = 140.000, z = 70.000 }, pos = { x = -36.610, y = -509.304, z = -25.238 } },
	-- 下层天气2切换
	[4007] = { config_id = 4007, shape = RegionShape.CUBIC, size = { x = 15.000, y = 20.000, z = 140.000 }, pos = { x = -42.239, y = -577.500, z = -133.236 } },
	-- 靠近石壁开车
	[4018] = { config_id = 4018, shape = RegionShape.SPHERE, radius = 7, pos = { x = -44.710, y = -578.937, z = -84.722 } }
}

-- 触发器
triggers = {
	-- 删除过渡云完成任务解锁控制
	{ config_id = 1004003, name = "ENTER_REGION_4003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4003", action = "action_EVENT_ENTER_REGION_4003" },
	-- 下层天气1切换
	{ config_id = 1004004, name = "ENTER_REGION_4004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4004", action = "action_EVENT_ENTER_REGION_4004", trigger_count = 0 },
	-- 下层天气2切换
	{ config_id = 1004007, name = "ENTER_REGION_4007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4007", action = "action_EVENT_ENTER_REGION_4007", trigger_count = 0 },
	{ config_id = 1004017, name = "PLATFORM_REACH_POINT_4017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4017", action = "action_EVENT_PLATFORM_REACH_POINT_4017" },
	-- 靠近石壁开车
	{ config_id = 1004018, name = "ENTER_REGION_4018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4018", action = "action_EVENT_ENTER_REGION_4018" }
}

-- 变量
variables = {
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4001, 4002, 4005, 4006, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4020 },
		regions = { 4003, 4004, 4007, 4018 },
		triggers = { "ENTER_REGION_4003", "ENTER_REGION_4004", "ENTER_REGION_4007", "PLATFORM_REACH_POINT_4017", "ENTER_REGION_4018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4003(context, evt)
	if evt.param1 ~= 4003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121004, EntityType.GADGET, 4001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121004, EntityType.GADGET, 4020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4004(context, evt)
	if evt.param1 ~= 4004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4004(context, evt)
	ScriptLib.SetWeatherAreaState(context, 10069,1)
	ScriptLib.SetWeatherAreaState(context, 10070,0)
	ScriptLib.EnterWeatherArea(context, 10069)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4007(context, evt)
	if evt.param1 ~= 4007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4007(context, evt)
	ScriptLib.SetWeatherAreaState(context, 10070,1)
	ScriptLib.SetWeatherAreaState(context, 10069,0)
	ScriptLib.SetWeatherAreaState(context, 10071,0)
	ScriptLib.EnterWeatherArea(context, 10070)
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4017(context, evt)
	-- 判断是gadgetid 为 4013的移动平台，是否到达了7 的路线中的 14 点
	
	if 4013 ~= evt.param1 then
	  return false
	end
	
	if 7 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121004, EntityType.GADGET, 4013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4018(context, evt)
	if evt.param1 ~= 4018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4018(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-44,y=-578,z=-84}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 500660180, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

require "V2_4/BoxPusher"