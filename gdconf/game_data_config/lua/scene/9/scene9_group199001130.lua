-- 基础信息
local base_info = {
	group_id = 199001130
}

-- DEFS_MISCS
local defs = 
{
	        lines=
        {
                [130030] = 130001,
                [130029] = 130002,
                [130003] = 130022,
        },
	--玩法完成时 这个gadget如果为GearStop则会被设为Default
        	finish_gadget = 130010,
	--起点格configid
	starter = 130006,
	--终点格configid
	ender = 130026,
	--矩阵 用于踩格子时判断是否相邻
	matrix = 
	{
	
		{130006,130030,       0,130029,       0,130003,       0,130026},


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
 [130030] = { new_pos = 13 }, 
 [130029] = { new_pos = 15 }, 
 [130003] = { new_pos = 17 }, 
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
	[130001] = { config_id = 130001, gadget_id = 70310349, pos = { x = 186.712, y = 148.491, z = 443.686 }, rot = { x = 326.011, y = 61.490, z = 41.557 }, level = 20, area_id = 402 },
	[130002] = { config_id = 130002, gadget_id = 70310349, pos = { x = 201.790, y = 153.493, z = 448.653 }, rot = { x = 348.888, y = 17.789, z = 347.781 }, level = 20, area_id = 402 },
	[130003] = { config_id = 130003, gadget_id = 70360351, pos = { x = 186.512, y = 155.266, z = 455.859 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, route_id = 900100049, start_route = false, area_id = 402 },
	[130006] = { config_id = 130006, gadget_id = 70360354, pos = { x = 183.587, y = 147.831, z = 445.459 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, area_id = 402 },
	[130010] = { config_id = 130010, gadget_id = 70310171, pos = { x = 201.815, y = 149.152, z = 441.608 }, rot = { x = 4.741, y = 310.145, z = 8.538 }, level = 20, state = GadgetState.GearStop, persistent = true, interact_id = 64, area_id = 402 },
	[130022] = { config_id = 130022, gadget_id = 70310349, pos = { x = 188.149, y = 154.874, z = 453.594 }, rot = { x = 8.857, y = 155.513, z = 356.435 }, level = 20, area_id = 402 },
	-- 隐藏态
	[130026] = { config_id = 130026, gadget_id = 70360355, pos = { x = 196.319, y = 148.630, z = 439.268 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, area_id = 402 },
	[130029] = { config_id = 130029, gadget_id = 70360351, pos = { x = 201.790, y = 153.493, z = 448.653 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, route_id = 900100048, start_route = false, area_id = 402 },
	[130030] = { config_id = 130030, gadget_id = 70360351, pos = { x = 185.405, y = 148.157, z = 443.086 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, route_id = 900100047, start_route = false, area_id = 402 }
}

-- 区域
regions = {
	-- 玩法限定区域
	[130028] = { config_id = 130028, shape = RegionShape.SPHERE, radius = 20, pos = { x = 194.267, y = 147.550, z = 452.840 }, area_id = 402 }
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
		{ config_id = 130017, gadget_id = 70360351, pos = { x = 199.431, y = 153.383, z = 446.832 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, area_id = 402 },
		{ config_id = 130018, gadget_id = 70360351, pos = { x = 188.919, y = 155.378, z = 457.718 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, area_id = 402 },
		{ config_id = 130035, gadget_id = 70360351, pos = { x = 194.509, y = 148.406, z = 441.626 }, rot = { x = 2.100, y = 232.324, z = 353.769 }, level = 20, area_id = 402 }
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
		gadgets = { 130010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 130001, 130002, 130003, 130006, 130022, 130026, 130029, 130030 },
		regions = { 130028 },
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