-- 基础信息
local base_info = {
	group_id = 245058002
}

-- DEFS_MISCS
--defs相关配置
defs = {
group_id = 245058002,
is_offical = true,
startpoint = 2015,
connect_region = 2037,
synchronizer = 2050, 
}


offical_settings = {
max_lives = 10,
has_dest = 1,
time = 600,
coins_collect = 25,
coins_max = 50,
editors = {2001,2033}
}
airwall_graph = {
[1] = {next_room = 2, airwall_suite = 5},
[2] = {next_room = 0, airwall_suite = 0},
}


room_infos = {
         {        
                room_cur = 1, 
                room_next = 2, 
                wall_connect = 2013, --到下一个房间的空气墙
                region_enter = 0, --弱网拦截用的
                region_wall_enter = 0, --弱网拦截用的空气墙 
                region_self = 2052,      --记录处于所属房间region
                point_safe = 2046 --传送安全点的configID
         },	 
         {        
                room_cur = 2, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 2048, --弱网拦截用的
                region_wall_enter = 2014, --弱网拦截用的空气墙 
                region_self = 2053,      --记录处于所属房间region
                point_safe = 2047 --传送安全点的configID
         },	 
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
	{ config_id = 2001, gadget_id = 70360002, pos = { x = -45.072, y = 0.000, z = -0.198 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70350345, pos = { x = -34.000, y = 16.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2007, gadget_id = 70900201, pos = { x = -69.262, y = 2.197, z = -4.891 }, rot = { x = 0.000, y = 88.435, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2009, gadget_id = 70900201, pos = { x = -45.012, y = 1.331, z = -0.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2010, gadget_id = 70900201, pos = { x = -33.962, y = 17.572, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2011, gadget_id = 70900201, pos = { x = -69.262, y = 2.201, z = -4.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2013, gadget_id = 70950150, pos = { x = -16.652, y = 0.051, z = 0.545 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70950150, pos = { x = 36.536, y = 0.051, z = 0.545 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70350353, pos = { x = -74.921, y = -0.021, z = -0.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70350327, pos = { x = -11.338, y = 0.000, z = -4.588 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70350327, pos = { x = -11.338, y = 0.000, z = 0.412 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70350327, pos = { x = -11.338, y = 0.000, z = 5.412 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70350321, pos = { x = -6.315, y = 0.005, z = -4.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70350321, pos = { x = -6.315, y = 0.005, z = 0.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70350321, pos = { x = -6.315, y = 0.005, z = 5.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70350321, pos = { x = -1.315, y = 0.005, z = -4.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70350321, pos = { x = -1.315, y = 0.005, z = 0.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70350321, pos = { x = -1.315, y = 0.005, z = 5.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2025, gadget_id = 70350321, pos = { x = 3.685, y = 0.005, z = -4.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2026, gadget_id = 70350321, pos = { x = 3.685, y = 0.005, z = 0.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2027, gadget_id = 70350321, pos = { x = 3.685, y = 0.005, z = 5.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2028, gadget_id = 70350327, pos = { x = 8.662, y = 0.000, z = -4.588 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2029, gadget_id = 70350327, pos = { x = 8.662, y = 0.000, z = 0.412 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2030, gadget_id = 70350327, pos = { x = 8.662, y = 0.000, z = 5.412 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2031, gadget_id = 70350321, pos = { x = 19.685, y = 0.005, z = 0.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2032, gadget_id = 70350363, pos = { x = 19.559, y = 4.986, z = 0.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70950150, pos = { x = -16.050, y = 0.051, z = 0.545 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2050, gadget_id = 70350430, pos = { x = 16.778, y = -0.022, z = 6.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2037, shape = RegionShape.CUBIC, size = { x = 300.000, y = 100.000, z = 60.000 }, pos = { x = -2.772, y = 4.915, z = 1.569 } },
	{ config_id = 2048, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 20.000 }, pos = { x = 30.765, y = 7.496, z = -0.252 } },
	{ config_id = 2052, shape = RegionShape.CUBIC, size = { x = 65.000, y = 60.000, z = 65.000 }, pos = { x = -50.281, y = 23.000, z = 1.236 } },
	{ config_id = 2053, shape = RegionShape.CUBIC, size = { x = 65.000, y = 60.000, z = 65.000 }, pos = { x = 70.280, y = 23.000, z = 1.236 } }
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "QUEST_FINISH_2002", event = EventType.EVENT_QUEST_FINISH, source = "7166204", condition = "", action = "action_EVENT_QUEST_FINISH_2002", trigger_count = 0 },
	{ config_id = 1002003, name = "QUEST_FINISH_2003", event = EventType.EVENT_QUEST_FINISH, source = "7166208", condition = "", action = "action_EVENT_QUEST_FINISH_2003", trigger_count = 0 },
	{ config_id = 1002006, name = "ANY_GADGET_DIE_2006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2006", action = "action_EVENT_ANY_GADGET_DIE_2006", trigger_count = 0 },
	{ config_id = 1002012, name = "QUEST_FINISH_2012", event = EventType.EVENT_QUEST_FINISH, source = "7166207", condition = "", action = "action_EVENT_QUEST_FINISH_2012" },
	{ config_id = 1002034, name = "QUEST_FINISH_2034", event = EventType.EVENT_QUEST_FINISH, source = "7166209", condition = "", action = "action_EVENT_QUEST_FINISH_2034", trigger_count = 0 },
	{ config_id = 1002036, name = "GADGET_CREATE_2036", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2036", action = "action_EVENT_GADGET_CREATE_2036" },
	{ config_id = 1002037, name = "ENTER_REGION_2037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1002048, name = "ENTER_REGION_2048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1002049, name = "QUEST_START_2049", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 2046, pos = { x = -74.551, y = 0.411, z = -0.988 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 2047, pos = { x = 36.855, y = 0.121, z = -0.064 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	-- 任务状态起始传送点
	{ config_id = 2051, pos = { x = -75.413, y = 0.000, z = 0.050 }, rot = { x = 0.000, y = 90.000, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "guide_quest_finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2004, gadget_id = 70350345, pos = { x = -73.945, y = 1.000, z = 17.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2008, gadget_id = 70350345, pos = { x = -73.955, y = 1.000, z = 15.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2033, gadget_id = 70360002, pos = { x = 65.238, y = 10.000, z = 17.485 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 2038, gadget_id = 70350345, pos = { x = -73.968, y = 1.000, z = 12.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2039, gadget_id = 70350345, pos = { x = -71.910, y = 1.000, z = 13.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2040, gadget_id = 70350345, pos = { x = -71.981, y = 1.000, z = 15.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2041, gadget_id = 70350345, pos = { x = -71.981, y = 1.000, z = -12.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2042, gadget_id = 70350345, pos = { x = -73.968, y = 1.000, z = -14.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2043, gadget_id = 70350345, pos = { x = -71.910, y = 1.000, z = -14.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2044, gadget_id = 70350345, pos = { x = -73.945, y = 1.000, z = -16.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2045, gadget_id = 70350345, pos = { x = -73.955, y = 1.000, z = -12.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 2001, 2007, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2035 },
		regions = { 2037, 2048, 2052, 2053 },
		triggers = { "QUEST_FINISH_2002", "QUEST_FINISH_2003", "ANY_GADGET_DIE_2006", "QUEST_FINISH_2034", "GADGET_CREATE_2036", "ENTER_REGION_2037", "ENTER_REGION_2048" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 2011 },
		regions = { },
		triggers = { "QUEST_FINISH_2012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 临时suite,
		monsters = { },
		gadgets = { 2013, 2014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 2015 },
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
function action_EVENT_QUEST_FINISH_2002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 245058002, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245058002, EntityType.GADGET, 2007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245058002, EntityType.GADGET, 2005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2006(context, evt)
	if 2005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2006(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 245058002, 4)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2450580022") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245058002, EntityType.GADGET, 2009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245058002, EntityType.GADGET, 2010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 245058002, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 245058002, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245058002, EntityType.GADGET, 2011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2034(context, evt)
	-- 创建id为2005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2036(context, evt)
	if 2015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2036(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245058002, EntityType.GADGET, 2035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_5/UGCDungeon"