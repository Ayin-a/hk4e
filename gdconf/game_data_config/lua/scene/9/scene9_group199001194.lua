-- 基础信息
local base_info = {
	group_id = 199001194
}

-- DEFS_MISCS
local defs = 
{
		guide_region = 194003,
	--玩法完成时 这个gadget如果为GearStop则会被设为Default
        	finish_gadget = 194010,
	--起点格configid
	starter = 194006,
	--终点格configid
	ender = 194026,
	--矩阵 用于踩格子时判断是否相邻
	matrix = 
	{
	
		{194031,194033,194026},

		{194029,194005,194002},

		{194030,194006,       0},


	},	
	--每个还原格控制哪些离散格
	reveal_tiles=
	{
		[194005] = {194007},

	},
	--离散格拼入哪个位置，拼入位置需要布设普通格，初始状态为903
	reveal_match=
	{
		[194007] = 194002,

	}
,
       	        --移动格的目标位置
        movable_pos = 
        {--[移动格子configID] = new_pos: 两位数字的矩阵坐标，x是十位，y是个位

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
	-- 隐藏态
	[194002] = { config_id = 194002, gadget_id = 70360356, pos = { x = 152.396, y = 121.487, z = 380.602 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, state = GadgetState.Action03, area_id = 402 },
	[194005] = { config_id = 194005, gadget_id = 70360352, pos = { x = 155.398, y = 121.433, z = 380.658 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, area_id = 402 },
	[194006] = { config_id = 194006, gadget_id = 70360354, pos = { x = 155.347, y = 120.983, z = 383.544 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, area_id = 402 },
	[194007] = { config_id = 194007, gadget_id = 70360353, pos = { x = 149.911, y = 123.284, z = 382.505 }, rot = { x = 324.959, y = 331.865, z = 333.516 }, level = 20, area_id = 402 },
	[194010] = { config_id = 194010, gadget_id = 70310171, pos = { x = 154.188, y = 120.164, z = 390.714 }, rot = { x = 351.550, y = 79.281, z = 0.208 }, level = 20, state = GadgetState.GearStop, persistent = true, interact_id = 64, area_id = 402 },
	[194026] = { config_id = 194026, gadget_id = 70360355, pos = { x = 152.536, y = 121.990, z = 377.658 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, area_id = 402 },
	[194029] = { config_id = 194029, gadget_id = 70360350, pos = { x = 158.414, y = 121.433, z = 380.658 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, area_id = 402 },
	[194030] = { config_id = 194030, gadget_id = 70360350, pos = { x = 158.351, y = 120.934, z = 383.570 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, area_id = 402 },
	[194031] = { config_id = 194031, gadget_id = 70360350, pos = { x = 158.479, y = 121.936, z = 377.724 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, area_id = 402 },
	[194033] = { config_id = 194033, gadget_id = 70360350, pos = { x = 155.462, y = 121.936, z = 377.724 }, rot = { x = 358.966, y = 268.923, z = 350.274 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	[194003] = { config_id = 194003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 155.288, y = 121.146, z = 383.746 }, area_id = 402 },
	-- 玩法限定区域
	[194028] = { config_id = 194028, shape = RegionShape.SPHERE, radius = 23, pos = { x = 139.837, y = 119.327, z = 376.270 }, area_id = 402 }
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
		{ config_id = 194001, gadget_id = 70360350, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194004, gadget_id = 70360350, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194008, gadget_id = 70360353, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194009, gadget_id = 70360351, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, start_route = false, is_use_point_array = true, area_id = 402 },
		{ config_id = 194011, gadget_id = 70360353, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194012, gadget_id = 70360350, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194013, gadget_id = 70360356, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, state = GadgetState.Action03, area_id = 402 },
		{ config_id = 194014, gadget_id = 70360350, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194015, gadget_id = 70360350, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194016, gadget_id = 70360352, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194017, gadget_id = 70360351, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194018, gadget_id = 70360351, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194019, gadget_id = 70360353, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194020, gadget_id = 70360356, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, state = GadgetState.Action03, area_id = 402 },
		{ config_id = 194021, gadget_id = 70360356, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, state = GadgetState.Action03, area_id = 402 },
		{ config_id = 194022, gadget_id = 70220084, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 194023, gadget_id = 70360351, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 402 },
		{ config_id = 194024, gadget_id = 70360356, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, state = GadgetState.Action03, area_id = 402 },
		{ config_id = 194025, gadget_id = 70360356, pos = { x = 139.486, y = 116.848, z = 378.279 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 20, state = GadgetState.Action03, area_id = 402 }
	},
	triggers = {
		{ config_id = 1194027, name = "GADGET_STATE_CHANGE_194027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194027", action = "action_EVENT_GADGET_STATE_CHANGE_194027", trigger_count = 0 }
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
		gadgets = { 194010 },
		regions = { 194003 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 194002, 194005, 194006, 194007, 194026, 194029, 194030, 194031, 194033 },
		regions = { 194028 },
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