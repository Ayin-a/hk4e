-- 基础信息
local base_info = {
	group_id = 199002065
}

-- Trigger变量
local defs = {
	starter_worktop_id = 65001,
	final_stage = 6,
	gallery_id = 21200,
	optimize_region = 65403,
	prepare_group_id = 199001015
}

-- DEFS_MISCS
local score = {
    checkpoint = 20,
    monster = 5,
}

local stage_berth_windzone = {
    [1] = {berth_num = 5, berth = {65005,65006,65253,65254,65308}, windzone = {65008,65009,65163,65164,65165}},
    [3] = {berth_num = 7, berth = {65053,65054,65055,65309,65310,65311,65312}, windzone = {65027,65028,65029,65181,65182,65183}},
    [5] = {berth_num = 8, berth = {65056,65057,65058,65059,65314,65315,65316,65317}, windzone = {65050,65051,65063,65061}},
}


local start_boat_points = 
{
	65223,65224,65225,65226
}


local stage = 
{
    [1] = {monster_suites = {2},start_suites = {2}, tag = "Sail", region = 65148,revive_point =65329, boat_point = 65330},
    [2] = {monster_suites = {3},start_suites = {3}, tag = "Battle",revive_point =65228, boat_point = 65328},
    [3] = {monster_suites = {4},start_suites = {4}, tag = "Sail", region = 65149,revive_point =65333, boat_point = 65334},
    [4] = {monster_suites = {5},start_suites = {5}, tag = "Battle",revive_point =65230, boat_point = 65335},
    [5] = {monster_suites = {6},start_suites = {6}, tag = "Sail", region = 65150,revive_point =65338, boat_point = 65339},
    [6] = {monster_suites = {7,8},start_suites = {7}, tag = "Battle",revive_point =65232, boat_point = 65340},
}

local monster_suite_chain = 
{
  
        [7] = {8}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65011, monster_id = 21011001, pos = { x = 124.073, y = 132.882, z = -521.410 }, rot = { x = 0.000, y = 182.444, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 65013, monster_id = 21010501, pos = { x = 61.620, y = 142.891, z = -521.074 }, rot = { x = 0.000, y = 147.139, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 65030, monster_id = 21010401, pos = { x = -46.331, y = 132.884, z = -182.403 }, rot = { x = 0.000, y = 162.833, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 401 },
	{ config_id = 65031, monster_id = 21010501, pos = { x = -62.601, y = 137.898, z = -169.632 }, rot = { x = 0.000, y = 162.119, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 65033, monster_id = 21010401, pos = { x = -26.926, y = 124.892, z = -195.403 }, rot = { x = 0.000, y = 177.364, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 401 },
	{ config_id = 65035, monster_id = 21010501, pos = { x = -79.593, y = 142.875, z = -189.523 }, rot = { x = 0.000, y = 117.954, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 401 },
	{ config_id = 65037, monster_id = 21010401, pos = { x = -26.997, y = 142.877, z = -159.405 }, rot = { x = 0.000, y = 221.927, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 65041, monster_id = 21010501, pos = { x = -202.198, y = 124.890, z = 162.818 }, rot = { x = 0.000, y = 117.890, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 65049, monster_id = 21010401, pos = { x = -191.047, y = 142.877, z = 140.094 }, rot = { x = 0.000, y = 325.485, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 403 },
	{ config_id = 65052, monster_id = 21010401, pos = { x = -202.198, y = 124.890, z = 162.818 }, rot = { x = 0.000, y = 117.890, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 65060, monster_id = 21010401, pos = { x = -216.138, y = 140.823, z = 181.933 }, rot = { x = 0.000, y = 133.630, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 403 },
	{ config_id = 65062, monster_id = 21010401, pos = { x = -224.037, y = 132.876, z = 147.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 65064, monster_id = 21011001, pos = { x = -182.782, y = 132.880, z = 174.150 }, rot = { x = 0.000, y = 220.020, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 65067, monster_id = 21011001, pos = { x = -191.669, y = 142.892, z = 140.488 }, rot = { x = 0.000, y = 283.833, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 403 },
	{ config_id = 65151, monster_id = 21010401, pos = { x = 92.455, y = 136.801, z = -502.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 65188, monster_id = 21010501, pos = { x = -215.648, y = 140.812, z = 182.126 }, rot = { x = 0.000, y = 133.630, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 403 },
	{ config_id = 65322, monster_id = 21010201, pos = { x = -224.118, y = 132.879, z = 148.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 65323, monster_id = 21010401, pos = { x = -182.729, y = 132.887, z = 173.517 }, rot = { x = 0.000, y = 220.020, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 65404, monster_id = 21010401, pos = { x = 92.562, y = 124.890, z = -521.283 }, rot = { x = 0.000, y = 196.590, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65002, gadget_id = 70380311, pos = { x = 92.210, y = 124.000, z = -520.695 }, rot = { x = 0.000, y = 0.427, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65003, gadget_id = 70380312, pos = { x = 123.402, y = 132.000, z = -521.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65004, gadget_id = 70380311, pos = { x = 61.452, y = 142.000, z = -520.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65005, gadget_id = 70380230, pos = { x = 75.083, y = 120.000, z = -528.262 }, rot = { x = 0.000, y = 335.474, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65006, gadget_id = 70380230, pos = { x = 108.418, y = 120.000, z = -513.211 }, rot = { x = 0.000, y = 335.474, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65007, gadget_id = 70380312, pos = { x = 92.467, y = 135.896, z = -502.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65008, gadget_id = 70690011, pos = { x = 75.083, y = 120.000, z = -528.262 }, rot = { x = 0.000, y = 335.474, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65009, gadget_id = 70690011, pos = { x = 107.514, y = 120.000, z = -513.624 }, rot = { x = 0.000, y = 335.474, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65010, gadget_id = 70350085, pos = { x = -26.777, y = 142.881, z = -159.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65012, gadget_id = 70350085, pos = { x = 124.396, y = 132.901, z = -521.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65014, gadget_id = 70350258, pos = { x = 95.811, y = 120.000, z = -466.431 }, rot = { x = 0.000, y = 340.189, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65015, gadget_id = 70350085, pos = { x = 92.242, y = 136.769, z = -502.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65022, gadget_id = 70380312, pos = { x = -79.462, y = 142.000, z = -189.159 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65023, gadget_id = 70380312, pos = { x = -46.396, y = 132.000, z = -182.432 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65024, gadget_id = 70380311, pos = { x = -63.253, y = 137.000, z = -169.323 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65025, gadget_id = 70380312, pos = { x = -26.986, y = 142.000, z = -159.148 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65026, gadget_id = 70380311, pos = { x = -27.383, y = 124.000, z = -195.027 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65027, gadget_id = 70690011, pos = { x = -43.022, y = 120.000, z = -194.556 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65028, gadget_id = 70690011, pos = { x = -30.922, y = 120.000, z = -177.116 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65029, gadget_id = 70690011, pos = { x = -63.379, y = 120.000, z = -184.805 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65032, gadget_id = 70350085, pos = { x = -27.120, y = 124.892, z = -195.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65034, gadget_id = 70350085, pos = { x = -46.315, y = 132.874, z = -182.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65036, gadget_id = 70350085, pos = { x = -63.054, y = 137.890, z = -169.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65038, gadget_id = 70350085, pos = { x = 92.021, y = 125.069, z = -525.212 }, rot = { x = 0.000, y = 0.427, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65040, gadget_id = 70350085, pos = { x = -47.815, y = 125.069, z = -191.109 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65044, gadget_id = 70380312, pos = { x = -224.467, y = 132.000, z = 148.184 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65045, gadget_id = 70380312, pos = { x = -216.529, y = 139.941, z = 182.572 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65046, gadget_id = 70380312, pos = { x = -182.991, y = 132.000, z = 174.242 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65047, gadget_id = 70380312, pos = { x = -191.489, y = 142.000, z = 140.084 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65048, gadget_id = 70380311, pos = { x = -202.345, y = 124.000, z = 162.722 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65050, gadget_id = 70690011, pos = { x = -208.691, y = 120.000, z = 144.378 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65051, gadget_id = 70690011, pos = { x = -200.423, y = 120.000, z = 181.763 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65053, gadget_id = 70380230, pos = { x = -63.379, y = 120.000, z = -184.805 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65054, gadget_id = 70380230, pos = { x = -30.922, y = 120.000, z = -177.116 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65055, gadget_id = 70380230, pos = { x = -43.022, y = 120.000, z = -194.556 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65056, gadget_id = 70380230, pos = { x = -200.423, y = 120.000, z = 181.763 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65057, gadget_id = 70380230, pos = { x = -222.010, y = 120.000, z = 166.811 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65058, gadget_id = 70380230, pos = { x = -208.691, y = 120.000, z = 144.378 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65059, gadget_id = 70380230, pos = { x = -184.721, y = 120.000, z = 157.399 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65061, gadget_id = 70690011, pos = { x = -184.721, y = 120.000, z = 157.399 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65063, gadget_id = 70690011, pos = { x = -222.010, y = 120.000, z = 166.811 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65065, gadget_id = 70350085, pos = { x = -216.156, y = 140.817, z = 182.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65066, gadget_id = 70350085, pos = { x = -224.368, y = 132.886, z = 147.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65068, gadget_id = 70350258, pos = { x = 72.182, y = 120.000, z = -656.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65069, gadget_id = 70350258, pos = { x = 86.487, y = 120.000, z = -639.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65070, gadget_id = 70350258, pos = { x = 102.106, y = 120.000, z = -628.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65071, gadget_id = 70350258, pos = { x = 113.012, y = 120.000, z = -644.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65072, gadget_id = 70380235, pos = { x = 86.412, y = 121.000, z = -626.229 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65073, gadget_id = 70380235, pos = { x = 86.562, y = 121.000, z = -618.230 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65074, gadget_id = 70380235, pos = { x = 86.713, y = 121.000, z = -610.232 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65076, gadget_id = 70380235, pos = { x = 72.557, y = 121.000, z = -647.574 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65079, gadget_id = 70380235, pos = { x = 102.211, y = 121.000, z = -613.024 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65080, gadget_id = 70380235, pos = { x = 102.395, y = 121.000, z = -605.026 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65081, gadget_id = 70380235, pos = { x = 102.578, y = 121.000, z = -597.028 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65085, gadget_id = 70380235, pos = { x = 72.708, y = 121.000, z = -639.575 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65086, gadget_id = 70380235, pos = { x = 108.331, y = 126.453, z = -513.578 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65087, gadget_id = 70380235, pos = { x = 108.331, y = 131.453, z = -513.578 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65088, gadget_id = 70380235, pos = { x = 108.331, y = 136.452, z = -513.578 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65089, gadget_id = 70380235, pos = { x = 75.094, y = 129.263, z = -528.423 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65090, gadget_id = 70380235, pos = { x = 75.094, y = 134.263, z = -528.423 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65091, gadget_id = 70380235, pos = { x = 75.094, y = 139.263, z = -528.423 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65092, gadget_id = 70380235, pos = { x = -30.541, y = 132.430, z = -176.672 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65093, gadget_id = 70380235, pos = { x = -30.541, y = 137.430, z = -176.672 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65094, gadget_id = 70380235, pos = { x = -30.541, y = 142.430, z = -176.672 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65095, gadget_id = 70380235, pos = { x = -62.767, y = 129.133, z = -184.467 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65096, gadget_id = 70380235, pos = { x = -62.767, y = 134.133, z = -184.467 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65097, gadget_id = 70380235, pos = { x = -62.767, y = 139.133, z = -184.467 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65098, gadget_id = 70350258, pos = { x = 50.729, y = 120.000, z = -458.594 }, rot = { x = 0.000, y = 340.189, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65100, gadget_id = 70350258, pos = { x = 62.722, y = 120.000, z = -441.182 }, rot = { x = 0.000, y = 340.189, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65101, gadget_id = 70350258, pos = { x = 52.385, y = 120.000, z = -393.279 }, rot = { x = 0.000, y = 340.189, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65115, gadget_id = 70350258, pos = { x = -78.109, y = 120.000, z = -131.138 }, rot = { x = 0.000, y = 333.350, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65116, gadget_id = 70350258, pos = { x = -55.715, y = 120.000, z = -100.401 }, rot = { x = 0.000, y = 333.350, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65117, gadget_id = 70380235, pos = { x = -121.230, y = 121.000, z = -50.583 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65118, gadget_id = 70350258, pos = { x = -99.054, y = 120.000, z = -51.008 }, rot = { x = 0.000, y = 333.350, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65119, gadget_id = 70380235, pos = { x = -117.452, y = 121.000, z = -57.635 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65120, gadget_id = 70380235, pos = { x = -113.675, y = 121.000, z = -64.687 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65128, gadget_id = 70350258, pos = { x = -105.420, y = 120.000, z = -79.732 }, rot = { x = 0.000, y = 333.803, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65136, gadget_id = 70380235, pos = { x = -78.086, y = 121.000, z = -88.671 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65137, gadget_id = 70380235, pos = { x = -81.864, y = 121.000, z = -81.619 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65138, gadget_id = 70380235, pos = { x = -85.641, y = 121.000, z = -74.567 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65142, gadget_id = 70380235, pos = { x = -200.477, y = 127.883, z = 181.075 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65143, gadget_id = 70380235, pos = { x = -200.477, y = 132.883, z = 181.075 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65144, gadget_id = 70380235, pos = { x = -200.477, y = 137.883, z = 181.075 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65145, gadget_id = 70380235, pos = { x = -208.931, y = 131.906, z = 146.197 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65146, gadget_id = 70380235, pos = { x = -208.931, y = 136.906, z = 146.197 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65147, gadget_id = 70380235, pos = { x = -208.931, y = 141.906, z = 146.197 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65152, gadget_id = 70380235, pos = { x = 4.562, y = 121.000, z = -360.756 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65153, gadget_id = 70380235, pos = { x = 2.841, y = 121.000, z = -356.061 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65155, gadget_id = 70350085, pos = { x = -199.940, y = 125.069, z = 158.366 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65160, gadget_id = 70380311, pos = { x = 70.975, y = 119.012, z = -500.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65161, gadget_id = 70380311, pos = { x = 110.361, y = 119.012, z = -541.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65162, gadget_id = 70380311, pos = { x = 67.932, y = 119.012, z = -546.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65163, gadget_id = 70690011, pos = { x = 67.932, y = 120.000, z = -546.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65164, gadget_id = 70690011, pos = { x = 70.975, y = 120.000, z = -500.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65165, gadget_id = 70690011, pos = { x = 110.361, y = 120.000, z = -541.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65166, gadget_id = 70380235, pos = { x = 70.975, y = 122.000, z = -500.218 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65170, gadget_id = 70380235, pos = { x = 67.932, y = 122.000, z = -546.677 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65174, gadget_id = 70380235, pos = { x = 110.361, y = 122.000, z = -541.656 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65178, gadget_id = 70380311, pos = { x = -60.488, y = 119.004, z = -210.950 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65179, gadget_id = 70380311, pos = { x = -9.844, y = 119.004, z = -178.615 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65180, gadget_id = 70380311, pos = { x = -49.331, y = 119.004, z = -160.167 }, rot = { x = 0.000, y = 346.501, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65181, gadget_id = 70690011, pos = { x = -60.488, y = 120.000, z = -210.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65182, gadget_id = 70690011, pos = { x = -9.844, y = 120.000, z = -178.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65183, gadget_id = 70690011, pos = { x = -49.331, y = 120.000, z = -160.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65184, gadget_id = 70380311, pos = { x = -211.537, y = 119.000, z = 125.936 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65185, gadget_id = 70380311, pos = { x = -195.863, y = 119.000, z = 197.284 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65186, gadget_id = 70380311, pos = { x = -170.600, y = 119.000, z = 153.871 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65187, gadget_id = 70380311, pos = { x = -237.104, y = 119.000, z = 170.575 }, rot = { x = 0.466, y = 282.561, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65189, gadget_id = 70350085, pos = { x = -79.742, y = 142.878, z = -189.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65194, gadget_id = 70380235, pos = { x = -60.488, y = 122.000, z = -210.950 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65198, gadget_id = 70380235, pos = { x = -9.844, y = 122.000, z = -178.615 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65199, gadget_id = 70380235, pos = { x = -49.331, y = 122.000, z = -160.167 }, rot = { x = 0.000, y = 338.709, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65204, gadget_id = 70380235, pos = { x = -211.537, y = 122.000, z = 125.936 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65207, gadget_id = 70380235, pos = { x = -170.600, y = 122.000, z = 153.871 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65214, gadget_id = 70380235, pos = { x = -195.863, y = 122.000, z = 197.284 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65218, gadget_id = 70380235, pos = { x = -237.104, y = 122.000, z = 170.575 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65227, gadget_id = 70310420, pos = { x = 49.335, y = 115.604, z = -564.739 }, rot = { x = 0.000, y = 133.274, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65229, gadget_id = 70310420, pos = { x = -91.320, y = 115.734, z = -211.120 }, rot = { x = 0.000, y = 49.860, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65231, gadget_id = 70310420, pos = { x = -240.777, y = 115.829, z = 135.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65233, gadget_id = 70310420, pos = { x = 49.335, y = 110.118, z = -564.739 }, rot = { x = 0.000, y = 133.274, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65234, gadget_id = 70310420, pos = { x = -91.320, y = 111.387, z = -211.120 }, rot = { x = 0.000, y = 49.860, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65235, gadget_id = 70310420, pos = { x = -240.796, y = 106.905, z = 135.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65237, gadget_id = 70380235, pos = { x = -155.510, y = 121.000, z = 9.670 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65238, gadget_id = 70380235, pos = { x = -151.732, y = 121.000, z = 2.618 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65239, gadget_id = 70380235, pos = { x = -147.955, y = 121.000, z = -4.434 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65241, gadget_id = 70380235, pos = { x = -142.240, y = 121.000, z = 16.903 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65242, gadget_id = 70380235, pos = { x = -138.462, y = 121.000, z = 9.851 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65243, gadget_id = 70380235, pos = { x = -134.685, y = 121.000, z = 2.799 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65245, gadget_id = 70380235, pos = { x = -129.730, y = 121.000, z = 22.902 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65246, gadget_id = 70380235, pos = { x = -125.953, y = 121.000, z = 15.850 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65247, gadget_id = 70380235, pos = { x = -122.176, y = 121.000, z = 8.798 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 65249, gadget_id = 70380235, pos = { x = -118.165, y = 121.000, z = 28.831 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 65250, gadget_id = 70380235, pos = { x = -114.388, y = 121.000, z = 21.780 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 65251, gadget_id = 70380235, pos = { x = -110.611, y = 121.000, z = 14.728 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 65252, gadget_id = 70350258, pos = { x = -165.678, y = 120.000, z = 28.662 }, rot = { x = 0.000, y = 333.350, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65253, gadget_id = 70380230, pos = { x = 96.755, y = 120.000, z = -544.331 }, rot = { x = 0.000, y = 335.474, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65254, gadget_id = 70380230, pos = { x = 121.168, y = 120.000, z = -529.718 }, rot = { x = 0.000, y = 335.474, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65255, gadget_id = 70350258, pos = { x = -152.183, y = 120.000, z = 35.435 }, rot = { x = 0.000, y = 333.350, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65256, gadget_id = 70350258, pos = { x = -127.129, y = 120.000, z = 47.648 }, rot = { x = 0.000, y = 333.350, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65257, gadget_id = 70350258, pos = { x = -139.845, y = 120.000, z = 41.267 }, rot = { x = 0.000, y = 333.350, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65258, gadget_id = 70380235, pos = { x = 1.120, y = 121.000, z = -351.367 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65259, gadget_id = 70380235, pos = { x = -0.601, y = 121.000, z = -346.672 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65260, gadget_id = 70380235, pos = { x = -2.322, y = 121.000, z = -341.978 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65263, gadget_id = 70380235, pos = { x = -4.287, y = 121.000, z = -336.437 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65264, gadget_id = 70380235, pos = { x = 15.287, y = 121.000, z = -356.824 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65265, gadget_id = 70380235, pos = { x = 6.538, y = 121.000, z = -332.307 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65266, gadget_id = 70380235, pos = { x = 1.236, y = 121.000, z = -334.251 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65267, gadget_id = 70380235, pos = { x = 35.097, y = 121.000, z = -349.014 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65268, gadget_id = 70380235, pos = { x = 33.376, y = 121.000, z = -344.320 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65269, gadget_id = 70380235, pos = { x = 31.655, y = 121.000, z = -339.625 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65270, gadget_id = 70380235, pos = { x = 29.934, y = 121.000, z = -334.930 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65271, gadget_id = 70380235, pos = { x = 28.213, y = 121.000, z = -330.236 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65272, gadget_id = 70380235, pos = { x = 9.985, y = 121.000, z = -358.768 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65273, gadget_id = 70380235, pos = { x = 20.738, y = 121.000, z = -354.602 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65274, gadget_id = 70380235, pos = { x = 19.017, y = 121.000, z = -349.907 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65275, gadget_id = 70380235, pos = { x = 17.296, y = 121.000, z = -345.213 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65276, gadget_id = 70380235, pos = { x = 15.575, y = 121.000, z = -340.518 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65277, gadget_id = 70380235, pos = { x = 13.855, y = 121.000, z = -335.824 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65280, gadget_id = 70380235, pos = { x = 11.889, y = 121.000, z = -330.283 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65283, gadget_id = 70380235, pos = { x = 26.248, y = 121.000, z = -324.696 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65284, gadget_id = 70380235, pos = { x = 51.273, y = 121.000, z = -342.860 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65285, gadget_id = 70380235, pos = { x = 49.552, y = 121.000, z = -338.165 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65286, gadget_id = 70380235, pos = { x = 47.831, y = 121.000, z = -333.471 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65287, gadget_id = 70380235, pos = { x = 46.110, y = 121.000, z = -328.776 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65288, gadget_id = 70380235, pos = { x = 44.389, y = 121.000, z = -324.082 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65291, gadget_id = 70380235, pos = { x = 42.424, y = 121.000, z = -318.541 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65292, gadget_id = 70380235, pos = { x = 31.771, y = 121.000, z = -322.509 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65293, gadget_id = 70380235, pos = { x = 37.072, y = 121.000, z = -320.565 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65294, gadget_id = 70380235, pos = { x = 45.822, y = 121.000, z = -345.082 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65295, gadget_id = 70380235, pos = { x = 40.520, y = 121.000, z = -347.026 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65296, gadget_id = 70380235, pos = { x = -21.126, y = 121.000, z = -292.128 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65297, gadget_id = 70380235, pos = { x = -22.847, y = 121.000, z = -287.434 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65298, gadget_id = 70380235, pos = { x = -24.568, y = 121.000, z = -282.739 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65299, gadget_id = 70380235, pos = { x = -26.289, y = 121.000, z = -278.045 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65300, gadget_id = 70380235, pos = { x = -28.010, y = 121.000, z = -273.350 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65303, gadget_id = 70380235, pos = { x = -29.836, y = 121.000, z = -268.437 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65304, gadget_id = 70380235, pos = { x = 18.702, y = 121.000, z = -255.454 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65305, gadget_id = 70380235, pos = { x = 20.423, y = 121.000, z = -260.149 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65306, gadget_id = 70380235, pos = { x = 22.144, y = 121.000, z = -264.843 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65307, gadget_id = 70380235, pos = { x = 23.864, y = 121.000, z = -269.537 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65308, gadget_id = 70380230, pos = { x = 59.875, y = 120.000, z = -516.999 }, rot = { x = 0.000, y = 335.474, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65309, gadget_id = 70380230, pos = { x = -78.188, y = 120.000, z = -200.454 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65310, gadget_id = 70380230, pos = { x = -46.573, y = 120.000, z = -214.548 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65311, gadget_id = 70380230, pos = { x = -15.189, y = 120.000, z = -199.862 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65312, gadget_id = 70380230, pos = { x = 0.452, y = 120.000, z = -182.172 }, rot = { x = 0.000, y = 9.757, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 65314, gadget_id = 70380230, pos = { x = -188.664, y = 120.000, z = 138.586 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65315, gadget_id = 70380230, pos = { x = -217.385, y = 120.000, z = 184.016 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65316, gadget_id = 70380230, pos = { x = -225.706, y = 120.000, z = 149.383 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65317, gadget_id = 70380230, pos = { x = -180.999, y = 120.000, z = 177.452 }, rot = { x = 0.000, y = 312.237, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65318, gadget_id = 70350085, pos = { x = 92.192, y = 124.886, z = -520.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65319, gadget_id = 70350085, pos = { x = -191.662, y = 142.886, z = 139.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65320, gadget_id = 70350085, pos = { x = 61.106, y = 142.878, z = -521.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65324, gadget_id = 70350085, pos = { x = -202.407, y = 124.887, z = 162.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65331, gadget_id = 70310420, pos = { x = 8.113, y = 116.039, z = -444.537 }, rot = { x = 0.000, y = 49.860, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65332, gadget_id = 70310420, pos = { x = 8.113, y = 111.693, z = -444.537 }, rot = { x = 0.000, y = 49.860, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65336, gadget_id = 70310420, pos = { x = -118.333, y = 115.829, z = -126.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65337, gadget_id = 70310420, pos = { x = -118.352, y = 106.905, z = -126.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65341, gadget_id = 70380235, pos = { x = 25.585, y = 121.000, z = -274.232 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65342, gadget_id = 70380235, pos = { x = 0.699, y = 121.000, z = -256.695 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65346, gadget_id = 70380235, pos = { x = -4.949, y = 121.000, z = -285.974 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65347, gadget_id = 70380235, pos = { x = -6.670, y = 121.000, z = -281.279 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65348, gadget_id = 70380235, pos = { x = -8.391, y = 121.000, z = -276.585 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65349, gadget_id = 70380235, pos = { x = -10.112, y = 121.000, z = -271.890 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65350, gadget_id = 70380235, pos = { x = -11.833, y = 121.000, z = -267.196 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65353, gadget_id = 70380235, pos = { x = -13.660, y = 121.000, z = -262.282 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65354, gadget_id = 70380235, pos = { x = 2.525, y = 121.000, z = -261.608 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65355, gadget_id = 70380235, pos = { x = 4.246, y = 121.000, z = -266.303 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65356, gadget_id = 70380235, pos = { x = 5.967, y = 121.000, z = -270.997 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65357, gadget_id = 70380235, pos = { x = 7.688, y = 121.000, z = -275.692 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65358, gadget_id = 70380235, pos = { x = 9.409, y = 121.000, z = -280.387 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65359, gadget_id = 70380235, pos = { x = -24.313, y = 121.000, z = -266.250 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65360, gadget_id = 70380235, pos = { x = -19.011, y = 121.000, z = -264.306 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65361, gadget_id = 70380235, pos = { x = -10.401, y = 121.000, z = -288.197 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65362, gadget_id = 70380235, pos = { x = -15.702, y = 121.000, z = -290.140 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65364, gadget_id = 70380235, pos = { x = 16.875, y = 121.000, z = -250.540 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65365, gadget_id = 70380235, pos = { x = 6.222, y = 121.000, z = -254.508 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65366, gadget_id = 70380235, pos = { x = 11.523, y = 121.000, z = -252.564 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65367, gadget_id = 70380235, pos = { x = 20.134, y = 121.000, z = -276.455 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65368, gadget_id = 70380235, pos = { x = 14.832, y = 121.000, z = -278.398 }, rot = { x = 0.000, y = 339.868, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 65369, gadget_id = 70380235, pos = { x = -182.716, y = 121.000, z = 61.811 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65370, gadget_id = 70380235, pos = { x = -178.939, y = 121.000, z = 54.759 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65373, gadget_id = 70380235, pos = { x = -169.446, y = 121.000, z = 69.044 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65374, gadget_id = 70380235, pos = { x = -165.669, y = 121.000, z = 61.992 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65377, gadget_id = 70380235, pos = { x = -156.937, y = 121.000, z = 75.043 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65378, gadget_id = 70380235, pos = { x = -153.159, y = 121.000, z = 67.991 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65381, gadget_id = 70380235, pos = { x = -145.372, y = 121.000, z = 80.973 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65382, gadget_id = 70380235, pos = { x = -141.594, y = 121.000, z = 73.921 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65387, gadget_id = 70380235, pos = { x = -186.507, y = 121.000, z = 69.565 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65390, gadget_id = 70380235, pos = { x = -173.238, y = 121.000, z = 76.798 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65393, gadget_id = 70380235, pos = { x = -160.728, y = 121.000, z = 82.797 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65396, gadget_id = 70380235, pos = { x = -149.163, y = 121.000, z = 88.726 }, rot = { x = 0.000, y = 332.709, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 65397, gadget_id = 70380235, pos = { x = 72.859, y = 121.000, z = -631.577 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65399, gadget_id = 70380235, pos = { x = 113.593, y = 121.000, z = -634.897 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65400, gadget_id = 70380235, pos = { x = 113.744, y = 121.000, z = -626.898 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65401, gadget_id = 70380235, pos = { x = 113.895, y = 121.000, z = -618.900 }, rot = { x = 359.986, y = 1.081, z = 0.278 }, level = 20, area_id = 401 },
	{ config_id = 65408, gadget_id = 70350085, pos = { x = -183.065, y = 132.887, z = 174.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65414, gadget_id = 70350085, pos = { x = -216.156, y = 140.817, z = 182.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65415, gadget_id = 70350085, pos = { x = -224.368, y = 132.886, z = 147.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65416, gadget_id = 70350085, pos = { x = -191.662, y = 142.886, z = 139.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65417, gadget_id = 70350085, pos = { x = -202.407, y = 124.887, z = 162.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 65418, gadget_id = 70350085, pos = { x = -183.065, y = 132.887, z = 174.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
	-- 消除icon指引
	{ config_id = 65039, shape = RegionShape.POLYGON, pos = { x = 94.509, y = 200.000, z = -532.061 }, height = 200.000, point_array = { { x = 39.913, y = -574.260 }, { x = 38.593, y = -486.915 }, { x = 150.425, y = -489.897 }, { x = 147.108, y = -577.207 } }, area_id = 401 },
	{ config_id = 65148, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 93.026, y = 115.585, z = -512.052 }, height = 10.000, area_id = 401 },
	{ config_id = 65149, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -42.425, y = 115.585, z = -182.340 }, height = 10.000, area_id = 401 },
	{ config_id = 65150, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -190.779, y = 115.585, z = 162.614 }, height = 10.000, area_id = 403 },
	-- 消除icon指引
	{ config_id = 65154, shape = RegionShape.POLYGON, pos = { x = -46.685, y = 200.000, z = -192.560 }, height = 200.000, point_array = { { x = -79.931, y = -257.236 }, { x = -115.925, y = -165.820 }, { x = -11.475, y = -127.884 }, { x = 22.556, y = -219.293 } }, area_id = 401 },
	{ config_id = 65156, shape = RegionShape.POLYGON, pos = { x = -200.081, y = 150.000, z = 143.185 }, height = 100.000, point_array = { { x = -212.466, y = 59.700 }, { x = -274.174, y = 182.328 }, { x = -186.237, y = 226.670 }, { x = -125.988, y = 103.628 } }, area_id = 403 },
	{ config_id = 65403, shape = RegionShape.POLYGON, pos = { x = -34.566, y = 200.000, z = -228.956 }, height = 200.000, point_array = { { x = 376.687, y = -802.117 }, { x = -159.692, y = -774.335 }, { x = -445.819, y = 273.429 }, { x = -20.532, y = 344.206 }, { x = 339.423, y = -338.827 } }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 消除icon指引
	{ config_id = 1065039, name = "ENTER_REGION_65039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65039", action = "action_EVENT_ENTER_REGION_65039", trigger_count = 0, forbid_guest = false },
	-- 消除icon指引
	{ config_id = 1065154, name = "ENTER_REGION_65154", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65154", action = "action_EVENT_ENTER_REGION_65154", trigger_count = 0, forbid_guest = false },
	{ config_id = 1065156, name = "ENTER_REGION_65156", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65156", action = "action_EVENT_ENTER_REGION_65156", trigger_count = 0, forbid_guest = false },
	{ config_id = 1065190, name = "ANY_MONSTER_DIE_65190", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65190", action = "action_EVENT_ANY_MONSTER_DIE_65190" },
	{ config_id = 1065313, name = "ANY_MONSTER_DIE_65313", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65313", action = "action_EVENT_ANY_MONSTER_DIE_65313" },
	{ config_id = 1065321, name = "ANY_MONSTER_DIE_65321", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65321", action = "action_EVENT_ANY_MONSTER_DIE_65321" },
	{ config_id = 1065325, name = "ANY_MONSTER_DIE_65325", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65325", action = "action_EVENT_ANY_MONSTER_DIE_65325" },
	{ config_id = 1065326, name = "ANY_MONSTER_DIE_65326", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65326", action = "action_EVENT_ANY_MONSTER_DIE_65326" },
	{ config_id = 1065327, name = "ANY_MONSTER_DIE_65327", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65327", action = "action_EVENT_ANY_MONSTER_DIE_65327" },
	{ config_id = 1065405, name = "ANY_MONSTER_DIE_65405", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65405", action = "action_EVENT_ANY_MONSTER_DIE_65405" },
	{ config_id = 1065406, name = "ANY_MONSTER_DIE_65406", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65406", action = "action_EVENT_ANY_MONSTER_DIE_65406" },
	{ config_id = 1065407, name = "ANY_MONSTER_DIE_65407", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65407", action = "action_EVENT_ANY_MONSTER_DIE_65407" },
	{ config_id = 1065409, name = "ANY_MONSTER_DIE_65409", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65409", action = "action_EVENT_ANY_MONSTER_DIE_65409" },
	{ config_id = 1065410, name = "ANY_MONSTER_DIE_65410", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65410", action = "action_EVENT_ANY_MONSTER_DIE_65410" },
	{ config_id = 1065411, name = "ANY_MONSTER_DIE_65411", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65411", action = "action_EVENT_ANY_MONSTER_DIE_65411" },
	{ config_id = 1065412, name = "ANY_MONSTER_DIE_65412", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65412", action = "action_EVENT_ANY_MONSTER_DIE_65412" },
	{ config_id = 1065413, name = "ANY_MONSTER_DIE_65413", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65413", action = "action_EVENT_ANY_MONSTER_DIE_65413" },
	{ config_id = 1065419, name = "ANY_MONSTER_DIE_65419", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65419", action = "action_EVENT_ANY_MONSTER_DIE_65419" },
	{ config_id = 1065420, name = "ANY_MONSTER_DIE_65420", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65420", action = "action_EVENT_ANY_MONSTER_DIE_65420" },
	{ config_id = 1065421, name = "ANY_MONSTER_DIE_65421", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65421", action = "action_EVENT_ANY_MONSTER_DIE_65421" },
	{ config_id = 1065422, name = "ANY_MONSTER_DIE_65422", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65422", action = "action_EVENT_ANY_MONSTER_DIE_65422" },
	{ config_id = 1065423, name = "ANY_MONSTER_DIE_65423", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65423", action = "action_EVENT_ANY_MONSTER_DIE_65423" }
}

-- 点位
points = {
	-- 联机传送目标点1
	{ config_id = 65219, pos = { x = 86.011, y = 120.070, z = -724.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	-- 联机传送目标点2
	{ config_id = 65220, pos = { x = 89.346, y = 120.085, z = -724.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	-- 联机传送目标点3
	{ config_id = 65221, pos = { x = 85.948, y = 120.112, z = -728.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	-- 联机传送目标点4
	{ config_id = 65222, pos = { x = 89.421, y = 120.107, z = -728.117 }, rot = { x = 358.507, y = 359.184, z = 355.767 }, area_id = 401 },
	{ config_id = 65223, pos = { x = 81.467, y = 120.000, z = -713.381 }, rot = { x = 0.000, y = 1.836, z = 0.000 }, area_id = 401 },
	{ config_id = 65224, pos = { x = 86.277, y = 120.000, z = -713.437 }, rot = { x = 0.000, y = 1.836, z = 0.000 }, area_id = 401 },
	{ config_id = 65225, pos = { x = 91.023, y = 120.000, z = -713.589 }, rot = { x = 0.000, y = 1.836, z = 0.000 }, area_id = 401 },
	{ config_id = 65226, pos = { x = 95.466, y = 120.000, z = -713.811 }, rot = { x = 0.000, y = 1.836, z = 0.000 }, area_id = 401 },
	-- 安全点-2
	{ config_id = 65228, pos = { x = 49.597, y = 121.005, z = -563.764 }, rot = { x = 0.000, y = 52.803, z = 0.000 }, area_id = 401 },
	-- 安全点-4
	{ config_id = 65230, pos = { x = -91.697, y = 121.016, z = -210.512 }, rot = { x = 0.000, y = 74.038, z = 0.000 }, area_id = 401 },
	-- 安全点-6
	{ config_id = 65232, pos = { x = -241.269, y = 121.144, z = 135.269 }, rot = { x = 0.000, y = 58.613, z = 0.000 }, area_id = 403 },
	-- 创船点-2
	{ config_id = 65328, pos = { x = 56.409, y = 120.000, z = -568.095 }, rot = { x = 0.000, y = 37.725, z = 0.000 }, area_id = 401 },
	-- 安全点-1
	{ config_id = 65329, pos = { x = 89.698, y = 120.000, z = -694.615 }, rot = { x = 0.000, y = 5.964, z = 0.000 }, area_id = 401 },
	-- 创船点-1
	{ config_id = 65330, pos = { x = 90.215, y = 120.000, z = -687.580 }, rot = { x = 0.000, y = 4.850, z = 0.000 }, area_id = 401 },
	-- 安全点-3
	{ config_id = 65333, pos = { x = 7.325, y = 121.407, z = -444.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	-- 创船点-3
	{ config_id = 65334, pos = { x = 10.200, y = 120.000, z = -435.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	-- 创船点-4
	{ config_id = 65335, pos = { x = -86.222, y = 120.000, z = -215.501 }, rot = { x = 0.000, y = 65.224, z = 0.000 }, area_id = 401 },
	-- 安全点-5
	{ config_id = 65338, pos = { x = -119.227, y = 121.223, z = -126.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	-- 创船点-5
	{ config_id = 65339, pos = { x = -115.052, y = 120.000, z = -119.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 },
	-- 创船点-6
	{ config_id = 65340, pos = { x = -235.441, y = 120.000, z = 138.299 }, rot = { x = 0.000, y = 56.618, z = 0.000 }, area_id = 403 }
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
		gadgets = { },
		regions = { 65403 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 阶段1——航行,
		monsters = { },
		gadgets = { 65002, 65003, 65004, 65005, 65006, 65007, 65038, 65068, 65069, 65070, 65071, 65072, 65073, 65074, 65076, 65079, 65080, 65081, 65085, 65086, 65087, 65088, 65089, 65090, 65091, 65160, 65161, 65162, 65166, 65170, 65174, 65227, 65233, 65253, 65254, 65308, 65397, 65399, 65400, 65401 },
		regions = { 65039, 65148 },
		triggers = { "ENTER_REGION_65039" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段2——战斗,
		monsters = { 65011, 65013, 65151, 65404 },
		gadgets = { 65012, 65015, 65318, 65320 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65321", "ANY_MONSTER_DIE_65325", "ANY_MONSTER_DIE_65326", "ANY_MONSTER_DIE_65327" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 阶段3——航行,
		monsters = { },
		gadgets = { 65014, 65022, 65023, 65024, 65025, 65026, 65040, 65053, 65054, 65055, 65092, 65093, 65094, 65095, 65096, 65097, 65098, 65100, 65101, 65152, 65153, 65178, 65179, 65180, 65194, 65198, 65199, 65229, 65234, 65258, 65259, 65260, 65263, 65264, 65265, 65266, 65267, 65268, 65269, 65270, 65271, 65272, 65273, 65274, 65275, 65276, 65277, 65280, 65283, 65284, 65285, 65286, 65287, 65288, 65291, 65292, 65293, 65294, 65295, 65296, 65297, 65298, 65299, 65300, 65303, 65304, 65305, 65306, 65307, 65309, 65310, 65311, 65312, 65331, 65332, 65341, 65342, 65346, 65347, 65348, 65349, 65350, 65353, 65354, 65355, 65356, 65357, 65358, 65359, 65360, 65361, 65362, 65364, 65365, 65366, 65367, 65368 },
		regions = { 65149, 65154 },
		triggers = { "ENTER_REGION_65154" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 阶段4——战斗,
		monsters = { 65030, 65031, 65033, 65035, 65037 },
		gadgets = { 65010, 65032, 65034, 65036, 65189 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65190", "ANY_MONSTER_DIE_65313", "ANY_MONSTER_DIE_65405", "ANY_MONSTER_DIE_65406", "ANY_MONSTER_DIE_65407" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 阶段5——航行,
		monsters = { },
		gadgets = { 65044, 65045, 65046, 65047, 65048, 65056, 65057, 65058, 65059, 65115, 65116, 65117, 65118, 65119, 65120, 65128, 65136, 65137, 65138, 65142, 65143, 65144, 65145, 65146, 65147, 65155, 65184, 65185, 65186, 65187, 65204, 65207, 65214, 65218, 65231, 65235, 65237, 65238, 65239, 65241, 65242, 65243, 65245, 65246, 65247, 65249, 65250, 65251, 65252, 65255, 65256, 65257, 65314, 65315, 65316, 65317, 65336, 65337, 65369, 65370, 65373, 65374, 65377, 65378, 65381, 65382, 65387, 65390, 65393, 65396 },
		regions = { 65150, 65156 },
		triggers = { "ENTER_REGION_65156" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 阶段6——战斗,
		monsters = { 65052, 65067, 65188, 65322, 65323 },
		gadgets = { 65065, 65066, 65319, 65324, 65408 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65409", "ANY_MONSTER_DIE_65410", "ANY_MONSTER_DIE_65411", "ANY_MONSTER_DIE_65412", "ANY_MONSTER_DIE_65413" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 阶段6——战斗,
		monsters = { 65041, 65049, 65060, 65062, 65064 },
		gadgets = { 65414, 65415, 65416, 65417, 65418 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65419", "ANY_MONSTER_DIE_65420", "ANY_MONSTER_DIE_65421", "ANY_MONSTER_DIE_65422", "ANY_MONSTER_DIE_65423" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_65039(context, evt)
	if evt.param1 ~= 65039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65039(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65038 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65154(context, evt)
	if evt.param1 ~= 65154 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65154(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65040 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65156(context, evt)
	if evt.param1 ~= 65156 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65156(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65155 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65190(context, evt)
	--判断死亡怪物的configid是否为 65037
	if evt.param1 ~= 65037 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65190(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65313(context, evt)
	--判断死亡怪物的configid是否为 65033
	if evt.param1 ~= 65033 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65313(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65032 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65321(context, evt)
	--判断死亡怪物的configid是否为 65011
	if evt.param1 ~= 65011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65321(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65325(context, evt)
	--判断死亡怪物的configid是否为 65151
	if evt.param1 ~= 65151 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65325(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65326(context, evt)
	--判断死亡怪物的configid是否为 65404
	if evt.param1 ~= 65404 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65326(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65318 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65327(context, evt)
	--判断死亡怪物的configid是否为 65013
	if evt.param1 ~= 65013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65327(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65320 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65405(context, evt)
	--判断死亡怪物的configid是否为 65030
	if evt.param1 ~= 65030 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65405(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65406(context, evt)
	--判断死亡怪物的configid是否为 65031
	if evt.param1 ~= 65031 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65406(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65407(context, evt)
	--判断死亡怪物的configid是否为 65035
	if evt.param1 ~= 65035 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65407(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65189 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65409(context, evt)
	--判断死亡怪物的configid是否为 65188
	if evt.param1 ~= 65188 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65409(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65065 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65410(context, evt)
	--判断死亡怪物的configid是否为 65322
	if evt.param1 ~= 65322 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65410(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65066 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65411(context, evt)
	--判断死亡怪物的configid是否为 65067
	if evt.param1 ~= 65067 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65411(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65319 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65412(context, evt)
	--判断死亡怪物的configid是否为 65052
	if evt.param1 ~= 65052 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65412(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65324 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65413(context, evt)
	--判断死亡怪物的configid是否为 65323
	if evt.param1 ~= 65323 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65413(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65408 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65419(context, evt)
	--判断死亡怪物的configid是否为 65060
	if evt.param1 ~= 65060 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65419(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65414 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65420(context, evt)
	--判断死亡怪物的configid是否为 65062
	if evt.param1 ~= 65062 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65420(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65415 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65421(context, evt)
	--判断死亡怪物的configid是否为 65049
	if evt.param1 ~= 65049 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65421(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65416 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65422(context, evt)
	--判断死亡怪物的configid是否为 65041
	if evt.param1 ~= 65041 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65422(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65417 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65423(context, evt)
	--判断死亡怪物的configid是否为 65064
	if evt.param1 ~= 65064 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65423(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65418 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_SailChallenge"
require "V2_8/SocialActivity_Optimization"