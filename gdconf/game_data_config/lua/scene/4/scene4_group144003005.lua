-- 基础信息
local base_info = {
	group_id = 144003005
}

-- DEFS_MISCS
local NormalRoundTime = 50
local ShooterConfigID = 5001
local GalleryID = 7006
local TextEnterConfigID = 5002
local GalleryIDList = {7006,7013,7014}

local NormalRandomList = {
       {[1] = {1},
        [2] = {3},
        [3] = {5},},

       {[1] = {7},
        [2] = {9},
        [3] = {11},},
        
       {[1] = {13},
        [2] = {15},
        [3] = {17},},
}

local NormalRandomList2 = {
       {[1] = {19},
        [2] = {21},
        [3] = {23},},

       {[1] = {25},
        [2] = {27},
        [3] = {29},},
        
       {[1] = {31},
        [2] = {33},
        [3] = {35},},
}

local FeverRandomList = {
       {[1] = {2},
        [2] = {4},
        [3] = {6},},

       {[1] = {8},
        [2] = {10},
        [3] = {12},},

       {[1] = {14},
        [2] = {16},
        [3] = {18},},

}

local FeverRandomList2 = {
       {[1] = {20},
        [2] = {22},
        [3] = {24},},

       {[1] = {26},
        [2] = {28},
        [3] = {30},},

       {[1] = {32},
        [2] = {34},
        [3] = {36},},

}

local RandomBuffTimeAxis = {
        {20,50,80,120,150},
        {15,45,75,115,145},
        {25,50,85,125,155},
}

local BUffList = {
        {buffConfigID = 5033, buffWeight = 10},
        {buffConfigID = 5034, buffWeight = 20},
        {buffConfigID = 5035, buffWeight = 0},
}

local BUffList2 = {
        {buffConfigID = 5033, buffWeight = 10},
        {buffConfigID = 5034, buffWeight = 10},
        {buffConfigID = 5035, buffWeight = 20},
}

local BUffList3 = {
        {buffConfigID = 5033, buffWeight = 10},
        {buffConfigID = 5034, buffWeight = 10},
        {buffConfigID = 5035, buffWeight = 10},
}

local BuffRegionID = 5036

local PerDamageScore = 2
local PerShooterScore = 100

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
	[5001] = { config_id = 5001, gadget_id = 70350208, pos = { x = -255.150, y = 120.000, z = 480.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_BDShootType"]= 0}, area_id = 103 },
	[5002] = { config_id = 5002, gadget_id = 70350261, pos = { x = -246.500, y = 120.000, z = 493.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 103 },
	[5003] = { config_id = 5003, gadget_id = 70350271, pos = { x = -253.312, y = 120.632, z = 488.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5004] = { config_id = 5004, gadget_id = 70350271, pos = { x = -257.105, y = 120.058, z = 488.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5005] = { config_id = 5005, gadget_id = 70350271, pos = { x = -260.884, y = 120.052, z = 488.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5006] = { config_id = 5006, gadget_id = 70350271, pos = { x = -249.536, y = 120.171, z = 489.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5009] = { config_id = 5009, gadget_id = 70350271, pos = { x = -247.658, y = 120.007, z = 490.988 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 103 },
	[5010] = { config_id = 5010, gadget_id = 70350271, pos = { x = -247.681, y = 120.007, z = 494.669 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 103 },
	[5013] = { config_id = 5013, gadget_id = 70350271, pos = { x = -262.847, y = 120.007, z = 490.762 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 103 },
	[5014] = { config_id = 5014, gadget_id = 70350262, pos = { x = -243.292, y = 119.978, z = 501.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5015] = { config_id = 5015, gadget_id = 70350262, pos = { x = -243.111, y = 120.007, z = 499.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5016] = { config_id = 5016, gadget_id = 70350262, pos = { x = -244.389, y = 120.007, z = 500.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5017] = { config_id = 5017, gadget_id = 70350262, pos = { x = -245.507, y = 119.993, z = 500.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5018] = { config_id = 5018, gadget_id = 70350262, pos = { x = -244.847, y = 120.007, z = 499.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5019] = { config_id = 5019, gadget_id = 70350262, pos = { x = -243.143, y = 120.007, z = 500.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5020] = { config_id = 5020, gadget_id = 70350262, pos = { x = -244.044, y = 120.007, z = 499.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5021] = { config_id = 5021, gadget_id = 70350262, pos = { x = -265.539, y = 119.981, z = 499.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5022] = { config_id = 5022, gadget_id = 70350262, pos = { x = -246.264, y = 120.007, z = 503.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5023] = { config_id = 5023, gadget_id = 70350262, pos = { x = -266.770, y = 120.002, z = 498.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5024] = { config_id = 5024, gadget_id = 70350262, pos = { x = -265.781, y = 120.007, z = 497.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5025] = { config_id = 5025, gadget_id = 70350262, pos = { x = -263.808, y = 119.946, z = 500.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5026] = { config_id = 5026, gadget_id = 70350262, pos = { x = -264.555, y = 119.967, z = 499.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5027] = { config_id = 5027, gadget_id = 70350262, pos = { x = -266.439, y = 119.968, z = 500.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5028] = { config_id = 5028, gadget_id = 70350262, pos = { x = -263.437, y = 120.007, z = 502.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5029] = { config_id = 5029, gadget_id = 70350262, pos = { x = -265.059, y = 119.940, z = 501.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5030] = { config_id = 5030, gadget_id = 70900392, pos = { x = -255.200, y = 117.820, z = 493.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5033] = { config_id = 5033, gadget_id = 70350248, pos = { x = -251.396, y = 120.007, z = 491.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5034] = { config_id = 5034, gadget_id = 70350252, pos = { x = -253.493, y = 120.007, z = 491.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5035] = { config_id = 5035, gadget_id = 70350257, pos = { x = -255.402, y = 120.007, z = 491.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[5037] = { config_id = 5037, gadget_id = 70950041, pos = { x = -255.251, y = 119.227, z = 479.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	[5036] = { config_id = 5036, shape = RegionShape.CUBIC, size = { x = 12.000, y = 1.000, z = 6.000 }, pos = { x = -255.240, y = 120.500, z = 494.149 }, area_id = 103 },
	[5039] = { config_id = 5039, shape = RegionShape.SPHERE, radius = 35, pos = { x = -255.386, y = 120.007, z = 490.077 }, area_id = 103 },
	[5040] = { config_id = 5040, shape = RegionShape.SPHERE, radius = 40, pos = { x = -255.386, y = 120.007, z = 490.077 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1005038, name = "GALLERY_STOP_5038", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_EVENT_GALLERY_STOP_5038", trigger_count = 0 },
	{ config_id = 1005041, name = "GALLERY_START_5041", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_5041", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 5031, pos = { x = -255.260, y = 120.007, z = 493.141 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, area_id = 103 },
	{ config_id = 5032, pos = { x = -255.256, y = 120.007, z = 495.482 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, area_id = 103 },
	{ config_id = 5042, pos = { x = -255.260, y = 120.007, z = 494.328 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, area_id = 103 }
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5009, 5010, 5013, 5014, 5015, 5016, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5024, 5025, 5026, 5027, 5028, 5029 },
		regions = { 5036 },
		triggers = { "GALLERY_STOP_5038", "GALLERY_START_5041" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GALLERY_STOP_5038(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GALLERY_START_5041(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V1_6/Multi_Badminton"