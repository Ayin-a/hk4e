-- 基础信息
local base_info = {
	group_id = 250067002
}

-- DEFS_MISCS
local defs = {

	option_turn = 613,
	option_startstop = 7,

	point_array = 1,
	--运输装置config_id
	carrier_list = {2001},
	switcher_control = 
	{--[操作台configID] = {被控岔路装置1, 被控岔路装置2},
		[2015] = {2002,2013},
		[2016] = {2004,2010},
	},

	--几条路 注意是point_list有向的 倒数第二个点为岔路判定点
	way_info = 
	{
		--key为路径几 顺序无所谓
		[1] = 
		{
			point_list = {18,1},

			spawn_point = 0,

			gear_id = 2004, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 0,
				[201] = 0,
				[202] = 0,
				[203] = 4,
			}, 
		},
		[3] = 
		{
			point_list = {12,16,17},

			spawn_point = 0,

			gear_id = 0, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 0,
				[201] = 0,
				[202] = 0,
				[203] = 0,
			}, 
		},
		[4] = 
		{
			point_list = {2,15,14,13},

			spawn_point = 0,

			gear_id = 2002, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 5,
				[201] = 3,
				[202] = 0,
				[203] = 0,
			}, 
		},
		[5] = 
		{
			point_list = {12,11,10},

			spawn_point = 0,

			gear_id = 2013, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 6,
				[201] = 0,
				[202] = 0,
				[203] = 0,
			}, 
		},
		[6] = 
		{
			point_list = {9,8,7,6},

			spawn_point = 0,

			gear_id = 2010, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 7,
				[201] = 0,
				[202] = 0,
				[203] = 0,
			}, 
		},
         [7] = 
		{
			point_list = {5,4,3},

			spawn_point = 0,

			gear_id = 2004, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 4,
				[201] = 0,
				[202] = 0,
				[203] = 0,
			}, 
		},

	},

	--停车点 到此点时会判断是否需要停车
	stop_points = 
	{
		7, 14
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
	[2001] = { config_id = 2001, gadget_id = 70320028, pos = { x = -63.705, y = 4.107, z = -33.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- 右转1
	[2002] = { config_id = 2002, gadget_id = 70320027, pos = { x = -47.291, y = 0.494, z = -22.006 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[2003] = { config_id = 2003, gadget_id = 70310313, pos = { x = -47.180, y = 0.500, z = -28.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 左转1
	[2004] = { config_id = 2004, gadget_id = 70320027, pos = { x = -47.238, y = 0.499, z = -33.816 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[2005] = { config_id = 2005, gadget_id = 70320027, pos = { x = -54.898, y = 0.499, z = -22.037 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[2006] = { config_id = 2006, gadget_id = 70310313, pos = { x = -54.981, y = 0.500, z = -18.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2007] = { config_id = 2007, gadget_id = 70310313, pos = { x = -51.048, y = 0.500, z = -21.999 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[2008] = { config_id = 2008, gadget_id = 70310313, pos = { x = -50.997, y = 0.500, z = -33.904 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[2009] = { config_id = 2009, gadget_id = 70310313, pos = { x = -31.909, y = 0.500, z = -30.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 左转2
	[2010] = { config_id = 2010, gadget_id = 70320027, pos = { x = -31.959, y = 0.499, z = -33.816 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[2011] = { config_id = 2011, gadget_id = 70310313, pos = { x = -39.566, y = 0.500, z = -22.036 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[2012] = { config_id = 2012, gadget_id = 70310313, pos = { x = -35.718, y = 0.500, z = -33.904 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 右转2
	[2013] = { config_id = 2013, gadget_id = 70320027, pos = { x = -32.027, y = 0.494, z = -22.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2014] = { config_id = 2014, gadget_id = 70310313, pos = { x = -42.510, y = 0.500, z = -33.904 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 右边
	[2015] = { config_id = 2015, gadget_id = 70360002, pos = { x = -39.466, y = 0.500, z = -25.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 7, 613 } } },
	-- 左边
	[2016] = { config_id = 2016, gadget_id = 70360002, pos = { x = -39.451, y = 0.500, z = -30.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613, 7 } } },
	[2019] = { config_id = 2019, gadget_id = 70310001, pos = { x = -25.391, y = 0.500, z = -16.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002017, name = "PLATFORM_ARRIVAL_2017", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_2017", action = "action_EVENT_PLATFORM_ARRIVAL_2017", trigger_count = 0 },
	{ config_id = 1002018, name = "GADGET_CREATE_2018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2018", action = "action_EVENT_GADGET_CREATE_2018", trigger_count = 0 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2019 },
		regions = { },
		triggers = { "PLATFORM_ARRIVAL_2017", "GADGET_CREATE_2018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_2017(context, evt)
	-- 判断是gadgetid 为 2001的移动平台，是否到达了1 的点集中的 17 点
	
	if 2001 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_2017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为2001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2018(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2018(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V3_2/MachineCarrier"