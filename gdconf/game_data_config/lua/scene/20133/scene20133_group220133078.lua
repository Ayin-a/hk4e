-- 基础信息
local base_info = {
	group_id = 220133078
}

-- DEFS_MISCS
local defs = 
{
	--玩法完成时 这个gadget如果为GearStop则会被设为Default
        	finish_gadget = 78010,
	--起点格configid
	starter = 78006,
	--终点格configid
	ender = 78026,
	--矩阵 用于踩格子时判断是否相邻
	matrix = 
	{
	
		{       0,78026,       0,       0,       0,       0,       0,       0,       0},

		{78030,78031,       0,       0,       0,       0,       0,       0,       0},

		{78029,78003,       0,       0,       0,       0,       0,       0,       0},

		{       0,78006,       0,       0,       0,       0,       0,       0,       0},


	},	
	--每个还原格控制哪些离散格
	reveal_tiles=
	{
		

	},
	--离散格拼入哪个位置，拼入位置需要布设普通格，初始状态为903
	reveal_match=
	{
		

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
}

-- 区域
regions = {
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
		{ config_id = 78001, gadget_id = 70360350, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78002, gadget_id = 70360356, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, state = GadgetState.Action03 },
		{ config_id = 78003, gadget_id = 70360350, pos = { x = 2512.672, y = 555.921, z = -1706.102 }, rot = { x = 2.662, y = 103.477, z = 324.403 }, level = 20 },
		{ config_id = 78004, gadget_id = 70360350, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78005, gadget_id = 70360352, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78006, gadget_id = 70360354, pos = { x = 2512.029, y = 554.184, z = -1708.443 }, rot = { x = 2.662, y = 103.477, z = 324.403 }, level = 20 },
		{ config_id = 78007, gadget_id = 70360353, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78008, gadget_id = 70360353, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78009, gadget_id = 70360351, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, start_route = false, is_use_point_array = true },
		{ config_id = 78010, gadget_id = 70310171, pos = { x = 2524.266, y = 552.789, z = -1717.500 }, rot = { x = 0.000, y = 221.654, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, interact_id = 64 },
		{ config_id = 78011, gadget_id = 70360353, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78012, gadget_id = 70360350, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78013, gadget_id = 70360356, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, state = GadgetState.Action03 },
		{ config_id = 78014, gadget_id = 70360350, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78015, gadget_id = 70360350, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78016, gadget_id = 70360352, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78017, gadget_id = 70360351, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78018, gadget_id = 70360351, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78019, gadget_id = 70360353, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78020, gadget_id = 70360356, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, state = GadgetState.Action03 },
		{ config_id = 78021, gadget_id = 70360356, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, state = GadgetState.Action03 },
		{ config_id = 78022, gadget_id = 70220084, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20 },
		{ config_id = 78023, gadget_id = 70360351, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, is_use_point_array = true },
		{ config_id = 78024, gadget_id = 70360356, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, state = GadgetState.Action03 },
		{ config_id = 78025, gadget_id = 70360356, pos = { x = 2529.634, y = 549.559, z = -1724.073 }, rot = { x = 0.000, y = 272.645, z = 0.000 }, level = 20, state = GadgetState.Action03 },
		{ config_id = 78026, gadget_id = 70360355, pos = { x = 2513.950, y = 559.364, z = -1701.456 }, rot = { x = 2.662, y = 103.477, z = 324.403 }, level = 20 },
		{ config_id = 78029, gadget_id = 70360350, pos = { x = 2509.774, y = 556.059, z = -1705.407 }, rot = { x = 2.662, y = 103.477, z = 324.403 }, level = 20 },
		{ config_id = 78030, gadget_id = 70360350, pos = { x = 2510.420, y = 557.800, z = -1703.059 }, rot = { x = 2.662, y = 103.477, z = 324.403 }, level = 20 },
		{ config_id = 78031, gadget_id = 70360350, pos = { x = 2513.329, y = 557.661, z = -1703.756 }, rot = { x = 2.662, y = 103.477, z = 324.403 }, level = 20 }
	},
	regions = {
		{ config_id = 78028, shape = RegionShape.SPHERE, radius = 23, pos = { x = 2528.651, y = 552.039, z = -1743.187 } }
	},
	triggers = {
		{ config_id = 1078027, name = "GADGET_STATE_CHANGE_78027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78027", action = "action_EVENT_GADGET_STATE_CHANGE_78027", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================