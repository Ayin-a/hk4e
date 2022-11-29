-- 基础信息
local base_info = {
	group_id = 242003010
}

-- Trigger变量
local defs = {
	group_id = 242003010,
	gear_group_id = 242003007,
	route_guide_timer = 5,
	init_building_points = 950,
	speed_down_gadget = 10041,
	max_escapable_monsters = 25
}

-- DEFS_MISCS
trap_group={242003006} 

tide_group_defs ={
        [1] = {group = 242003011, delay = 60, next_group = 2, buff = {1,2,3},guide_routes={1,2},enter={10001},exit={10002,10006},enter_id={14},exit_id={16,17}},
        [2] = {group = 242003012, delay = 60, next_group = 3, buff = {1,2,3},guide_routes={3,4},enter={10003},exit={10002,10006},enter_id={15},exit_id={16,17}},
        [3] = {group = 242003013, delay = 60, next_group = 4, buff = {1,2,3},guide_routes={1,2,3,4},enter={10001,10003},exit={10002,10006},enter_id={14,15},exit_id={16,17}},
        [4] = {group = 242003014, delay = 60, next_group = 5, buff = {1,2,3},guide_routes={1,2,3,4},enter={10001,10003},exit={10002,10006},enter_id={14,15},exit_id={16,17}},
        [5] = {group = 242003017, delay = 60, next_group = 0, buff = {1,2,3},guide_routes={1,2,3,4},enter={10001,10003},exit={10002,10006},enter_id={14,15},exit_id={16,17}},
}

routes_start_point={
	[1]={start_point={x=144.6398,y=7.2,z=-53},points={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49}},
	[2]={start_point={x=143,y=7,z=-47},points={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46}},
	[3]={start_point={x=50.22281,y=-4.254902,z=-51},points={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59}},
	[4]={start_point={x=50.22281,y=-4.254902,z=-51},points={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61}}
}

guide_point_pool={10008,10009,10010,10011,10012,10013,10014,10015,10016,10017,10018,10019,10020,10021,10022,10023,10024,10025,10026,10027,10028,10029,10030,10031,10032,10033,10034,10035,10036,10037,10038,10039}

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
	[10001] = { config_id = 10001, gadget_id = 70290050, pos = { x = 149.393, y = 10.027, z = -50.540 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[10002] = { config_id = 10002, gadget_id = 70290051, pos = { x = 46.120, y = 12.900, z = -73.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[10003] = { config_id = 10003, gadget_id = 70290050, pos = { x = 44.357, y = -1.717, z = -51.427 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[10006] = { config_id = 10006, gadget_id = 70290051, pos = { x = 46.120, y = 12.900, z = -28.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[10008] = { config_id = 10008, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10009] = { config_id = 10009, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10010] = { config_id = 10010, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10011] = { config_id = 10011, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10012] = { config_id = 10012, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10013] = { config_id = 10013, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10014] = { config_id = 10014, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10015] = { config_id = 10015, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10016] = { config_id = 10016, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10017] = { config_id = 10017, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10018] = { config_id = 10018, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10019] = { config_id = 10019, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10020] = { config_id = 10020, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10021] = { config_id = 10021, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10022] = { config_id = 10022, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10023] = { config_id = 10023, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10024] = { config_id = 10024, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10025] = { config_id = 10025, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10026] = { config_id = 10026, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10027] = { config_id = 10027, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10028] = { config_id = 10028, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10029] = { config_id = 10029, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10030] = { config_id = 10030, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10031] = { config_id = 10031, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10032] = { config_id = 10032, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10033] = { config_id = 10033, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10034] = { config_id = 10034, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10035] = { config_id = 10035, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10036] = { config_id = 10036, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10037] = { config_id = 10037, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10038] = { config_id = 10038, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10039] = { config_id = 10039, gadget_id = 70350159, pos = { x = 148.557, y = 7.152, z = -54.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[10040] = { config_id = 10040, gadget_id = 70350176, pos = { x = 147.133, y = 7.118, z = -50.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10041] = { config_id = 10041, gadget_id = 70350166, pos = { x = 100.564, y = 3.041, z = -50.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10042] = { config_id = 10042, gadget_id = 70350176, pos = { x = 46.271, y = -4.261, z = -51.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10043] = { config_id = 10043, gadget_id = 70350176, pos = { x = 48.503, y = 10.047, z = -27.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10044] = { config_id = 10044, gadget_id = 70350176, pos = { x = 47.949, y = 10.067, z = -73.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10045] = { config_id = 10045, gadget_id = 70350176, pos = { x = 44.390, y = -4.280, z = -46.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10046] = { config_id = 10046, gadget_id = 70350176, pos = { x = 44.390, y = -4.280, z = -52.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10047] = { config_id = 10047, gadget_id = 70350176, pos = { x = 44.390, y = -4.280, z = -55.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[10004] = { config_id = 10004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 49.246, y = 10.044, z = -71.762 } },
	[10007] = { config_id = 10007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 49.246, y = 10.044, z = -27.157 } }
}

-- 触发器
triggers = {
	{ config_id = 1010004, name = "ENTER_REGION_10004", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_10004" },
	{ config_id = 1010007, name = "ENTER_REGION_10007", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_10007" }
}

-- 点位
points = {
	{ config_id = 10005, pos = { x = 105.853, y = 3.177, z = -49.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		gadgets = { 10040, 10041, 10042, 10043, 10044, 10045, 10046, 10047 },
		regions = { 10004, 10007 },
		triggers = { "ENTER_REGION_10004", "ENTER_REGION_10007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_10004(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, evt.param3)
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_10007(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, evt.param3)
	return 0
end

require "TowerDefense_Challenge"