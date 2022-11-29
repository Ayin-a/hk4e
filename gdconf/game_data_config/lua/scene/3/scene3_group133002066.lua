-- 基础信息
local base_info = {
	group_id = 133002066
}

-- DEFS_MISCS
local defs = {
	--战斗开始加载suit（空气墙等）
	add_onStart = {2},
	--开启流程的操作台configID
	gadget_starter = 66007,
	--领奖台configID
	gadget_reward = 66003,
	--Boss的ConfigID
	boss_id = 66005,
                --暖源的IDlist
                heat_id = {66009,66010,66011},

	--点位configID
	point_list = {66012,66013,66014},
	--招怪池
	monster_list = {66025,66026,66027,66028,66029},
	--招gadget池-召唤
	summoner_list = {66022,66023,66024},
	--招gadget池-射击
	shooter_list = {66019,66020,66021}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[66005] = { config_id = 66005, monster_id = 26010103, pos = { x = 1083.751, y = 285.861, z = -437.474 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 3, drop_id = 1000100, title_id = 10064, special_name_id = 10089, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[66025] = { config_id = 66025, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[66026] = { config_id = 66026, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[66027] = { config_id = 66027, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[66028] = { config_id = 66028, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[66029] = { config_id = 66029, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[66003] = { config_id = 66003, gadget_id = 70360150, pos = { x = 1109.174, y = 285.861, z = -434.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[66006] = { config_id = 66006, gadget_id = 70270004, pos = { x = 1083.751, y = 285.861, z = -437.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[66007] = { config_id = 66007, gadget_id = 70360313, pos = { x = 1087.654, y = 285.861, z = -437.536 }, rot = { x = 0.000, y = 88.569, z = 0.000 }, level = 1, area_id = 10 },
	[66009] = { config_id = 66009, gadget_id = 70310017, pos = { x = 1095.416, y = 285.861, z = -455.682 }, rot = { x = 0.000, y = 324.416, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[66010] = { config_id = 66010, gadget_id = 70310017, pos = { x = 1091.100, y = 285.861, z = -418.353 }, rot = { x = 0.000, y = 203.264, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[66011] = { config_id = 66011, gadget_id = 70310017, pos = { x = 1061.688, y = 285.861, z = -439.474 }, rot = { x = 0.000, y = 351.061, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[66012] = { config_id = 66012, gadget_id = 70350356, pos = { x = 1064.778, y = 285.861, z = -439.108 }, rot = { x = 0.000, y = 83.127, z = 0.000 }, level = 1, mark_flag = 1, area_id = 10 },
	[66013] = { config_id = 66013, gadget_id = 70350356, pos = { x = 1093.320, y = 285.861, z = -452.760 }, rot = { x = 0.000, y = 325.543, z = 0.000 }, level = 1, mark_flag = 2, area_id = 10 },
	[66014] = { config_id = 66014, gadget_id = 70350356, pos = { x = 1089.721, y = 285.861, z = -421.676 }, rot = { x = 0.000, y = 200.602, z = 0.000 }, level = 1, mark_flag = 3, area_id = 10 },
	[66015] = { config_id = 66015, gadget_id = 70300203, pos = { x = 1113.028, y = 286.787, z = -436.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[66016] = { config_id = 66016, gadget_id = 70360001, pos = { x = 1113.028, y = 286.787, z = -436.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true, area_id = 10 },
	-- 召唤池-候场物件-射击
	[66019] = { config_id = 66019, gadget_id = 42601027, pos = { x = 1054.903, y = 285.885, z = -452.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-射击
	[66020] = { config_id = 66020, gadget_id = 42601027, pos = { x = 1054.903, y = 285.885, z = -452.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-射击
	[66021] = { config_id = 66021, gadget_id = 42601027, pos = { x = 1054.903, y = 285.885, z = -452.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-招怪
	[66022] = { config_id = 66022, gadget_id = 42601028, pos = { x = 1056.614, y = 286.098, z = -455.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-招怪
	[66023] = { config_id = 66023, gadget_id = 42601028, pos = { x = 1056.614, y = 286.098, z = -455.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-招怪
	[66024] = { config_id = 66024, gadget_id = 42601028, pos = { x = 1056.614, y = 286.098, z = -455.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- EyePoint性能优化圈-内圈，勿改ID
	[66004] = { config_id = 66004, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1083.751, y = 285.861, z = -437.474 }, area_id = 10 },
	-- EyePoint性能优化圈-外圈，勿改ID
	[66008] = { config_id = 66008, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1081.058, y = 286.534, z = -439.285 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1066017, name = "GADGET_CREATE_66017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66017", action = "action_EVENT_GADGET_CREATE_66017", trigger_count = 0 },
	{ config_id = 1066018, name = "SELECT_OPTION_66018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66018", action = "action_EVENT_SELECT_OPTION_66018", trigger_count = 0, forbid_guest = false }
}

-- 点位
points = {
	-- ScenePlay出生点
	{ config_id = 66001, pos = { x = 1105.132, y = 285.933, z = -436.175 }, rot = { x = 0.000, y = 262.219, z = 0.000 }, area_id = 10 },
	-- ScenePlay复活点
	{ config_id = 66002, pos = { x = 1105.495, y = 285.861, z = -436.287 }, rot = { x = 0.000, y = 262.219, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 66005, 66019, 66020, 66021, 66022, 66023, 66024 }
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
		gadgets = { 66003, 66007, 66009, 66010, 66011, 66012, 66013, 66014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 66005 },
		gadgets = { 66006, 66015, 66016 },
		regions = { },
		triggers = { "GADGET_CREATE_66017", "SELECT_OPTION_66018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_66017(context, evt)
	if 66016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002066, 66016, {2905}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66018(context, evt)
	-- 判断是gadgetid 66016 option_id 2905
	if 66016 ~= evt.param1 then
		return false	
	end
	
	if 2905 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66018(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=1097.705, y= 285.8612, z=-438.728}, radius = 2, rot = {x=0, y=269.461, z=0}}) 
	
	return 0
end

require "V2_3/WinterCampMimik"
require "V2_3/WinterCampMimik_Watcher"