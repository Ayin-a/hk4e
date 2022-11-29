-- 基础信息
local base_info = {
	group_id = 133002108
}

-- DEFS_MISCS
local defs = {
	--战斗开始加载suit（空气墙等）
	add_onStart = {2},
	--开启流程的操作台configID
	boss_id = 108001,
                --暖源的IDlist
                heat_id = {108011,108012,108013},

	--点位configID
	point_list = {108014,108015,108030},
	--招怪池
	monster_list = {108002,108003,108004,108005,108006},
	--招gadget池-召唤
	summoner_list = {108021,108022,108023},
	--招gadget池-射击
	shooter_list = {108018,108019,108020}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[108001] = { config_id = 108001, monster_id = 26010104, pos = { x = 1083.751, y = 285.861, z = -437.474 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 5130 }, pose_id = 2, title_id = 10064, special_name_id = 10090, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[108002] = { config_id = 108002, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[108003] = { config_id = 108003, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[108004] = { config_id = 108004, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[108005] = { config_id = 108005, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	-- 召唤池-候场怪物
	[108006] = { config_id = 108006, monster_id = 20010901, pos = { x = 1058.139, y = 286.236, z = -457.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[108008] = { config_id = 108008, gadget_id = 70270004, pos = { x = 1083.751, y = 285.861, z = -437.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[108009] = { config_id = 108009, gadget_id = 70360150, pos = { x = 1109.174, y = 285.861, z = -434.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[108010] = { config_id = 108010, gadget_id = 70360313, pos = { x = 1087.654, y = 285.861, z = -437.536 }, rot = { x = 0.000, y = 88.569, z = 0.000 }, level = 1, area_id = 10 },
	[108011] = { config_id = 108011, gadget_id = 70310017, pos = { x = 1095.416, y = 285.861, z = -455.682 }, rot = { x = 0.000, y = 324.416, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[108012] = { config_id = 108012, gadget_id = 70310017, pos = { x = 1091.100, y = 285.861, z = -418.353 }, rot = { x = 0.000, y = 203.264, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[108013] = { config_id = 108013, gadget_id = 70310017, pos = { x = 1061.688, y = 285.861, z = -439.474 }, rot = { x = 0.000, y = 351.061, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[108014] = { config_id = 108014, gadget_id = 70350356, pos = { x = 1064.778, y = 285.861, z = -439.108 }, rot = { x = 0.000, y = 83.127, z = 0.000 }, level = 1, mark_flag = 1, area_id = 10 },
	[108015] = { config_id = 108015, gadget_id = 70350356, pos = { x = 1093.320, y = 285.861, z = -452.760 }, rot = { x = 0.000, y = 325.543, z = 0.000 }, level = 1, mark_flag = 2, area_id = 10 },
	-- 召唤池-候场物件-射击
	[108018] = { config_id = 108018, gadget_id = 42601027, pos = { x = 1054.903, y = 285.885, z = -452.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-射击
	[108019] = { config_id = 108019, gadget_id = 42601027, pos = { x = 1054.903, y = 285.885, z = -452.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-射击
	[108020] = { config_id = 108020, gadget_id = 42601027, pos = { x = 1054.903, y = 285.885, z = -452.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-招怪
	[108021] = { config_id = 108021, gadget_id = 42601028, pos = { x = 1056.614, y = 286.098, z = -455.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-招怪
	[108022] = { config_id = 108022, gadget_id = 42601028, pos = { x = 1056.614, y = 286.098, z = -455.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 召唤池-候场物件-招怪
	[108023] = { config_id = 108023, gadget_id = 42601028, pos = { x = 1056.614, y = 286.098, z = -455.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[108030] = { config_id = 108030, gadget_id = 70350356, pos = { x = 1089.721, y = 285.861, z = -421.676 }, rot = { x = 0.000, y = 200.602, z = 0.000 }, level = 1, mark_flag = 3, area_id = 10 }
}

-- 区域
regions = {
	-- EyePoint性能优化圈-内圈，勿改ID
	[108024] = { config_id = 108024, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1081.058, y = 286.534, z = -439.285 }, area_id = 10 },
	-- EyePoint性能优化圈-外圈，勿改ID
	[108025] = { config_id = 108025, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1081.058, y = 286.534, z = -439.285 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1108007, name = "ANY_MONSTER_DIE_108007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108007", action = "action_EVENT_ANY_MONSTER_DIE_108007" }
}

-- 点位
points = {
	-- ScenePlay出生点
	{ config_id = 108028, pos = { x = 1105.132, y = 285.933, z = -436.175 }, rot = { x = 0.000, y = 262.219, z = 0.000 }, area_id = 10 },
	-- ScenePlay复活点
	{ config_id = 108029, pos = { x = 1105.495, y = 285.861, z = -436.287 }, rot = { x = 0.000, y = 262.219, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 108001, 108018, 108019, 108020, 108021, 108022, 108023 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		-- description = 不用,
		monsters = { },
		gadgets = { 108009, 108010 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 108001 },
		gadgets = { 108008, 108011, 108012, 108013, 108014, 108015, 108030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108007(context, evt)
	--判断死亡怪物的configid是否为 108001
	if evt.param1 ~= 108001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4002811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_3/WinterCampMimik_Quest"