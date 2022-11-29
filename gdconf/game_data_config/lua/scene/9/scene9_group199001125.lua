-- 基础信息
local base_info = {
	group_id = 199001125
}

-- DEFS_MISCS
local defs = 
{

	        lines=
        {
                [125009] = 125022,
                [125023] = 125035,
        },
	--玩法完成时 这个gadget如果为GearStop则会被设为Default
        	finish_gadget = 125010,
	--起点格configid
	starter = 125006,
	--终点格configid
	ender = 125026,
	--矩阵 用于踩格子时判断是否相邻
	matrix = 
	{
	
		{       0,125033,125034,       0,       0,       0},

		{       0,125021,125001,125031,       0,       0},

		{125023,125020,125032,125030,       0,       0},

		{       0,       0,       0,       0,       0,       0},

		{       0,       0,       0,       0,125029,125009},
		{       0,       0,       0,125003,125004,       0},

		{125026,       0,       0,125006,       0,       0},


	},	
	--每个还原格控制哪些离散格
	reveal_tiles=
	{
		[125001] = {125008,125007,125019,125011},

	},
	--离散格拼入哪个位置，拼入位置需要布设普通格，初始状态为903
	reveal_match=
	{
		[125008] = 125020,
		[125007] = 125021,
		[125019] = 125033,
		[125011] = 125034,

	}
,
       	        --移动格的目标位置
        movable_pos = 
        {--[移动格子configID] = new_pos: 两位数字的矩阵坐标，x是十位，y是个位
		 [125009] = { new_pos = 25 }, 
		 [125023] = { new_pos = 61 }, 
        }
	
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
	[125001] = { config_id = 125001, gadget_id = 70360352, pos = { x = 149.439, y = 205.719, z = 331.706 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, area_id = 402 },
	[125003] = { config_id = 125003, gadget_id = 70360350, pos = { x = 160.125, y = 201.684, z = 336.719 }, rot = { x = 3.789, y = 8.445, z = 359.531 }, level = 20, area_id = 402 },
	-- 还原格
	[125004] = { config_id = 125004, gadget_id = 70360350, pos = { x = 160.492, y = 201.486, z = 339.702 }, rot = { x = 3.789, y = 8.445, z = 359.531 }, level = 20, area_id = 402 },
	[125006] = { config_id = 125006, gadget_id = 70360354, pos = { x = 163.078, y = 201.660, z = 336.279 }, rot = { x = 3.789, y = 8.445, z = 359.531 }, level = 20, area_id = 402 },
	[125007] = { config_id = 125007, gadget_id = 70360353, pos = { x = 148.102, y = 209.803, z = 325.339 }, rot = { x = 359.944, y = 276.887, z = 100.692 }, level = 20, area_id = 402 },
	[125008] = { config_id = 125008, gadget_id = 70360353, pos = { x = 145.072, y = 210.700, z = 336.169 }, rot = { x = 318.876, y = 316.231, z = 348.034 }, level = 20, area_id = 402 },
	-- route
	[125009] = { config_id = 125009, gadget_id = 70360351, pos = { x = 158.078, y = 201.314, z = 343.056 }, rot = { x = 3.789, y = 8.445, z = 359.531 }, level = 20, route_id = 900100120, start_route = false, area_id = 402 },
	[125010] = { config_id = 125010, gadget_id = 70310171, pos = { x = 173.160, y = 201.480, z = 333.576 }, rot = { x = 0.000, y = 280.792, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, interact_id = 64, area_id = 402 },
	[125011] = { config_id = 125011, gadget_id = 70360353, pos = { x = 143.391, y = 213.423, z = 331.123 }, rot = { x = 357.446, y = 276.503, z = 173.503 }, level = 20, area_id = 402 },
	[125019] = { config_id = 125019, gadget_id = 70360353, pos = { x = 139.086, y = 212.989, z = 324.086 }, rot = { x = 17.678, y = 249.131, z = 35.163 }, level = 20, area_id = 402 },
	-- 隐藏态
	[125020] = { config_id = 125020, gadget_id = 70360350, pos = { x = 152.050, y = 205.737, z = 328.432 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, state = GadgetState.Action03, area_id = 402 },
	-- 隐藏态
	[125021] = { config_id = 125021, gadget_id = 70360350, pos = { x = 149.062, y = 205.736, z = 328.777 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, state = GadgetState.Action03, area_id = 402 },
	[125022] = { config_id = 125022, gadget_id = 70310349, pos = { x = 158.078, y = 201.314, z = 343.056 }, rot = { x = 328.681, y = 225.208, z = 7.956 }, level = 20, area_id = 402 },
	-- route
	[125023] = { config_id = 125023, gadget_id = 70360351, pos = { x = 151.710, y = 205.753, z = 325.482 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, route_id = 900100121, start_route = false, area_id = 402 },
	[125026] = { config_id = 125026, gadget_id = 70360355, pos = { x = 165.427, y = 201.722, z = 330.968 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, area_id = 402 },
	[125029] = { config_id = 125029, gadget_id = 70360350, pos = { x = 157.569, y = 201.510, z = 340.137 }, rot = { x = 3.789, y = 8.445, z = 359.531 }, level = 20, area_id = 402 },
	[125030] = { config_id = 125030, gadget_id = 70360350, pos = { x = 152.759, y = 205.705, z = 334.388 }, rot = { x = 0.317, y = 6.587, z = 357.411 }, level = 20, area_id = 402 },
	[125031] = { config_id = 125031, gadget_id = 70360350, pos = { x = 149.784, y = 205.703, z = 334.699 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, area_id = 402 },
	[125032] = { config_id = 125032, gadget_id = 70360350, pos = { x = 152.394, y = 205.720, z = 331.404 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, area_id = 402 },
	-- 隐藏态
	[125033] = { config_id = 125033, gadget_id = 70360350, pos = { x = 146.087, y = 205.691, z = 329.229 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, state = GadgetState.Action03, area_id = 402 },
	-- 隐藏态
	[125034] = { config_id = 125034, gadget_id = 70360350, pos = { x = 146.472, y = 205.718, z = 332.048 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, state = GadgetState.Action03, area_id = 402 },
	[125035] = { config_id = 125035, gadget_id = 70310349, pos = { x = 153.652, y = 204.513, z = 325.387 }, rot = { x = 12.557, y = 76.694, z = 355.829 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	-- 玩法限定区域
	[125028] = { config_id = 125028, shape = RegionShape.SPHERE, radius = 20, pos = { x = 149.969, y = 201.510, z = 333.644 }, area_id = 402 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 125002, gadget_id = 70360356, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, state = GadgetState.Action03, area_id = 402 },
		{ config_id = 125005, gadget_id = 70360352, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, area_id = 402 },
		{ config_id = 125012, gadget_id = 70360350, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, area_id = 402 },
		{ config_id = 125013, gadget_id = 70360356, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, state = GadgetState.Action03, area_id = 402 },
		{ config_id = 125014, gadget_id = 70360350, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, area_id = 402 },
		{ config_id = 125015, gadget_id = 70360350, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, area_id = 402 },
		{ config_id = 125016, gadget_id = 70360352, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, area_id = 402 },
		{ config_id = 125017, gadget_id = 70360351, pos = { x = 150.138, y = 205.602, z = 337.678 }, rot = { x = 0.317, y = 6.587, z = 346.783 }, level = 20, area_id = 402 },
		{ config_id = 125018, gadget_id = 70360351, pos = { x = 165.084, y = 201.738, z = 327.995 }, rot = { x = 0.317, y = 6.587, z = 0.017 }, level = 20, area_id = 402 },
		{ config_id = 125024, gadget_id = 70360356, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, state = GadgetState.Action03, area_id = 402 },
		{ config_id = 125025, gadget_id = 70360356, pos = { x = 162.576, y = 198.123, z = 352.919 }, rot = { x = 4.126, y = 299.183, z = 357.225 }, level = 20, state = GadgetState.Action03, area_id = 402 }
	},
	triggers = {
		{ config_id = 1125027, name = "GADGET_STATE_CHANGE_125027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125027", action = "action_EVENT_GADGET_STATE_CHANGE_125027", trigger_count = 0 }
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
		gadgets = { 125010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 125001, 125003, 125004, 125006, 125007, 125008, 125009, 125011, 125019, 125020, 125021, 125022, 125023, 125026, 125029, 125030, 125031, 125032, 125033, 125034, 125035 },
		regions = { 125028 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_8/DrawOneLine_Dreamland"