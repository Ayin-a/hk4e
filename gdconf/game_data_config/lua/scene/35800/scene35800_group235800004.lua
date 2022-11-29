-- 基础信息
local base_info = {
	group_id = 235800004
}

-- DEFS_MISCS
local defs = {
	area_flower_suites = 2,
	static_flower_suites = {3,4,5},
	area_flower_timer = {1,4,8,12,16,20,24,28,32,36,40,44},
	static_flower_timer = {10,25,40},
	flower_group_id = 235800004,
	start_suite = 2,
	sequence_shoot_time_axis = {1,2,3,4,5,6,7,8,9,10}
}

--接花
--接花玩法结束时达到关卡积分目标后奖励的能量值
local WindFlower_Clear_Bonus = 70
--接花玩法结束时未达到关卡积分目标扣除的能量值
local WindFlower_Failed_Deduction = -10

local Catch_Flower_Score = 10
local Bomb_Flower_Deduction = -20
local regionIndex = 4031

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
	[4001] = { config_id = 4001, gadget_id = 70350147, pos = { x = 15.360, y = 19.805, z = -18.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4002] = { config_id = 4002, gadget_id = 70350147, pos = { x = 20.132, y = 19.860, z = -14.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4003] = { config_id = 4003, gadget_id = 70350147, pos = { x = 10.258, y = 19.860, z = -14.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4004] = { config_id = 4004, gadget_id = 70350147, pos = { x = 10.348, y = 19.860, z = -22.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4005] = { config_id = 4005, gadget_id = 70350147, pos = { x = 20.050, y = 19.860, z = -22.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4006] = { config_id = 4006, gadget_id = 70350005, pos = { x = 15.212, y = 19.749, z = -2.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4007] = { config_id = 4007, gadget_id = 70350134, pos = { x = 7.428, y = 19.860, z = -7.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4008] = { config_id = 4008, gadget_id = 70350134, pos = { x = 14.921, y = 19.860, z = -7.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4009] = { config_id = 4009, gadget_id = 70350134, pos = { x = 23.079, y = 19.860, z = -7.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4010] = { config_id = 4010, gadget_id = 70350134, pos = { x = 23.079, y = 19.860, z = -16.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4011] = { config_id = 4011, gadget_id = 70350134, pos = { x = 23.079, y = 19.860, z = -26.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4012] = { config_id = 4012, gadget_id = 70350134, pos = { x = 15.221, y = 19.860, z = -26.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4013] = { config_id = 4013, gadget_id = 70350134, pos = { x = 7.026, y = 19.860, z = -26.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4014] = { config_id = 4014, gadget_id = 70350134, pos = { x = 7.026, y = 19.860, z = -16.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4015] = { config_id = 4015, gadget_id = 70350134, pos = { x = 15.079, y = 19.860, z = -3.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4016] = { config_id = 4016, gadget_id = 70350134, pos = { x = 15.079, y = 19.860, z = -7.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4017] = { config_id = 4017, gadget_id = 70350134, pos = { x = 15.079, y = 19.800, z = -11.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4018] = { config_id = 4018, gadget_id = 70350134, pos = { x = 18.797, y = 19.802, z = -11.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4019] = { config_id = 4019, gadget_id = 70350134, pos = { x = 18.797, y = 19.802, z = -16.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4020] = { config_id = 4020, gadget_id = 70350134, pos = { x = 18.797, y = 19.800, z = -22.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4021] = { config_id = 4021, gadget_id = 70350134, pos = { x = 15.219, y = 19.860, z = -27.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4022] = { config_id = 4022, gadget_id = 70350134, pos = { x = 15.219, y = 19.860, z = -31.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4023] = { config_id = 4023, gadget_id = 70350134, pos = { x = 15.219, y = 19.860, z = -31.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4024] = { config_id = 4024, gadget_id = 70350134, pos = { x = 15.219, y = 19.860, z = -25.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4025] = { config_id = 4025, gadget_id = 70350134, pos = { x = 11.272, y = 19.821, z = -22.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4026] = { config_id = 4026, gadget_id = 70350134, pos = { x = 11.272, y = 19.800, z = -16.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4027] = { config_id = 4027, gadget_id = 70350134, pos = { x = 11.272, y = 19.800, z = -11.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4028] = { config_id = 4028, gadget_id = 70350134, pos = { x = 14.919, y = 19.860, z = -8.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4029] = { config_id = 4029, gadget_id = 70350134, pos = { x = 14.919, y = 19.860, z = -3.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4030] = { config_id = 4030, gadget_id = 70350005, pos = { x = 15.378, y = 19.710, z = -33.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[4031] = { config_id = 4031, shape = RegionShape.CUBIC, size = { x = 60.000, y = 60.000, z = 60.000 }, pos = { x = 14.908, y = 19.807, z = -18.636 } }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "seq_current", value = 1, no_refresh = false },
	{ config_id = 2, name = "seq_sum", value = 0, no_refresh = false },
	{ config_id = 3, name = "seq_suites", value = 0, no_refresh = false }
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
		gadgets = { 4006, 4030 },
		regions = { 4031 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4001, 4002, 4003, 4004, 4005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 4023, 4024, 4025, 4026, 4027, 4028, 4029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 初始化使用,
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

require "WindFlora"
require "WindFlora_ReTrans"